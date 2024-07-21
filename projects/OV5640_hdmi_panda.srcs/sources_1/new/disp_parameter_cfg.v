/////////////////////////////////////////////////////////////////////////////////
// Company       : �人о·��Ƽ����޹�˾
//                 http://xiaomeige.taobao.com
// Web           : http://www.corecourse.cn
// 
// Create Date   : 2019/04/10 00:00:00
// Module Name   : 
// Description   : ��ʾ�豸����Ӳ������ͷ�ļ�
// 
// Dependencies  : 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
/////////////////////////////////////////////////////////////////////////////////

/*ʹ��˵��
ʹ��ʱ����ʵ�ʹ�������ѡ��2��Ԥ��������Ϳ���

����1: MODE_RGBxxx
Ԥ����������������������16λģʽ����24λģʽ����ѡһ
  MODE_RGB888��24λģʽ
  MODE_RGB565��16λģʽ
���С÷���ṩ��һϵ����ʾ�豸�������豸�ò�����ѡ��
  4.3��TFT��ʾ��------ʹ��16λɫRGB565ģʽ
  5��TFT��ʾ��--------ʹ��16λɫRGB565ģʽ
  GM7123ģ��----------ʹ��24λɫRGB888ģʽ

����2: Resolution_xxxx
Ԥ��������������ʾ�豸�ֱ��ʣ������豸�ֱ�����������

4.3��TFT��ʾ����
  Resolution_480x272

5��TFT��ʾ����
  Resolution_800x480

VGA�����ֱ��ʣ�
  Resolution_640x480
  Resolution_800x600
  Resolution_1024x600
  Resolution_1024x768
  Resolution_1280x720
  Resolution_1920x1080
*/

//Ҳ��ͨ���궨����ʾ�豸�������������ã�ѡ��һ��ʹ�ܣ�����ʹ��ע�͵ķ�ʽ����
//ʹ��4.3��480*272�ֱ�����ʾ��
//`define HW_TFT480x272

//ʹ��5��800*480�ֱ�����ʾ��
//`define HW_TFT800x480

//ʹ��VGA��ʾ����Ĭ��Ϊ640*480�ֱ��ʣ�24λģʽ�������ֱ��ʻ���16λģʽ���ڴ���63����75�н���������
`define HW_VGA

//=====================================
//���º궨��ѡ�����ڸ�����ʾ�豸����λģʽ�ͷֱ���2������������
//=====================================
`ifdef HW_TFT480x272  //ʹ�÷ֱ���480*272��ʾ��
  `define MODE_RGB565
  `define Resolution_480x272 1 //ʱ��Ϊ9MHz

`elsif HW_TFT800x480  //ʹ�÷ֱ���800*480��ʾ��
  `define MODE_RGB565
  `define Resolution_800x480 1 //ʱ��Ϊ33MHz

`elsif HW_VGA    //ʹ��VGA��ʾ����Ĭ��Ϊ640*480�ֱ��ʣ�24λģʽ
//=====================================
//��ѡ�������ֱ��ʺ�16λģʽ�����û�����ʵ����������
//����70~71������λģʽ
//����73~78�����÷ֱ���
//=====================================
  //`define MODE_RGB565
  `define MODE_RGB888
//  `define Resolution_640x480   1 //ʱ��Ϊ25.175MHz
  `define Resolution_800x600   1 //ʱ��Ϊ40MHz
  //`define Resolution_1024x600  1 //ʱ��Ϊ51MHz
  //`define Resolution_1024x768  1 //ʱ��Ϊ65MHz
//  `define Resolution_1280x720  1 //ʱ��Ϊ74.25MHz
  //`define Resolution_1920x1080 1 //ʱ��Ϊ148.5MHz
`endif

//=====================================
//�������������������û������޸�
//=====================================
//���岻ͬ����ɫ���
`ifdef MODE_RGB888
  `define Red_Bits   8
  `define Green_Bits 8
  `define Blue_Bits  8
  
`elsif MODE_RGB565
  `define Red_Bits   5
  `define Green_Bits 6
  `define Blue_Bits  5
`endif

//���岻ͬ�ֱ��ʵ�ʱ�����
`ifdef Resolution_480x272
  `define H_Total_Time    12'd525
  `define H_Right_Border  12'd0
  `define H_Front_Porch   12'd2
  `define H_Sync_Time     12'd41
  `define H_Back_Porch    12'd2
  `define H_Left_Border   12'd0

  `define V_Total_Time    12'd286
  `define V_Bottom_Border 12'd0
  `define V_Front_Porch   12'd2
  `define V_Sync_Time     12'd10
  `define V_Back_Porch    12'd2
  `define V_Top_Border    12'd0
  
`elsif Resolution_640x480
  `define H_Total_Time    12'd800
  `define H_Right_Border  12'd8
  `define H_Front_Porch   12'd8
  `define H_Sync_Time     12'd96
  `define H_Back_Porch    12'd40
  `define H_Left_Border   12'd8

  `define V_Total_Time    12'd525
  `define V_Bottom_Border 12'd8
  `define V_Front_Porch   12'd2
  `define V_Sync_Time     12'd2
  `define V_Back_Porch    12'd25
  `define V_Top_Border    12'd8

`elsif Resolution_800x480
  `define H_Total_Time    12'd1056
  `define H_Right_Border  12'd0
  `define H_Front_Porch   12'd40
  `define H_Sync_Time     12'd128
  `define H_Back_Porch    12'd88
  `define H_Left_Border   12'd0

  `define V_Total_Time    12'd525
  `define V_Bottom_Border 12'd8
  `define V_Front_Porch   12'd2
  `define V_Sync_Time     12'd2
  `define V_Back_Porch    12'd25
  `define V_Top_Border    12'd8

`elsif Resolution_800x600
  `define H_Total_Time    12'd1056
  `define H_Right_Border  12'd0
  `define H_Front_Porch   12'd40
  `define H_Sync_Time     12'd128
  `define H_Back_Porch    12'd88
  `define H_Left_Border   12'd0

  `define V_Total_Time    12'd628
  `define V_Bottom_Border 12'd0
  `define V_Front_Porch   12'd1
  `define V_Sync_Time     12'd4
  `define V_Back_Porch    12'd23
  `define V_Top_Border    12'd0

`elsif Resolution_1024x600
  `define H_Total_Time    12'd1344
  `define H_Right_Border  12'd0
  `define H_Front_Porch   12'd24
  `define H_Sync_Time     12'd136
  `define H_Back_Porch    12'd160
  `define H_Left_Border   12'd0

  `define V_Total_Time    12'd628
  `define V_Bottom_Border 12'd0
  `define V_Front_Porch   12'd1
  `define V_Sync_Time     12'd4
  `define V_Back_Porch    12'd23
  `define V_Top_Border    12'd0

`elsif Resolution_1024x768
  `define H_Total_Time    12'd1344
  `define H_Right_Border  12'd0
  `define H_Front_Porch   12'd24
  `define H_Sync_Time     12'd136
  `define H_Back_Porch    12'd160
  `define H_Left_Border   12'd0

  `define V_Total_Time    12'd806
  `define V_Bottom_Border 12'd0
  `define V_Front_Porch   12'd3
  `define V_Sync_Time     12'd6
  `define V_Back_Porch    12'd29
  `define V_Top_Border    12'd0

`elsif Resolution_1280x720
  `define H_Total_Time    12'd1650
  `define H_Right_Border  12'd0
  `define H_Front_Porch   12'd110
  `define H_Sync_Time     12'd40
  `define H_Back_Porch    12'd220
  `define H_Left_Border   12'd0

  `define V_Total_Time    12'd750
  `define V_Bottom_Border 12'd0
  `define V_Front_Porch   12'd5
  `define V_Sync_Time     12'd5
  `define V_Back_Porch    12'd20
  `define V_Top_Border    12'd0
  
`elsif Resolution_1920x1080
  `define H_Total_Time    12'd2200
  `define H_Right_Border  12'd0
  `define H_Front_Porch   12'd88
  `define H_Sync_Time     12'd44
  `define H_Back_Porch    12'd148
  `define H_Left_Border   12'd0

  `define V_Total_Time    12'd1125
  `define V_Bottom_Border 12'd0
  `define V_Front_Porch   12'd4
  `define V_Sync_Time     12'd5
  `define V_Back_Porch    12'd36
  `define V_Top_Border    12'd0

`endif