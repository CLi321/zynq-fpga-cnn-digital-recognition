/////////////////////////////////////////////////////////////////////////////////
// Company       : 武汉芯路恒科技有限公司
//                 http://xiaomeige.taobao.com
// Web           : http://www.corecourse.cn
// 
// Create Date   : 2023/02/01 00:00:00
// Module Name   : fifo_to_axi4
// Description   : fifo接口到AXI4接口的转换模块(不含FIFO)
// 
// Dependencies  : 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
/////////////////////////////////////////////////////////////////////////////////

module fifo_to_axi4
#(
  parameter WR_AXI_BYTE_ADDR_BEGIN = 0      ,
  parameter WR_AXI_BYTE_ADDR_END   = 200    ,

  parameter AXI_DATA_WIDTH         = 64    ,
  parameter AXI_ADDR_WIDTH         = 32     ,
  parameter AXI_ID_WIDTH           = 4      ,
  parameter AXI_ID                 = 4'b0000,
  parameter AXI_BURST_LEN          = 8'd31  , //burst length = AXI_BURST_LEN+1
  parameter FIFO_ADDR_WIDTH        = 8     
)
(
  // clock reset
  input                              clk              ,
  input                              reset            ,
  // wr_fifo wr Interface
  input                              addr_clr         ,//sync clk
  output reg                         fifo_rdreq       ,
  input      [AXI_DATA_WIDTH-1:0]    fifo_rddata      ,
  input                              fifo_empty       ,
  input      [FIFO_ADDR_WIDTH:0]     fifo_rd_cnt      ,
  input                              fifo_rst_busy    ,
  // Master Interface Write Address Ports
  output     [AXI_ID_WIDTH-1:0]      m_axi_awid       ,
  output reg [AXI_ADDR_WIDTH-1:0]    m_axi_awaddr     ,
  output     [7:0]                   m_axi_awlen      ,
  output     [2:0]                   m_axi_awsize     ,
  output     [1:0]                   m_axi_awburst    ,
  output     [0:0]                   m_axi_awlock     ,
  output     [3:0]                   m_axi_awcache    ,
  output     [2:0]                   m_axi_awprot     ,
  output     [3:0]                   m_axi_awqos      ,
  output     [3:0]                   m_axi_awregion   ,
  output reg                         m_axi_awvalid    ,
  input                              m_axi_awready    ,
  // Master Interface Write Data Ports
  output     [AXI_DATA_WIDTH-1:0]    m_axi_wdata      ,
  output     [AXI_DATA_WIDTH/8-1:0]  m_axi_wstrb      ,
  output reg                         m_axi_wlast      ,
  output reg                         m_axi_wvalid     ,
  input                              m_axi_wready     ,
  // Master Interface Write Response Ports
  input      [AXI_ID_WIDTH-1:0]      m_axi_bid        ,
  input      [1:0]                   m_axi_bresp      ,
  input                              m_axi_bvalid     ,
  output                             m_axi_bready     
);

  localparam S_IDLE        = 5'b00001,
             S_WR_ADDR     = 5'b00010,
             S_WR_DATA_PRE = 5'b00100,
             S_WR_DATA     = 5'b01000,
             S_WR_RESP     = 5'b10000;

  localparam DATA_SIZE = clogb2(AXI_DATA_WIDTH/8-1);

  wire [7:0]                wr_req_cnt_thresh;
  wire                      wr_ddr3_req;
  reg                       axi_awaddr_clr;
  reg                       fifo_rddata_valid;
  reg  [AXI_DATA_WIDTH-1:0] fifo_rddata_latch;
  reg  [4:0]                curr_wr_state;
  reg  [4:0]                next_wr_state;
  reg  [7:0]                wr_data_cnt;

  assign m_axi_awid    = AXI_ID[AXI_ID_WIDTH-1:0];
  assign m_axi_awsize  = DATA_SIZE;
  assign m_axi_awburst = 2'b01;
  assign m_axi_awlock  = 1'b0;
  assign m_axi_awcache = 4'b0000;
  assign m_axi_awprot  = 3'b000;
  assign m_axi_awqos   = 4'b0000;
  assign m_axi_awregion= 4'b0000;
  assign m_axi_awlen   = AXI_BURST_LEN[7:0];
  assign m_axi_wstrb   = 16'hffff;
  assign m_axi_bready  = 1'b1;

  assign wr_req_cnt_thresh = (m_axi_awlen == 'd0) ? 1'b1 : (AXI_BURST_LEN[7:0]+1'b1);
  assign wr_ddr3_req       = (fifo_rst_busy == 1'b0) && (~fifo_empty) && (fifo_rd_cnt >= wr_req_cnt_thresh) ? 1'b1:1'b0;

  always@(posedge clk or posedge reset)
  begin
    if(reset)
      axi_awaddr_clr <= 1'b0;
    else if(m_axi_bready && m_axi_bvalid)
      axi_awaddr_clr <= 1'b0;
    else if(addr_clr && (m_axi_awvalid || m_axi_wvalid))
      axi_awaddr_clr <= 1'b1;
    else
      axi_awaddr_clr <= axi_awaddr_clr;
  end

  //m_axi_awaddr
  always@(posedge clk or posedge reset)
  begin
    if(reset)
      m_axi_awaddr <= WR_AXI_BYTE_ADDR_BEGIN;
    else if(addr_clr || axi_awaddr_clr)
      m_axi_awaddr <= WR_AXI_BYTE_ADDR_BEGIN;
    else if(m_axi_awaddr >= WR_AXI_BYTE_ADDR_END)
      m_axi_awaddr <= WR_AXI_BYTE_ADDR_BEGIN;
    else if((curr_wr_state == S_WR_RESP) && m_axi_bready && m_axi_bvalid && (m_axi_bresp == 2'b00) && (m_axi_bid == AXI_ID[AXI_ID_WIDTH-1:0]))
      m_axi_awaddr <= m_axi_awaddr + ((m_axi_awlen + 1'b1)*(AXI_DATA_WIDTH/8));
    else
      m_axi_awaddr <= m_axi_awaddr;
  end

  //m_axi_awvalid
  always@(posedge clk or posedge reset)
  begin
    if(reset)
      m_axi_awvalid <= 1'b0;
    else if((curr_wr_state == S_WR_ADDR) && m_axi_awready && m_axi_awvalid)
      m_axi_awvalid <= 1'b0;
    else if(curr_wr_state == S_WR_ADDR)
      m_axi_awvalid <= 1'b1;
    else
      m_axi_awvalid <= m_axi_awvalid;
  end

  always@(posedge clk or posedge reset)
  begin
    if(reset)
      fifo_rdreq <= 1'b0;
    else if((curr_wr_state == S_WR_ADDR) && m_axi_awready && m_axi_awvalid)
      fifo_rdreq <= 1'b1;
    else if((curr_wr_state == S_WR_DATA) && m_axi_wready && m_axi_wvalid && (~m_axi_wlast))
      fifo_rdreq <= 1'b1;
    else
      fifo_rdreq <= 1'b0;
  end

  always@(posedge clk)
  begin
      fifo_rddata_valid <= fifo_rdreq;
  end

  always@(posedge clk or posedge reset)
  begin
    if(reset)
      fifo_rddata_latch <= {AXI_DATA_WIDTH{1'b0}};
    else if(fifo_rddata_valid)
      fifo_rddata_latch <= fifo_rddata;
  end

  assign m_axi_wdata   = fifo_rddata_latch;

  //m_axi_wvalid
  always@(posedge clk or posedge reset)
  begin
    if(reset)
      m_axi_wvalid <= 1'b0;
    else if(m_axi_wready && m_axi_wvalid)
      m_axi_wvalid <= 1'b0;
    else if(fifo_rddata_valid)
      m_axi_wvalid <= 1'b1;
    else
      m_axi_wvalid <= m_axi_wvalid;
  end

  //wr_data_cnt
  always@(posedge clk or posedge reset)
  begin
    if(reset)
      wr_data_cnt <= 1'b0;
    else if(curr_wr_state == S_IDLE)
      wr_data_cnt <= 1'b0;
    else if(m_axi_wready && m_axi_wvalid)
      wr_data_cnt <= wr_data_cnt + 1'b1;
    else
      wr_data_cnt <= wr_data_cnt;
  end

  //m_axi_wlast
  always@(posedge clk or posedge reset)
  begin
    if(reset)
      m_axi_wlast <= 1'b0;
    else if(m_axi_wready && m_axi_wvalid && m_axi_wlast)
      m_axi_wlast <= 1'b0;
    else if(m_axi_awlen == 8'd0)
      m_axi_wlast <= 1'b1;
    else if(m_axi_wready && m_axi_wvalid && (wr_data_cnt == m_axi_awlen -1'b1))
      m_axi_wlast <= 1'b1;
    else
      m_axi_wlast <= m_axi_wlast;
  end

  //**********************************
  //write state machine
  //**********************************
  always@(posedge clk or posedge reset)
  begin
    if(reset)
      curr_wr_state <= S_IDLE;
    else
      curr_wr_state <= next_wr_state;
  end

  always@(*)
  begin
    case(curr_wr_state)
      S_IDLE:
      begin
        if(wr_ddr3_req == 1'b1)
          next_wr_state = S_WR_ADDR;
        else
          next_wr_state = S_IDLE;
      end

      S_WR_ADDR:
      begin
        if(m_axi_awready && m_axi_awvalid)
          next_wr_state = S_WR_DATA_PRE;
        else
          next_wr_state = S_WR_ADDR;
      end

      S_WR_DATA_PRE:
      begin
        next_wr_state = S_WR_DATA;
      end

      S_WR_DATA:
      begin
        if(m_axi_wready && m_axi_wvalid && m_axi_wlast)
          next_wr_state = S_WR_RESP;
        else if(m_axi_wready && m_axi_wvalid)
          next_wr_state = S_WR_DATA_PRE;
        else
          next_wr_state = S_WR_DATA;
      end

      S_WR_RESP:
      begin
        if(m_axi_bready && m_axi_bvalid && (m_axi_bresp == 2'b00) && (m_axi_bid == AXI_ID[AXI_ID_WIDTH-1:0]))
          next_wr_state = S_IDLE;
        else
          next_wr_state = S_WR_RESP;
      end

      default: next_wr_state = S_IDLE;
    endcase
  end


  //**********************************
  //The following function calculates the awsize/arsize width based on AXI_DATA_WIDTH
  //**********************************
  function integer clogb2;
    input integer axi_data_byte;
      for (clogb2=0; axi_data_byte>0; clogb2=clogb2+1)
        axi_data_byte = axi_data_byte >> 1;
  endfunction

endmodule