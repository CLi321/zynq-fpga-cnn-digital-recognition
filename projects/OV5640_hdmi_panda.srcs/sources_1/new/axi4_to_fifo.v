/////////////////////////////////////////////////////////////////////////////////
// Company       : 武汉芯路恒科技有限公司
//                 http://xiaomeige.taobao.com
// Web           : http://www.corecourse.cn
// 
// Create Date   : 2023/02/01 00:00:00
// Module Name   : axi4_to_fifo
// Description   : AXI4接口到fifo接口的转换模块(不含FIFO)
// 
// Dependencies  : 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
/////////////////////////////////////////////////////////////////////////////////

module axi4_to_fifo
#(
  parameter RD_AXI_BYTE_ADDR_BEGIN = 0      ,
  parameter RD_AXI_BYTE_ADDR_END   = 200    ,

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
  // rd_fifo wr Interface
  input                              addr_clr         ,
  output reg                         fifo_wrreq       ,
  output reg [AXI_DATA_WIDTH-1:0]    fifo_wrdata      ,
  input                              fifo_alfull      ,
  input      [FIFO_ADDR_WIDTH-1:0]   fifo_wr_cnt      ,
  input                              fifo_rst_busy    ,
  // Master Interface Read Address Ports
  output     [AXI_ID_WIDTH-1:0]      m_axi_arid       ,
  output reg [AXI_ADDR_WIDTH-1:0]    m_axi_araddr     ,
  output     [7:0]                   m_axi_arlen      ,
  output     [2:0]                   m_axi_arsize     ,
  output     [1:0]                   m_axi_arburst    ,
  output     [0:0]                   m_axi_arlock     ,
  output     [3:0]                   m_axi_arcache    ,
  output     [2:0]                   m_axi_arprot     ,
  output     [3:0]                   m_axi_arqos      ,
  output     [3:0]                   m_axi_arregion   ,
  output reg                         m_axi_arvalid    ,
  input                              m_axi_arready    ,
  // Master Interface Read Data Ports
  input      [AXI_ID_WIDTH-1:0]      m_axi_rid        ,
  input      [AXI_DATA_WIDTH-1:0]    m_axi_rdata      ,
  input      [1:0]                   m_axi_rresp      ,
  input                              m_axi_rlast      ,
  input                              m_axi_rvalid     ,
  output                             m_axi_rready     
);

  localparam S_IDLE        = 3'b001,
             S_RD_ADDR     = 3'b010,
             S_RD_RESP     = 3'b100;

  localparam DATA_SIZE = clogb2(AXI_DATA_WIDTH/8-1);

  wire [7:0]                rd_req_cnt_thresh;
  wire                      rd_ddr3_req;
  reg                       axi_araddr_clr;
  reg  [2:0]                curr_state;
  reg  [2:0]                next_state;

  assign m_axi_arid    = AXI_ID[AXI_ID_WIDTH-1:0];
  assign m_axi_arsize  = DATA_SIZE;
  assign m_axi_arburst = 2'b01;
  assign m_axi_arlock  = 1'b0;
  assign m_axi_arcache = 4'b0000;
  assign m_axi_arprot  = 3'b000;
  assign m_axi_arqos   = 4'b0000;
  assign m_axi_arregion= 4'b0000;
  assign m_axi_arlen   = AXI_BURST_LEN[7:0];

  assign m_axi_rready  = ~fifo_alfull;

  assign rd_req_cnt_thresh = 2**FIFO_ADDR_WIDTH - (AXI_BURST_LEN[7:0]+1'b1);

  assign rd_ddr3_req   = (fifo_rst_busy == 1'b0) && (fifo_wr_cnt < rd_req_cnt_thresh-2'd2) ? 1'b1:1'b0;

  always@(posedge clk or posedge reset)
  begin
    if(reset)
      axi_araddr_clr <= 1'b0;
    else if(m_axi_rready && m_axi_rvalid && m_axi_rlast)
      axi_araddr_clr <= 1'b0;
    else if(addr_clr && (m_axi_arvalid || m_axi_rvalid))
      axi_araddr_clr <= 1'b1;
    else
      axi_araddr_clr <= axi_araddr_clr;
  end

  //m_axi_araddr
  always@(posedge clk or posedge reset)
  begin
    if(reset)
      m_axi_araddr <= RD_AXI_BYTE_ADDR_BEGIN;
    else if(addr_clr || axi_araddr_clr)
      m_axi_araddr <= RD_AXI_BYTE_ADDR_BEGIN;
    else if(m_axi_araddr >= RD_AXI_BYTE_ADDR_END)
      m_axi_araddr <= RD_AXI_BYTE_ADDR_BEGIN;
    else if((curr_state == S_RD_RESP) && m_axi_rready && m_axi_rvalid && m_axi_rlast && (m_axi_rresp == 2'b00) && (m_axi_rid == AXI_ID[AXI_ID_WIDTH-1:0]))
      m_axi_araddr <= m_axi_araddr + ((m_axi_arlen + 1'b1)*(AXI_DATA_WIDTH/8));
    else
      m_axi_araddr <= m_axi_araddr;
  end

  //m_axi_arvalid
  always@(posedge clk or posedge reset)
  begin
    if(reset)
      m_axi_arvalid <= 1'b0;
    else if((curr_state == S_RD_ADDR) && m_axi_arready && m_axi_arvalid)
      m_axi_arvalid <= 1'b0;
    else if(curr_state == S_RD_ADDR)
      m_axi_arvalid <= 1'b1;
    else
      m_axi_arvalid <= m_axi_arvalid;
  end

  always@(posedge clk or posedge reset)
  begin
    if(reset)
    begin
      fifo_wrreq  <= 1'b0;
      fifo_wrdata <= {AXI_DATA_WIDTH{1'b0}};
    end
    else if(addr_clr || axi_araddr_clr)
    begin
      fifo_wrreq  <= 1'b0;
      fifo_wrdata <= {AXI_DATA_WIDTH{1'b0}};
    end
    else if(m_axi_rvalid && m_axi_rready)
    begin
      fifo_wrreq  <= 1'b1;
      fifo_wrdata <= m_axi_rdata;
    end
    else
    begin
      fifo_wrreq  <= 1'b0;
      fifo_wrdata <= {AXI_DATA_WIDTH{1'b0}};
    end
  end

  //**********************************
  //read state machine
  //**********************************
  always@(posedge clk or posedge reset)
  begin
    if(reset)
      curr_state <= S_IDLE;
    else
      curr_state <= next_state;
  end

  always@(*)
  begin
    case(curr_state)
      S_IDLE:
      begin
        if(rd_ddr3_req == 1'b1)
          next_state = S_RD_ADDR;
        else
          next_state = S_IDLE;
      end

      S_RD_ADDR:
      begin
        if(m_axi_arready && m_axi_arvalid)
          next_state = S_RD_RESP;
        else
          next_state = S_RD_ADDR;
      end

      S_RD_RESP:
      begin
        if(m_axi_rready && m_axi_rvalid && m_axi_rlast && (m_axi_rresp == 2'b00) && (m_axi_rid == AXI_ID[AXI_ID_WIDTH-1:0]))
          next_state = S_IDLE;
        else
          next_state = S_RD_RESP;
      end

      default: next_state = S_IDLE;
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