/////////////////////////////////////////////////////////////////////////////////
// Company       : 武汉芯路恒科技有限公司
//                 http://xiaomeige.taobao.com
// Web           : http://www.corecourse.cn
// 
// Create Date   : 2019/04/10 00:00:00
// Module Name   : encode
// Description   : 8b10b编码模块
// 
// Dependencies  : 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
/////////////////////////////////////////////////////////////////////////////////
`timescale 1 ps / 1ps
`define D #1

module encode(
  clk,
  rst_p,
  din,
  c0,
  c1,
  de,
  dout
);
  input            clk;    // 像素时钟输入
  input            rst_p;  // 异步复位高电平有效
  input      [7:0] din;    // 数据输入，需要寄存
  input            c0;     // c0 输入
  input            c1;     // c1 输入
  input            de;     // 数据使能，输入
  output reg [9:0] dout;   // 数据输出

  parameter CTL0 = 10'b1101010100;
  parameter CTL1 = 10'b0010101011;
  parameter CTL2 = 10'b0101010100;
  parameter CTL3 = 10'b1010101011;

  reg [3:0] n1d;    //统计输入的8bit数据中1的个数
  reg [7:0] din_q;  //同步寄存输入的8bit数据（统计需要一拍时间）
  
  // 统计每次输入的8bit数据中1和0的个数。流水线输出.同步寄存输入的8bit数据
  always @ (posedge clk) begin
    din_q <= `D din;
    n1d <= `D din[0] + din[1] + din[2] + din[3] + din[4] + din[5] + din[6] + din[7];
  end

  // 第一步：8 bit -> 9 bit
  // 参考DVI规范1.0，第29页，图3-5
  wire decision1;  //0
  assign decision1 = (n1d > 4'h4) | ((n1d == 4'h4) & (din_q[0] == 1'b0));

  // 最低位不变，剩下的等于前一位跟对应的din_q相异或运算，或者是同或运算
  // q_m[0] = din_q[0];
  // q_m[i+1] = q_m[i] ^ din_q[i+1]; q_m[8] = 1;
  // q_m[i+1] = q_m[i] ^~ din_q[i+1]; q_m[8] = 0;
  wire [8:0] q_m;
  assign q_m[0] = din_q[0];
  assign q_m[1] = (decision1) ? ~(q_m[0] ^ din_q[1]) : (q_m[0] ^ din_q[1]);
  assign q_m[2] = (decision1) ? ~(q_m[1] ^ din_q[2]) : (q_m[1] ^ din_q[2]);
  assign q_m[3] = (decision1) ? ~(q_m[2] ^ din_q[3]) : (q_m[2] ^ din_q[3]);
  assign q_m[4] = (decision1) ? ~(q_m[3] ^ din_q[4]) : (q_m[3] ^ din_q[4]);
  assign q_m[5] = (decision1) ? ~(q_m[4] ^ din_q[5]) : (q_m[4] ^ din_q[5]);
  assign q_m[6] = (decision1) ? ~(q_m[5] ^ din_q[6]) : (q_m[5] ^ din_q[6]);
  assign q_m[7] = (decision1) ? ~(q_m[6] ^ din_q[7]) : (q_m[6] ^ din_q[7]);
  assign q_m[8] = (decision1) ? 1'b0 : 1'b1;

  // 第二步：9 bit -> 10 bit
  // 参考DVI规范1.0，第29页，图3-5
  reg [3:0] n1q_m, n0q_m; // 统计q_m中1和0的个数
  always @ (posedge clk) begin
    n1q_m  <= `D q_m[0] + q_m[1] + q_m[2] + q_m[3] + q_m[4] + q_m[5] + q_m[6] + q_m[7];
    n0q_m  <= `D 4'h8 - (q_m[0] + q_m[1] + q_m[2] + q_m[3] + q_m[4] + q_m[5] + q_m[6] + q_m[7]);
  end

  reg [4:0] cnt; // 计数器差距统计：统计1和0是否过量发送，最高位(cnt[4])是符号位
  wire decision2, decision3;
  assign decision2 = (cnt == 5'h0) | (n1q_m == n0q_m);
  
  // [(cnt > 0) and (N1q_m > N0q_m)] or [(cnt < 0) and (N0q_m > N1q_m)]
  assign decision3 = (~cnt[4] & (n1q_m > n0q_m)) | (cnt[4] & (n0q_m > n1q_m));

  // 流水线对齐(同步寄存器2拍)
  reg [1:0] de_reg;
  reg [1:0] c0_reg;
  reg [1:0] c1_reg;
  reg [8:0] q_m_reg;
  always @ (posedge clk) begin
    de_reg  <= `D {de_reg[0], de};
    c0_reg  <= `D {c0_reg[0], c0};
    c1_reg  <= `D {c1_reg[0], c1};
    q_m_reg <= `D q_m;
  end

  // 10-bit  数据输出
  always @ (posedge clk or posedge rst_p) begin
    if (rst_p) begin
      dout <= 10'h0;
      cnt <= 5'd0;
    end else begin
      if (de_reg[1]) begin// 数据周期：发送对应编码的数据
        if (decision2) begin
          dout[9]   <= `D ~q_m_reg[8]; 
          dout[8]   <= `D q_m_reg[8]; 
          dout[7:0] <= `D (q_m_reg[8]) ? q_m_reg[7:0] : ~q_m_reg[7:0];
          cnt <= `D (~q_m_reg[8]) ? (cnt + n0q_m - n1q_m) : (cnt + n1q_m - n0q_m);
        end else begin if (decision3) begin
            dout[9]   <= `D 1'b1;
            dout[8]   <= `D q_m_reg[8];
            dout[7:0] <= `D ~q_m_reg;
            cnt <= `D cnt + {q_m_reg[8], 1'b0} + (n0q_m - n1q_m);
          end else begin
            dout[9]   <= `D 1'b0;
            dout[8]   <= `D q_m_reg[8];
            dout[7:0] <= `D q_m_reg[7:0];
            cnt <= `D cnt - {~q_m_reg[8], 1'b0} + (n1q_m - n0q_m);
          end
        end
      end else begin  // 控制周期:发送控制信号
        cnt <=  `D 5'd0;
        case ({c1_reg[1], c0_reg[1]})
          2'b00:   dout <= `D CTL0;
          2'b01:   dout <= `D CTL1;
          2'b10:   dout <= `D CTL2;
          default: dout <= `D CTL3;
        endcase
      end
    end
  end

endmodule