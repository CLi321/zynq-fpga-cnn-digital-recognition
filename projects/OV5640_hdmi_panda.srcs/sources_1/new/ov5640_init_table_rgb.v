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

module ov5640_init_table_rgb #(
  parameter DATA_WIDTH      = 24,
  parameter ADDR_WIDTH      = 8,
  parameter IMAGE_WIDTH     = 16'd640,
  parameter IMAGE_HEIGHT    = 16'd480,
  parameter IMAGE_FLIP_EN   = 1'b0,
  parameter IMAGE_MIRROR_EN = 1'b0
)
(
  clk,
  addr,
  q
);
  input clk;
  input [(ADDR_WIDTH-1):0] addr;
  output reg [(DATA_WIDTH-1):0] q;

  localparam IMAGE_FLIP_DAT   = IMAGE_FLIP_EN ? 8'h47 : 8'h40;
  localparam IMAGE_MIRROR_DAT = IMAGE_MIRROR_EN ? 4'h0 : 4'h7;

  // Declare the ROM variable
  reg [DATA_WIDTH-1:0] rom[2**ADDR_WIDTH-1:0];

  initial begin
    rom[0 ] = 24'h3103_11; // system clock from pad, bit[1]
    rom[1 ] = 24'h3008_82; // software reset, bit[7]
    //delay 5ms
    rom[2 ] = 24'h3008_42; // software power down, bit[6]
    rom[3 ] = 24'h3103_03; // system clock from PLL, bit[1]
    rom[4 ] = 24'h3017_ff; // FREX, Vsync, HREF, PCLK, D[9:6] output enable
    rom[5 ] = 24'h3018_ff; // D[5:0], GPIO[1:0] output enable
    rom[6 ] = 24'h3034_1a; // MIPI 10-bit
    rom[7 ] = 24'h3037_13; // PLL root divider, bit[4], PLL pre-divider, bit[3:0]
    rom[8 ] = 24'h3108_01; // PCLK root divider, bit[5:4], SCLK2x root divider, bit[3:2]
    rom[9 ] = 24'h3630_36; // SCLK root divider, bit[1:0]
    rom[10] = 24'h3631_0e;
    rom[11] = 24'h3632_e2;
    rom[12] = 24'h3633_12;
    rom[13] = 24'h3621_e0;
    rom[14] = 24'h3704_a0;
    rom[15] = 24'h3703_5a;
    rom[16] = 24'h3715_78;
    rom[17] = 24'h3717_01;
    rom[18] = 24'h370b_60;
    rom[19] = 24'h3705_1a;
    rom[20] = 24'h3905_02;
    rom[21] = 24'h3906_10;
    rom[22] = 24'h3901_0a;
    rom[23] = 24'h3731_12;
    rom[24] = 24'h3600_08; // VCM control
    rom[25] = 24'h3601_33; // VCM control
    rom[26] = 24'h302d_60; // system control
    rom[27] = 24'h3620_52;
    rom[28] = 24'h371b_20;
    rom[29] = 24'h471c_50;
    rom[30] = 24'h3a13_43; // pre-gain = 1.047x
    rom[31] = 24'h3a18_00; // gain ceiling
    rom[32] = 24'h3a19_f8; // gain ceiling = 15.5x
    rom[33] = 24'h3635_13;
    rom[34] = 24'h3636_03;
    rom[35] = 24'h3634_40;
    rom[36] = 24'h3622_01;
    // 50/60Hz detection 50/60Hz 灯光条纹过滤
    rom[37] = 24'h3c01_34; // Band auto, bit[7]
    rom[38] = 24'h3c04_28; // threshold low sum
    rom[39] = 24'h3c05_98; // threshold high sum
    rom[40] = 24'h3c06_00; // light meter 1 threshold[15:8]
    rom[41] = 24'h3c07_08; // light meter 1 threshold[7:0]
    rom[42] = 24'h3c08_00; // light meter 2 threshold[15:8]
    rom[43] = 24'h3c09_1c; // light meter 2 threshold[7:0]
    rom[44] = 24'h3c0a_9c; // sample number[15:8]
    rom[45] = 24'h3c0b_40; // sample number[7:0]
    rom[46] = 24'h3810_00; // Timing Hoffset[11:8]
    rom[47] = 24'h3811_10; // Timing Hoffset[7:0]
    rom[48] = 24'h3812_00; // Timing Voffset[10:8]
    rom[49] = 24'h3708_64;
    rom[50] = 24'h4001_02; // BLC start from line 2
    rom[51] = 24'h4005_1a; // BLC always update
    rom[52] = 24'h3000_00; // enable blocks
    rom[53] = 24'h3004_ff; // enable clocks
    rom[54] = 24'h300e_58; // MIPI power down, DVP enable
    rom[55] = 24'h302e_00;
    rom[56] = 24'h4300_61; // RGB565   //h4300_6f(千兆网模式)--------------------------------------------------------
    rom[57] = 24'h501f_01; // RGB565
    rom[58] = 24'h440e_00;
    rom[59] = 24'h5000_a7; // Lenc on, raw gamma on, BPC on, WPC on, CIP on
    // AEC target 自动曝光控制
    rom[60] = 24'h3a0f_30; // stable range in high
    rom[61] = 24'h3a10_28; // stable range in low
    rom[62] = 24'h3a1b_30; // stable range out high
    rom[63] = 24'h3a1e_26; // stable range out low
    rom[64] = 24'h3a11_60; // fast zone high
    rom[65] = 24'h3a1f_14; // fast zone low
    // Lens correction for ? 镜头补偿
    rom[66 ] = 24'h5800_23;
    rom[67 ] = 24'h5801_14;
    rom[68 ] = 24'h5802_0f;
    rom[69 ] = 24'h5803_0f;
    rom[70 ] = 24'h5804_12;
    rom[71 ] = 24'h5805_26;
    rom[72 ] = 24'h5806_0c;
    rom[73 ] = 24'h5807_08;
    rom[74 ] = 24'h5808_05;
    rom[75 ] = 24'h5809_05;
    rom[76 ] = 24'h580a_08;
    rom[77 ] = 24'h580b_0d;
    rom[78 ] = 24'h580c_08;
    rom[79 ] = 24'h580d_03;
    rom[80 ] = 24'h580e_00;
    rom[81 ] = 24'h580f_00;
    rom[82 ] = 24'h5810_03;
    rom[83 ] = 24'h5811_09;
    rom[84 ] = 24'h5812_07;
    rom[85 ] = 24'h5813_03;
    rom[86 ] = 24'h5814_00;
    rom[87 ] = 24'h5815_01;
    rom[88 ] = 24'h5816_03;
    rom[89 ] = 24'h5817_08;
    rom[90 ] = 24'h5818_0d;
    rom[91 ] = 24'h5819_08;
    rom[92 ] = 24'h581a_05;
    rom[93 ] = 24'h581b_06;
    rom[94 ] = 24'h581c_08;
    rom[95 ] = 24'h581d_0e;
    rom[96 ] = 24'h581e_29;
    rom[97 ] = 24'h581f_17;
    rom[98 ] = 24'h5820_11;
    rom[99 ] = 24'h5821_11;
    rom[100] = 24'h5822_15;
    rom[101] = 24'h5823_28;
    rom[102] = 24'h5824_46;
    rom[103] = 24'h5825_26;
    rom[104] = 24'h5826_08;
    rom[105] = 24'h5827_26;
    rom[106] = 24'h5828_64;
    rom[107] = 24'h5829_26;
    rom[108] = 24'h582a_24;
    rom[109] = 24'h582b_22;
    rom[110] = 24'h582c_24;
    rom[111] = 24'h582d_24;
    rom[112] = 24'h582e_06;
    rom[113] = 24'h582f_22;
    rom[114] = 24'h5830_40;
    rom[115] = 24'h5831_42;
    rom[116] = 24'h5832_24;
    rom[117] = 24'h5833_26;
    rom[118] = 24'h5834_24;
    rom[119] = 24'h5835_22;
    rom[120] = 24'h5836_22;
    rom[121] = 24'h5837_26;
    rom[122] = 24'h5838_44;
    rom[123] = 24'h5839_24;
    rom[124] = 24'h583a_26;
    rom[125] = 24'h583b_28;
    rom[126] = 24'h583c_42;
    rom[127] = 24'h583d_ce; // lenc BR offset
    // AWB 自动白平衡
    rom[128] = 24'h5180_ff; // AWB B block
    rom[129] = 24'h5181_f2; // AWB control
    rom[130] = 24'h5182_00; // [7:4] max local counter, [3:0] max fast counter
    rom[131] = 24'h5183_14; // AWB advanced
    rom[132] = 24'h5184_25;
    rom[133] = 24'h5185_24;
    rom[134] = 24'h5186_09;
    rom[135] = 24'h5187_09;
    rom[136] = 24'h5188_09;
    rom[137] = 24'h5189_75;
    rom[138] = 24'h518a_54;
    rom[139] = 24'h518b_e0;
    rom[140] = 24'h518c_b2;
    rom[141] = 24'h518d_42;
    rom[142] = 24'h518e_3d;
    rom[143] = 24'h518f_56;
    rom[144] = 24'h5190_46;
    rom[145] = 24'h5191_f8; // AWB top limit
    rom[146] = 24'h5192_04; // AWB bottom limit
    rom[147] = 24'h5193_70; // red limit
    rom[148] = 24'h5194_f0; // green limit
    rom[149] = 24'h5195_f0; // blue limit
    rom[150] = 24'h5196_03; // AWB control
    rom[151] = 24'h5197_01; // local limit
    rom[152] = 24'h5198_04;
    rom[153] = 24'h5199_12;
    rom[154] = 24'h519a_04;
    rom[155] = 24'h519b_00;
    rom[156] = 24'h519c_06;
    rom[157] = 24'h519d_82;
    rom[158] = 24'h519e_38; // AWB control
    // Gamma 伽玛曲线
    rom[159] = 24'h5480_01; // Gamma bias plus on, bit[0]
    rom[160] = 24'h5481_08;
    rom[161] = 24'h5482_14;
    rom[162] = 24'h5483_28;
    rom[163] = 24'h5484_51;
    rom[164] = 24'h5485_65;
    rom[165] = 24'h5486_71;
    rom[166] = 24'h5487_7d;
    rom[167] = 24'h5488_87;
    rom[168] = 24'h5489_91;
    rom[169] = 24'h548a_9a;
    rom[170] = 24'h548b_aa;
    rom[171] = 24'h548c_b8;
    rom[172] = 24'h548d_cd;
    rom[173] = 24'h548e_dd;
    rom[174] = 24'h548f_ea;
    rom[175] = 24'h5490_1d;
    // color matrix 色彩矩阵
    rom[176] = 24'h5381_1e; // CMX1 for Y
    rom[177] = 24'h5382_5b; // CMX2 for Y
    rom[178] = 24'h5383_08; // CMX3 for Y
    rom[179] = 24'h5384_0a; // CMX4 for U
    rom[180] = 24'h5385_7e; // CMX5 for U
    rom[181] = 24'h5386_88; // CMX6 for U
    rom[182] = 24'h5387_7c; // CMX7 for V
    rom[183] = 24'h5388_6c; // CMX8 for V
    rom[184] = 24'h5389_10; // CMX9 for V
    rom[185] = 24'h538a_01; // sign[9]
    rom[186] = 24'h538b_98; // sign[8:1]
    // UV adjust UV 色彩饱和度调整
    rom[187] = 24'h5580_06; // saturation on, bit[1]
    rom[188] = 24'h5583_40;
    rom[189] = 24'h5584_10;
    rom[190] = 24'h5589_10;
    rom[191] = 24'h558a_00;
    rom[192] = 24'h558b_f8;
    rom[193] = 24'h501d_40; // enable manual offset of contrast
    // CIP 锐化和降噪
    rom[194] = 24'h5300_08; // CIP sharpen MT threshold 1
    rom[195] = 24'h5301_30; // CIP sharpen MT threshold 2
    rom[196] = 24'h5302_10; // CIP sharpen MT offset 1
    rom[197] = 24'h5303_00; // CIP sharpen MT offset 2
    rom[198] = 24'h5304_08; // CIP DNS threshold 1
    rom[199] = 24'h5305_30; // CIP DNS threshold 2
    rom[200] = 24'h5306_08; // CIP DNS offset 1
    rom[201] = 24'h5307_16; // CIP DNS offset 2
    rom[202] = 24'h5309_08; // CIP sharpen TH threshold 1
    rom[203] = 24'h530a_30; // CIP sharpen TH threshold 2
    rom[204] = 24'h530b_04; // CIP sharpen TH offset 1
    rom[205] = 24'h530c_06; // CIP sharpen TH offset 2
    rom[206] = 24'h5025_00;
    rom[207] = 24'h3008_02; // wake up from standby, bit[6]

    // 12824'h720, 30fps
    // input clock 24Mhz, PCLK 42Mhz
    rom[208] = 24'h3035_21; // PLL  21:30fps  41:15fps  81:7.5fps
    rom[209] = 24'h3036_69; // PLL
    rom[210] = 24'h3c07_07; // lightmeter 1 threshold[7:0]
    rom[211] = {16'h3820, IMAGE_FLIP_DAT}; // flip
    rom[212] = {20'h38210, IMAGE_MIRROR_DAT}; // no mirror
    rom[213] = 24'h3814_31; // timing X inc
    rom[214] = 24'h3815_31; // timing Y inc
    rom[215] = 24'h3800_00; // HS
    rom[216] = 24'h3801_00; // HS
    rom[217] = 24'h3802_00; // VS
    rom[218] = 24'h3803_fa; // VS
    rom[219] = 24'h3804_0a; // HW SET_OV5640 +  HE}
    rom[220] = 24'h3805_3f; // HW SET_OV5640 +  HE}
    rom[221] = 24'h3806_06; // VH SET_OV5640 +  VE}
    rom[222] = 24'h3807_a9; // VH SET_OV5640 +  VE}
    rom[223] = {16'h3808, IMAGE_WIDTH[15:8]}; // DVPHO  (<1280>500) (<640>280)IMAGE_WIDTH
    rom[224] = {16'h3809, IMAGE_WIDTH[ 7:0]}; // DVPHO
    rom[225] = {16'h380a, IMAGE_HEIGHT[15:8]}; // DVPVO  (<720>2d0)  (<480>1e0)IMAGE_HEIGHT
    rom[226] = {16'h380b, IMAGE_HEIGHT[ 7:0]}; // DVPHO
    rom[227] = 24'h380c_07; // HTS
    rom[228] = 24'h380d_64; // HTS
    rom[229] = 24'h380e_02; // VTS
    rom[230] = 24'h380f_e4; // VTS
    rom[231] = 24'h3813_04; // timing V offset
    rom[232] = 24'h3618_00;
    rom[233] = 24'h3612_29;
    rom[234] = 24'h3709_52;
    rom[235] = 24'h370c_03;
    rom[236] = 24'h3a02_02; // 60Hz max exposure
    rom[237] = 24'h3a03_e0; // 60Hz max exposure
    rom[238] = 24'h3a14_02; // 50Hz max exposure
    rom[239] = 24'h3a15_e0; // 50Hz max exposure
    rom[240] = 24'h4004_02; // BLC line number
    rom[241] = 24'h3002_1c; // reset JFIFO, SFIFO, JPG
    rom[242] = 24'h3006_c3; // disable clock of JPEG2x, JPEG
    rom[243] = 24'h4713_03; // JPEG mode 3
    rom[244] = 24'h4407_04; // Quantization scale
    rom[245] = 24'h460b_37;
    rom[246] = 24'h460c_20;
    rom[247] = 24'h4837_16; // MIPI global timing
    rom[248] = 24'h3824_04; // PCLK manual divider
    rom[249] = 24'h5001_83; // SDE on, CMX on, AWB on
    rom[250] = 24'h3503_00; // AEC/AGC on
    rom[251] = 24'h4740_20; // VS 1
  end

  always @ (posedge clk)
  begin
    q <= rom[addr];
  end

endmodule
