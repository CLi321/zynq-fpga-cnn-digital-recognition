/////////////////////////////////////////////////////////////////////////////////
// Company       : �人о·��Ƽ����޹�˾
//                 http://xiaomeige.taobao.com
// Web           : http://www.corecourse.cn
// 
// Create Date   : 2019/05/01 00:00:00
// Module Name   : DVP_Capture
// Description   : CMOS����ͷDVP�ӿڿ����߼�
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

  //�ȵ���ʼ������������г�ͬ���źų��֣��ͷ������źţ���ʼд������
  always@(posedge PCLK or posedge Rst_p)
  if (Rst_p)  
    ImageState <= 1'b1;
  else if(r_Vsync)
    ImageState <= 1'b0;

  //��DVP�ӿڵ�����ʹ�üĴ�����һ�ģ������źű��ؼ�⹦��
  always@(posedge PCLK)
  begin
    r_Vsync <= Vsync;
    r_Href  <= Href;
    r_Data  <= Data;
  end

  //��HREFΪ�ߵ�ƽʱ������������ݸ���
  always@(posedge PCLK or posedge Rst_p)
  if(Rst_p)
    Hcount <= 0;
  else if(r_Href)
    Hcount <= Hcount + 1'd1;
  else
    Hcount <= 0;

  /*���ݼ������ļ���ֵ������ż���������ڼ�����Ϊż��ʱ��
  ��DVP�ӿ����ݶ˿��ϵ����ݴ浽����������ݵĸ��ֽڣ��ڼ�
  ����Ϊ����ʱ����DVP�ӿ����ݶ˿��ϵ����ݴ浽�����������
  �ĵ��ֽ�*/
  always@(posedge PCLK or posedge Rst_p)
  if(Rst_p)
    r_DataPixel <= 0;
  else if(!Hcount[0])
    r_DataPixel[15:8] <= r_Data;
  else 
    r_DataPixel[7:0] <= r_Data;

  /*���м���������ֵΪ��������HREF�ߵ�ƽ�ڼ䣬�������
   ������Ч�ź�*/
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

  /*ʹ��Vcount��������HREF�źŵĸߵ�ƽ���м�����ͳ��
  һ֡ͼ���е�ÿһ��ͼ����к�*/
  always@(posedge PCLK or posedge Rst_p)
  if(Rst_p)
    Vcount <= 0;
  else if(r_Vsync)
    Vcount <= 0;
  else if({r_Href,Href} == 2'b01)
    Vcount <= Vcount + 1'd1;
  else
    Vcount <= Vcount;

  /*���X��ַ*/  
  assign Yaddr = Vcount;

  /*����һ��N�����ص�ͼ�����2N�����ݣ�����Hcount����
  ֵΪN��2�������ü���ֵ����2�󼴿���ΪXaddr���*/
  assign Xaddr = Hcount[12:1];

  /*֡����������ÿ��ϵͳ��ʼ���к��ǰ10֡ͼ����м���*/
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

  /*����ÿ��ϵͳ��ʼ���к��ǰ10֡ͼ������ݣ���ȷ�����ͼ���ȶ�*/
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
