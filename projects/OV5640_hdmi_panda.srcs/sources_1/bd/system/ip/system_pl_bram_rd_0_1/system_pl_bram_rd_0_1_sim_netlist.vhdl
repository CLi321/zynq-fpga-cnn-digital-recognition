-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Jul 21 08:21:37 2024
-- Host        : LiLen running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top system_pl_bram_rd_0_1 -prefix
--               system_pl_bram_rd_0_1_ system_pl_bram_rd_0_0_sim_netlist.vhdl
-- Design      : system_pl_bram_rd_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_pl_bram_rd_0_1_bram_rd is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_addr_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_en : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    \flow_cnt1_carry__6_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \ram_addr_reg[31]_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aresetn : in STD_LOGIC
  );
end system_pl_bram_rd_0_1_bram_rd;

architecture STRUCTURE of system_pl_bram_rd_0_1_bram_rd is
  signal \/i__n_0\ : STD_LOGIC;
  signal \FSM_onehot_flow_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_flow_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_flow_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_flow_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_flow_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_flow_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \flow_cnt0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \flow_cnt0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \flow_cnt0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \flow_cnt0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \flow_cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \flow_cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \flow_cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \flow_cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \flow_cnt0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \flow_cnt0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \flow_cnt0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \flow_cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \flow_cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \flow_cnt0_carry__1_n_3\ : STD_LOGIC;
  signal flow_cnt0_carry_i_1_n_0 : STD_LOGIC;
  signal flow_cnt0_carry_i_2_n_0 : STD_LOGIC;
  signal flow_cnt0_carry_i_3_n_0 : STD_LOGIC;
  signal flow_cnt0_carry_i_4_n_0 : STD_LOGIC;
  signal flow_cnt0_carry_n_0 : STD_LOGIC;
  signal flow_cnt0_carry_n_1 : STD_LOGIC;
  signal flow_cnt0_carry_n_2 : STD_LOGIC;
  signal flow_cnt0_carry_n_3 : STD_LOGIC;
  signal flow_cnt1 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal flow_cnt10_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \flow_cnt1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__0_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__0_n_1\ : STD_LOGIC;
  signal \flow_cnt1_carry__0_n_2\ : STD_LOGIC;
  signal \flow_cnt1_carry__0_n_3\ : STD_LOGIC;
  signal \flow_cnt1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__1_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__1_n_1\ : STD_LOGIC;
  signal \flow_cnt1_carry__1_n_2\ : STD_LOGIC;
  signal \flow_cnt1_carry__1_n_3\ : STD_LOGIC;
  signal \flow_cnt1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__2_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__2_n_1\ : STD_LOGIC;
  signal \flow_cnt1_carry__2_n_2\ : STD_LOGIC;
  signal \flow_cnt1_carry__2_n_3\ : STD_LOGIC;
  signal \flow_cnt1_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__3_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__3_n_1\ : STD_LOGIC;
  signal \flow_cnt1_carry__3_n_2\ : STD_LOGIC;
  signal \flow_cnt1_carry__3_n_3\ : STD_LOGIC;
  signal \flow_cnt1_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__4_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__4_n_1\ : STD_LOGIC;
  signal \flow_cnt1_carry__4_n_2\ : STD_LOGIC;
  signal \flow_cnt1_carry__4_n_3\ : STD_LOGIC;
  signal \flow_cnt1_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__5_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__5_n_1\ : STD_LOGIC;
  signal \flow_cnt1_carry__5_n_2\ : STD_LOGIC;
  signal \flow_cnt1_carry__5_n_3\ : STD_LOGIC;
  signal \flow_cnt1_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \flow_cnt1_carry__6_n_2\ : STD_LOGIC;
  signal \flow_cnt1_carry__6_n_3\ : STD_LOGIC;
  signal flow_cnt1_carry_i_1_n_0 : STD_LOGIC;
  signal flow_cnt1_carry_i_2_n_0 : STD_LOGIC;
  signal flow_cnt1_carry_i_3_n_0 : STD_LOGIC;
  signal flow_cnt1_carry_n_0 : STD_LOGIC;
  signal flow_cnt1_carry_n_1 : STD_LOGIC;
  signal flow_cnt1_carry_n_2 : STD_LOGIC;
  signal flow_cnt1_carry_n_3 : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry__4_n_0\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry__4_n_1\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry__5_n_0\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry__5_n_1\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry__5_n_2\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry__5_n_3\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry__6_n_1\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry__6_n_2\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry__6_n_3\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \flow_cnt1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal in5 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \ram_addr0_carry__0_n_0\ : STD_LOGIC;
  signal \ram_addr0_carry__0_n_1\ : STD_LOGIC;
  signal \ram_addr0_carry__0_n_2\ : STD_LOGIC;
  signal \ram_addr0_carry__0_n_3\ : STD_LOGIC;
  signal \ram_addr0_carry__1_n_0\ : STD_LOGIC;
  signal \ram_addr0_carry__1_n_1\ : STD_LOGIC;
  signal \ram_addr0_carry__1_n_2\ : STD_LOGIC;
  signal \ram_addr0_carry__1_n_3\ : STD_LOGIC;
  signal \ram_addr0_carry__2_n_0\ : STD_LOGIC;
  signal \ram_addr0_carry__2_n_1\ : STD_LOGIC;
  signal \ram_addr0_carry__2_n_2\ : STD_LOGIC;
  signal \ram_addr0_carry__2_n_3\ : STD_LOGIC;
  signal \ram_addr0_carry__3_n_0\ : STD_LOGIC;
  signal \ram_addr0_carry__3_n_1\ : STD_LOGIC;
  signal \ram_addr0_carry__3_n_2\ : STD_LOGIC;
  signal \ram_addr0_carry__3_n_3\ : STD_LOGIC;
  signal \ram_addr0_carry__4_n_0\ : STD_LOGIC;
  signal \ram_addr0_carry__4_n_1\ : STD_LOGIC;
  signal \ram_addr0_carry__4_n_2\ : STD_LOGIC;
  signal \ram_addr0_carry__4_n_3\ : STD_LOGIC;
  signal \ram_addr0_carry__5_n_0\ : STD_LOGIC;
  signal \ram_addr0_carry__5_n_1\ : STD_LOGIC;
  signal \ram_addr0_carry__5_n_2\ : STD_LOGIC;
  signal \ram_addr0_carry__5_n_3\ : STD_LOGIC;
  signal \ram_addr0_carry__6_n_2\ : STD_LOGIC;
  signal \ram_addr0_carry__6_n_3\ : STD_LOGIC;
  signal ram_addr0_carry_i_1_n_0 : STD_LOGIC;
  signal ram_addr0_carry_n_0 : STD_LOGIC;
  signal ram_addr0_carry_n_1 : STD_LOGIC;
  signal ram_addr0_carry_n_2 : STD_LOGIC;
  signal ram_addr0_carry_n_3 : STD_LOGIC;
  signal \ram_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[10]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[11]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[12]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[13]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[14]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[15]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[16]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[17]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[18]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[19]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[20]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[21]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[22]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[23]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[24]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[25]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[26]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[27]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[28]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[29]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[30]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[31]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[8]_i_1_n_0\ : STD_LOGIC;
  signal \ram_addr[9]_i_1_n_0\ : STD_LOGIC;
  signal \^ram_addr_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^ram_en\ : STD_LOGIC;
  signal ram_en_i_1_n_0 : STD_LOGIC;
  signal start_rd_d0 : STD_LOGIC;
  signal start_rd_d1 : STD_LOGIC;
  signal NLW_flow_cnt0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_flow_cnt0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_flow_cnt0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_flow_cnt0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_flow_cnt1_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_flow_cnt1_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_flow_cnt1_inferred__0/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ram_addr0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_ram_addr0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_flow_cnt_reg[0]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_flow_cnt_reg[1]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_flow_cnt_reg[2]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:100,";
begin
  SR(0) <= \^sr\(0);
  \ram_addr_reg[31]_0\(31 downto 0) <= \^ram_addr_reg[31]_0\(31 downto 0);
  ram_en <= \^ram_en\;
\/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAAAEAAFFFFAEAA"
    )
        port map (
      I0 => \FSM_onehot_flow_cnt_reg_n_0_[2]\,
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => start_rd_d1,
      I3 => start_rd_d0,
      I4 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      I5 => \flow_cnt0_carry__1_n_1\,
      O => \/i__n_0\
    );
\FSM_onehot_flow_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAEAEEEAEEEAEE"
    )
        port map (
      I0 => \FSM_onehot_flow_cnt_reg_n_0_[2]\,
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => start_rd_d1,
      I3 => start_rd_d0,
      I4 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      I5 => \flow_cnt0_carry__1_n_1\,
      O => \FSM_onehot_flow_cnt[0]_i_1_n_0\
    );
\FSM_onehot_flow_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCC8C88DDDD8C88"
    )
        port map (
      I0 => \FSM_onehot_flow_cnt_reg_n_0_[2]\,
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => start_rd_d1,
      I3 => start_rd_d0,
      I4 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      I5 => \flow_cnt0_carry__1_n_1\,
      O => \FSM_onehot_flow_cnt[1]_i_1_n_0\
    );
\FSM_onehot_flow_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000AEAA0000"
    )
        port map (
      I0 => \FSM_onehot_flow_cnt_reg_n_0_[2]\,
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => start_rd_d1,
      I3 => start_rd_d0,
      I4 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      I5 => \flow_cnt0_carry__1_n_1\,
      O => \FSM_onehot_flow_cnt[2]_i_1_n_0\
    );
\FSM_onehot_flow_cnt_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_flow_cnt[0]_i_1_n_0\,
      PRE => \^sr\(0),
      Q => \FSM_onehot_flow_cnt_reg_n_0_[0]\
    );
\FSM_onehot_flow_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \FSM_onehot_flow_cnt[1]_i_1_n_0\,
      Q => \FSM_onehot_flow_cnt_reg_n_0_[1]\
    );
\FSM_onehot_flow_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \FSM_onehot_flow_cnt[2]_i_1_n_0\,
      Q => \FSM_onehot_flow_cnt_reg_n_0_[2]\
    );
flow_cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => flow_cnt0_carry_n_0,
      CO(2) => flow_cnt0_carry_n_1,
      CO(1) => flow_cnt0_carry_n_2,
      CO(0) => flow_cnt0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_flow_cnt0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => flow_cnt0_carry_i_1_n_0,
      S(2) => flow_cnt0_carry_i_2_n_0,
      S(1) => flow_cnt0_carry_i_3_n_0,
      S(0) => flow_cnt0_carry_i_4_n_0
    );
\flow_cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => flow_cnt0_carry_n_0,
      CO(3) => \flow_cnt0_carry__0_n_0\,
      CO(2) => \flow_cnt0_carry__0_n_1\,
      CO(1) => \flow_cnt0_carry__0_n_2\,
      CO(0) => \flow_cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_flow_cnt0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \flow_cnt0_carry__0_i_1_n_0\,
      S(2) => \flow_cnt0_carry__0_i_2_n_0\,
      S(1) => \flow_cnt0_carry__0_i_3_n_0\,
      S(0) => \flow_cnt0_carry__0_i_4_n_0\
    );
\flow_cnt0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => flow_cnt10_in(21),
      I1 => flow_cnt1(21),
      I2 => flow_cnt1(23),
      I3 => flow_cnt10_in(23),
      I4 => flow_cnt1(22),
      I5 => flow_cnt10_in(22),
      O => \flow_cnt0_carry__0_i_1_n_0\
    );
\flow_cnt0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => flow_cnt10_in(18),
      I1 => flow_cnt1(18),
      I2 => flow_cnt1(20),
      I3 => flow_cnt10_in(20),
      I4 => flow_cnt1(19),
      I5 => flow_cnt10_in(19),
      O => \flow_cnt0_carry__0_i_2_n_0\
    );
\flow_cnt0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => flow_cnt10_in(15),
      I1 => flow_cnt1(15),
      I2 => flow_cnt1(17),
      I3 => flow_cnt10_in(17),
      I4 => flow_cnt1(16),
      I5 => flow_cnt10_in(16),
      O => \flow_cnt0_carry__0_i_3_n_0\
    );
\flow_cnt0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => flow_cnt10_in(12),
      I1 => flow_cnt1(12),
      I2 => flow_cnt1(14),
      I3 => flow_cnt10_in(14),
      I4 => flow_cnt1(13),
      I5 => flow_cnt10_in(13),
      O => \flow_cnt0_carry__0_i_4_n_0\
    );
\flow_cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \flow_cnt0_carry__0_n_0\,
      CO(3) => \NLW_flow_cnt0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \flow_cnt0_carry__1_n_1\,
      CO(1) => \flow_cnt0_carry__1_n_2\,
      CO(0) => \flow_cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_flow_cnt0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \flow_cnt0_carry__1_i_1_n_0\,
      S(1) => \flow_cnt0_carry__1_i_2_n_0\,
      S(0) => \flow_cnt0_carry__1_i_3_n_0\
    );
\flow_cnt0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => flow_cnt10_in(30),
      I1 => flow_cnt1(30),
      I2 => flow_cnt10_in(31),
      I3 => flow_cnt1(31),
      O => \flow_cnt0_carry__1_i_1_n_0\
    );
\flow_cnt0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => flow_cnt10_in(27),
      I1 => flow_cnt1(27),
      I2 => flow_cnt1(29),
      I3 => flow_cnt10_in(29),
      I4 => flow_cnt1(28),
      I5 => flow_cnt10_in(28),
      O => \flow_cnt0_carry__1_i_2_n_0\
    );
\flow_cnt0_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => flow_cnt10_in(24),
      I1 => flow_cnt1(24),
      I2 => flow_cnt1(26),
      I3 => flow_cnt10_in(26),
      I4 => flow_cnt1(25),
      I5 => flow_cnt10_in(25),
      O => \flow_cnt0_carry__1_i_3_n_0\
    );
flow_cnt0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => flow_cnt10_in(9),
      I1 => flow_cnt1(9),
      I2 => flow_cnt1(11),
      I3 => flow_cnt10_in(11),
      I4 => flow_cnt1(10),
      I5 => flow_cnt10_in(10),
      O => flow_cnt0_carry_i_1_n_0
    );
flow_cnt0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => flow_cnt10_in(6),
      I1 => flow_cnt1(6),
      I2 => flow_cnt1(8),
      I3 => flow_cnt10_in(8),
      I4 => flow_cnt1(7),
      I5 => flow_cnt10_in(7),
      O => flow_cnt0_carry_i_2_n_0
    );
flow_cnt0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => flow_cnt10_in(3),
      I1 => flow_cnt1(3),
      I2 => flow_cnt1(5),
      I3 => flow_cnt10_in(5),
      I4 => flow_cnt1(4),
      I5 => flow_cnt10_in(4),
      O => flow_cnt0_carry_i_3_n_0
    );
flow_cnt0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => flow_cnt10_in(0),
      I1 => \flow_cnt1_carry__6_0\(0),
      I2 => flow_cnt1(2),
      I3 => flow_cnt10_in(2),
      I4 => flow_cnt1(1),
      I5 => flow_cnt10_in(1),
      O => flow_cnt0_carry_i_4_n_0
    );
flow_cnt1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => flow_cnt1_carry_n_0,
      CO(2) => flow_cnt1_carry_n_1,
      CO(1) => flow_cnt1_carry_n_2,
      CO(0) => flow_cnt1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => \flow_cnt1_carry__6_0\(4 downto 2),
      DI(0) => '0',
      O(3 downto 0) => flow_cnt1(4 downto 1),
      S(3) => flow_cnt1_carry_i_1_n_0,
      S(2) => flow_cnt1_carry_i_2_n_0,
      S(1) => flow_cnt1_carry_i_3_n_0,
      S(0) => \flow_cnt1_carry__6_0\(1)
    );
\flow_cnt1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => flow_cnt1_carry_n_0,
      CO(3) => \flow_cnt1_carry__0_n_0\,
      CO(2) => \flow_cnt1_carry__0_n_1\,
      CO(1) => \flow_cnt1_carry__0_n_2\,
      CO(0) => \flow_cnt1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \flow_cnt1_carry__6_0\(8 downto 5),
      O(3 downto 0) => flow_cnt1(8 downto 5),
      S(3) => \flow_cnt1_carry__0_i_1_n_0\,
      S(2) => \flow_cnt1_carry__0_i_2_n_0\,
      S(1) => \flow_cnt1_carry__0_i_3_n_0\,
      S(0) => \flow_cnt1_carry__0_i_4_n_0\
    );
\flow_cnt1_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(8),
      O => \flow_cnt1_carry__0_i_1_n_0\
    );
\flow_cnt1_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(7),
      O => \flow_cnt1_carry__0_i_2_n_0\
    );
\flow_cnt1_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(6),
      O => \flow_cnt1_carry__0_i_3_n_0\
    );
\flow_cnt1_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(5),
      O => \flow_cnt1_carry__0_i_4_n_0\
    );
\flow_cnt1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \flow_cnt1_carry__0_n_0\,
      CO(3) => \flow_cnt1_carry__1_n_0\,
      CO(2) => \flow_cnt1_carry__1_n_1\,
      CO(1) => \flow_cnt1_carry__1_n_2\,
      CO(0) => \flow_cnt1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \flow_cnt1_carry__6_0\(12 downto 9),
      O(3 downto 0) => flow_cnt1(12 downto 9),
      S(3) => \flow_cnt1_carry__1_i_1_n_0\,
      S(2) => \flow_cnt1_carry__1_i_2_n_0\,
      S(1) => \flow_cnt1_carry__1_i_3_n_0\,
      S(0) => \flow_cnt1_carry__1_i_4_n_0\
    );
\flow_cnt1_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(12),
      O => \flow_cnt1_carry__1_i_1_n_0\
    );
\flow_cnt1_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(11),
      O => \flow_cnt1_carry__1_i_2_n_0\
    );
\flow_cnt1_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(10),
      O => \flow_cnt1_carry__1_i_3_n_0\
    );
\flow_cnt1_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(9),
      O => \flow_cnt1_carry__1_i_4_n_0\
    );
\flow_cnt1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \flow_cnt1_carry__1_n_0\,
      CO(3) => \flow_cnt1_carry__2_n_0\,
      CO(2) => \flow_cnt1_carry__2_n_1\,
      CO(1) => \flow_cnt1_carry__2_n_2\,
      CO(0) => \flow_cnt1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \flow_cnt1_carry__6_0\(16 downto 13),
      O(3 downto 0) => flow_cnt1(16 downto 13),
      S(3) => \flow_cnt1_carry__2_i_1_n_0\,
      S(2) => \flow_cnt1_carry__2_i_2_n_0\,
      S(1) => \flow_cnt1_carry__2_i_3_n_0\,
      S(0) => \flow_cnt1_carry__2_i_4_n_0\
    );
\flow_cnt1_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(16),
      O => \flow_cnt1_carry__2_i_1_n_0\
    );
\flow_cnt1_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(15),
      O => \flow_cnt1_carry__2_i_2_n_0\
    );
\flow_cnt1_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(14),
      O => \flow_cnt1_carry__2_i_3_n_0\
    );
\flow_cnt1_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(13),
      O => \flow_cnt1_carry__2_i_4_n_0\
    );
\flow_cnt1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \flow_cnt1_carry__2_n_0\,
      CO(3) => \flow_cnt1_carry__3_n_0\,
      CO(2) => \flow_cnt1_carry__3_n_1\,
      CO(1) => \flow_cnt1_carry__3_n_2\,
      CO(0) => \flow_cnt1_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \flow_cnt1_carry__6_0\(20 downto 17),
      O(3 downto 0) => flow_cnt1(20 downto 17),
      S(3) => \flow_cnt1_carry__3_i_1_n_0\,
      S(2) => \flow_cnt1_carry__3_i_2_n_0\,
      S(1) => \flow_cnt1_carry__3_i_3_n_0\,
      S(0) => \flow_cnt1_carry__3_i_4_n_0\
    );
\flow_cnt1_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(20),
      O => \flow_cnt1_carry__3_i_1_n_0\
    );
\flow_cnt1_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(19),
      O => \flow_cnt1_carry__3_i_2_n_0\
    );
\flow_cnt1_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(18),
      O => \flow_cnt1_carry__3_i_3_n_0\
    );
\flow_cnt1_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(17),
      O => \flow_cnt1_carry__3_i_4_n_0\
    );
\flow_cnt1_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \flow_cnt1_carry__3_n_0\,
      CO(3) => \flow_cnt1_carry__4_n_0\,
      CO(2) => \flow_cnt1_carry__4_n_1\,
      CO(1) => \flow_cnt1_carry__4_n_2\,
      CO(0) => \flow_cnt1_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \flow_cnt1_carry__6_0\(24 downto 21),
      O(3 downto 0) => flow_cnt1(24 downto 21),
      S(3) => \flow_cnt1_carry__4_i_1_n_0\,
      S(2) => \flow_cnt1_carry__4_i_2_n_0\,
      S(1) => \flow_cnt1_carry__4_i_3_n_0\,
      S(0) => \flow_cnt1_carry__4_i_4_n_0\
    );
\flow_cnt1_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(24),
      O => \flow_cnt1_carry__4_i_1_n_0\
    );
\flow_cnt1_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(23),
      O => \flow_cnt1_carry__4_i_2_n_0\
    );
\flow_cnt1_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(22),
      O => \flow_cnt1_carry__4_i_3_n_0\
    );
\flow_cnt1_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(21),
      O => \flow_cnt1_carry__4_i_4_n_0\
    );
\flow_cnt1_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \flow_cnt1_carry__4_n_0\,
      CO(3) => \flow_cnt1_carry__5_n_0\,
      CO(2) => \flow_cnt1_carry__5_n_1\,
      CO(1) => \flow_cnt1_carry__5_n_2\,
      CO(0) => \flow_cnt1_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \flow_cnt1_carry__6_0\(28 downto 25),
      O(3 downto 0) => flow_cnt1(28 downto 25),
      S(3) => \flow_cnt1_carry__5_i_1_n_0\,
      S(2) => \flow_cnt1_carry__5_i_2_n_0\,
      S(1) => \flow_cnt1_carry__5_i_3_n_0\,
      S(0) => \flow_cnt1_carry__5_i_4_n_0\
    );
\flow_cnt1_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(28),
      O => \flow_cnt1_carry__5_i_1_n_0\
    );
\flow_cnt1_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(27),
      O => \flow_cnt1_carry__5_i_2_n_0\
    );
\flow_cnt1_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(26),
      O => \flow_cnt1_carry__5_i_3_n_0\
    );
\flow_cnt1_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(25),
      O => \flow_cnt1_carry__5_i_4_n_0\
    );
\flow_cnt1_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \flow_cnt1_carry__5_n_0\,
      CO(3 downto 2) => \NLW_flow_cnt1_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \flow_cnt1_carry__6_n_2\,
      CO(0) => \flow_cnt1_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \flow_cnt1_carry__6_0\(30 downto 29),
      O(3) => \NLW_flow_cnt1_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => flow_cnt1(31 downto 29),
      S(3) => '0',
      S(2) => \flow_cnt1_carry__6_i_1_n_0\,
      S(1) => \flow_cnt1_carry__6_i_2_n_0\,
      S(0) => \flow_cnt1_carry__6_i_3_n_0\
    );
\flow_cnt1_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(31),
      O => \flow_cnt1_carry__6_i_1_n_0\
    );
\flow_cnt1_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(30),
      O => \flow_cnt1_carry__6_i_2_n_0\
    );
\flow_cnt1_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(29),
      O => \flow_cnt1_carry__6_i_3_n_0\
    );
flow_cnt1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(4),
      O => flow_cnt1_carry_i_1_n_0
    );
flow_cnt1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(3),
      O => flow_cnt1_carry_i_2_n_0
    );
flow_cnt1_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \flow_cnt1_carry__6_0\(2),
      O => flow_cnt1_carry_i_3_n_0
    );
\flow_cnt1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \flow_cnt1_inferred__0/i__carry_n_0\,
      CO(2) => \flow_cnt1_inferred__0/i__carry_n_1\,
      CO(1) => \flow_cnt1_inferred__0/i__carry_n_2\,
      CO(0) => \flow_cnt1_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \^ram_addr_reg[31]_0\(3 downto 0),
      O(3 downto 0) => flow_cnt10_in(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\flow_cnt1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \flow_cnt1_inferred__0/i__carry_n_0\,
      CO(3) => \flow_cnt1_inferred__0/i__carry__0_n_0\,
      CO(2) => \flow_cnt1_inferred__0/i__carry__0_n_1\,
      CO(1) => \flow_cnt1_inferred__0/i__carry__0_n_2\,
      CO(0) => \flow_cnt1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^ram_addr_reg[31]_0\(7 downto 4),
      O(3 downto 0) => flow_cnt10_in(7 downto 4),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\flow_cnt1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \flow_cnt1_inferred__0/i__carry__0_n_0\,
      CO(3) => \flow_cnt1_inferred__0/i__carry__1_n_0\,
      CO(2) => \flow_cnt1_inferred__0/i__carry__1_n_1\,
      CO(1) => \flow_cnt1_inferred__0/i__carry__1_n_2\,
      CO(0) => \flow_cnt1_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^ram_addr_reg[31]_0\(11 downto 8),
      O(3 downto 0) => flow_cnt10_in(11 downto 8),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\flow_cnt1_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \flow_cnt1_inferred__0/i__carry__1_n_0\,
      CO(3) => \flow_cnt1_inferred__0/i__carry__2_n_0\,
      CO(2) => \flow_cnt1_inferred__0/i__carry__2_n_1\,
      CO(1) => \flow_cnt1_inferred__0/i__carry__2_n_2\,
      CO(0) => \flow_cnt1_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^ram_addr_reg[31]_0\(15 downto 12),
      O(3 downto 0) => flow_cnt10_in(15 downto 12),
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\flow_cnt1_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \flow_cnt1_inferred__0/i__carry__2_n_0\,
      CO(3) => \flow_cnt1_inferred__0/i__carry__3_n_0\,
      CO(2) => \flow_cnt1_inferred__0/i__carry__3_n_1\,
      CO(1) => \flow_cnt1_inferred__0/i__carry__3_n_2\,
      CO(0) => \flow_cnt1_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^ram_addr_reg[31]_0\(19 downto 16),
      O(3 downto 0) => flow_cnt10_in(19 downto 16),
      S(3) => \i__carry__3_i_1_n_0\,
      S(2) => \i__carry__3_i_2_n_0\,
      S(1) => \i__carry__3_i_3_n_0\,
      S(0) => \i__carry__3_i_4_n_0\
    );
\flow_cnt1_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \flow_cnt1_inferred__0/i__carry__3_n_0\,
      CO(3) => \flow_cnt1_inferred__0/i__carry__4_n_0\,
      CO(2) => \flow_cnt1_inferred__0/i__carry__4_n_1\,
      CO(1) => \flow_cnt1_inferred__0/i__carry__4_n_2\,
      CO(0) => \flow_cnt1_inferred__0/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^ram_addr_reg[31]_0\(23 downto 20),
      O(3 downto 0) => flow_cnt10_in(23 downto 20),
      S(3) => \i__carry__4_i_1_n_0\,
      S(2) => \i__carry__4_i_2_n_0\,
      S(1) => \i__carry__4_i_3_n_0\,
      S(0) => \i__carry__4_i_4_n_0\
    );
\flow_cnt1_inferred__0/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \flow_cnt1_inferred__0/i__carry__4_n_0\,
      CO(3) => \flow_cnt1_inferred__0/i__carry__5_n_0\,
      CO(2) => \flow_cnt1_inferred__0/i__carry__5_n_1\,
      CO(1) => \flow_cnt1_inferred__0/i__carry__5_n_2\,
      CO(0) => \flow_cnt1_inferred__0/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^ram_addr_reg[31]_0\(27 downto 24),
      O(3 downto 0) => flow_cnt10_in(27 downto 24),
      S(3) => \i__carry__5_i_1_n_0\,
      S(2) => \i__carry__5_i_2_n_0\,
      S(1) => \i__carry__5_i_3_n_0\,
      S(0) => \i__carry__5_i_4_n_0\
    );
\flow_cnt1_inferred__0/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \flow_cnt1_inferred__0/i__carry__5_n_0\,
      CO(3) => \NLW_flow_cnt1_inferred__0/i__carry__6_CO_UNCONNECTED\(3),
      CO(2) => \flow_cnt1_inferred__0/i__carry__6_n_1\,
      CO(1) => \flow_cnt1_inferred__0/i__carry__6_n_2\,
      CO(0) => \flow_cnt1_inferred__0/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^ram_addr_reg[31]_0\(30 downto 28),
      O(3 downto 0) => flow_cnt10_in(31 downto 28),
      S(3) => \i__carry__6_i_1_n_0\,
      S(2) => \i__carry__6_i_2_n_0\,
      S(1) => \i__carry__6_i_3_n_0\,
      S(0) => \i__carry__6_i_4_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(7),
      I1 => \ram_addr_reg[31]_1\(7),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(6),
      I1 => \ram_addr_reg[31]_1\(6),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(5),
      I1 => \ram_addr_reg[31]_1\(5),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(4),
      I1 => \ram_addr_reg[31]_1\(4),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(11),
      I1 => \ram_addr_reg[31]_1\(11),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(10),
      I1 => \ram_addr_reg[31]_1\(10),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(9),
      I1 => \ram_addr_reg[31]_1\(9),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(8),
      I1 => \ram_addr_reg[31]_1\(8),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(15),
      I1 => \ram_addr_reg[31]_1\(15),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(14),
      I1 => \ram_addr_reg[31]_1\(14),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(13),
      I1 => \ram_addr_reg[31]_1\(13),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(12),
      I1 => \ram_addr_reg[31]_1\(12),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(19),
      I1 => \ram_addr_reg[31]_1\(19),
      O => \i__carry__3_i_1_n_0\
    );
\i__carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(18),
      I1 => \ram_addr_reg[31]_1\(18),
      O => \i__carry__3_i_2_n_0\
    );
\i__carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(17),
      I1 => \ram_addr_reg[31]_1\(17),
      O => \i__carry__3_i_3_n_0\
    );
\i__carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(16),
      I1 => \ram_addr_reg[31]_1\(16),
      O => \i__carry__3_i_4_n_0\
    );
\i__carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(23),
      I1 => \ram_addr_reg[31]_1\(23),
      O => \i__carry__4_i_1_n_0\
    );
\i__carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(22),
      I1 => \ram_addr_reg[31]_1\(22),
      O => \i__carry__4_i_2_n_0\
    );
\i__carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(21),
      I1 => \ram_addr_reg[31]_1\(21),
      O => \i__carry__4_i_3_n_0\
    );
\i__carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(20),
      I1 => \ram_addr_reg[31]_1\(20),
      O => \i__carry__4_i_4_n_0\
    );
\i__carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(27),
      I1 => \ram_addr_reg[31]_1\(27),
      O => \i__carry__5_i_1_n_0\
    );
\i__carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(26),
      I1 => \ram_addr_reg[31]_1\(26),
      O => \i__carry__5_i_2_n_0\
    );
\i__carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(25),
      I1 => \ram_addr_reg[31]_1\(25),
      O => \i__carry__5_i_3_n_0\
    );
\i__carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(24),
      I1 => \ram_addr_reg[31]_1\(24),
      O => \i__carry__5_i_4_n_0\
    );
\i__carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(31),
      I1 => \ram_addr_reg[31]_1\(31),
      O => \i__carry__6_i_1_n_0\
    );
\i__carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(30),
      I1 => \ram_addr_reg[31]_1\(30),
      O => \i__carry__6_i_2_n_0\
    );
\i__carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(29),
      I1 => \ram_addr_reg[31]_1\(29),
      O => \i__carry__6_i_3_n_0\
    );
\i__carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(28),
      I1 => \ram_addr_reg[31]_1\(28),
      O => \i__carry__6_i_4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(3),
      I1 => \ram_addr_reg[31]_1\(3),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(2),
      I1 => \ram_addr_reg[31]_1\(2),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(1),
      I1 => \ram_addr_reg[31]_1\(1),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(0),
      I1 => \ram_addr_reg[31]_1\(0),
      O => \i__carry_i_4_n_0\
    );
ram_addr0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ram_addr0_carry_n_0,
      CO(2) => ram_addr0_carry_n_1,
      CO(1) => ram_addr0_carry_n_2,
      CO(0) => ram_addr0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \^ram_addr_reg[31]_0\(2),
      DI(0) => '0',
      O(3 downto 0) => in5(4 downto 1),
      S(3 downto 2) => \^ram_addr_reg[31]_0\(4 downto 3),
      S(1) => ram_addr0_carry_i_1_n_0,
      S(0) => \^ram_addr_reg[31]_0\(1)
    );
\ram_addr0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ram_addr0_carry_n_0,
      CO(3) => \ram_addr0_carry__0_n_0\,
      CO(2) => \ram_addr0_carry__0_n_1\,
      CO(1) => \ram_addr0_carry__0_n_2\,
      CO(0) => \ram_addr0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in5(8 downto 5),
      S(3 downto 0) => \^ram_addr_reg[31]_0\(8 downto 5)
    );
\ram_addr0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ram_addr0_carry__0_n_0\,
      CO(3) => \ram_addr0_carry__1_n_0\,
      CO(2) => \ram_addr0_carry__1_n_1\,
      CO(1) => \ram_addr0_carry__1_n_2\,
      CO(0) => \ram_addr0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in5(12 downto 9),
      S(3 downto 0) => \^ram_addr_reg[31]_0\(12 downto 9)
    );
\ram_addr0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ram_addr0_carry__1_n_0\,
      CO(3) => \ram_addr0_carry__2_n_0\,
      CO(2) => \ram_addr0_carry__2_n_1\,
      CO(1) => \ram_addr0_carry__2_n_2\,
      CO(0) => \ram_addr0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in5(16 downto 13),
      S(3 downto 0) => \^ram_addr_reg[31]_0\(16 downto 13)
    );
\ram_addr0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \ram_addr0_carry__2_n_0\,
      CO(3) => \ram_addr0_carry__3_n_0\,
      CO(2) => \ram_addr0_carry__3_n_1\,
      CO(1) => \ram_addr0_carry__3_n_2\,
      CO(0) => \ram_addr0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in5(20 downto 17),
      S(3 downto 0) => \^ram_addr_reg[31]_0\(20 downto 17)
    );
\ram_addr0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \ram_addr0_carry__3_n_0\,
      CO(3) => \ram_addr0_carry__4_n_0\,
      CO(2) => \ram_addr0_carry__4_n_1\,
      CO(1) => \ram_addr0_carry__4_n_2\,
      CO(0) => \ram_addr0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in5(24 downto 21),
      S(3 downto 0) => \^ram_addr_reg[31]_0\(24 downto 21)
    );
\ram_addr0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \ram_addr0_carry__4_n_0\,
      CO(3) => \ram_addr0_carry__5_n_0\,
      CO(2) => \ram_addr0_carry__5_n_1\,
      CO(1) => \ram_addr0_carry__5_n_2\,
      CO(0) => \ram_addr0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in5(28 downto 25),
      S(3 downto 0) => \^ram_addr_reg[31]_0\(28 downto 25)
    );
\ram_addr0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \ram_addr0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_ram_addr0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \ram_addr0_carry__6_n_2\,
      CO(0) => \ram_addr0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_ram_addr0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => in5(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => \^ram_addr_reg[31]_0\(31 downto 29)
    );
ram_addr0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ram_addr_reg[31]_0\(2),
      O => ram_addr0_carry_i_1_n_0
    );
\ram_addr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(0),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => \^ram_addr_reg[31]_0\(0),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[0]_i_1_n_0\
    );
\ram_addr[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(10),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(10),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[10]_i_1_n_0\
    );
\ram_addr[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(11),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(11),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[11]_i_1_n_0\
    );
\ram_addr[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(12),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(12),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[12]_i_1_n_0\
    );
\ram_addr[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(13),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(13),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[13]_i_1_n_0\
    );
\ram_addr[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(14),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(14),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[14]_i_1_n_0\
    );
\ram_addr[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(15),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(15),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[15]_i_1_n_0\
    );
\ram_addr[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(16),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(16),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[16]_i_1_n_0\
    );
\ram_addr[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(17),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(17),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[17]_i_1_n_0\
    );
\ram_addr[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(18),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(18),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[18]_i_1_n_0\
    );
\ram_addr[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(19),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(19),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[19]_i_1_n_0\
    );
\ram_addr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(1),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(1),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[1]_i_1_n_0\
    );
\ram_addr[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(20),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(20),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[20]_i_1_n_0\
    );
\ram_addr[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(21),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(21),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[21]_i_1_n_0\
    );
\ram_addr[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(22),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(22),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[22]_i_1_n_0\
    );
\ram_addr[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(23),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(23),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[23]_i_1_n_0\
    );
\ram_addr[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(24),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(24),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[24]_i_1_n_0\
    );
\ram_addr[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(25),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(25),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[25]_i_1_n_0\
    );
\ram_addr[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(26),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(26),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[26]_i_1_n_0\
    );
\ram_addr[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(27),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(27),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[27]_i_1_n_0\
    );
\ram_addr[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(28),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(28),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[28]_i_1_n_0\
    );
\ram_addr[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(29),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(29),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[29]_i_1_n_0\
    );
\ram_addr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(2),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(2),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[2]_i_1_n_0\
    );
\ram_addr[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(30),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(30),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[30]_i_1_n_0\
    );
\ram_addr[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(31),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(31),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[31]_i_1_n_0\
    );
\ram_addr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(3),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(3),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[3]_i_1_n_0\
    );
\ram_addr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(4),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(4),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[4]_i_1_n_0\
    );
\ram_addr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(5),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(5),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[5]_i_1_n_0\
    );
\ram_addr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(6),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(6),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[6]_i_1_n_0\
    );
\ram_addr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(7),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(7),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[7]_i_1_n_0\
    );
\ram_addr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(8),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(8),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[8]_i_1_n_0\
    );
\ram_addr[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_addr_reg[31]_1\(9),
      I1 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I2 => in5(9),
      I3 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      O => \ram_addr[9]_i_1_n_0\
    );
\ram_addr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[0]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(0)
    );
\ram_addr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[10]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(10)
    );
\ram_addr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[11]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(11)
    );
\ram_addr_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[12]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(12)
    );
\ram_addr_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[13]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(13)
    );
\ram_addr_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[14]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(14)
    );
\ram_addr_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[15]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(15)
    );
\ram_addr_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[16]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(16)
    );
\ram_addr_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[17]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(17)
    );
\ram_addr_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[18]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(18)
    );
\ram_addr_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[19]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(19)
    );
\ram_addr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[1]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(1)
    );
\ram_addr_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[20]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(20)
    );
\ram_addr_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[21]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(21)
    );
\ram_addr_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[22]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(22)
    );
\ram_addr_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[23]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(23)
    );
\ram_addr_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[24]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(24)
    );
\ram_addr_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[25]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(25)
    );
\ram_addr_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[26]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(26)
    );
\ram_addr_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[27]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(27)
    );
\ram_addr_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[28]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(28)
    );
\ram_addr_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[29]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(29)
    );
\ram_addr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[2]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(2)
    );
\ram_addr_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[30]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(30)
    );
\ram_addr_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[31]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(31)
    );
\ram_addr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[3]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(3)
    );
\ram_addr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[4]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(4)
    );
\ram_addr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[5]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(5)
    );
\ram_addr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[6]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(6)
    );
\ram_addr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[7]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(7)
    );
\ram_addr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[8]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(8)
    );
\ram_addr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      CLR => \^sr\(0),
      D => \ram_addr[9]_i_1_n_0\,
      Q => \^ram_addr_reg[31]_0\(9)
    );
ram_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20FFFFFF20202020"
    )
        port map (
      I0 => start_rd_d0,
      I1 => start_rd_d1,
      I2 => \FSM_onehot_flow_cnt_reg_n_0_[0]\,
      I3 => \flow_cnt0_carry__1_n_1\,
      I4 => \FSM_onehot_flow_cnt_reg_n_0_[1]\,
      I5 => \^ram_en\,
      O => ram_en_i_1_n_0
    );
ram_en_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
    );
ram_en_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ram_en_i_1_n_0,
      Q => \^ram_en\
    );
start_rd_d0_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => Q(0),
      Q => start_rd_d0
    );
start_rd_d1_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => start_rd_d0,
      Q => start_rd_d1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_pl_bram_rd_0_1_pl_bram_rd_v1_0_S00_AXI is
  port (
    ram_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    ram_en : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
end system_pl_bram_rd_0_1_pl_bram_rd_v1_0_S00_AXI;

architecture STRUCTURE of system_pl_bram_rd_0_1_pl_bram_rd_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  signal u_bram_rd_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_2\ : label is "soft_lutpair0";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => aw_en_reg_n_0,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => u_bram_rd_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => u_bram_rd_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => u_bram_rd_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => u_bram_rd_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => u_bram_rd_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => u_bram_rd_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^s_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => u_bram_rd_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => u_bram_rd_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(0),
      I1 => slv_reg0(0),
      I2 => slv_reg3(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(10),
      I1 => slv_reg0(10),
      I2 => slv_reg3(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(11),
      I1 => slv_reg0(11),
      I2 => slv_reg3(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(12),
      I1 => slv_reg0(12),
      I2 => slv_reg3(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(13),
      I1 => slv_reg0(13),
      I2 => slv_reg3(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(14),
      I1 => slv_reg0(14),
      I2 => slv_reg3(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(15),
      I1 => slv_reg0(15),
      I2 => slv_reg3(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(16),
      I1 => slv_reg0(16),
      I2 => slv_reg3(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(17),
      I1 => slv_reg0(17),
      I2 => slv_reg3(17),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(18),
      I1 => slv_reg0(18),
      I2 => slv_reg3(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(19),
      I1 => slv_reg0(19),
      I2 => slv_reg3(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(1),
      I1 => slv_reg0(1),
      I2 => slv_reg3(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(20),
      I1 => slv_reg0(20),
      I2 => slv_reg3(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(21),
      I1 => slv_reg0(21),
      I2 => slv_reg3(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(22),
      I1 => slv_reg0(22),
      I2 => slv_reg3(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(23),
      I1 => slv_reg0(23),
      I2 => slv_reg3(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(24),
      I1 => slv_reg0(24),
      I2 => slv_reg3(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(25),
      I1 => slv_reg0(25),
      I2 => slv_reg3(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(26),
      I1 => slv_reg0(26),
      I2 => slv_reg3(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(27),
      I1 => slv_reg0(27),
      I2 => slv_reg3(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(28),
      I1 => slv_reg0(28),
      I2 => slv_reg3(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(29),
      I1 => slv_reg0(29),
      I2 => slv_reg3(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(2),
      I1 => slv_reg0(2),
      I2 => slv_reg3(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(30),
      I1 => slv_reg0(30),
      I2 => slv_reg3(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(31),
      I1 => slv_reg0(31),
      I2 => slv_reg3(31),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(3),
      I1 => slv_reg0(3),
      I2 => slv_reg3(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(4),
      I1 => slv_reg0(4),
      I2 => slv_reg3(4),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(5),
      I1 => slv_reg0(5),
      I2 => slv_reg3(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(6),
      I1 => slv_reg0(6),
      I2 => slv_reg3(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(7),
      I1 => slv_reg0(7),
      I2 => slv_reg3(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(8),
      I1 => slv_reg0(8),
      I2 => slv_reg3(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(9),
      I1 => slv_reg0(9),
      I2 => slv_reg3(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => u_bram_rd_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => u_bram_rd_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => u_bram_rd_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_wready\,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => u_bram_rd_n_0
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => u_bram_rd_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => u_bram_rd_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => u_bram_rd_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => u_bram_rd_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => u_bram_rd_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => u_bram_rd_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(15)
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(23)
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(31)
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(7)
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => u_bram_rd_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => u_bram_rd_n_0
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^s_axi_arready\,
      O => \slv_reg_rden__0\
    );
u_bram_rd: entity work.system_pl_bram_rd_0_1_bram_rd
     port map (
      Q(0) => slv_reg0(0),
      SR(0) => u_bram_rd_n_0,
      \flow_cnt1_carry__6_0\(31 downto 0) => slv_reg2(31 downto 0),
      \ram_addr_reg[31]_0\(31 downto 0) => ram_addr(31 downto 0),
      \ram_addr_reg[31]_1\(31 downto 0) => slv_reg1(31 downto 0),
      ram_en => ram_en,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_pl_bram_rd_0_1_pl_bram_rd_v1_0 is
  port (
    ram_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    ram_en : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
end system_pl_bram_rd_0_1_pl_bram_rd_v1_0;

architecture STRUCTURE of system_pl_bram_rd_0_1_pl_bram_rd_v1_0 is
begin
pl_bram_rd_v1_0_S00_AXI_inst: entity work.system_pl_bram_rd_0_1_pl_bram_rd_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      ram_addr(31 downto 0) => ram_addr(31 downto 0),
      ram_en => ram_en,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_pl_bram_rd_0_1 is
  port (
    the_rd_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_clk : out STD_LOGIC;
    ram_rd_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_en : out STD_LOGIC;
    ram_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_wr_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_rst : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_pl_bram_rd_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_pl_bram_rd_0_1 : entity is "system_pl_bram_rd_0_0,pl_bram_rd_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_pl_bram_rd_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_pl_bram_rd_0_1 : entity is "pl_bram_rd_v1_0,Vivado 2018.3";
end system_pl_bram_rd_0_1;

architecture STRUCTURE of system_pl_bram_rd_0_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \^ram_rd_data\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_aclk\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ram_clk : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT CLK";
  attribute X_INTERFACE_INFO of ram_en : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT EN";
  attribute X_INTERFACE_INFO of ram_rst : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ram_rst : signal is "XIL_INTERFACENAME BRAM_OUT, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN system_slowest_sync_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_slowest_sync_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of ram_addr : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT ADDR";
  attribute X_INTERFACE_INFO of ram_rd_data : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT DOUT";
  attribute X_INTERFACE_INFO of ram_we : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT WE";
  attribute X_INTERFACE_INFO of ram_wr_data : signal is "xilinx.com:interface:bram:1.0 BRAM_OUT DIN";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  \^ram_rd_data\(31 downto 0) <= ram_rd_data(31 downto 0);
  \^s00_axi_aclk\ <= s00_axi_aclk;
  ram_clk <= \^s00_axi_aclk\;
  ram_rst <= \<const0>\;
  ram_we(3) <= \<const0>\;
  ram_we(2) <= \<const0>\;
  ram_we(1) <= \<const0>\;
  ram_we(0) <= \<const0>\;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
  the_rd_data(31 downto 0) <= \^ram_rd_data\(31 downto 0);
  ram_wr_data(0) <= 'Z';
  ram_wr_data(1) <= 'Z';
  ram_wr_data(2) <= 'Z';
  ram_wr_data(3) <= 'Z';
  ram_wr_data(4) <= 'Z';
  ram_wr_data(5) <= 'Z';
  ram_wr_data(6) <= 'Z';
  ram_wr_data(7) <= 'Z';
  ram_wr_data(8) <= 'Z';
  ram_wr_data(9) <= 'Z';
  ram_wr_data(10) <= 'Z';
  ram_wr_data(11) <= 'Z';
  ram_wr_data(12) <= 'Z';
  ram_wr_data(13) <= 'Z';
  ram_wr_data(14) <= 'Z';
  ram_wr_data(15) <= 'Z';
  ram_wr_data(16) <= 'Z';
  ram_wr_data(17) <= 'Z';
  ram_wr_data(18) <= 'Z';
  ram_wr_data(19) <= 'Z';
  ram_wr_data(20) <= 'Z';
  ram_wr_data(21) <= 'Z';
  ram_wr_data(22) <= 'Z';
  ram_wr_data(23) <= 'Z';
  ram_wr_data(24) <= 'Z';
  ram_wr_data(25) <= 'Z';
  ram_wr_data(26) <= 'Z';
  ram_wr_data(27) <= 'Z';
  ram_wr_data(28) <= 'Z';
  ram_wr_data(29) <= 'Z';
  ram_wr_data(30) <= 'Z';
  ram_wr_data(31) <= 'Z';
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.system_pl_bram_rd_0_1_pl_bram_rd_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      ram_addr(31 downto 0) => ram_addr(31 downto 0),
      ram_en => ram_en,
      s00_axi_aclk => \^s00_axi_aclk\,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
