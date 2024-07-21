/////////////////////////////////////////////////////////////////////////////////
// Company       : 武汉芯路恒科技有限公司
//                 http://xiaomeige.taobao.com
// Web           : http://www.corecourse.cn
// 
// Create Date   : 2019/05/01 00:00:00
// Module Name   : DVP_Capture
// Description   : CMOS摄像头DVP接口控制逻辑
// 
// Dependencies  : 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
/////////////////////////////////////////////////////////////////////////////////

module DVP_Capture(
  Rst_p,
  PCLK,
  Vsync,
  Href,
  Data,

  ImageState,
  DataValid,
  DataPixel,
  DataHs,
  DataVs,
  Xaddr,
  Yaddr
);
  input Rst_p;
  input PCLK;
  input Vsync;
  input Href;
  input [7:0] Data;

  output reg ImageState;
  output DataValid;
  output [15:0] DataPixel;
  output DataHs;
  output DataVs;
  output [11:0] Xaddr;
  output [11:0] Yaddr;

  reg       r_Vsync;
  reg       r_Href;
  reg [7:0] r_Data;

  reg [15:0]r_DataPixel;
  reg       r_DataValid;
  reg       r_DataHs;
  reg       r_DataVs;
  reg [12:0]Hcount;
  reg [11:0]Vcount;
  reg [3:0] FrameCnt;

  reg       dump_frame;

  //等到初始化摄像完成且行场同步信号出现，释放清零信号，开始写入数据
  always@(posedge PCLK or posedge Rst_p)
  if (Rst_p)  
    ImageState <= 1'b1;
  else if(r_Vsync)
    ImageState <= 1'b0;

  //对DVP接口的数据使用寄存器打一拍，以用信号边沿检测功能
  always@(posedge PCLK)
  begin
    r_Vsync <= Vsync;
    r_Href  <= Href;
    r_Data  <= Data;
  end

  //在HREF为高电平时，计数输出数据个数
  always@(posedge PCLK or posedge Rst_p)
  if(Rst_p)
    Hcount <= 0;
  else if(r_Href)
    Hcount <= Hcount + 1'd1;
  else
    Hcount <= 0;

  /*根据计数器的计数值奇数和偶数的区别，在计数器为偶数时，
  将DVP接口数据端口上的数据存到输出像素数据的高字节，在计
  数器为奇数时，将DVP接口数据端口上的数据存到输出像素数据
  的低字节*/
  always@(posedge PCLK or posedge Rst_p)
  if(Rst_p)
    r_DataPixel <= 0;
  else if(!Hcount[0])
    r_DataPixel[15:8] <= r_Data;
  else 
    r_DataPixel[7:0] <= r_Data;

  /*在行计数器计数值为奇数，且HREF高电平期间，产生输出
   数据有效信号*/
  always@(posedge PCLK or posedge Rst_p)
  if(Rst_p)
    r_DataValid <= 0;
  else if(Hcount[0] && r_Href)
    r_DataValid <= 1;
  else
    r_DataValid <= 0;

  always@(posedge PCLK)
  begin
    r_DataHs <= r_Href;
    r_DataVs <= ~r_Vsync;
  end

  /*使用Vcount计数器对HREF信号的高电平进行计数，统计
  一帧图像中的每一行图像的行号*/
  always@(posedge PCLK or posedge Rst_p)
  if(Rst_p)
    Vcount <= 0;
  else if(r_Vsync)
    Vcount <= 0;
  else if({r_Href,Href} == 2'b01)
    Vcount <= Vcount + 1'd1;
  else
    Vcount <= Vcount;

  /*输出X地址*/  
  assign Yaddr = Vcount;

  /*由于一行N个像素的图像输出2N个数据，所以Hcount计数
  值为N的2倍，将该计数值除以2后即可作为Xaddr输出*/
  assign Xaddr = Hcount[12:1];

  /*帧计数器，对每次系统开始运行后的前10帧图像进行计数*/
  always@(posedge PCLK or posedge Rst_p)
  if(Rst_p)  
    FrameCnt <= 0;
  else if({r_Vsync,Vsync}== 2'b01)begin
    if(FrameCnt >= 10)
      FrameCnt <= 4'd10;
    else
      FrameCnt <= FrameCnt + 1'd1;
  end
  else
    FrameCnt <= FrameCnt;

  /*舍弃每次系统开始运行后的前10帧图像的数据，以确保输出图像稳定*/
  always@(posedge PCLK or posedge Rst_p)
  if(Rst_p)
    dump_frame <= 0;
  else if(FrameCnt >= 10)
    dump_frame <= 1'd1;
  else
    dump_frame <= 0;

  assign DataPixel = r_DataPixel;
  assign DataValid = r_DataValid & dump_frame;
  assign DataHs = r_DataHs & dump_frame;
  assign DataVs = r_DataVs & dump_frame;

endmodule
