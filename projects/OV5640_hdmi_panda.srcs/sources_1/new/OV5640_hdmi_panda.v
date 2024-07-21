//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/01/13 10:55:11
// Design Name: 
// Module Name:
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module OV5640_hdmi_panda(
  //user
  input           reset_n          ,

  //camera interface
  output          camera_sclk      ,
  inout           camera_sdat      ,
  input           camera_vsync     ,
  input           camera_href      ,
  input           camera_pclk      ,
  input  [7:0]    camera_data      ,
  output          cmos1_reset      ,
  
  //hdmi interface
  output          hdmi_clk_p   ,
  output          hdmi_clk_n   ,
  output [2:0]    hdmi_dat_p   ,
  output [2:0]    hdmi_dat_n   ,
  output          HDMI_OUT_EN1 ,
  
  
  //DDR3 Interface
  // Inouts
  inout  [31:0]   ddr3_dq          ,
  inout  [3:0]    ddr3_dqs_n       ,
  inout  [3:0]    ddr3_dqs_p       ,
  // Outputs      
  output [14:0]   ddr3_addr        ,
  output [2:0]    ddr3_ba          ,
  output          ddr3_ras_n       ,
  output          ddr3_cas_n       ,
  output          ddr3_we_n        ,
  output          ddr3_reset_n     ,
  output [0:0]    ddr3_ck_p        ,
  output [0:0]    ddr3_ck_n        ,
  output [0:0]    ddr3_cke         ,
  output [0:0]    ddr3_cs_n        ,
  output [3:0]    ddr3_dm          ,
  output [0:0]    ddr3_odt         ,
  inout           FIXED_IO_ddr_vrn ,
  inout           FIXED_IO_ddr_vrp ,
  inout [53:0]    FIXED_IO_mio     ,
  inout           FIXED_IO_ps_clk  ,
  inout           FIXED_IO_ps_porb ,
  inout           FIXED_IO_ps_srstb
);

  wire          led              ;  
  wire          camera_xclk      ;
assign HDMI_OUT_EN1 = 1'b1;  
assign cmos1_reset = reset_n;  

  
//Resolution_1280x720  像素时钟为74.25MHz
parameter IMAGE_WIDTH  = 800;
parameter IMAGE_HEIGHT = 600;

//PL使用DDR的基地址，留一定空间给PS用
parameter DDR_BASE_ADDR = 32'h1800000;

//*********************************
//Internal connect
//*********************************
  //clock
  wire          ps2pl_clk50m_0; //系统时钟输入，50MHz
  wire          ps2pl_resetn_0; //复位信号输入
  wire          pll_locked;
  wire          loc_clk100m;
  wire          loc_clk50m;
  wire          loc_clk24m;
  wire          loc_clk200m;
  wire          disp_clk;
  wire          disp_clk5x;
  wire          reset;
  //camera interface
  wire          camera_init_done;
  wire          pclk_bufg_o;
  wire [15:0]   image_data;
  wire          image_data_valid;
  wire          image_data_hs;
  wire          image_data_vs;
  //tft
  wire          frame_begin;
  wire          disp_data_req;
  wire [23:0]   disp_data;
  //VGA
  wire [4:0]Disp_Red;
  wire [5:0]Disp_Green;
  wire [4:0]Disp_Blue;
  //wr_fifo Interface
  wire          wrfifo_clr;
  wire [15:0]   wrfifo_din;
  wire          wrfifo_wren;
  //rd_fifo Interface
  wire          rdfifo_clr;
  wire          rdfifo_rden;
  wire [15 :0]  rdfifo_dout;
  //axi
  wire [3:0]    s_axi_awid;
  wire [31:0]   s_axi_awaddr;
  wire [7:0]    s_axi_awlen;
  wire [2:0]    s_axi_awsize;
  wire [1:0]    s_axi_awburst;
  wire [0:0]    s_axi_awlock;
  wire [3:0]    s_axi_awcache;
  wire [2:0]    s_axi_awprot;
  wire [3:0]    s_axi_awqos;
  wire [3:0]    s_axi_awregion;
  wire          s_axi_awvalid;
  wire          s_axi_awready;
  //
  wire [63:0]   s_axi_wdata;
  wire [7:0]    s_axi_wstrb;
  wire          s_axi_wlast;
  wire          s_axi_wvalid;
  wire          s_axi_wready;
  //
  wire [3:0]    s_axi_bid;
  wire [1:0]    s_axi_bresp;
  wire          s_axi_bvalid;
  wire          s_axi_bready;
  //
  wire [3:0]    s_axi_arid;
  wire [31:0]   s_axi_araddr;
  wire [7:0]    s_axi_arlen;
  wire [2:0]    s_axi_arsize;
  wire [1:0]    s_axi_arburst;
  wire [0:0]    s_axi_arlock;
  wire [3:0]    s_axi_arcache;
  wire [2:0]    s_axi_arprot;
  wire [3:0]    s_axi_arqos;
  wire [3:0]    s_axi_arregion;
  wire          s_axi_arvalid;
  wire          s_axi_arready;
  //
  wire [3:0]    s_axi_rid;
  wire [63:0]   s_axi_rdata;
  wire [1:0]    s_axi_rresp;
  wire          s_axi_rlast;
  wire          s_axi_rvalid;
  wire          s_axi_rready;
  //
  wire          s_axi_aclk;
  wire          s_axi_resetn;
  //
  wire [7:0]    uart_byte;
  wire          uart_byte_vaild;

  assign loc_clk50m        = ps2pl_clk50m_0;
  assign s_axi_aclk        = loc_clk200m;
  assign led = {camera_init_done};
  
  wire          pl_reset_n;
  wire          reset_pre;
  reg  [19:0]   reset_sync;
  assign pl_reset_n = ps2pl_resetn_0 & reset_n;
  assign reset_pre     = ~pll_locked;

   //PS先释放复位，PL的逻辑复位释放往后延迟20个时钟周期
  always@(posedge loc_clk200m or posedge reset_pre)
  begin
    if(reset_pre)
      reset_sync <= {20{1'b1}};
    else
      reset_sync <= reset_sync << 1;
  end

  assign reset = reset_sync[19];
  assign s_axi_resetn = pll_locked;

  pll pll
  (
    // Clock out ports
    .clk_out1 (loc_clk200m     ), // output clk_out1
    .clk_out2 (loc_clk100m        ), // output clk_out2
    .clk_out3 (loc_clk24m      ), // output clk_out3
    // Status and control signals
    .resetn   (pl_reset_n  ), // input reset
    .locked   (pll_locked      ), // output locked
    // Clock in ports
    .clk_in1  (ps2pl_clk50m_0  )  // input clk_in1
  );

  assign camera_xclk = loc_clk24m;
  
    camera_init
  #(
    .CAMERA_TYPE    ( "ov5640"     ),//"ov5640" or "ov7725"
    .IMAGE_TYPE     ( 0            ),// 0: RGB; 1: JPEG
    .IMAGE_WIDTH    ( IMAGE_WIDTH  ),// 图片宽度
    .IMAGE_HEIGHT   ( IMAGE_HEIGHT ),// 图片高度
    .IMAGE_FLIP_EN  ( 0            ),// 0: 不翻转，1: 上下翻转
    .IMAGE_MIRROR_EN( 0            ) // 0: 不镜像，1: 左右镜像
  )camera_init
  (
    .Clk         (loc_clk50m        ),
    .Rst_n       (!reset          ),
    .Init_Done   ( camera_init_done ),
    .camera_rst_n(                  ),
    .camera_pwdn (                  ),
    .i2c_sclk    (camera_sclk       ),
    .i2c_sdat    (camera_sdat       )
  );

  BUFG BUFG_inst (
    .O(pclk_bufg_o ), // 1-bit output: Clock output
    .I(camera_pclk )  // 1-bit input: Clock input
  );

    wire [11:0] ov5640_Xaddr;
    wire [11:0] ov5640_Yaddr;
    

//摄像头采集数据
  DVP_Capture DVP_Capture(
    .Rst_p      (reset            ),//input
    .PCLK       (pclk_bufg_o      ),//input
    .Vsync      (camera_vsync     ),//input
    .Href       (camera_href      ),//input
    .Data       (camera_data      ),//input     [7:0]

    .ImageState (                 ),//output reg
    .DataValid  (image_data_valid ),//output
    .DataPixel  (image_data       ),//output    [15:0]
    .DataHs     (image_data_hs    ),//output
    .DataVs     (image_data_vs    ),//output
    .Xaddr      (ov5640_Xaddr     ),//output    [11:0]
    .Yaddr      (ov5640_Yaddr     ) //output    [11:0]
  );



 
    wire          ov5640_16bits_valid;
    wire [15:0]   ov5640_image_data;
    assign  ov5640_16bits_valid  = image_data_valid;
    assign  ov5640_image_data    = ov5640_16bits_valid ? image_data : ov5640_image_data;  
    
    wire [7:0] gray_image_data;
    wire       gray_image_data_valid;
    wire       gray_image_data_hs;
    wire       gray_image_data_vs;
  rgb2gray
  #(
    .PROC_METHOD ( "FORMULA" )//"AVERAGE"     :求平均法
                              //or "FORMULA"  :直接公式法
                              //or "LUT"      :查找表法
  )rgb2gray
  (
    .clk        (pclk_bufg_o             ),//input
    .reset_p    (reset                   ),//input
    .rgb_valid  (camera_href             ),//input
    .rgb_hs     (image_data_hs             ),//input
    .rgb_vs     (image_data_vs             ),//input
    .red_8b_i   ({ov5640_image_data[15:11] ,3'b0} ),//input     [7:0]
    .green_8b_i ({ov5640_image_data[10:5]  ,2'b0} ),//input     [7:0]
    .blue_8b_i  ({ov5640_image_data[4:0]   ,3'b0} ),//input     [7:0]

    .gray_8b_o  (gray_image_data           ),//output    [7:0]
    .gray_valid (gray_image_data_valid     ),//output reg
    .gray_hs    (gray_image_data_hs        ),//output reg
    .gray_vs    (gray_image_data_vs        ) //output reg
  );
    wire [7:0] b_gray_image_data;
    assign  b_gray_image_data = gray_image_data < 128 ? 255 : 0;



dvi_pll dvi_pll
(
    // Clock out ports
    .clk_out1(disp_clk),     // output clk_out1
    .clk_out2(disp_clk5x),     // output clk_out2
    // Status and control signals
    .resetn(!reset), // input resetn
    .locked(),       // output locked
    // Clock in ports
    .clk_in1(loc_clk100m)
); 


    reg [15:0] deal_image_data;
    always @ (*) begin
//		if (gray_image_data_valid 
//                    && (H_Addr >= 640) && (H_Addr < 640 + 112) 
//                    && (V_Addr >= 360) && (V_Addr < 360 + 112) ) begin
		if ( (ov5640_Xaddr >= IMAGE_WIDTH/2) && (ov5640_Xaddr < IMAGE_WIDTH/2 + 112) 
                    && (ov5640_Yaddr >= IMAGE_HEIGHT/2) && (ov5640_Yaddr < IMAGE_HEIGHT/2 + 112) ) begin
            deal_image_data <= {b_gray_image_data[7:3], b_gray_image_data[7:2], b_gray_image_data[7:3]}; 
        end    
		else          
            deal_image_data <= ov5640_image_data;
    end
    
  assign wrfifo_clr  = reset;
  assign wrfifo_wren = image_data_valid;
  assign wrfifo_din  = deal_image_data;

  assign rdfifo_clr  = reset || frame_begin;
  assign rdfifo_rden = disp_data_req;
  assign disp_data   = {rdfifo_dout[15:11],3'd0,rdfifo_dout[10:5],2'd0,rdfifo_dout[4:0],3'd0};

///////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    reg  fifo_reset_n;
    
    wire [15 : 0] din;      
    reg  wr_en;             
    reg  rd_en;             
    wire [15 : 0] dout;  
    wire [ 9 : 0] wr_data_count;
    wire [ 9 : 0] rd_data_count;


    reg  pre1_rd_en, pre2_rd_en, pre3_rd_en, pre4_rd_en;
    reg  dly1_rd_en, dly2_rd_en, dly3_rd_en, dly4_rd_en;
    always @ (posedge s_axi_aclk) begin
        pre3_rd_en <= pre4_rd_en;
        pre2_rd_en <= pre3_rd_en;
        pre1_rd_en <= pre2_rd_en;
        rd_en      <= pre1_rd_en;
    end
    always @ (posedge s_axi_aclk) begin
        dly1_rd_en <= rd_en;
        dly2_rd_en <= dly1_rd_en;
        dly3_rd_en <= dly2_rd_en;
        dly4_rd_en <= dly3_rd_en;
    end
     

    always @ (posedge s_axi_aclk or posedge reset) begin
		if (reset)
            fifo_reset_n <= 1;
		else if (rd_data_count == 0 && rd_en == 1)
            fifo_reset_n <= 0;
		else
            fifo_reset_n <= 1;
    end
    
fifo_rgb_28_28 fifo_rgb_28_28 (
  .rst(reset || (~fifo_reset_n)),                      // input wire rst
  .wr_clk(pclk_bufg_o),                // input wire wr_clk
  .rd_clk(s_axi_aclk),                // input wire rd_clk
  .din(din),                      // input wire [15 : 0] din
  .wr_en(wr_en),                  // input wire wr_en
  .rd_en(rd_en),                  // input wire rd_en
  .dout(dout),                    // output wire [15 : 0] dout
  .full(),                        // output wire full
  .empty(),                       // output wire empty
  .rd_data_count(rd_data_count),  // output wire [9 : 0] rd_data_count
  .wr_data_count(wr_data_count)  // output wire [9 : 0] wr_data_count
);

    wire [15:0] the_data_112x112;
    assign  the_data_112x112 = deal_image_data;  

    
    reg [11:0] x_Addr, y_Addr;
    initial  x_Addr = 0;
    initial  y_Addr = 0;
    always @ (*) begin
		if ( (ov5640_Xaddr >= IMAGE_WIDTH/2) && (ov5640_Xaddr < IMAGE_WIDTH/2 + 112) 
                && (ov5640_Yaddr >= IMAGE_HEIGHT/2) && (ov5640_Yaddr < IMAGE_HEIGHT/2 + 112) ) begin
            x_Addr <= ov5640_Xaddr - IMAGE_WIDTH/2;
            y_Addr <= ov5640_Yaddr - IMAGE_HEIGHT/2;
        end    
		else begin
            x_Addr <= 0;
            y_Addr <= 0;
        end
    end
    
    
    reg  dly_ov5640_16bits_valid;
    always @ (posedge pclk_bufg_o)
        dly_ov5640_16bits_valid <= ov5640_16bits_valid;
    always @ (posedge pclk_bufg_o or posedge reset) begin
		if (reset)
            wr_en <= 0;
		else if (wr_data_count == 28*28)
            wr_en <= 0;
		else if (wr_data_count < 28*28) begin
            if ( (ov5640_Xaddr >= IMAGE_WIDTH/2) && (ov5640_Xaddr < IMAGE_WIDTH/2 + 112) 
                    && (ov5640_Yaddr >= IMAGE_HEIGHT/2) && (ov5640_Yaddr < IMAGE_HEIGHT/2 + 112) ) begin
                if (x_Addr[1:0] == 2'b01 && y_Addr[1:0] == 2'b01 && dly_ov5640_16bits_valid)
                    wr_en <= 1;
                else
                    wr_en <= 0;
            end
            else
                wr_en <= 0;
        end
		else
            wr_en <= wr_en;
    end
    
    assign  din = the_data_112x112;
    
    
    always @ (posedge s_axi_aclk or posedge reset) begin
        if (reset)
            pre4_rd_en <= 0;
        else if (rd_data_count == 0)
            pre4_rd_en <= 0;
        else if (rd_data_count == 28*28)
            pre4_rd_en <= 1;
        else
            pre4_rd_en <= pre4_rd_en;
    end

    wire  posedge_rd_en;
    assign  posedge_rd_en = (rd_en == 1) && (dly1_rd_en == 0);



    wire  trans_start;
    wire [31:0]  the_data;
    assign  trans_start = posedge_rd_en;
    assign  the_data    = {16'd0,dout};
    // axi-stream
    wire [31:0]  m_axis_tdata;
    wire [ 3:0]  m_axis_tkeep;
    wire  m_axis_tlast;
    wire  m_axis_tvalid;
    wire  m_axis_tready;  
dma_frame_gen #(
        .TRANS_NUM(28*28)
)dma_frame_gen (
    .resetn       (~reset       ),
    .clk          (s_axi_aclk          ),
    .trans_start  (trans_start  ),
    .the_data     (the_data     ),
    // axi-stream
    .m_axis_tdata     (m_axis_tdata     ),
    .m_axis_tkeep     (m_axis_tkeep     ),
    .m_axis_tlast     (m_axis_tlast     ),
    .m_axis_tvalid    (m_axis_tvalid    ),
    .m_axis_tready    (m_axis_tready    )
    );


///////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  wire [11:0] H_Addr;
  wire [11:0] V_Addr;
  //VGA Interface               
  reg  [23:0]   VGA_rgb       ; //VGA数据输出
  wire [23:0]   VGA_rgb_temp       ; //VGA数据输出  
  wire          VGA_hs        ; //VGA行同步信号
  wire          VGA_vs        ; //VGA场同步信号
  wire          VGA_clk       ; //VGA像素时钟
  wire          VGA_de        ; //VGA场消隐信号

 disp_driver #(
   .AHEAD_CLK_CNT (1            )
 )disp_driver
 (
   .ClkDisp     (disp_clk       ),
   .Rst_n       (~reset         ),
   
   .Data        (disp_data        ),
   .DataReq     (disp_data_req    ),
   .H_Addr      (H_Addr              ),
   .V_Addr      (V_Addr              ),
   .Disp_HS     (VGA_hs         ),
   .Disp_VS     (VGA_vs         ),
   .Disp_Red    (VGA_rgb_temp[23:16] ),
   .Disp_Green  (VGA_rgb_temp[15:8]  ),
   .Disp_Blue   (VGA_rgb_temp[7:0]   ),
   .Disp_Sof (frame_begin    ),
   .Disp_DE     (VGA_de         ),
   .Disp_PCLK   (VGA_clk        )
 );

    wire        [3:0]  rd_the_data   ; 
    wire            TFT_CTRL_test_Data_Req;
    wire [11:0]     TFT_CTRL_test_H_Addr;  
    wire [11:0]     TFT_CTRL_test_V_Addr;
    assign  TFT_CTRL_test_Data_Req = disp_data_req;
    assign  TFT_CTRL_test_H_Addr = H_Addr;
    assign  TFT_CTRL_test_V_Addr = V_Addr;
    wire            TFT_CTRL_test_ram_en;
    wire [23:0]     TFT_CTRL_test_Disp_Data;
disp_CTRL 
  #(
    .IMAGE_WIDTH    ( IMAGE_WIDTH  ),// 图片宽度
    .IMAGE_HEIGHT   ( IMAGE_HEIGHT ) // 图片高度
  )disp_CTRL(
    .Clk(disp_clk),
    .Reset_n(~reset),
    .rd_the_data(rd_the_data),
    .Data_Req(TFT_CTRL_test_Data_Req),
    .H_Addr(TFT_CTRL_test_H_Addr) ,  
    .V_Addr(TFT_CTRL_test_V_Addr) ,
    .disp_ram_en(TFT_CTRL_test_ram_en),
    .Disp_Data(TFT_CTRL_test_Disp_Data)
);    
 
    always @ (posedge disp_clk or posedge reset) begin
		if (reset) 
            VGA_rgb <= 24'h000000;
            
        else if (disp_data_req 
                    && (H_Addr >= IMAGE_WIDTH/2) && (H_Addr < IMAGE_WIDTH/2 + 112) 
                    && (V_Addr >= IMAGE_HEIGHT/2) && (V_Addr < IMAGE_HEIGHT/2 + 112) ) begin
            if (H_Addr == IMAGE_WIDTH/2 || H_Addr == IMAGE_WIDTH/2 + 112 - 1
                || V_Addr == IMAGE_HEIGHT/2 || V_Addr == IMAGE_HEIGHT/2 + 112 - 1)
                VGA_rgb <= 24'hFF0000;   
            else
                VGA_rgb <= VGA_rgb_temp; 
        end    
        else if (TFT_CTRL_test_ram_en)
            VGA_rgb <= TFT_CTRL_test_Disp_Data;  
		else          
            VGA_rgb <= VGA_rgb_temp;
    end

/////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////

  fifo_axi4_adapter #(
    .FIFO_DW                (16                   ),
    .WR_AXI_BYTE_ADDR_BEGIN (DDR_BASE_ADDR  ),
    .WR_AXI_BYTE_ADDR_END   (DDR_BASE_ADDR + IMAGE_WIDTH*IMAGE_HEIGHT*2 - 1),
    .RD_AXI_BYTE_ADDR_BEGIN (DDR_BASE_ADDR ),
    .RD_AXI_BYTE_ADDR_END   (DDR_BASE_ADDR + IMAGE_WIDTH*IMAGE_HEIGHT*2 - 1),

    .AXI_DATA_WIDTH         (64                   ),
    .AXI_ADDR_WIDTH         (32                   ),
    .AXI_ID                 (4'b0000              ),
    .AXI_BURST_LEN          (8'd15                ), //axi burst length = 16
    .FIFO_ADDR_DEPTH        (64                  )
  )fifo_axi4_adapter_inst
  (
    //clock reset
    .clk                 (loc_clk200m         ),
    .reset               (reset               ),
    //wr_fifo Interface
    .wrfifo_clr          (wrfifo_clr          ),
    .wrfifo_clk          (pclk_bufg_o         ),
    .wrfifo_wren         (wrfifo_wren         ),
    .wrfifo_din          (wrfifo_din          ),
    .wrfifo_full         (                    ),
    .wrfifo_wr_cnt       (                    ),
    //rd_fifo Interface
    .rdfifo_clr          (rdfifo_clr          ),
    .rdfifo_clk          (disp_clk            ),
    .rdfifo_rden         (rdfifo_rden         ),
    .rdfifo_dout         (rdfifo_dout         ),
    .rdfifo_empty        (                    ),
    .rdfifo_rd_cnt       (                    ),
    // Master Interface Write Address Ports
    .m_axi_awid          (s_axi_awid          ),
    .m_axi_awaddr        (s_axi_awaddr        ),
    .m_axi_awlen         (s_axi_awlen         ),
    .m_axi_awsize        (s_axi_awsize        ),
    .m_axi_awburst       (s_axi_awburst       ),
    .m_axi_awlock        (s_axi_awlock        ),
    .m_axi_awcache       (s_axi_awcache       ),
    .m_axi_awprot        (s_axi_awprot        ),
    .m_axi_awqos         (s_axi_awqos         ),
    .m_axi_awregion      (s_axi_awregion      ),
    .m_axi_awvalid       (s_axi_awvalid       ),
    .m_axi_awready       (s_axi_awready       ),
    // Master Interface Write Data Ports
    .m_axi_wdata         (s_axi_wdata         ),
    .m_axi_wstrb         (s_axi_wstrb         ),
    .m_axi_wlast         (s_axi_wlast         ),
    .m_axi_wvalid        (s_axi_wvalid        ),
    .m_axi_wready        (s_axi_wready        ),
    // Master Interface Write Response Ports
    .m_axi_bid           (4'b0000             ),
    .m_axi_bresp         (s_axi_bresp         ),
    .m_axi_bvalid        (s_axi_bvalid        ),
    .m_axi_bready        (s_axi_bready        ),
    // Master Interface Read Address Ports
    .m_axi_arid          (s_axi_arid          ),
    .m_axi_araddr        (s_axi_araddr        ),
    .m_axi_arlen         (s_axi_arlen         ),
    .m_axi_arsize        (s_axi_arsize        ),
    .m_axi_arburst       (s_axi_arburst       ),
    .m_axi_arlock        (s_axi_arlock        ),
    .m_axi_arcache       (s_axi_arcache       ),
    .m_axi_arprot        (s_axi_arprot        ),
    .m_axi_arqos         (s_axi_arqos         ),
    .m_axi_arregion      (s_axi_arregion      ),
    .m_axi_arvalid       (s_axi_arvalid       ),
    .m_axi_arready       (s_axi_arready       ),
    // Master Interface Read Data Ports
    .m_axi_rid           (4'b0000             ),
    .m_axi_rdata         (s_axi_rdata         ),
    .m_axi_rresp         (s_axi_rresp         ),
    .m_axi_rlast         (s_axi_rlast         ),
    .m_axi_rvalid        (s_axi_rvalid        ),
    .m_axi_rready        (s_axi_rready        )
  );
  

    wire  [31:0] BRAM_dout;
    assign  rd_the_data = BRAM_dout[3:0];
    wire [31:0]  S_AXIS_0_tdata;
    wire [ 3:0]  S_AXIS_0_tkeep;
    wire   S_AXIS_0_tlast;
    wire   S_AXIS_0_tready;
    wire   S_AXIS_0_tvalid;
    assign  S_AXIS_0_tdata   = m_axis_tdata   ;
    assign  S_AXIS_0_tkeep   = m_axis_tkeep   ;
    assign  S_AXIS_0_tlast   = m_axis_tlast   ;
    assign  S_AXIS_0_tready  = m_axis_tready  ;    
    assign  S_AXIS_0_tvalid  = m_axis_tvalid  ;
  system_wrapper system_wrapper
  (
    .BRAM_dout            (BRAM_dout    ),
    .S_AXIS_0_tdata                (S_AXIS_0_tdata    ),
    .S_AXIS_0_tkeep                (S_AXIS_0_tkeep    ),
    .S_AXIS_0_tlast                (S_AXIS_0_tlast    ),
    .S_AXIS_0_tready               (S_AXIS_0_tready   ),    
    .S_AXIS_0_tvalid               (S_AXIS_0_tvalid   ),
       
    .DDR_addr            (ddr3_addr           ),
    .DDR_ba              (ddr3_ba             ),
    .DDR_cas_n           (ddr3_cas_n          ),
    .DDR_ck_n            (ddr3_ck_n           ),
    .DDR_ck_p            (ddr3_ck_p           ),
    .DDR_cke             (ddr3_cke            ),

    .DDR_cs_n            (ddr3_cs_n           ),
    .DDR_dm              (ddr3_dm             ),
    .DDR_dq              (ddr3_dq             ),
    .DDR_dqs_n           (ddr3_dqs_n          ),
    .DDR_dqs_p           (ddr3_dqs_p          ),
    .DDR_odt             (ddr3_odt            ),
    .DDR_ras_n           (ddr3_ras_n          ),
    .DDR_reset_n         (ddr3_reset_n        ),
    .DDR_we_n            (ddr3_we_n           ),
    .FIXED_IO_ddr_vrn    (FIXED_IO_ddr_vrn    ),
    .FIXED_IO_ddr_vrp    (FIXED_IO_ddr_vrp    ),
    .FIXED_IO_mio        (FIXED_IO_mio        ),
    .FIXED_IO_ps_clk     (FIXED_IO_ps_clk     ),
    .FIXED_IO_ps_porb    (FIXED_IO_ps_porb    ),
    .FIXED_IO_ps_srstb   (FIXED_IO_ps_srstb   ),
    .ps2pl_clk50m_0      (ps2pl_clk50m_0      ),
    .ps2pl_resetn_0      (ps2pl_resetn_0      ),
    //Slave Interface Read Address Ports
    .pl2ps_axi_0_araddr  (s_axi_araddr        ),
    .pl2ps_axi_0_arburst (s_axi_arburst       ),
    .pl2ps_axi_0_arcache (s_axi_arcache       ),
    .pl2ps_axi_0_arlen   (s_axi_arlen         ),
    .pl2ps_axi_0_arlock  (s_axi_arlock        ),
    .pl2ps_axi_0_arprot  (s_axi_arprot        ),
    .pl2ps_axi_0_arqos   (s_axi_arqos         ),
//    .pl2ps_axi_0_arregion(s_axi_arregion      ),
    .pl2ps_axi_0_arready (s_axi_arready       ),
    .pl2ps_axi_0_arsize  (s_axi_arsize        ),
    .pl2ps_axi_0_arvalid (s_axi_arvalid       ),
    //Slave Interface Write Address Ports
    .pl2ps_axi_0_awaddr  (s_axi_awaddr        ),
    .pl2ps_axi_0_awburst (s_axi_awburst       ),
    .pl2ps_axi_0_awcache (s_axi_awcache       ),
    .pl2ps_axi_0_awlen   (s_axi_awlen         ),
    .pl2ps_axi_0_awlock  (s_axi_awlock        ),
    .pl2ps_axi_0_awprot  (s_axi_awprot        ),
    .pl2ps_axi_0_awqos   (s_axi_awqos         ),
//    .pl2ps_axi_0_awregion(s_axi_awregion      ),
    .pl2ps_axi_0_awready (s_axi_awready       ),
    .pl2ps_axi_0_awsize  (s_axi_awsize        ),
    .pl2ps_axi_0_awvalid (s_axi_awvalid       ),
    //Slave Interface Write Response Ports
    .pl2ps_axi_0_bready  (s_axi_bready        ),
    .pl2ps_axi_0_bresp   (s_axi_bresp         ),
    .pl2ps_axi_0_bvalid  (s_axi_bvalid        ),
    //Slave Interface Read Data Ports
    .pl2ps_axi_0_rdata   (s_axi_rdata         ),
    .pl2ps_axi_0_rlast   (s_axi_rlast         ),
    .pl2ps_axi_0_rready  (s_axi_rready        ),
    .pl2ps_axi_0_rresp   (s_axi_rresp         ),
    .pl2ps_axi_0_rvalid  (s_axi_rvalid        ),
    //Slave Interface Write Data Ports
    .pl2ps_axi_0_wdata   (s_axi_wdata         ),
    .pl2ps_axi_0_wlast   (s_axi_wlast         ),
    .pl2ps_axi_0_wready  (s_axi_wready        ),
    .pl2ps_axi_0_wstrb   (s_axi_wstrb         ),
    .pl2ps_axi_0_wvalid  (s_axi_wvalid        ),
    //Slave Interface ACLK RESET
    .pl2ps_axi_aclk_0    (s_axi_aclk          ),
    .pl2ps_axi_resetn_0  (s_axi_resetn        )
  );
  
  //HDMI
  dvi_encoder dvi_encoder1(
    .pixelclk    (disp_clk ),
    .pixelclk5x  (disp_clk5x  ),
    .rst_p       (reset     ),
    .blue_din    (VGA_rgb[7:0]   ),
    .green_din   (VGA_rgb[15:8]  ),
    .red_din     (VGA_rgb[23:16] ),
    .hsync       (VGA_hs     ),
    .vsync       (VGA_vs     ),
    .de          (VGA_de     ),
    .tmds_clk_p  (hdmi_clk_p ),
    .tmds_clk_n  (hdmi_clk_n ),
    .tmds_data_p (hdmi_dat_p ),
    .tmds_data_n (hdmi_dat_n )
  );

endmodule

