-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Wed Nov  2 21:33:13 2022
-- Host        : DESKTOP-SQGSJV7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/EBAZ4205_SDR/Zynq/capture-test/capture-test.gen/sources_1/bd/ebaz4205/ip/ebaz4205_axis_capture_0_4/ebaz4205_axis_capture_0_4_stub.vhdl
-- Design      : ebaz4205_axis_capture_0_4
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ebaz4205_axis_capture_0_4 is
  Port ( 
    capture_clk : in STD_LOGIC;
    capture_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    capture_valid : in STD_LOGIC;
    ctrl_s_axi_aclk : in STD_LOGIC;
    ctrl_s_axi_aresetn : in STD_LOGIC;
    ctrl_s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ctrl_s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ctrl_s_axi_awvalid : in STD_LOGIC;
    ctrl_s_axi_awready : out STD_LOGIC;
    ctrl_s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ctrl_s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ctrl_s_axi_wvalid : in STD_LOGIC;
    ctrl_s_axi_wready : out STD_LOGIC;
    ctrl_s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ctrl_s_axi_bvalid : out STD_LOGIC;
    ctrl_s_axi_bready : in STD_LOGIC;
    ctrl_s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ctrl_s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ctrl_s_axi_arvalid : in STD_LOGIC;
    ctrl_s_axi_arready : out STD_LOGIC;
    ctrl_s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ctrl_s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ctrl_s_axi_rvalid : out STD_LOGIC;
    ctrl_s_axi_rready : in STD_LOGIC
  );

end ebaz4205_axis_capture_0_4;

architecture stub of ebaz4205_axis_capture_0_4 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "capture_clk,capture_data[31:0],capture_valid,ctrl_s_axi_aclk,ctrl_s_axi_aresetn,ctrl_s_axi_awaddr[4:0],ctrl_s_axi_awprot[2:0],ctrl_s_axi_awvalid,ctrl_s_axi_awready,ctrl_s_axi_wdata[31:0],ctrl_s_axi_wstrb[3:0],ctrl_s_axi_wvalid,ctrl_s_axi_wready,ctrl_s_axi_bresp[1:0],ctrl_s_axi_bvalid,ctrl_s_axi_bready,ctrl_s_axi_araddr[4:0],ctrl_s_axi_arprot[2:0],ctrl_s_axi_arvalid,ctrl_s_axi_arready,ctrl_s_axi_rdata[31:0],ctrl_s_axi_rresp[1:0],ctrl_s_axi_rvalid,ctrl_s_axi_rready";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "axis_capture,Vivado 2021.2";
begin
end;
