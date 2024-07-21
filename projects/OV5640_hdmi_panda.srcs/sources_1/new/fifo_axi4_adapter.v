/////////////////////////////////////////////////////////////////////////////////
// Company       : 武汉芯路恒科技有限公司
//                 http://xiaomeige.taobao.com
// Web           : http://www.corecourse.cn
// 
// Create Date   : 2019/05/01 00:00:00
// Module Name   : fifo_axi4_adapter
// Description   : fifo接口到AXI4接口的转换模块(含2个FIFO)
// 
// Dependencies  : 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
/////////////////////////////////////////////////////////////////////////////////

module fifo_axi4_adapter #(
  parameter FIFO_DW                = 16     ,
  parameter WR_AXI_BYTE_ADDR_BEGIN = 0      ,
  parameter WR_AXI_BYTE_ADDR_END   = 1023   ,
  parameter RD_AXI_BYTE_ADDR_BEGIN = 0      ,
  parameter RD_AXI_BYTE_ADDR_END   = 1023   ,

  parameter AXI_DATA_WIDTH         = 64    ,
  parameter AXI_ADDR_WIDTH         = 28     ,
  parameter AXI_ID_WIDTH           = 4      ,
  parameter AXI_ID                 = 4'b0000,
  parameter AXI_BURST_LEN          = 8'd31  , //burst length = AXI_BURST_LEN+1
  parameter FIFO_ADDR_DEPTH        = 64     
)
(
  // clock reset
  input                          clk           ,
  input                          reset         ,
  // wr_fifo wr Interface
  input                          wrfifo_clr    ,
  input                          wrfifo_clk    ,
  input                          wrfifo_wren   ,
  input   [FIFO_DW-1:0]          wrfifo_din    ,
  output                         wrfifo_full   ,
  output  [15:0]                 wrfifo_wr_cnt ,
  // rd_fifo rd Interface
  input                          rdfifo_clr    ,
  input                          rdfifo_clk    ,
  input                          rdfifo_rden   ,
  output  [FIFO_DW-1:0]          rdfifo_dout   ,
  output                         rdfifo_empty  ,
  output  [15:0]                 rdfifo_rd_cnt ,
  // Master Interface Write Address Ports
  output  [AXI_ID_WIDTH-1:0]     m_axi_awid    ,
  output  [AXI_ADDR_WIDTH-1:0]   m_axi_awaddr  ,
  output  [7:0]                  m_axi_awlen   ,
  output  [2:0]                  m_axi_awsize  ,
  output  [1:0]                  m_axi_awburst ,
  output  [0:0]                  m_axi_awlock  ,
  output  [3:0]                  m_axi_awcache ,
  output  [2:0]                  m_axi_awprot  ,
  output  [3:0]                  m_axi_awqos   ,
  output  [3:0]                  m_axi_awregion,
  output                         m_axi_awvalid ,
  input                          m_axi_awready ,
  // Master Interface Write Data Ports
  output  [AXI_DATA_WIDTH-1:0]   m_axi_wdata   ,
  output  [AXI_DATA_WIDTH/8-1:0] m_axi_wstrb   ,
  output                         m_axi_wlast   ,
  output                         m_axi_wvalid  ,
  input                          m_axi_wready  ,
  // Master Interface Write Response Ports
  input   [AXI_ID_WIDTH-1:0]     m_axi_bid     ,
  input   [1:0]                  m_axi_bresp   ,
  input                          m_axi_bvalid  ,
  output                         m_axi_bready  ,
  // Master Interface Read Address Ports
  output  [AXI_ID_WIDTH-1:0]     m_axi_arid    ,
  output  [AXI_ADDR_WIDTH-1:0]   m_axi_araddr  ,
  output  [7:0]                  m_axi_arlen   ,
  output  [2:0]                  m_axi_arsize  ,
  output  [1:0]                  m_axi_arburst ,
  output  [0:0]                  m_axi_arlock  ,
  output  [3:0]                  m_axi_arcache ,
  output  [2:0]                  m_axi_arprot  ,
  output  [3:0]                  m_axi_arqos   ,
  output  [3:0]                  m_axi_arregion,
  output                         m_axi_arvalid ,
  input                          m_axi_arready ,
  // Master Interface Read Data Ports
  input   [AXI_ID_WIDTH-1:0]     m_axi_rid     ,
  input   [AXI_DATA_WIDTH-1:0]   m_axi_rdata   ,
  input   [1:0]                  m_axi_rresp   ,
  input                          m_axi_rlast   ,
  input                          m_axi_rvalid  ,
  output                         m_axi_rready  
);

  localparam FIFO_ADDR_WIDTH = clogb2(FIFO_ADDR_DEPTH-1);

  wire                      wrfifo_rden;
  wire [AXI_DATA_WIDTH-1:0] wrfifo_dout;
  wire [FIFO_ADDR_WIDTH:0]  wrfifo_rd_cnt;
  wire                      wrfifo_empty;
  wire                      wrfifo_wr_rst_busy;
  wire                      wrfifo_rd_rst_busy;

  wire                      rdfifo_wren;
  wire [AXI_DATA_WIDTH-1:0] rdfifo_din;
  wire [FIFO_ADDR_WIDTH:0]  rdfifo_wr_cnt;
  wire                      rdfifo_full;
  wire                      rdfifo_wr_rst_busy;
  wire                      rdfifo_rd_rst_busy;

  reg                       wrfifo_clr_sync_clk;
  reg                       wr_addr_clr;
  reg                       rdfifo_clr_sync_clk;
  reg                       rd_addr_clr;

  wr_ddr3_fifo wr_ddr3_fifo
  (
    .rst           (wrfifo_clr         ),
    .wr_clk        (wrfifo_clk         ),
    .rd_clk        (clk                ),
    .din           (wrfifo_din         ),
    .wr_en         (wrfifo_wren        ),
    .rd_en         (wrfifo_rden        ),
    .dout          (wrfifo_dout        ),
    .full          (wrfifo_full        ),
    .empty         (wrfifo_empty       ),
    .rd_data_count (wrfifo_rd_cnt      ),
    .wr_data_count (wrfifo_wr_cnt      ),
    .wr_rst_busy   (wrfifo_wr_rst_busy ),
    .rd_rst_busy   (wrfifo_rd_rst_busy ) 
  );

  rd_ddr3_fifo rd_ddr3_fifo
  (
    .rst           (rdfifo_clr         ),
    .wr_clk        (clk                ),
    .rd_clk        (rdfifo_clk         ),
    .din           (rdfifo_din         ),
    .wr_en         (rdfifo_wren        ),
    .rd_en         (rdfifo_rden        ),
    .dout          (rdfifo_dout        ),
    .full          (rdfifo_full        ),
    .empty         (rdfifo_empty       ),
    .rd_data_count (rdfifo_rd_cnt      ),
    .wr_data_count (rdfifo_wr_cnt      ),
    .wr_rst_busy   (rdfifo_wr_rst_busy ),
    .rd_rst_busy   (rdfifo_rd_rst_busy ) 
  );

  always@(posedge clk)
  begin
    wrfifo_clr_sync_clk <= wrfifo_clr;
    wr_addr_clr <= wrfifo_clr_sync_clk;
  end

  always@(posedge clk)
  begin
    rdfifo_clr_sync_clk <= rdfifo_clr;
    rd_addr_clr <= rdfifo_clr_sync_clk;
  end

  fifo_to_axi4
  #(
    .WR_AXI_BYTE_ADDR_BEGIN (WR_AXI_BYTE_ADDR_BEGIN ),
    .WR_AXI_BYTE_ADDR_END   (WR_AXI_BYTE_ADDR_END   ),

    .AXI_DATA_WIDTH         (AXI_DATA_WIDTH         ),
    .AXI_ADDR_WIDTH         (AXI_ADDR_WIDTH         ),
    .AXI_ID_WIDTH           (AXI_ID_WIDTH           ),
    .AXI_ID                 (AXI_ID                 ),
    .AXI_BURST_LEN          (AXI_BURST_LEN          ),//burst length = AXI_BURST_LEN+1
    .FIFO_ADDR_WIDTH        (FIFO_ADDR_WIDTH        )
  )fifo_to_axi4_inst
  (
    //clock reset
    .clk                    (clk                    ),
    .reset                  (reset                  ),
    //FIFO Interface ports
    .addr_clr               (wr_addr_clr            ), //1:clear, sync clk
    .fifo_rdreq             (wrfifo_rden            ),
    .fifo_rddata            (wrfifo_dout            ),
    .fifo_empty             (wrfifo_empty           ),
    .fifo_rd_cnt            (wrfifo_rd_cnt          ),
    .fifo_rst_busy          (wrfifo_rd_rst_busy     ),
    // Slave Interface Write Address Ports
    .m_axi_awid             (m_axi_awid             ),
    .m_axi_awaddr           (m_axi_awaddr           ),
    .m_axi_awlen            (m_axi_awlen            ),
    .m_axi_awsize           (m_axi_awsize           ),
    .m_axi_awburst          (m_axi_awburst          ),
    .m_axi_awlock           (m_axi_awlock           ),
    .m_axi_awcache          (m_axi_awcache          ),
    .m_axi_awprot           (m_axi_awprot           ),
    .m_axi_awqos            (m_axi_awqos            ),
    .m_axi_awregion         (m_axi_awregion         ),
    .m_axi_awvalid          (m_axi_awvalid          ),
    .m_axi_awready          (m_axi_awready          ),
    // Slave Interface Write Data Ports
    .m_axi_wdata            (m_axi_wdata            ),
    .m_axi_wstrb            (m_axi_wstrb            ),
    .m_axi_wlast            (m_axi_wlast            ),
    .m_axi_wvalid           (m_axi_wvalid           ),
    .m_axi_wready           (m_axi_wready           ),
    // Slave Interface Write Response Ports
    .m_axi_bid              (m_axi_bid              ),
    .m_axi_bresp            (m_axi_bresp            ),
    .m_axi_bvalid           (m_axi_bvalid           ),
    .m_axi_bready           (m_axi_bready           )
  );

  axi4_to_fifo
  #(
    .RD_AXI_BYTE_ADDR_BEGIN (RD_AXI_BYTE_ADDR_BEGIN ),
    .RD_AXI_BYTE_ADDR_END   (RD_AXI_BYTE_ADDR_END   ),

    .AXI_DATA_WIDTH         (AXI_DATA_WIDTH         ),
    .AXI_ADDR_WIDTH         (AXI_ADDR_WIDTH         ),
    .AXI_ID_WIDTH           (AXI_ID_WIDTH           ),
    .AXI_ID                 (AXI_ID                 ),
    .AXI_BURST_LEN          (AXI_BURST_LEN          ),//burst length = AXI_BURST_LEN+1
    .FIFO_ADDR_WIDTH        (FIFO_ADDR_WIDTH        )
  )axi4_to_fifo_inst
  (
    //clock reset
    .clk                    (clk                    ),
    .reset                  (reset                  ),
    //FIFO Interface ports
    .addr_clr               (rd_addr_clr            ), //1:clear, sync clk
    .fifo_wrreq             (rdfifo_wren            ),
    .fifo_wrdata            (rdfifo_din             ),
    .fifo_alfull            (rdfifo_full            ),
    .fifo_wr_cnt            (rdfifo_wr_cnt          ),
    .fifo_rst_busy          (rdfifo_wr_rst_busy     ),
    // Slave Interface Read Address Ports
    .m_axi_arid             (m_axi_arid             ),
    .m_axi_araddr           (m_axi_araddr           ),
    .m_axi_arlen            (m_axi_arlen            ),
    .m_axi_arsize           (m_axi_arsize           ),
    .m_axi_arburst          (m_axi_arburst          ),
    .m_axi_arlock           (m_axi_arlock           ),
    .m_axi_arcache          (m_axi_arcache          ),
    .m_axi_arprot           (m_axi_arprot           ),
    .m_axi_arqos            (m_axi_arqos            ),
    .m_axi_arregion         (m_axi_arregion         ),
    .m_axi_arvalid          (m_axi_arvalid          ),
    .m_axi_arready          (m_axi_arready          ),
    // Slave Interface Read Data Ports
    .m_axi_rid              (m_axi_rid              ),
    .m_axi_rdata            (m_axi_rdata            ),
    .m_axi_rresp            (m_axi_rresp            ),
    .m_axi_rlast            (m_axi_rlast            ),
    .m_axi_rvalid           (m_axi_rvalid           ),
    .m_axi_rready           (m_axi_rready           )
  );


  //**********************************
  //The following function calculates the awsize/arsize width based on AXI_DATA_WIDTH
  //**********************************
  function integer clogb2;
    input integer axi_data_byte;
      for (clogb2=0; axi_data_byte>0; clogb2=clogb2+1)
        axi_data_byte = axi_data_byte >> 1;
  endfunction

endmodule