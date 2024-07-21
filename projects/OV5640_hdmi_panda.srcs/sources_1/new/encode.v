/////////////////////////////////////////////////////////////////////////////////
// Company       : �人о·��Ƽ����޹�˾
//                 http://xiaomeige.taobao.com
// Web           : http://www.corecourse.cn
// 
// Create Date   : 2019/04/10 00:00:00
// Module Name   : encode
// Description   : 8b10b����ģ��
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
  input            clk;    // ����ʱ������
  input            rst_p;  // �첽��λ�ߵ�ƽ��Ч
  input      [7:0] din;    // �������룬��Ҫ�Ĵ�
  input            c0;     // c0 ����
  input            c1;     // c1 ����
  input            de;     // ����ʹ�ܣ�����
  output reg [9:0] dout;   // �������

  parameter CTL0 = 10'b1101010100;
  parameter CTL1 = 10'b0010101011;
  parameter CTL2 = 10'b0101010100;
  parameter CTL3 = 10'b1010101011;

  reg [3:0] n1d;    //ͳ�������8bit������1�ĸ���
  reg [7:0] din_q;  //ͬ���Ĵ������8bit���ݣ�ͳ����Ҫһ��ʱ�䣩
  
  // ͳ��ÿ�������8bit������1��0�ĸ�������ˮ�����.ͬ���Ĵ������8bit����
  always @ (posedge clk) begin
    din_q <= `D din;
    n1d <= `D din[0] + din[1] + din[2] + din[3] + din[4] + din[5] + din[6] + din[7];
  end

  // ��һ����8 bit -> 9 bit
  // �ο�DVI�淶1.0����29ҳ��ͼ3-5
  wire decision1;  //0
  assign decision1 = (n1d > 4'h4) | ((n1d == 4'h4) & (din_q[0] == 1'b0));

  // ���λ���䣬ʣ�µĵ���ǰһλ����Ӧ��din_q��������㣬������ͬ������
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

  // �ڶ�����9 bit -> 10 bit
  // �ο�DVI�淶1.0����29ҳ��ͼ3-5
  reg [3:0] n1q_m, n0q_m; // ͳ��q_m��1��0�ĸ���
  always @ (posedge clk) begin
    n1q_m  <= `D q_m[0] + q_m[1] + q_m[2] + q_m[3] + q_m[4] + q_m[5] + q_m[6] + q_m[7];
    n0q_m  <= `D 4'h8 - (q_m[0] + q_m[1] + q_m[2] + q_m[3] + q_m[4] + q_m[5] + q_m[6] + q_m[7]);
  end

  reg [4:0] cnt; // ���������ͳ�ƣ�ͳ��1��0�Ƿ�������ͣ����λ(cnt[4])�Ƿ���λ
  wire decision2, decision3;
  assign decision2 = (cnt == 5'h0) | (n1q_m == n0q_m);
  
  // [(cnt > 0) and (N1q_m > N0q_m)] or [(cnt < 0) and (N0q_m > N1q_m)]
  assign decision3 = (~cnt[4] & (n1q_m > n0q_m)) | (cnt[4] & (n0q_m > n1q_m));

  // ��ˮ�߶���(ͬ���Ĵ���2��)
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

  // 10-bit  �������
  always @ (posedge clk or posedge rst_p) begin
    if (rst_p) begin
      dout <= 10'h0;
      cnt <= 5'd0;
    end else begin
      if (de_reg[1]) begin// �������ڣ����Ͷ�Ӧ���������
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
      end else begin  // ��������:���Ϳ����ź�
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