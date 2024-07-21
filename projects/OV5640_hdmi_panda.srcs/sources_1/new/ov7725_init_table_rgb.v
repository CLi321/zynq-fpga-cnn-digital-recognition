/////////////////////////////////////////////////////////////////////////////////
// Company       : 武汉芯路恒科技有限公司
//                 http://xiaomeige.taobao.com
// Web           : http://www.corecourse.cn
// 
// Create Date   : 2019/05/01 00:00:00
// Module Name   : ov5640_init_table_rgb
// Description   : OV5640初始化寄存器表(RGB模式专用)
// 
// Dependencies  : 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
/////////////////////////////////////////////////////////////////////////////////

module ov7725_init_table_rgb#(
  parameter DATA_WIDTH   = 16,
  parameter ADDR_WIDTH   = 8,
  parameter IMAGE_WIDTH  = 16'd640,
  parameter IMAGE_HEIGHT = 16'd480,
  parameter IMAGE_FLIP_EN   = 1'b1,
  parameter IMAGE_MIRROR_EN = 1'b1
)
(
  addr,
  clk, 
  q
);
  input clk;
  input [(ADDR_WIDTH-1):0] addr;
  output reg [(DATA_WIDTH-1):0] q;

  // Declare the ROM variable
  reg [DATA_WIDTH-1:0] rom [2**ADDR_WIDTH-1:0];

  initial begin
    /*OV7725 VGA RGB565参数  */
    //Write Data Index
    rom[0 ] = 16'h12_80; // BIT[7]-Reset all the Reg 
    rom[1 ] = 16'h3d_03; //DC offset for analog process
    rom[2 ] = 16'h15_02; //COM10: href/vsync/pclk/data reverse(Vsync H valid)
    rom[3 ] = 16'h17_22; //VGA:  16'h22;  QVGA:  16'h3f;
    rom[4 ] = 16'h18_a4; //VGA:  16'ha4;  QVGA:  16'h50;
    rom[5 ] = 16'h19_07; //VGA:  16'h07;  QVGA:  16'h03;
    rom[6 ] = 16'h1a_f0; //VGA:  16'hf0;  QVGA:  16'h78;
    rom[7 ] = 16'h32_00; //HREF  / 16'h80
    rom[8 ] = 16'h29_A0; //VGA:  16'hA0;  QVGA:  16'hF0
    rom[9 ] = 16'h2C_F0; //VGA:  16'hF0;  QVGA:  16'h78
    rom[10] = 16'h0d_41; //Bypass PLL
    rom[11] = 16'h11_01; //CLKRC,Finternal clock = Finput clk*PLL multiplier/[(CLKRC[5:0]+1)*2] = 25MHz*4/[(x+1)*2]
                         //00: 50fps, 01:25fps, 03:12.5fps  (50Hz Fliter)
    rom[12] = 16'h12_06; //BIT[6]:  0:VGA; 1;QVGA
                         //BIT[3:2]:  01:RGB565
                         //VGA:  00:YUV; 01:Processed Bayer RGB; 10:RGB;  11:Bayer RAW; BIT[7]-Reset all the Reg  
    //rom[13] = 16'h0C_10; //COM3: Bit[7:6]:Vertical/Horizontal mirror image ON/OFF, Bit[0]:Color bar; Default:16'h10
    rom[13] = {8'h0c, IMAGE_MIRROR_EN[0], IMAGE_FLIP_EN[0], 2'd1, 4'd0};
    //DSP control
    rom[14] = 16'h42_7f; //BLC Blue Channel Target Value, Default: 16'h80
    rom[15] = 16'h4d_09; //BLC Red Channel Target Value, Default: 16'h80
    rom[16] = 16'h63_f0; //AWB Control
    rom[17] = 16'h64_ff; //DSP_Ctrl1:
    rom[18] = 16'h65_00; //DSP_Ctrl2:  
    rom[19] = 16'h66_00; //{COM3[4](0x0C), DSP_Ctrl3[7]}:00:YUYV;  01:YVYU;  [10:UYVY]  11:VYUY  
    rom[20] = 16'h67_00; //DSP_Ctrl4:00/01: YUV or RGB; 10: RAW8; 11: RAW10  
    //AGC AEC AWB
    rom[21] = 16'h13_ff;
    rom[22] = 16'h0f_c5;
    rom[23] = 16'h14_11;
    rom[24] = 16'h22_98; //Banding Filt er Minimum AEC Value; Default: 16'h09
    rom[25] = 16'h23_03; //Banding Filter Maximum Step
    rom[26] = 16'h24_40; //AGC/AEC - Stable Operating Region (Upper Limit)
    rom[27] = 16'h25_30; //AGC/AEC - Stable Operating Region (Lower Limit)
    rom[28] = 16'h26_a1; //AGC/AEC Fast Mode Operating Region
    rom[29] = 16'h2b_9e; //TaiWan: 16'h00:60Hz Filter; Mainland: 16'h9e:50Hz Filter
    rom[30] = 16'h6b_aa; //AWB Control 3
    rom[31] = 16'h13_ff; //16'hff: AGC AEC AWB Enable; 16'hf0: AGC AEC AWB Disable;
    
    //matrix sharpness brightness contrast UV  
    rom[32] = 16'h90_0a;  
    rom[33] = 16'h91_01;
    rom[34] = 16'h92_01;
    rom[35] = 16'h93_01;
    rom[36] = 16'h94_5f;
    rom[37] = 16'h95_53;
    rom[38] = 16'h96_11;
    rom[39] = 16'h97_1a;
    rom[40] = 16'h98_3d;
    rom[41] = 16'h99_5a;
    rom[42] = 16'h9a_1e;
    rom[43] = 16'h9b_3f; //Brightness 
    rom[44] = 16'h9c_25;
    rom[45] = 16'h9e_81;  
    rom[46] = 16'ha6_06;
    rom[47] = 16'ha7_65;
    rom[48] = 16'ha8_65;
    rom[49] = 16'ha9_80;
    rom[50] = 16'haa_80;
    //Gamma correction
    rom[51] = 16'h7e_0c;
    rom[52] = 16'h7f_16; //
    rom[53] = 16'h80_2a;
    rom[54] = 16'h81_4e;
    rom[55] = 16'h82_61;
    rom[56] = 16'h83_6f;
    rom[57] = 16'h84_7b;
    rom[58] = 16'h85_86;
    rom[59] = 16'h86_8e;
    rom[60] = 16'h87_97;
    rom[61] = 16'h88_a4;
    rom[62] = 16'h89_af;
    rom[63] = 16'h8a_c5;
    rom[64] = 16'h8b_d7;
    rom[65] = 16'h8c_e8;
    rom[66] = 16'h8d_20;
    //Others
    rom[67] = 16'h0e_65; //night mode auto frame rate control
  end

  always @ (posedge clk)
  begin
    q <= rom[addr];
  end
  
endmodule
