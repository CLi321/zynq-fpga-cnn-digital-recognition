-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Jul  6 20:58:36 2024
-- Host        : LiLen running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               l:/CLi_Projects/XC7Z010/ch48_acz702_ov5640_ddr3_vga_io_hdmi/ov5640_ddr3_vga_io_hdmi.srcs/sources_1/ip/ROM_empty/ROM_empty_stub.vhdl
-- Design      : ROM_empty
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ROM_empty is
  Port ( 
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );

end ROM_empty;

architecture stub of ROM_empty is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,ena,addra[11:0],douta[23:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_2,Vivado 2018.3";
begin
end;
