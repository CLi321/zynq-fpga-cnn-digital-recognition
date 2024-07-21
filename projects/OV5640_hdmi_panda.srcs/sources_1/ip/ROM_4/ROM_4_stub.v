// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Jul  6 01:41:41 2024
// Host        : LiLen running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               l:/CLi_Projects/XC7Z010/ch48_acz702_ov5640_ddr3_vga_io_hdmi/ov5640_ddr3_vga_io_hdmi.srcs/sources_1/ip/ROM_4/ROM_4_stub.v
// Design      : ROM_4
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *)
module ROM_4(clka, ena, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,addra[11:0],douta[23:0]" */;
  input clka;
  input ena;
  input [11:0]addra;
  output [23:0]douta;
endmodule
