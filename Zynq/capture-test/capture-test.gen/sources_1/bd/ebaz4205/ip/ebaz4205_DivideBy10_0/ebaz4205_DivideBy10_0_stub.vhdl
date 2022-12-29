-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Sun Dec 11 18:15:59 2022
-- Host        : DESKTOP-SQGSJV7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top ebaz4205_DivideBy10_0 -prefix
--               ebaz4205_DivideBy10_0_ ebaz4205_DivideBy2N_0_0_stub.vhdl
-- Design      : ebaz4205_DivideBy2N_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ebaz4205_DivideBy10_0 is
  Port ( 
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );

end ebaz4205_DivideBy10_0;

architecture stub of ebaz4205_DivideBy10_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,resetn,clk_out";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "DivideBy2N,Vivado 2021.2";
begin
end;
