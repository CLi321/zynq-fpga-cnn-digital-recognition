/////////////////////////////////////////////////////////////////////////////////
// Company       : 武汉芯路恒科技有限公司
//                 http://xiaomeige.taobao.com
// Web           : http://www.corecourse.cn
// 
// Create Date   : 2019/04/10 00:00:00
// Module Name   : 
// Description   : 显示设备驱动硬件配置头文件
// 
// Dependencies  : 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
/////////////////////////////////////////////////////////////////////////////////

/*使用说明
使用时根据实际工作需求选择2个预定义参数就可以

参数1: MODE_RGBxxx
预定义用来决定驱动工作在16位模式还是24位模式，二选一
  MODE_RGB888：24位模式
  MODE_RGB565：16位模式
针对小梅哥提供的一系列显示设备，各个设备该参数的选择
  4.3寸TFT显示屏------使用16位色RGB565模式
  5寸TFT显示屏--------使用16位色RGB565模式
  GM7123模块----------使用24位色RGB888模式

参数2: Resolution_xxxx
预定义用来决定显示设备分辨率，常见设备分辨率如下所述

4.3寸TFT显示屏：
  Resolution_480x272

5寸TFT显示屏：
  Resolution_800x480

VGA常见分辨率：
  Resolution_640x480
  Resolution_800x600
  Resolution_1024x600
  Resolution_1024x768
  Resolution_1280x720
  Resolution_1920x1080
*/

//也可通过宏定义显示设备类型来进行设置，选择一个使能，其他使用注释的方式屏蔽
//使用4.3寸480*272分辨率显示屏
//`define HW_TFT480x272

//使用5寸800*480分辨率显示屏
//`define HW_TFT800x480

//使用VGA显示器，默认为640*480分辨率，24位模式，其他分辨率或需16位模式可在代码63行至75行进行重配置
`define HW_VGA

//=====================================
//以下宏定义选择用于根据显示设备进行位模式和分辨率2个参数的设置
//=====================================
`ifdef HW_TFT480x272  //使用分辨率480*272显示屏
  `define MODE_RGB565
  `define Resolution_480x272 1 //时钟为9MHz

`elsif HW_TFT800x480  //使用分辨率800*480显示屏
  `define MODE_RGB565
  `define Resolution_800x480 1 //时钟为33MHz

`elsif HW_VGA    //使用VGA显示器，默认为640*480分辨率，24位模式
//=====================================
//可选择其他分辨率和16位模式，需用户根据实际需求设置
//代码70~71行设置位模式
//代码73~78行设置分辨率
//=====================================
  //`define MODE_RGB565
  `define MODE_RGB888
//  `define Resolution_640x480   1 //时钟为25.175MHz
  `define Resolution_800x600   1 //时钟为40MHz
  //`define Resolution_1024x600  1 //时钟为51MHz
  //`define Resolution_1024x768  1 //时钟为65MHz
//  `define Resolution_1280x720  1 //时钟为74.25MHz
  //`define Resolution_1920x1080 1 //时钟为148.5MHz
`endif

//=====================================
//非特殊需求，以下内容用户不需修改
//=====================================
//定义不同的颜色深度
`ifdef MODE_RGB888
  `define Red_Bits   8
  `define Green_Bits 8
  `define Blue_Bits  8
  
`elsif MODE_RGB565
  `define Red_Bits   5
  `define Green_Bits 6
  `define Blue_Bits  5
`endif

//定义不同分辨率的时序参数
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