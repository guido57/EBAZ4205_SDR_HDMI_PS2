// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sun Dec 11 18:15:59 2022
// Host        : DESKTOP-SQGSJV7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/EBAZ4205_SDR/Zynq/capture-test/capture-test.gen/sources_1/bd/ebaz4205/ip/ebaz4205_DivideBy2N_0_0/ebaz4205_DivideBy2N_0_0_stub.v
// Design      : ebaz4205_DivideBy2N_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "DivideBy2N,Vivado 2021.2" *)
module ebaz4205_DivideBy2N_0_0(clk, resetn, clk_out)
/* synthesis syn_black_box black_box_pad_pin="clk,resetn,clk_out" */;
  input clk;
  input resetn;
  output clk_out;
endmodule
