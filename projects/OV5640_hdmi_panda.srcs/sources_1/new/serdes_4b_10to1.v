/////////////////////////////////////////////////////////////////////////////////
// Company       : 武汉芯路恒科技有限公司
//                 http://xiaomeige.taobao.com
// Web           : http://www.corecourse.cn
// 
// Create Date   : 2019/05/01 00:00:00
// Module Name   : serdes_4b_10to1
// Description   : 4路信号并行10bit转串行
// 
// Dependencies  : 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
/////////////////////////////////////////////////////////////////////////////////

module serdes_4b_10to1(
  clkx5,
  datain_0,
  datain_1,
  datain_2,
  datain_3,
  dataout_0_p,
  dataout_0_n,
  dataout_1_p,
  dataout_1_n,
  dataout_2_p,
  dataout_2_n,
  dataout_3_p,
  dataout_3_n 
);
  input        clkx5;         // 5x clock input
  input  [9:0] datain_0;      // input data for serialisation
  input  [9:0] datain_1;      // input data for serialisation
  input  [9:0] datain_2;      // input data for serialisation
  input  [9:0] datain_3;      // input data for serialisation
  output       dataout_0_p;   // out DDR data
  output       dataout_0_n;   // out DDR data
  output       dataout_1_p;   // out DDR data
  output       dataout_1_n;   // out DDR data
  output       dataout_2_p;   // out DDR data
  output       dataout_2_n;   // out DDR data
  output       dataout_3_p;   // out DDR data
  output       dataout_3_n;   // out DDR data

  wire dataout_0_n;
  wire dataout_1_n;
  wire dataout_2_n;
  wire dataout_3_n;

  reg [2:0] TMDS_mod5 = 0;  // 模5计数器

  reg [4:0] TMDS_shift_0h = 0, TMDS_shift_0l = 0;
  reg [4:0] TMDS_shift_1h = 0, TMDS_shift_1l = 0;
  reg [4:0] TMDS_shift_2h = 0, TMDS_shift_2l = 0;
  reg [4:0] TMDS_shift_3h = 0, TMDS_shift_3l = 0;

  wire [4:0] TMDS_0_l = {datain_0[9],datain_0[7],datain_0[5],datain_0[3],datain_0[1]};
  wire [4:0] TMDS_0_h = {datain_0[8],datain_0[6],datain_0[4],datain_0[2],datain_0[0]};

  wire [4:0] TMDS_1_l = {datain_1[9],datain_1[7],datain_1[5],datain_1[3],datain_1[1]};
  wire [4:0] TMDS_1_h = {datain_1[8],datain_1[6],datain_1[4],datain_1[2],datain_1[0]};

  wire [4:0] TMDS_2_l = {datain_2[9],datain_2[7],datain_2[5],datain_2[3],datain_2[1]};
  wire [4:0] TMDS_2_h = {datain_2[8],datain_2[6],datain_2[4],datain_2[2],datain_2[0]};

  wire [4:0] TMDS_3_l = {datain_3[9],datain_3[7],datain_3[5],datain_3[3],datain_3[1]};
  wire [4:0] TMDS_3_h = {datain_3[8],datain_3[6],datain_3[4],datain_3[2],datain_3[0]};

  // 5倍速度移位发送数据
  always @(posedge clkx5)
  begin
    TMDS_mod5 <= (TMDS_mod5[2]) ? 3'd0 : TMDS_mod5 + 3'd1;
    TMDS_shift_0h  <= TMDS_mod5[2] ? TMDS_0_h : TMDS_shift_0h[4:1];
    TMDS_shift_0l  <= TMDS_mod5[2] ? TMDS_0_l : TMDS_shift_0l[4:1];
    TMDS_shift_1h  <= TMDS_mod5[2] ? TMDS_1_h : TMDS_shift_1h[4:1];
    TMDS_shift_1l  <= TMDS_mod5[2] ? TMDS_1_l : TMDS_shift_1l[4:1];
    TMDS_shift_2h  <= TMDS_mod5[2] ? TMDS_2_h : TMDS_shift_2h[4:1];
    TMDS_shift_2l  <= TMDS_mod5[2] ? TMDS_2_l : TMDS_shift_2l[4:1];
    TMDS_shift_3h  <= TMDS_mod5[2] ? TMDS_3_h : TMDS_shift_3h[4:1];
    TMDS_shift_3l  <= TMDS_mod5[2] ? TMDS_3_l : TMDS_shift_3l[4:1];
  end

/////////////////////////////////////////////////////////////////////////////////
//Altera FPGA DDIO
/////////////////////////////////////////////////////////////////////////////////
//  altddio_out  altddio_out_0(
//    .datain_h   ({TMDS_shift_3h[0],TMDS_shift_2h[0],TMDS_shift_1h[0],TMDS_shift_0h[0]}),
//    .datain_l   ({TMDS_shift_3l[0],TMDS_shift_2l[0],TMDS_shift_1l[0],TMDS_shift_0l[0]}),
//    .outclock   (clkx5 ),
//    .dataout    ({dataout_3_p,dataout_2_p,dataout_1_p,dataout_0_p}),
//    .aclr       (1'b0  ),
//    .aset       (1'b0  ),
//    .oe         (1'b1  ),
//    .oe_out     (      ),
//    .outclocken (1'b1  ),
//    .sclr       (1'b0  ),
//    .sset       (1'b0  )
//  );
//  defparam
//    altddio_out_0.extend_oe_disable = "OFF",
//    altddio_out_0.invert_output = "OFF",
//    altddio_out_0.lpm_hint = "UNUSED",
//    altddio_out_0.lpm_type = "altddio_out",
//    altddio_out_0.oe_reg = "UNREGISTERED",
//    altddio_out_0.power_up_high = "OFF",
//    altddio_out_0.width = 4;
  
//  altddio_out  altddio_out_1(
//    .datain_h   (~{TMDS_shift_3h[0],TMDS_shift_2h[0],TMDS_shift_1h[0],TMDS_shift_0h[0]}),
//    .datain_l   (~{TMDS_shift_3l[0],TMDS_shift_2l[0],TMDS_shift_1l[0],TMDS_shift_0l[0]}),
//    .outclock   (clkx5 ),
//    .dataout    ({dataout_3_n,dataout_2_n,dataout_1_n,dataout_0_n}),
//    .aclr       (1'b0  ),
//    .aset       (1'b0  ),
//    .oe         (1'b1  ),
//    .oe_out     (      ),
//    .outclocken (1'b1  ),
//    .sclr       (1'b0  ),
//    .sset       (1'b0  )
//  );
//  defparam
//    altddio_out_1.extend_oe_disable = "OFF",
//    altddio_out_1.invert_output = "OFF",
//    altddio_out_1.lpm_hint = "UNUSED",
//    altddio_out_1.lpm_type = "altddio_out",
//    altddio_out_1.oe_reg = "UNREGISTERED",
//    altddio_out_1.power_up_high = "OFF",
//    altddio_out_1.width = 4;
/////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////
//Xilinx FPGA ODDR
/////////////////////////////////////////////////////////////////////////////////
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
    .INIT(1'b0),    // Initial value of Q: 1'b0 or 1'b1
    .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
  ) ODDR_0 (
    .Q (dataout_0        ),// 1-bit DDR output
    .C (clkx5            ),// 1-bit clock input
    .CE(1'b1             ),// 1-bit clock enable input
    .D1(TMDS_shift_0h[0] ),// 1-bit data input (positive edge)
    .D2(TMDS_shift_0l[0] ),// 1-bit data input (negative edge)
    .R (1'b0             ),// 1-bit reset
    .S (1'b0             ) // 1-bit set
  );

  OBUFDS #(
    .IOSTANDARD("DEFAULT"), // Specify the output I/O standard
    .SLEW("SLOW")           // Specify the output slew rate
  ) OBUFDS_0 (
    .O  (dataout_0_p ),// Diff_p output (connect directly to top-level port)
    .OB (dataout_0_n ),// Diff_n output (connect directly to top-level port)
    .I  (dataout_0   ) // Buffer input
  );

  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
    .INIT(1'b0),    // Initial value of Q: 1'b0 or 1'b1
    .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
  ) ODDR_1 (
    .Q (dataout_1        ),// 1-bit DDR output
    .C (clkx5            ),// 1-bit clock input
    .CE(1'b1             ),// 1-bit clock enable input
    .D1(TMDS_shift_1h[0] ),// 1-bit data input (positive edge)
    .D2(TMDS_shift_1l[0] ),// 1-bit data input (negative edge)
    .R (1'b0             ),// 1-bit reset
    .S (1'b0             ) // 1-bit set
  );

  OBUFDS #(
    .IOSTANDARD("DEFAULT"), // Specify the output I/O standard
    .SLEW("SLOW")           // Specify the output slew rate
  ) OBUFDS_1 (
    .O  (dataout_1_p ),// Diff_p output (connect directly to top-level port)
    .OB (dataout_1_n ),// Diff_n output (connect directly to top-level port)
    .I  (dataout_1   ) // Buffer input
  );

  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
    .INIT(1'b0),    // Initial value of Q: 1'b0 or 1'b1
    .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
  ) ODDR_2 (
    .Q (dataout_2        ),// 1-bit DDR output
    .C (clkx5            ),// 1-bit clock input
    .CE(1'b1             ),// 1-bit clock enable input
    .D1(TMDS_shift_2h[0] ),// 1-bit data input (positive edge)
    .D2(TMDS_shift_2l[0] ),// 1-bit data input (negative edge)
    .R (1'b0             ),// 1-bit reset
    .S (1'b0             ) // 1-bit set
  );

  OBUFDS #(
    .IOSTANDARD("DEFAULT"), // Specify the output I/O standard
    .SLEW("SLOW")           // Specify the output slew rate
  ) OBUFDS_2 (
    .O  (dataout_2_p ),// Diff_p output (connect directly to top-level port)
    .OB (dataout_2_n ),// Diff_n output (connect directly to top-level port)
    .I  (dataout_2   ) // Buffer input
  );

  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
    .INIT(1'b0),    // Initial value of Q: 1'b0 or 1'b1
    .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
  ) ODDR_3 (
    .Q (dataout_3        ),// 1-bit DDR output
    .C (clkx5            ),// 1-bit clock input
    .CE(1'b1             ),// 1-bit clock enable input
    .D1(TMDS_shift_3h[0] ),// 1-bit data input (positive edge)
    .D2(TMDS_shift_3l[0] ),// 1-bit data input (negative edge)
    .R (1'b0             ),// 1-bit reset
    .S (1'b0             ) // 1-bit set
  );

  OBUFDS #(
    .IOSTANDARD("DEFAULT"), // Specify the output I/O standard
    .SLEW("SLOW")           // Specify the output slew rate
  ) OBUFDS_3 (
    .O  (dataout_3_p ),// Diff_p output (connect directly to top-level port)
    .OB (dataout_3_n ),// Diff_n output (connect directly to top-level port)
    .I  (dataout_3   ) // Buffer input
  );

/////////////////////////////////////////////////////////////////////////////////

endmodule
