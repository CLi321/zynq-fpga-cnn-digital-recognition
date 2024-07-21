//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sun Jul 21 09:18:15 2024
//Host        : LiLen running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (BRAM_dout,
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    S_AXIS_0_tdata,
    S_AXIS_0_tkeep,
    S_AXIS_0_tlast,
    S_AXIS_0_tready,
    S_AXIS_0_tvalid,
    pl2ps_axi_0_araddr,
    pl2ps_axi_0_arburst,
    pl2ps_axi_0_arcache,
    pl2ps_axi_0_arid,
    pl2ps_axi_0_arlen,
    pl2ps_axi_0_arlock,
    pl2ps_axi_0_arprot,
    pl2ps_axi_0_arqos,
    pl2ps_axi_0_arready,
    pl2ps_axi_0_arsize,
    pl2ps_axi_0_arvalid,
    pl2ps_axi_0_awaddr,
    pl2ps_axi_0_awburst,
    pl2ps_axi_0_awcache,
    pl2ps_axi_0_awid,
    pl2ps_axi_0_awlen,
    pl2ps_axi_0_awlock,
    pl2ps_axi_0_awprot,
    pl2ps_axi_0_awqos,
    pl2ps_axi_0_awready,
    pl2ps_axi_0_awsize,
    pl2ps_axi_0_awvalid,
    pl2ps_axi_0_bid,
    pl2ps_axi_0_bready,
    pl2ps_axi_0_bresp,
    pl2ps_axi_0_bvalid,
    pl2ps_axi_0_rdata,
    pl2ps_axi_0_rid,
    pl2ps_axi_0_rlast,
    pl2ps_axi_0_rready,
    pl2ps_axi_0_rresp,
    pl2ps_axi_0_rvalid,
    pl2ps_axi_0_wdata,
    pl2ps_axi_0_wid,
    pl2ps_axi_0_wlast,
    pl2ps_axi_0_wready,
    pl2ps_axi_0_wstrb,
    pl2ps_axi_0_wvalid,
    pl2ps_axi_aclk_0,
    pl2ps_axi_resetn_0,
    ps2pl_clk50m_0,
    ps2pl_resetn_0);
  output [31:0]BRAM_dout;
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input [31:0]S_AXIS_0_tdata;
  input [3:0]S_AXIS_0_tkeep;
  input S_AXIS_0_tlast;
  output S_AXIS_0_tready;
  input S_AXIS_0_tvalid;
  input [31:0]pl2ps_axi_0_araddr;
  input [1:0]pl2ps_axi_0_arburst;
  input [3:0]pl2ps_axi_0_arcache;
  input [5:0]pl2ps_axi_0_arid;
  input [3:0]pl2ps_axi_0_arlen;
  input [1:0]pl2ps_axi_0_arlock;
  input [2:0]pl2ps_axi_0_arprot;
  input [3:0]pl2ps_axi_0_arqos;
  output pl2ps_axi_0_arready;
  input [2:0]pl2ps_axi_0_arsize;
  input pl2ps_axi_0_arvalid;
  input [31:0]pl2ps_axi_0_awaddr;
  input [1:0]pl2ps_axi_0_awburst;
  input [3:0]pl2ps_axi_0_awcache;
  input [5:0]pl2ps_axi_0_awid;
  input [3:0]pl2ps_axi_0_awlen;
  input [1:0]pl2ps_axi_0_awlock;
  input [2:0]pl2ps_axi_0_awprot;
  input [3:0]pl2ps_axi_0_awqos;
  output pl2ps_axi_0_awready;
  input [2:0]pl2ps_axi_0_awsize;
  input pl2ps_axi_0_awvalid;
  output [5:0]pl2ps_axi_0_bid;
  input pl2ps_axi_0_bready;
  output [1:0]pl2ps_axi_0_bresp;
  output pl2ps_axi_0_bvalid;
  output [63:0]pl2ps_axi_0_rdata;
  output [5:0]pl2ps_axi_0_rid;
  output pl2ps_axi_0_rlast;
  input pl2ps_axi_0_rready;
  output [1:0]pl2ps_axi_0_rresp;
  output pl2ps_axi_0_rvalid;
  input [63:0]pl2ps_axi_0_wdata;
  input [5:0]pl2ps_axi_0_wid;
  input pl2ps_axi_0_wlast;
  output pl2ps_axi_0_wready;
  input [7:0]pl2ps_axi_0_wstrb;
  input pl2ps_axi_0_wvalid;
  input pl2ps_axi_aclk_0;
  input pl2ps_axi_resetn_0;
  output ps2pl_clk50m_0;
  output ps2pl_resetn_0;

  wire [31:0]BRAM_dout;
  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [31:0]S_AXIS_0_tdata;
  wire [3:0]S_AXIS_0_tkeep;
  wire S_AXIS_0_tlast;
  wire S_AXIS_0_tready;
  wire S_AXIS_0_tvalid;
  wire [31:0]pl2ps_axi_0_araddr;
  wire [1:0]pl2ps_axi_0_arburst;
  wire [3:0]pl2ps_axi_0_arcache;
  wire [5:0]pl2ps_axi_0_arid;
  wire [3:0]pl2ps_axi_0_arlen;
  wire [1:0]pl2ps_axi_0_arlock;
  wire [2:0]pl2ps_axi_0_arprot;
  wire [3:0]pl2ps_axi_0_arqos;
  wire pl2ps_axi_0_arready;
  wire [2:0]pl2ps_axi_0_arsize;
  wire pl2ps_axi_0_arvalid;
  wire [31:0]pl2ps_axi_0_awaddr;
  wire [1:0]pl2ps_axi_0_awburst;
  wire [3:0]pl2ps_axi_0_awcache;
  wire [5:0]pl2ps_axi_0_awid;
  wire [3:0]pl2ps_axi_0_awlen;
  wire [1:0]pl2ps_axi_0_awlock;
  wire [2:0]pl2ps_axi_0_awprot;
  wire [3:0]pl2ps_axi_0_awqos;
  wire pl2ps_axi_0_awready;
  wire [2:0]pl2ps_axi_0_awsize;
  wire pl2ps_axi_0_awvalid;
  wire [5:0]pl2ps_axi_0_bid;
  wire pl2ps_axi_0_bready;
  wire [1:0]pl2ps_axi_0_bresp;
  wire pl2ps_axi_0_bvalid;
  wire [63:0]pl2ps_axi_0_rdata;
  wire [5:0]pl2ps_axi_0_rid;
  wire pl2ps_axi_0_rlast;
  wire pl2ps_axi_0_rready;
  wire [1:0]pl2ps_axi_0_rresp;
  wire pl2ps_axi_0_rvalid;
  wire [63:0]pl2ps_axi_0_wdata;
  wire [5:0]pl2ps_axi_0_wid;
  wire pl2ps_axi_0_wlast;
  wire pl2ps_axi_0_wready;
  wire [7:0]pl2ps_axi_0_wstrb;
  wire pl2ps_axi_0_wvalid;
  wire pl2ps_axi_aclk_0;
  wire pl2ps_axi_resetn_0;
  wire ps2pl_clk50m_0;
  wire ps2pl_resetn_0;

  system system_i
       (.BRAM_dout(BRAM_dout),
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .S_AXIS_0_tdata(S_AXIS_0_tdata),
        .S_AXIS_0_tkeep(S_AXIS_0_tkeep),
        .S_AXIS_0_tlast(S_AXIS_0_tlast),
        .S_AXIS_0_tready(S_AXIS_0_tready),
        .S_AXIS_0_tvalid(S_AXIS_0_tvalid),
        .pl2ps_axi_0_araddr(pl2ps_axi_0_araddr),
        .pl2ps_axi_0_arburst(pl2ps_axi_0_arburst),
        .pl2ps_axi_0_arcache(pl2ps_axi_0_arcache),
        .pl2ps_axi_0_arid(pl2ps_axi_0_arid),
        .pl2ps_axi_0_arlen(pl2ps_axi_0_arlen),
        .pl2ps_axi_0_arlock(pl2ps_axi_0_arlock),
        .pl2ps_axi_0_arprot(pl2ps_axi_0_arprot),
        .pl2ps_axi_0_arqos(pl2ps_axi_0_arqos),
        .pl2ps_axi_0_arready(pl2ps_axi_0_arready),
        .pl2ps_axi_0_arsize(pl2ps_axi_0_arsize),
        .pl2ps_axi_0_arvalid(pl2ps_axi_0_arvalid),
        .pl2ps_axi_0_awaddr(pl2ps_axi_0_awaddr),
        .pl2ps_axi_0_awburst(pl2ps_axi_0_awburst),
        .pl2ps_axi_0_awcache(pl2ps_axi_0_awcache),
        .pl2ps_axi_0_awid(pl2ps_axi_0_awid),
        .pl2ps_axi_0_awlen(pl2ps_axi_0_awlen),
        .pl2ps_axi_0_awlock(pl2ps_axi_0_awlock),
        .pl2ps_axi_0_awprot(pl2ps_axi_0_awprot),
        .pl2ps_axi_0_awqos(pl2ps_axi_0_awqos),
        .pl2ps_axi_0_awready(pl2ps_axi_0_awready),
        .pl2ps_axi_0_awsize(pl2ps_axi_0_awsize),
        .pl2ps_axi_0_awvalid(pl2ps_axi_0_awvalid),
        .pl2ps_axi_0_bid(pl2ps_axi_0_bid),
        .pl2ps_axi_0_bready(pl2ps_axi_0_bready),
        .pl2ps_axi_0_bresp(pl2ps_axi_0_bresp),
        .pl2ps_axi_0_bvalid(pl2ps_axi_0_bvalid),
        .pl2ps_axi_0_rdata(pl2ps_axi_0_rdata),
        .pl2ps_axi_0_rid(pl2ps_axi_0_rid),
        .pl2ps_axi_0_rlast(pl2ps_axi_0_rlast),
        .pl2ps_axi_0_rready(pl2ps_axi_0_rready),
        .pl2ps_axi_0_rresp(pl2ps_axi_0_rresp),
        .pl2ps_axi_0_rvalid(pl2ps_axi_0_rvalid),
        .pl2ps_axi_0_wdata(pl2ps_axi_0_wdata),
        .pl2ps_axi_0_wid(pl2ps_axi_0_wid),
        .pl2ps_axi_0_wlast(pl2ps_axi_0_wlast),
        .pl2ps_axi_0_wready(pl2ps_axi_0_wready),
        .pl2ps_axi_0_wstrb(pl2ps_axi_0_wstrb),
        .pl2ps_axi_0_wvalid(pl2ps_axi_0_wvalid),
        .pl2ps_axi_aclk_0(pl2ps_axi_aclk_0),
        .pl2ps_axi_resetn_0(pl2ps_axi_resetn_0),
        .ps2pl_clk50m_0(ps2pl_clk50m_0),
        .ps2pl_resetn_0(ps2pl_resetn_0));
endmodule
