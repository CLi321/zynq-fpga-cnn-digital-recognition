/////////////////////////////////////////////////////////////////////////////////
// Company       : 武汉芯路恒科技有限公司
//                 http://xiaomeige.taobao.com
// Web           : http://www.corecourse.cn
// 
// Create Date   : 2019/05/01 00:00:00
// Module Name   : rgb2gray
// Description   : 图像处理之彩色图像灰度化，提供三种方式
// 
// Dependencies  : 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module rgb2gray
#(
  parameter PROC_METHOD = "FORMULA" //"AVERAGE"     :求平均法
                                    //or "FORMULA"  :直接公式法
                                    //or "LUT"      :查找表法
)
(
  input           clk,         //时钟
  input           reset_p,     //复位
  input           rgb_valid,   //rgb输入有效标识
  input           rgb_hs,      //rgb输入行信号
  input           rgb_vs,      //rgb输入场信号
  input     [7:0] red_8b_i,    //R输入
  input     [7:0] green_8b_i,  //G输入
  input     [7:0] blue_8b_i,   //B输入

  output    [7:0] gray_8b_o,   //GRAY输出
  output reg      gray_valid,  //gray输出有效标识
  output reg      gray_hs,     //gray输出行信号
  output reg      gray_vs      //gray输出场信号
);

generate
  if (PROC_METHOD == "AVERAGE") begin: PROC_AVERAGE
//---------------------------------------------
//求平均法GRAY = (R+B+G)/3=（(R+B+G)*85）>>8
    wire [9:0]sum;
    reg [15:0]gray_r;
    
    assign sum = red_8b_i + green_8b_i + blue_8b_i;
    
    always@(posedge clk or posedge reset_p)
    begin
      if(reset_p)
        gray_r <= 16'd0;
      else if(rgb_valid)
        gray_r <= (sum << 6)+(sum << 4)+(sum << 2)+ sum;
      else
        gray_r <= 16'd0;
    end
  
    assign gray_8b_o = gray_r[15:8];

    always@(posedge clk)
    begin
      gray_valid <= rgb_valid;
      gray_hs    <= rgb_hs;
      gray_vs    <= rgb_vs;
    end
//---------------------------------------------
  end
  else if (PROC_METHOD == "FORMULA") begin: PROC_FORMULA
//---------------------------------------------
//典型灰度转换公式Gray = R*0.299+G*0.587+B*0.114=(R*77 + G*150 + B*29) >>8
    wire [15:0]red_x77;
    wire [15:0]green_x150;
    wire [15:0]blue_x29;
    reg  [15:0]sum;

    //乘法转换成移位相加方式
    assign red_x77    = (red_8b_i  << 6) + (red_8b_i  << 3) + (red_8b_i  << 2) + red_8b_i;
    assign green_x150 = (green_8b_i<< 7) + (green_8b_i<< 4) + (green_8b_i<< 2) + (green_8b_i<<1);
    assign blue_x29   = (blue_8b_i << 4) + (blue_8b_i << 3) + (blue_8b_i << 2) + blue_8b_i;

    always@(posedge clk or posedge reset_p)
    begin
      if(reset_p)
        sum <= 16'd0;
      else if(rgb_valid)
        sum <= red_x77 + green_x150 + blue_x29;
      else
        sum <= 16'd0;
    end
    
    assign gray_8b_o = sum[15:8];

    always@(posedge clk)
    begin
      gray_valid <= rgb_valid;
      gray_hs    <= rgb_hs;
      gray_vs    <= rgb_vs;
    end
//---------------------------------------------
  end
  else if(PROC_METHOD == "LUT") begin: PROC_LUT
//---------------------------------------------
//查找表方式，可以省去公式法中乘法运算Gray =(R*77 + G*150 + B*29) >>8，将3个分量乘以系数后的数值存储在ROM中
    wire [14:0]red_x77;
    wire [15:0]green_x150;
    wire [13:0]blue_x29;    
    reg  [15:0]sum;
    reg        rgb_valid_dly1;
    reg        rgb_hs_dly1;
    reg        rgb_vs_dly1;
  
    rom_red_x77 rom_red_x77(
      .clka  (clk       ), // input wire clka
      .ena   (rgb_valid ), // input wire ena
      .addra (red_8b_i  ), // input wire [7 : 0] addra
      .douta (red_x77   )  // output wire [14 : 0] douta
    );
    
    rom_green_x150 rom_green_x150(
      .clka  (clk        ), // input wire clka
      .ena   (rgb_valid  ), // input wire ena
      .addra (green_8b_i ), // input wire [7 : 0] addra
      .douta (green_x150 )  // output wire [15 : 0] douta
    );
  
    rom_blue_x29 rom_blue_x29(
      .clka  (clk        ), // input wire clka
      .ena   (rgb_valid  ), // input wire ena
      .addra (blue_8b_i  ), // input wire [7 : 0] addra
      .douta (blue_x29   )  // output wire [13 : 0] douta
    );

    always@(posedge clk)
    begin
      rgb_valid_dly1 <= rgb_valid;
      rgb_hs_dly1    <= rgb_hs;
      rgb_vs_dly1    <= rgb_vs;
    end

    always@(posedge clk or posedge reset_p)
    begin
      if(reset_p)
        sum <= 16'd0;
      else if(rgb_valid_dly1)
        sum <= red_x77 + green_x150 + blue_x29;
      else
        sum <= 16'd0;
    end

    assign gray_8b_o = sum[15:8];

    always@(posedge clk)
    begin
      gray_valid <= rgb_valid_dly1;
      gray_hs    <= rgb_hs_dly1;
      gray_vs    <= rgb_vs_dly1;
    end
//---------------------------------------------
  end
  else begin: PROC_NONE
//---------------------------------------------
    assign gray_8b_o = 8'h00;

    always@(posedge clk)
    begin
      gray_valid <= rgb_valid;
      gray_hs    <= rgb_hs;
      gray_vs    <= rgb_vs;
    end
//---------------------------------------------
  end
endgenerate

endmodule 