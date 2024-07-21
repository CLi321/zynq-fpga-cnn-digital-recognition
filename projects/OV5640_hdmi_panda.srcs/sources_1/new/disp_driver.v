/////////////////////////////////////////////////////////////////////////////////
// Company       : 武汉芯路恒科技有限公司
//                 http://xiaomeige.taobao.com
// Web           : http://www.corecourse.cn
// 
// Create Date   : 2019/05/01 00:00:00
// Module Name   : disp_driver
// Description   : 显示设备驱动模块
// 
// Dependencies  : 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
/////////////////////////////////////////////////////////////////////////////////

`include "disp_parameter_cfg.v"

module disp_driver #(
  parameter AHEAD_CLK_CNT = 0 //ahead N clock generate DataReq
)(
  ClkDisp,
  Rst_n,

  Data,
  DataReq,

  H_Addr,
  V_Addr,
  Disp_Sof,

  Disp_HS,
  Disp_VS,
  Disp_Red,
  Disp_Green,
  Disp_Blue,
  Disp_DE,
  Disp_PCLK
);

  input ClkDisp;
  input Rst_n;
  
  input [`Red_Bits + `Green_Bits + `Blue_Bits - 1:0] Data;
  output reg DataReq;

  output [11:0] H_Addr;
  output [11:0] V_Addr;
  output reg Disp_Sof; //一帧图像起始标识信号，ClkDisp时钟域

  output reg Disp_HS;
  output reg Disp_VS;
  output reg [`Red_Bits - 1 :0]Disp_Red;
  output reg [`Green_Bits - 1 :0]Disp_Green;
  output reg [`Blue_Bits - 1 :0]Disp_Blue;
  output reg Disp_DE;
  output Disp_PCLK;

  //----------------内部信号定义----------------
  reg [11:0] hcount_r;     //行扫描计数器
  reg [11:0] vcount_r;     //场扫描计数器
  wire       hcount_ov;
  wire       vcount_ov;
  reg        Disp_DE_pre;
  reg        Disp_VS_dly1;

  `ifdef HW_VGA
    assign Disp_PCLK = ~ClkDisp;
  `else
    assign Disp_PCLK = ClkDisp;
  `endif  

  localparam hdat_begin = `H_Sync_Time + `H_Back_Porch + `H_Left_Border - 1'b1;
  localparam hdat_end = `H_Total_Time - `H_Right_Border - `H_Front_Porch - 1'b1;
  
  localparam vdat_begin  = `V_Sync_Time + `V_Back_Porch + `V_Top_Border - 1'b1;
  localparam vdat_end = `V_Total_Time - `V_Bottom_Border - `V_Front_Porch - 1'b1;

  assign H_Addr = Disp_DE?(hcount_r - hdat_begin):12'd0;
  assign V_Addr = Disp_DE?(vcount_r - vdat_begin):12'd0;

  //行扫描
  assign hcount_ov = (hcount_r >= `H_Total_Time - 1);

  always@(posedge ClkDisp or negedge Rst_n)
  if(!Rst_n)
    hcount_r <= 0;
  else if(hcount_ov)
    hcount_r <= 0;
  else
    hcount_r <= hcount_r + 1'b1;

  //场扫描
  assign vcount_ov = (vcount_r >= `V_Total_Time - 1);

  always@(posedge ClkDisp or negedge Rst_n)
  if(!Rst_n)
    vcount_r <= 0;
  else if(hcount_ov) begin
    if(vcount_ov)
      vcount_r <= 0;
    else
      vcount_r <= vcount_r + 1'd1;
  end
  else
    vcount_r <= vcount_r;

  always@(posedge ClkDisp)
    Disp_DE_pre <= ((hcount_r >= hdat_begin)&&(hcount_r < hdat_end))&&
                    ((vcount_r >= vdat_begin)&&(vcount_r < vdat_end));

  always@(posedge ClkDisp)
    DataReq <= ((hcount_r >= hdat_begin-AHEAD_CLK_CNT)&&(hcount_r < hdat_end-AHEAD_CLK_CNT))&&
                ((vcount_r >= vdat_begin)&&(vcount_r < vdat_end));

  always@(posedge ClkDisp) begin
    Disp_HS <= (hcount_r > `H_Sync_Time - 1);
    Disp_VS <= (vcount_r > `V_Sync_Time - 1);
    {Disp_Red,Disp_Green,Disp_Blue} <= (Disp_DE_pre)?Data:1'd0;
    Disp_DE <= Disp_DE_pre;
  end

  always@(posedge ClkDisp)
  begin
    Disp_VS_dly1 <= Disp_VS;

    Disp_Sof <= (!Disp_VS_dly1 && Disp_VS);
  end

endmodule
