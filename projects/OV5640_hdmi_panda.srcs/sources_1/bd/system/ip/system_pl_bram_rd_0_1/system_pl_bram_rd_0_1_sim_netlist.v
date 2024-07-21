// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Jul 21 08:21:37 2024
// Host        : LiLen running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top system_pl_bram_rd_0_1 -prefix
//               system_pl_bram_rd_0_1_ system_pl_bram_rd_0_0_sim_netlist.v
// Design      : system_pl_bram_rd_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_pl_bram_rd_0_1_bram_rd
   (SR,
    \ram_addr_reg[31]_0 ,
    ram_en,
    Q,
    s00_axi_aclk,
    flow_cnt1_carry__6_0,
    \ram_addr_reg[31]_1 ,
    s00_axi_aresetn);
  output [0:0]SR;
  output [31:0]\ram_addr_reg[31]_0 ;
  output ram_en;
  input [0:0]Q;
  input s00_axi_aclk;
  input [31:0]flow_cnt1_carry__6_0;
  input [31:0]\ram_addr_reg[31]_1 ;
  input s00_axi_aresetn;

  wire \/i__n_0 ;
  wire \FSM_onehot_flow_cnt[0]_i_1_n_0 ;
  wire \FSM_onehot_flow_cnt[1]_i_1_n_0 ;
  wire \FSM_onehot_flow_cnt[2]_i_1_n_0 ;
  wire \FSM_onehot_flow_cnt_reg_n_0_[0] ;
  wire \FSM_onehot_flow_cnt_reg_n_0_[1] ;
  wire \FSM_onehot_flow_cnt_reg_n_0_[2] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire flow_cnt0_carry__0_i_1_n_0;
  wire flow_cnt0_carry__0_i_2_n_0;
  wire flow_cnt0_carry__0_i_3_n_0;
  wire flow_cnt0_carry__0_i_4_n_0;
  wire flow_cnt0_carry__0_n_0;
  wire flow_cnt0_carry__0_n_1;
  wire flow_cnt0_carry__0_n_2;
  wire flow_cnt0_carry__0_n_3;
  wire flow_cnt0_carry__1_i_1_n_0;
  wire flow_cnt0_carry__1_i_2_n_0;
  wire flow_cnt0_carry__1_i_3_n_0;
  wire flow_cnt0_carry__1_n_1;
  wire flow_cnt0_carry__1_n_2;
  wire flow_cnt0_carry__1_n_3;
  wire flow_cnt0_carry_i_1_n_0;
  wire flow_cnt0_carry_i_2_n_0;
  wire flow_cnt0_carry_i_3_n_0;
  wire flow_cnt0_carry_i_4_n_0;
  wire flow_cnt0_carry_n_0;
  wire flow_cnt0_carry_n_1;
  wire flow_cnt0_carry_n_2;
  wire flow_cnt0_carry_n_3;
  wire [31:1]flow_cnt1;
  wire [31:0]flow_cnt10_in;
  wire flow_cnt1_carry__0_i_1_n_0;
  wire flow_cnt1_carry__0_i_2_n_0;
  wire flow_cnt1_carry__0_i_3_n_0;
  wire flow_cnt1_carry__0_i_4_n_0;
  wire flow_cnt1_carry__0_n_0;
  wire flow_cnt1_carry__0_n_1;
  wire flow_cnt1_carry__0_n_2;
  wire flow_cnt1_carry__0_n_3;
  wire flow_cnt1_carry__1_i_1_n_0;
  wire flow_cnt1_carry__1_i_2_n_0;
  wire flow_cnt1_carry__1_i_3_n_0;
  wire flow_cnt1_carry__1_i_4_n_0;
  wire flow_cnt1_carry__1_n_0;
  wire flow_cnt1_carry__1_n_1;
  wire flow_cnt1_carry__1_n_2;
  wire flow_cnt1_carry__1_n_3;
  wire flow_cnt1_carry__2_i_1_n_0;
  wire flow_cnt1_carry__2_i_2_n_0;
  wire flow_cnt1_carry__2_i_3_n_0;
  wire flow_cnt1_carry__2_i_4_n_0;
  wire flow_cnt1_carry__2_n_0;
  wire flow_cnt1_carry__2_n_1;
  wire flow_cnt1_carry__2_n_2;
  wire flow_cnt1_carry__2_n_3;
  wire flow_cnt1_carry__3_i_1_n_0;
  wire flow_cnt1_carry__3_i_2_n_0;
  wire flow_cnt1_carry__3_i_3_n_0;
  wire flow_cnt1_carry__3_i_4_n_0;
  wire flow_cnt1_carry__3_n_0;
  wire flow_cnt1_carry__3_n_1;
  wire flow_cnt1_carry__3_n_2;
  wire flow_cnt1_carry__3_n_3;
  wire flow_cnt1_carry__4_i_1_n_0;
  wire flow_cnt1_carry__4_i_2_n_0;
  wire flow_cnt1_carry__4_i_3_n_0;
  wire flow_cnt1_carry__4_i_4_n_0;
  wire flow_cnt1_carry__4_n_0;
  wire flow_cnt1_carry__4_n_1;
  wire flow_cnt1_carry__4_n_2;
  wire flow_cnt1_carry__4_n_3;
  wire flow_cnt1_carry__5_i_1_n_0;
  wire flow_cnt1_carry__5_i_2_n_0;
  wire flow_cnt1_carry__5_i_3_n_0;
  wire flow_cnt1_carry__5_i_4_n_0;
  wire flow_cnt1_carry__5_n_0;
  wire flow_cnt1_carry__5_n_1;
  wire flow_cnt1_carry__5_n_2;
  wire flow_cnt1_carry__5_n_3;
  wire [31:0]flow_cnt1_carry__6_0;
  wire flow_cnt1_carry__6_i_1_n_0;
  wire flow_cnt1_carry__6_i_2_n_0;
  wire flow_cnt1_carry__6_i_3_n_0;
  wire flow_cnt1_carry__6_n_2;
  wire flow_cnt1_carry__6_n_3;
  wire flow_cnt1_carry_i_1_n_0;
  wire flow_cnt1_carry_i_2_n_0;
  wire flow_cnt1_carry_i_3_n_0;
  wire flow_cnt1_carry_n_0;
  wire flow_cnt1_carry_n_1;
  wire flow_cnt1_carry_n_2;
  wire flow_cnt1_carry_n_3;
  wire \flow_cnt1_inferred__0/i__carry__0_n_0 ;
  wire \flow_cnt1_inferred__0/i__carry__0_n_1 ;
  wire \flow_cnt1_inferred__0/i__carry__0_n_2 ;
  wire \flow_cnt1_inferred__0/i__carry__0_n_3 ;
  wire \flow_cnt1_inferred__0/i__carry__1_n_0 ;
  wire \flow_cnt1_inferred__0/i__carry__1_n_1 ;
  wire \flow_cnt1_inferred__0/i__carry__1_n_2 ;
  wire \flow_cnt1_inferred__0/i__carry__1_n_3 ;
  wire \flow_cnt1_inferred__0/i__carry__2_n_0 ;
  wire \flow_cnt1_inferred__0/i__carry__2_n_1 ;
  wire \flow_cnt1_inferred__0/i__carry__2_n_2 ;
  wire \flow_cnt1_inferred__0/i__carry__2_n_3 ;
  wire \flow_cnt1_inferred__0/i__carry__3_n_0 ;
  wire \flow_cnt1_inferred__0/i__carry__3_n_1 ;
  wire \flow_cnt1_inferred__0/i__carry__3_n_2 ;
  wire \flow_cnt1_inferred__0/i__carry__3_n_3 ;
  wire \flow_cnt1_inferred__0/i__carry__4_n_0 ;
  wire \flow_cnt1_inferred__0/i__carry__4_n_1 ;
  wire \flow_cnt1_inferred__0/i__carry__4_n_2 ;
  wire \flow_cnt1_inferred__0/i__carry__4_n_3 ;
  wire \flow_cnt1_inferred__0/i__carry__5_n_0 ;
  wire \flow_cnt1_inferred__0/i__carry__5_n_1 ;
  wire \flow_cnt1_inferred__0/i__carry__5_n_2 ;
  wire \flow_cnt1_inferred__0/i__carry__5_n_3 ;
  wire \flow_cnt1_inferred__0/i__carry__6_n_1 ;
  wire \flow_cnt1_inferred__0/i__carry__6_n_2 ;
  wire \flow_cnt1_inferred__0/i__carry__6_n_3 ;
  wire \flow_cnt1_inferred__0/i__carry_n_0 ;
  wire \flow_cnt1_inferred__0/i__carry_n_1 ;
  wire \flow_cnt1_inferred__0/i__carry_n_2 ;
  wire \flow_cnt1_inferred__0/i__carry_n_3 ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry__4_i_4_n_0;
  wire i__carry__5_i_1_n_0;
  wire i__carry__5_i_2_n_0;
  wire i__carry__5_i_3_n_0;
  wire i__carry__5_i_4_n_0;
  wire i__carry__6_i_1_n_0;
  wire i__carry__6_i_2_n_0;
  wire i__carry__6_i_3_n_0;
  wire i__carry__6_i_4_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire [31:1]in5;
  wire ram_addr0_carry__0_n_0;
  wire ram_addr0_carry__0_n_1;
  wire ram_addr0_carry__0_n_2;
  wire ram_addr0_carry__0_n_3;
  wire ram_addr0_carry__1_n_0;
  wire ram_addr0_carry__1_n_1;
  wire ram_addr0_carry__1_n_2;
  wire ram_addr0_carry__1_n_3;
  wire ram_addr0_carry__2_n_0;
  wire ram_addr0_carry__2_n_1;
  wire ram_addr0_carry__2_n_2;
  wire ram_addr0_carry__2_n_3;
  wire ram_addr0_carry__3_n_0;
  wire ram_addr0_carry__3_n_1;
  wire ram_addr0_carry__3_n_2;
  wire ram_addr0_carry__3_n_3;
  wire ram_addr0_carry__4_n_0;
  wire ram_addr0_carry__4_n_1;
  wire ram_addr0_carry__4_n_2;
  wire ram_addr0_carry__4_n_3;
  wire ram_addr0_carry__5_n_0;
  wire ram_addr0_carry__5_n_1;
  wire ram_addr0_carry__5_n_2;
  wire ram_addr0_carry__5_n_3;
  wire ram_addr0_carry__6_n_2;
  wire ram_addr0_carry__6_n_3;
  wire ram_addr0_carry_i_1_n_0;
  wire ram_addr0_carry_n_0;
  wire ram_addr0_carry_n_1;
  wire ram_addr0_carry_n_2;
  wire ram_addr0_carry_n_3;
  wire \ram_addr[0]_i_1_n_0 ;
  wire \ram_addr[10]_i_1_n_0 ;
  wire \ram_addr[11]_i_1_n_0 ;
  wire \ram_addr[12]_i_1_n_0 ;
  wire \ram_addr[13]_i_1_n_0 ;
  wire \ram_addr[14]_i_1_n_0 ;
  wire \ram_addr[15]_i_1_n_0 ;
  wire \ram_addr[16]_i_1_n_0 ;
  wire \ram_addr[17]_i_1_n_0 ;
  wire \ram_addr[18]_i_1_n_0 ;
  wire \ram_addr[19]_i_1_n_0 ;
  wire \ram_addr[1]_i_1_n_0 ;
  wire \ram_addr[20]_i_1_n_0 ;
  wire \ram_addr[21]_i_1_n_0 ;
  wire \ram_addr[22]_i_1_n_0 ;
  wire \ram_addr[23]_i_1_n_0 ;
  wire \ram_addr[24]_i_1_n_0 ;
  wire \ram_addr[25]_i_1_n_0 ;
  wire \ram_addr[26]_i_1_n_0 ;
  wire \ram_addr[27]_i_1_n_0 ;
  wire \ram_addr[28]_i_1_n_0 ;
  wire \ram_addr[29]_i_1_n_0 ;
  wire \ram_addr[2]_i_1_n_0 ;
  wire \ram_addr[30]_i_1_n_0 ;
  wire \ram_addr[31]_i_1_n_0 ;
  wire \ram_addr[3]_i_1_n_0 ;
  wire \ram_addr[4]_i_1_n_0 ;
  wire \ram_addr[5]_i_1_n_0 ;
  wire \ram_addr[6]_i_1_n_0 ;
  wire \ram_addr[7]_i_1_n_0 ;
  wire \ram_addr[8]_i_1_n_0 ;
  wire \ram_addr[9]_i_1_n_0 ;
  wire [31:0]\ram_addr_reg[31]_0 ;
  wire [31:0]\ram_addr_reg[31]_1 ;
  wire ram_en;
  wire ram_en_i_1_n_0;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire start_rd_d0;
  wire start_rd_d1;
  wire [3:0]NLW_flow_cnt0_carry_O_UNCONNECTED;
  wire [3:0]NLW_flow_cnt0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_flow_cnt0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_flow_cnt0_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_flow_cnt1_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_flow_cnt1_carry__6_O_UNCONNECTED;
  wire [3:3]\NLW_flow_cnt1_inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [3:2]NLW_ram_addr0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_ram_addr0_carry__6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hAEAAAEAAFFFFAEAA)) 
    \/i_ 
       (.I0(\FSM_onehot_flow_cnt_reg_n_0_[2] ),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(start_rd_d1),
        .I3(start_rd_d0),
        .I4(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .I5(flow_cnt0_carry__1_n_1),
        .O(\/i__n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAEEEAEEEAEE)) 
    \FSM_onehot_flow_cnt[0]_i_1 
       (.I0(\FSM_onehot_flow_cnt_reg_n_0_[2] ),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(start_rd_d1),
        .I3(start_rd_d0),
        .I4(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .I5(flow_cnt0_carry__1_n_1),
        .O(\FSM_onehot_flow_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC8C88DDDD8C88)) 
    \FSM_onehot_flow_cnt[1]_i_1 
       (.I0(\FSM_onehot_flow_cnt_reg_n_0_[2] ),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(start_rd_d1),
        .I3(start_rd_d0),
        .I4(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .I5(flow_cnt0_carry__1_n_1),
        .O(\FSM_onehot_flow_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000AEAA0000)) 
    \FSM_onehot_flow_cnt[2]_i_1 
       (.I0(\FSM_onehot_flow_cnt_reg_n_0_[2] ),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(start_rd_d1),
        .I3(start_rd_d0),
        .I4(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .I5(flow_cnt0_carry__1_n_1),
        .O(\FSM_onehot_flow_cnt[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_flow_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_flow_cnt[0]_i_1_n_0 ),
        .PRE(SR),
        .Q(\FSM_onehot_flow_cnt_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_flow_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\FSM_onehot_flow_cnt[1]_i_1_n_0 ),
        .Q(\FSM_onehot_flow_cnt_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_flow_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\FSM_onehot_flow_cnt[2]_i_1_n_0 ),
        .Q(\FSM_onehot_flow_cnt_reg_n_0_[2] ));
  CARRY4 flow_cnt0_carry
       (.CI(1'b0),
        .CO({flow_cnt0_carry_n_0,flow_cnt0_carry_n_1,flow_cnt0_carry_n_2,flow_cnt0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_flow_cnt0_carry_O_UNCONNECTED[3:0]),
        .S({flow_cnt0_carry_i_1_n_0,flow_cnt0_carry_i_2_n_0,flow_cnt0_carry_i_3_n_0,flow_cnt0_carry_i_4_n_0}));
  CARRY4 flow_cnt0_carry__0
       (.CI(flow_cnt0_carry_n_0),
        .CO({flow_cnt0_carry__0_n_0,flow_cnt0_carry__0_n_1,flow_cnt0_carry__0_n_2,flow_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_flow_cnt0_carry__0_O_UNCONNECTED[3:0]),
        .S({flow_cnt0_carry__0_i_1_n_0,flow_cnt0_carry__0_i_2_n_0,flow_cnt0_carry__0_i_3_n_0,flow_cnt0_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    flow_cnt0_carry__0_i_1
       (.I0(flow_cnt10_in[21]),
        .I1(flow_cnt1[21]),
        .I2(flow_cnt1[23]),
        .I3(flow_cnt10_in[23]),
        .I4(flow_cnt1[22]),
        .I5(flow_cnt10_in[22]),
        .O(flow_cnt0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    flow_cnt0_carry__0_i_2
       (.I0(flow_cnt10_in[18]),
        .I1(flow_cnt1[18]),
        .I2(flow_cnt1[20]),
        .I3(flow_cnt10_in[20]),
        .I4(flow_cnt1[19]),
        .I5(flow_cnt10_in[19]),
        .O(flow_cnt0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    flow_cnt0_carry__0_i_3
       (.I0(flow_cnt10_in[15]),
        .I1(flow_cnt1[15]),
        .I2(flow_cnt1[17]),
        .I3(flow_cnt10_in[17]),
        .I4(flow_cnt1[16]),
        .I5(flow_cnt10_in[16]),
        .O(flow_cnt0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    flow_cnt0_carry__0_i_4
       (.I0(flow_cnt10_in[12]),
        .I1(flow_cnt1[12]),
        .I2(flow_cnt1[14]),
        .I3(flow_cnt10_in[14]),
        .I4(flow_cnt1[13]),
        .I5(flow_cnt10_in[13]),
        .O(flow_cnt0_carry__0_i_4_n_0));
  CARRY4 flow_cnt0_carry__1
       (.CI(flow_cnt0_carry__0_n_0),
        .CO({NLW_flow_cnt0_carry__1_CO_UNCONNECTED[3],flow_cnt0_carry__1_n_1,flow_cnt0_carry__1_n_2,flow_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_flow_cnt0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,flow_cnt0_carry__1_i_1_n_0,flow_cnt0_carry__1_i_2_n_0,flow_cnt0_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    flow_cnt0_carry__1_i_1
       (.I0(flow_cnt10_in[30]),
        .I1(flow_cnt1[30]),
        .I2(flow_cnt10_in[31]),
        .I3(flow_cnt1[31]),
        .O(flow_cnt0_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    flow_cnt0_carry__1_i_2
       (.I0(flow_cnt10_in[27]),
        .I1(flow_cnt1[27]),
        .I2(flow_cnt1[29]),
        .I3(flow_cnt10_in[29]),
        .I4(flow_cnt1[28]),
        .I5(flow_cnt10_in[28]),
        .O(flow_cnt0_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    flow_cnt0_carry__1_i_3
       (.I0(flow_cnt10_in[24]),
        .I1(flow_cnt1[24]),
        .I2(flow_cnt1[26]),
        .I3(flow_cnt10_in[26]),
        .I4(flow_cnt1[25]),
        .I5(flow_cnt10_in[25]),
        .O(flow_cnt0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    flow_cnt0_carry_i_1
       (.I0(flow_cnt10_in[9]),
        .I1(flow_cnt1[9]),
        .I2(flow_cnt1[11]),
        .I3(flow_cnt10_in[11]),
        .I4(flow_cnt1[10]),
        .I5(flow_cnt10_in[10]),
        .O(flow_cnt0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    flow_cnt0_carry_i_2
       (.I0(flow_cnt10_in[6]),
        .I1(flow_cnt1[6]),
        .I2(flow_cnt1[8]),
        .I3(flow_cnt10_in[8]),
        .I4(flow_cnt1[7]),
        .I5(flow_cnt10_in[7]),
        .O(flow_cnt0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    flow_cnt0_carry_i_3
       (.I0(flow_cnt10_in[3]),
        .I1(flow_cnt1[3]),
        .I2(flow_cnt1[5]),
        .I3(flow_cnt10_in[5]),
        .I4(flow_cnt1[4]),
        .I5(flow_cnt10_in[4]),
        .O(flow_cnt0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    flow_cnt0_carry_i_4
       (.I0(flow_cnt10_in[0]),
        .I1(flow_cnt1_carry__6_0[0]),
        .I2(flow_cnt1[2]),
        .I3(flow_cnt10_in[2]),
        .I4(flow_cnt1[1]),
        .I5(flow_cnt10_in[1]),
        .O(flow_cnt0_carry_i_4_n_0));
  CARRY4 flow_cnt1_carry
       (.CI(1'b0),
        .CO({flow_cnt1_carry_n_0,flow_cnt1_carry_n_1,flow_cnt1_carry_n_2,flow_cnt1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({flow_cnt1_carry__6_0[4:2],1'b0}),
        .O(flow_cnt1[4:1]),
        .S({flow_cnt1_carry_i_1_n_0,flow_cnt1_carry_i_2_n_0,flow_cnt1_carry_i_3_n_0,flow_cnt1_carry__6_0[1]}));
  CARRY4 flow_cnt1_carry__0
       (.CI(flow_cnt1_carry_n_0),
        .CO({flow_cnt1_carry__0_n_0,flow_cnt1_carry__0_n_1,flow_cnt1_carry__0_n_2,flow_cnt1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(flow_cnt1_carry__6_0[8:5]),
        .O(flow_cnt1[8:5]),
        .S({flow_cnt1_carry__0_i_1_n_0,flow_cnt1_carry__0_i_2_n_0,flow_cnt1_carry__0_i_3_n_0,flow_cnt1_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry__0_i_1
       (.I0(flow_cnt1_carry__6_0[8]),
        .O(flow_cnt1_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry__0_i_2
       (.I0(flow_cnt1_carry__6_0[7]),
        .O(flow_cnt1_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry__0_i_3
       (.I0(flow_cnt1_carry__6_0[6]),
        .O(flow_cnt1_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry__0_i_4
       (.I0(flow_cnt1_carry__6_0[5]),
        .O(flow_cnt1_carry__0_i_4_n_0));
  CARRY4 flow_cnt1_carry__1
       (.CI(flow_cnt1_carry__0_n_0),
        .CO({flow_cnt1_carry__1_n_0,flow_cnt1_carry__1_n_1,flow_cnt1_carry__1_n_2,flow_cnt1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(flow_cnt1_carry__6_0[12:9]),
        .O(flow_cnt1[12:9]),
        .S({flow_cnt1_carry__1_i_1_n_0,flow_cnt1_carry__1_i_2_n_0,flow_cnt1_carry__1_i_3_n_0,flow_cnt1_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry__1_i_1
       (.I0(flow_cnt1_carry__6_0[12]),
        .O(flow_cnt1_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry__1_i_2
       (.I0(flow_cnt1_carry__6_0[11]),
        .O(flow_cnt1_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry__1_i_3
       (.I0(flow_cnt1_carry__6_0[10]),
        .O(flow_cnt1_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry__1_i_4
       (.I0(flow_cnt1_carry__6_0[9]),
        .O(flow_cnt1_carry__1_i_4_n_0));
  CARRY4 flow_cnt1_carry__2
       (.CI(flow_cnt1_carry__1_n_0),
        .CO({flow_cnt1_carry__2_n_0,flow_cnt1_carry__2_n_1,flow_cnt1_carry__2_n_2,flow_cnt1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(flow_cnt1_carry__6_0[16:13]),
        .O(flow_cnt1[16:13]),
        .S({flow_cnt1_carry__2_i_1_n_0,flow_cnt1_carry__2_i_2_n_0,flow_cnt1_carry__2_i_3_n_0,flow_cnt1_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry__2_i_1
       (.I0(flow_cnt1_carry__6_0[16]),
        .O(flow_cnt1_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry__2_i_2
       (.I0(flow_cnt1_carry__6_0[15]),
        .O(flow_cnt1_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry__2_i_3
       (.I0(flow_cnt1_carry__6_0[14]),
        .O(flow_cnt1_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry__2_i_4
       (.I0(flow_cnt1_carry__6_0[13]),
        .O(flow_cnt1_carry__2_i_4_n_0));
  CARRY4 flow_cnt1_carry__3
       (.CI(flow_cnt1_carry__2_n_0),
        .CO({flow_cnt1_carry__3_n_0,flow_cnt1_carry__3_n_1,flow_cnt1_carry__3_n_2,flow_cnt1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(flow_cnt1_carry__6_0[20:17]),
        .O(flow_cnt1[20:17]),
        .S({flow_cnt1_carry__3_i_1_n_0,flow_cnt1_carry__3_i_2_n_0,flow_cnt1_carry__3_i_3_n_0,flow_cnt1_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry__3_i_1
       (.I0(flow_cnt1_carry__6_0[20]),
        .O(flow_cnt1_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry__3_i_2
       (.I0(flow_cnt1_carry__6_0[19]),
        .O(flow_cnt1_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry__3_i_3
       (.I0(flow_cnt1_carry__6_0[18]),
        .O(flow_cnt1_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry__3_i_4
       (.I0(flow_cnt1_carry__6_0[17]),
        .O(flow_cnt1_carry__3_i_4_n_0));
  CARRY4 flow_cnt1_carry__4
       (.CI(flow_cnt1_carry__3_n_0),
        .CO({flow_cnt1_carry__4_n_0,flow_cnt1_carry__4_n_1,flow_cnt1_carry__4_n_2,flow_cnt1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(flow_cnt1_carry__6_0[24:21]),
        .O(flow_cnt1[24:21]),
        .S({flow_cnt1_carry__4_i_1_n_0,flow_cnt1_carry__4_i_2_n_0,flow_cnt1_carry__4_i_3_n_0,flow_cnt1_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry__4_i_1
       (.I0(flow_cnt1_carry__6_0[24]),
        .O(flow_cnt1_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry__4_i_2
       (.I0(flow_cnt1_carry__6_0[23]),
        .O(flow_cnt1_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry__4_i_3
       (.I0(flow_cnt1_carry__6_0[22]),
        .O(flow_cnt1_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry__4_i_4
       (.I0(flow_cnt1_carry__6_0[21]),
        .O(flow_cnt1_carry__4_i_4_n_0));
  CARRY4 flow_cnt1_carry__5
       (.CI(flow_cnt1_carry__4_n_0),
        .CO({flow_cnt1_carry__5_n_0,flow_cnt1_carry__5_n_1,flow_cnt1_carry__5_n_2,flow_cnt1_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(flow_cnt1_carry__6_0[28:25]),
        .O(flow_cnt1[28:25]),
        .S({flow_cnt1_carry__5_i_1_n_0,flow_cnt1_carry__5_i_2_n_0,flow_cnt1_carry__5_i_3_n_0,flow_cnt1_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry__5_i_1
       (.I0(flow_cnt1_carry__6_0[28]),
        .O(flow_cnt1_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry__5_i_2
       (.I0(flow_cnt1_carry__6_0[27]),
        .O(flow_cnt1_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry__5_i_3
       (.I0(flow_cnt1_carry__6_0[26]),
        .O(flow_cnt1_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry__5_i_4
       (.I0(flow_cnt1_carry__6_0[25]),
        .O(flow_cnt1_carry__5_i_4_n_0));
  CARRY4 flow_cnt1_carry__6
       (.CI(flow_cnt1_carry__5_n_0),
        .CO({NLW_flow_cnt1_carry__6_CO_UNCONNECTED[3:2],flow_cnt1_carry__6_n_2,flow_cnt1_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,flow_cnt1_carry__6_0[30:29]}),
        .O({NLW_flow_cnt1_carry__6_O_UNCONNECTED[3],flow_cnt1[31:29]}),
        .S({1'b0,flow_cnt1_carry__6_i_1_n_0,flow_cnt1_carry__6_i_2_n_0,flow_cnt1_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry__6_i_1
       (.I0(flow_cnt1_carry__6_0[31]),
        .O(flow_cnt1_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry__6_i_2
       (.I0(flow_cnt1_carry__6_0[30]),
        .O(flow_cnt1_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry__6_i_3
       (.I0(flow_cnt1_carry__6_0[29]),
        .O(flow_cnt1_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry_i_1
       (.I0(flow_cnt1_carry__6_0[4]),
        .O(flow_cnt1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry_i_2
       (.I0(flow_cnt1_carry__6_0[3]),
        .O(flow_cnt1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    flow_cnt1_carry_i_3
       (.I0(flow_cnt1_carry__6_0[2]),
        .O(flow_cnt1_carry_i_3_n_0));
  CARRY4 \flow_cnt1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\flow_cnt1_inferred__0/i__carry_n_0 ,\flow_cnt1_inferred__0/i__carry_n_1 ,\flow_cnt1_inferred__0/i__carry_n_2 ,\flow_cnt1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(\ram_addr_reg[31]_0 [3:0]),
        .O(flow_cnt10_in[3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \flow_cnt1_inferred__0/i__carry__0 
       (.CI(\flow_cnt1_inferred__0/i__carry_n_0 ),
        .CO({\flow_cnt1_inferred__0/i__carry__0_n_0 ,\flow_cnt1_inferred__0/i__carry__0_n_1 ,\flow_cnt1_inferred__0/i__carry__0_n_2 ,\flow_cnt1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\ram_addr_reg[31]_0 [7:4]),
        .O(flow_cnt10_in[7:4]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \flow_cnt1_inferred__0/i__carry__1 
       (.CI(\flow_cnt1_inferred__0/i__carry__0_n_0 ),
        .CO({\flow_cnt1_inferred__0/i__carry__1_n_0 ,\flow_cnt1_inferred__0/i__carry__1_n_1 ,\flow_cnt1_inferred__0/i__carry__1_n_2 ,\flow_cnt1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(\ram_addr_reg[31]_0 [11:8]),
        .O(flow_cnt10_in[11:8]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  CARRY4 \flow_cnt1_inferred__0/i__carry__2 
       (.CI(\flow_cnt1_inferred__0/i__carry__1_n_0 ),
        .CO({\flow_cnt1_inferred__0/i__carry__2_n_0 ,\flow_cnt1_inferred__0/i__carry__2_n_1 ,\flow_cnt1_inferred__0/i__carry__2_n_2 ,\flow_cnt1_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(\ram_addr_reg[31]_0 [15:12]),
        .O(flow_cnt10_in[15:12]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  CARRY4 \flow_cnt1_inferred__0/i__carry__3 
       (.CI(\flow_cnt1_inferred__0/i__carry__2_n_0 ),
        .CO({\flow_cnt1_inferred__0/i__carry__3_n_0 ,\flow_cnt1_inferred__0/i__carry__3_n_1 ,\flow_cnt1_inferred__0/i__carry__3_n_2 ,\flow_cnt1_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI(\ram_addr_reg[31]_0 [19:16]),
        .O(flow_cnt10_in[19:16]),
        .S({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  CARRY4 \flow_cnt1_inferred__0/i__carry__4 
       (.CI(\flow_cnt1_inferred__0/i__carry__3_n_0 ),
        .CO({\flow_cnt1_inferred__0/i__carry__4_n_0 ,\flow_cnt1_inferred__0/i__carry__4_n_1 ,\flow_cnt1_inferred__0/i__carry__4_n_2 ,\flow_cnt1_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI(\ram_addr_reg[31]_0 [23:20]),
        .O(flow_cnt10_in[23:20]),
        .S({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}));
  CARRY4 \flow_cnt1_inferred__0/i__carry__5 
       (.CI(\flow_cnt1_inferred__0/i__carry__4_n_0 ),
        .CO({\flow_cnt1_inferred__0/i__carry__5_n_0 ,\flow_cnt1_inferred__0/i__carry__5_n_1 ,\flow_cnt1_inferred__0/i__carry__5_n_2 ,\flow_cnt1_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI(\ram_addr_reg[31]_0 [27:24]),
        .O(flow_cnt10_in[27:24]),
        .S({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}));
  CARRY4 \flow_cnt1_inferred__0/i__carry__6 
       (.CI(\flow_cnt1_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW_flow_cnt1_inferred__0/i__carry__6_CO_UNCONNECTED [3],\flow_cnt1_inferred__0/i__carry__6_n_1 ,\flow_cnt1_inferred__0/i__carry__6_n_2 ,\flow_cnt1_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\ram_addr_reg[31]_0 [30:28]}),
        .O(flow_cnt10_in[31:28]),
        .S({i__carry__6_i_1_n_0,i__carry__6_i_2_n_0,i__carry__6_i_3_n_0,i__carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1
       (.I0(\ram_addr_reg[31]_0 [7]),
        .I1(\ram_addr_reg[31]_1 [7]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2
       (.I0(\ram_addr_reg[31]_0 [6]),
        .I1(\ram_addr_reg[31]_1 [6]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3
       (.I0(\ram_addr_reg[31]_0 [5]),
        .I1(\ram_addr_reg[31]_1 [5]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4
       (.I0(\ram_addr_reg[31]_0 [4]),
        .I1(\ram_addr_reg[31]_1 [4]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1
       (.I0(\ram_addr_reg[31]_0 [11]),
        .I1(\ram_addr_reg[31]_1 [11]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2
       (.I0(\ram_addr_reg[31]_0 [10]),
        .I1(\ram_addr_reg[31]_1 [10]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_3
       (.I0(\ram_addr_reg[31]_0 [9]),
        .I1(\ram_addr_reg[31]_1 [9]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_4
       (.I0(\ram_addr_reg[31]_0 [8]),
        .I1(\ram_addr_reg[31]_1 [8]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_1
       (.I0(\ram_addr_reg[31]_0 [15]),
        .I1(\ram_addr_reg[31]_1 [15]),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_2
       (.I0(\ram_addr_reg[31]_0 [14]),
        .I1(\ram_addr_reg[31]_1 [14]),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_3
       (.I0(\ram_addr_reg[31]_0 [13]),
        .I1(\ram_addr_reg[31]_1 [13]),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_4
       (.I0(\ram_addr_reg[31]_0 [12]),
        .I1(\ram_addr_reg[31]_1 [12]),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_1
       (.I0(\ram_addr_reg[31]_0 [19]),
        .I1(\ram_addr_reg[31]_1 [19]),
        .O(i__carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_2
       (.I0(\ram_addr_reg[31]_0 [18]),
        .I1(\ram_addr_reg[31]_1 [18]),
        .O(i__carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_3
       (.I0(\ram_addr_reg[31]_0 [17]),
        .I1(\ram_addr_reg[31]_1 [17]),
        .O(i__carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_4
       (.I0(\ram_addr_reg[31]_0 [16]),
        .I1(\ram_addr_reg[31]_1 [16]),
        .O(i__carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_1
       (.I0(\ram_addr_reg[31]_0 [23]),
        .I1(\ram_addr_reg[31]_1 [23]),
        .O(i__carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_2
       (.I0(\ram_addr_reg[31]_0 [22]),
        .I1(\ram_addr_reg[31]_1 [22]),
        .O(i__carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_3
       (.I0(\ram_addr_reg[31]_0 [21]),
        .I1(\ram_addr_reg[31]_1 [21]),
        .O(i__carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_4
       (.I0(\ram_addr_reg[31]_0 [20]),
        .I1(\ram_addr_reg[31]_1 [20]),
        .O(i__carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_1
       (.I0(\ram_addr_reg[31]_0 [27]),
        .I1(\ram_addr_reg[31]_1 [27]),
        .O(i__carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_2
       (.I0(\ram_addr_reg[31]_0 [26]),
        .I1(\ram_addr_reg[31]_1 [26]),
        .O(i__carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_3
       (.I0(\ram_addr_reg[31]_0 [25]),
        .I1(\ram_addr_reg[31]_1 [25]),
        .O(i__carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_4
       (.I0(\ram_addr_reg[31]_0 [24]),
        .I1(\ram_addr_reg[31]_1 [24]),
        .O(i__carry__5_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_1
       (.I0(\ram_addr_reg[31]_0 [31]),
        .I1(\ram_addr_reg[31]_1 [31]),
        .O(i__carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_2
       (.I0(\ram_addr_reg[31]_0 [30]),
        .I1(\ram_addr_reg[31]_1 [30]),
        .O(i__carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_3
       (.I0(\ram_addr_reg[31]_0 [29]),
        .I1(\ram_addr_reg[31]_1 [29]),
        .O(i__carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_4
       (.I0(\ram_addr_reg[31]_0 [28]),
        .I1(\ram_addr_reg[31]_1 [28]),
        .O(i__carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1
       (.I0(\ram_addr_reg[31]_0 [3]),
        .I1(\ram_addr_reg[31]_1 [3]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2
       (.I0(\ram_addr_reg[31]_0 [2]),
        .I1(\ram_addr_reg[31]_1 [2]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3
       (.I0(\ram_addr_reg[31]_0 [1]),
        .I1(\ram_addr_reg[31]_1 [1]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4
       (.I0(\ram_addr_reg[31]_0 [0]),
        .I1(\ram_addr_reg[31]_1 [0]),
        .O(i__carry_i_4_n_0));
  CARRY4 ram_addr0_carry
       (.CI(1'b0),
        .CO({ram_addr0_carry_n_0,ram_addr0_carry_n_1,ram_addr0_carry_n_2,ram_addr0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\ram_addr_reg[31]_0 [2],1'b0}),
        .O(in5[4:1]),
        .S({\ram_addr_reg[31]_0 [4:3],ram_addr0_carry_i_1_n_0,\ram_addr_reg[31]_0 [1]}));
  CARRY4 ram_addr0_carry__0
       (.CI(ram_addr0_carry_n_0),
        .CO({ram_addr0_carry__0_n_0,ram_addr0_carry__0_n_1,ram_addr0_carry__0_n_2,ram_addr0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[8:5]),
        .S(\ram_addr_reg[31]_0 [8:5]));
  CARRY4 ram_addr0_carry__1
       (.CI(ram_addr0_carry__0_n_0),
        .CO({ram_addr0_carry__1_n_0,ram_addr0_carry__1_n_1,ram_addr0_carry__1_n_2,ram_addr0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[12:9]),
        .S(\ram_addr_reg[31]_0 [12:9]));
  CARRY4 ram_addr0_carry__2
       (.CI(ram_addr0_carry__1_n_0),
        .CO({ram_addr0_carry__2_n_0,ram_addr0_carry__2_n_1,ram_addr0_carry__2_n_2,ram_addr0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[16:13]),
        .S(\ram_addr_reg[31]_0 [16:13]));
  CARRY4 ram_addr0_carry__3
       (.CI(ram_addr0_carry__2_n_0),
        .CO({ram_addr0_carry__3_n_0,ram_addr0_carry__3_n_1,ram_addr0_carry__3_n_2,ram_addr0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[20:17]),
        .S(\ram_addr_reg[31]_0 [20:17]));
  CARRY4 ram_addr0_carry__4
       (.CI(ram_addr0_carry__3_n_0),
        .CO({ram_addr0_carry__4_n_0,ram_addr0_carry__4_n_1,ram_addr0_carry__4_n_2,ram_addr0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[24:21]),
        .S(\ram_addr_reg[31]_0 [24:21]));
  CARRY4 ram_addr0_carry__5
       (.CI(ram_addr0_carry__4_n_0),
        .CO({ram_addr0_carry__5_n_0,ram_addr0_carry__5_n_1,ram_addr0_carry__5_n_2,ram_addr0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[28:25]),
        .S(\ram_addr_reg[31]_0 [28:25]));
  CARRY4 ram_addr0_carry__6
       (.CI(ram_addr0_carry__5_n_0),
        .CO({NLW_ram_addr0_carry__6_CO_UNCONNECTED[3:2],ram_addr0_carry__6_n_2,ram_addr0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_ram_addr0_carry__6_O_UNCONNECTED[3],in5[31:29]}),
        .S({1'b0,\ram_addr_reg[31]_0 [31:29]}));
  LUT1 #(
    .INIT(2'h1)) 
    ram_addr0_carry_i_1
       (.I0(\ram_addr_reg[31]_0 [2]),
        .O(ram_addr0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[0]_i_1 
       (.I0(\ram_addr_reg[31]_1 [0]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(\ram_addr_reg[31]_0 [0]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[10]_i_1 
       (.I0(\ram_addr_reg[31]_1 [10]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[10]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[11]_i_1 
       (.I0(\ram_addr_reg[31]_1 [11]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[11]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[12]_i_1 
       (.I0(\ram_addr_reg[31]_1 [12]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[12]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[13]_i_1 
       (.I0(\ram_addr_reg[31]_1 [13]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[13]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[14]_i_1 
       (.I0(\ram_addr_reg[31]_1 [14]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[14]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[15]_i_1 
       (.I0(\ram_addr_reg[31]_1 [15]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[15]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[16]_i_1 
       (.I0(\ram_addr_reg[31]_1 [16]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[16]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[17]_i_1 
       (.I0(\ram_addr_reg[31]_1 [17]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[17]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[18]_i_1 
       (.I0(\ram_addr_reg[31]_1 [18]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[18]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[19]_i_1 
       (.I0(\ram_addr_reg[31]_1 [19]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[19]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[1]_i_1 
       (.I0(\ram_addr_reg[31]_1 [1]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[1]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[20]_i_1 
       (.I0(\ram_addr_reg[31]_1 [20]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[20]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[21]_i_1 
       (.I0(\ram_addr_reg[31]_1 [21]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[21]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[22]_i_1 
       (.I0(\ram_addr_reg[31]_1 [22]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[22]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[23]_i_1 
       (.I0(\ram_addr_reg[31]_1 [23]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[23]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[24]_i_1 
       (.I0(\ram_addr_reg[31]_1 [24]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[24]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[25]_i_1 
       (.I0(\ram_addr_reg[31]_1 [25]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[25]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[26]_i_1 
       (.I0(\ram_addr_reg[31]_1 [26]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[26]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[27]_i_1 
       (.I0(\ram_addr_reg[31]_1 [27]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[27]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[28]_i_1 
       (.I0(\ram_addr_reg[31]_1 [28]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[28]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[29]_i_1 
       (.I0(\ram_addr_reg[31]_1 [29]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[29]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[2]_i_1 
       (.I0(\ram_addr_reg[31]_1 [2]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[2]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[30]_i_1 
       (.I0(\ram_addr_reg[31]_1 [30]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[30]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[31]_i_1 
       (.I0(\ram_addr_reg[31]_1 [31]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[31]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[3]_i_1 
       (.I0(\ram_addr_reg[31]_1 [3]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[3]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[4]_i_1 
       (.I0(\ram_addr_reg[31]_1 [4]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[4]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[5]_i_1 
       (.I0(\ram_addr_reg[31]_1 [5]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[5]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[6]_i_1 
       (.I0(\ram_addr_reg[31]_1 [6]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[6]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[7]_i_1 
       (.I0(\ram_addr_reg[31]_1 [7]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[7]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[8]_i_1 
       (.I0(\ram_addr_reg[31]_1 [8]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[8]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ram_addr[9]_i_1 
       (.I0(\ram_addr_reg[31]_1 [9]),
        .I1(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I2(in5[9]),
        .I3(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .O(\ram_addr[9]_i_1_n_0 ));
  FDCE \ram_addr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[0]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [0]));
  FDCE \ram_addr_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[10]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [10]));
  FDCE \ram_addr_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[11]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [11]));
  FDCE \ram_addr_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[12]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [12]));
  FDCE \ram_addr_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[13]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [13]));
  FDCE \ram_addr_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[14]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [14]));
  FDCE \ram_addr_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[15]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [15]));
  FDCE \ram_addr_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[16]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [16]));
  FDCE \ram_addr_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[17]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [17]));
  FDCE \ram_addr_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[18]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [18]));
  FDCE \ram_addr_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[19]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [19]));
  FDCE \ram_addr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[1]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [1]));
  FDCE \ram_addr_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[20]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [20]));
  FDCE \ram_addr_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[21]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [21]));
  FDCE \ram_addr_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[22]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [22]));
  FDCE \ram_addr_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[23]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [23]));
  FDCE \ram_addr_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[24]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [24]));
  FDCE \ram_addr_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[25]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [25]));
  FDCE \ram_addr_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[26]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [26]));
  FDCE \ram_addr_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[27]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [27]));
  FDCE \ram_addr_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[28]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [28]));
  FDCE \ram_addr_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[29]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [29]));
  FDCE \ram_addr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[2]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [2]));
  FDCE \ram_addr_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[30]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [30]));
  FDCE \ram_addr_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[31]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [31]));
  FDCE \ram_addr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[3]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [3]));
  FDCE \ram_addr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[4]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [4]));
  FDCE \ram_addr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[5]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [5]));
  FDCE \ram_addr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[6]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [6]));
  FDCE \ram_addr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[7]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [7]));
  FDCE \ram_addr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[8]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [8]));
  FDCE \ram_addr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .CLR(SR),
        .D(\ram_addr[9]_i_1_n_0 ),
        .Q(\ram_addr_reg[31]_0 [9]));
  LUT6 #(
    .INIT(64'h20FFFFFF20202020)) 
    ram_en_i_1
       (.I0(start_rd_d0),
        .I1(start_rd_d1),
        .I2(\FSM_onehot_flow_cnt_reg_n_0_[0] ),
        .I3(flow_cnt0_carry__1_n_1),
        .I4(\FSM_onehot_flow_cnt_reg_n_0_[1] ),
        .I5(ram_en),
        .O(ram_en_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ram_en_i_2
       (.I0(s00_axi_aresetn),
        .O(SR));
  FDCE ram_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ram_en_i_1_n_0),
        .Q(ram_en));
  FDCE start_rd_d0_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(Q),
        .Q(start_rd_d0));
  FDCE start_rd_d1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(start_rd_d0),
        .Q(start_rd_d1));
endmodule

module system_pl_bram_rd_0_1_pl_bram_rd_v1_0
   (ram_addr,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    ram_en,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready,
    s00_axi_aresetn);
  output [31:0]ram_addr;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output ram_en;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;
  input s00_axi_aresetn;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [31:0]ram_addr;
  wire ram_en;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  system_pl_bram_rd_0_1_pl_bram_rd_v1_0_S00_AXI pl_bram_rd_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .ram_addr(ram_addr),
        .ram_en(ram_en),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module system_pl_bram_rd_0_1_pl_bram_rd_v1_0_S00_AXI
   (ram_addr,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    ram_en,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready,
    s00_axi_aresetn);
  output [31:0]ram_addr;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output ram_en;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;
  input s00_axi_aresetn;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [1:0]p_0_in;
  wire [31:7]p_1_in;
  wire [31:0]ram_addr;
  wire ram_en;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;
  wire u_bram_rd_n_0;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(u_bram_rd_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(u_bram_rd_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(u_bram_rd_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(u_bram_rd_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(u_bram_rd_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(u_bram_rd_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_1
       (.I0(s00_axi_wvalid),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(u_bram_rd_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(u_bram_rd_n_0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg1[0]),
        .I1(slv_reg0[0]),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg1[10]),
        .I1(slv_reg0[10]),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1[11]),
        .I1(slv_reg0[11]),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg1[12]),
        .I1(slv_reg0[12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg1[13]),
        .I1(slv_reg0[13]),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1[14]),
        .I1(slv_reg0[14]),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1[15]),
        .I1(slv_reg0[15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(slv_reg0[16]),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(slv_reg0[17]),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1[18]),
        .I1(slv_reg0[18]),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(slv_reg0[19]),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg1[1]),
        .I1(slv_reg0[1]),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(slv_reg0[20]),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1[21]),
        .I1(slv_reg0[21]),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(slv_reg0[22]),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(slv_reg0[23]),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(slv_reg0[24]),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(slv_reg0[25]),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(slv_reg0[26]),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg1[27]),
        .I1(slv_reg0[27]),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(slv_reg0[28]),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg1[29]),
        .I1(slv_reg0[29]),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg1[2]),
        .I1(slv_reg0[2]),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(slv_reg0[30]),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[30]),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg1[31]),
        .I1(slv_reg0[31]),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg1[3]),
        .I1(slv_reg0[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg1[4]),
        .I1(slv_reg0[4]),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg1[5]),
        .I1(slv_reg0[5]),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg1[6]),
        .I1(slv_reg0[6]),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg1[7]),
        .I1(slv_reg0[7]),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg1[8]),
        .I1(slv_reg0[8]),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg1[9]),
        .I1(slv_reg0[9]),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(u_bram_rd_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(u_bram_rd_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(u_bram_rd_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(u_bram_rd_n_0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(u_bram_rd_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(u_bram_rd_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(u_bram_rd_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[7]));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(u_bram_rd_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(u_bram_rd_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
  system_pl_bram_rd_0_1_bram_rd u_bram_rd
       (.Q(slv_reg0[0]),
        .SR(u_bram_rd_n_0),
        .flow_cnt1_carry__6_0(slv_reg2),
        .\ram_addr_reg[31]_0 (ram_addr),
        .\ram_addr_reg[31]_1 (slv_reg1),
        .ram_en(ram_en),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
endmodule

(* CHECK_LICENSE_TYPE = "system_pl_bram_rd_0_0,pl_bram_rd_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pl_bram_rd_v1_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module system_pl_bram_rd_0_1
   (the_rd_data,
    ram_clk,
    ram_rd_data,
    ram_en,
    ram_addr,
    ram_we,
    ram_wr_data,
    ram_rst,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  output [31:0]the_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_OUT CLK" *) output ram_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_OUT DOUT" *) input [31:0]ram_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_OUT EN" *) output ram_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_OUT ADDR" *) output [31:0]ram_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_OUT WE" *) output [3:0]ram_we;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_OUT DIN" *) output [31:0]ram_wr_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_OUT RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_OUT, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1" *) output ram_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_slowest_sync_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN system_slowest_sync_clk_0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire [31:0]ram_addr;
  wire ram_en;
  wire [31:0]ram_rd_data;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign ram_clk = s00_axi_aclk;
  assign ram_rst = \<const0> ;
  assign ram_we[3] = \<const0> ;
  assign ram_we[2] = \<const0> ;
  assign ram_we[1] = \<const0> ;
  assign ram_we[0] = \<const0> ;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  assign the_rd_data[31:0] = ram_rd_data;
  GND GND
       (.G(\<const0> ));
  system_pl_bram_rd_0_1_pl_bram_rd_v1_0 inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .ram_addr(ram_addr),
        .ram_en(ram_en),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
