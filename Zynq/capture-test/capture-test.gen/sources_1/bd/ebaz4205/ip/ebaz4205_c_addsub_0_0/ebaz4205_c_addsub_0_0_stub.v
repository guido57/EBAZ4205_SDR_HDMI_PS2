// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sun Dec 25 20:49:22 2022
// Host        : DESKTOP-SQGSJV7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/EBAZ4205_SDR/Zynq/capture-test/capture-test.gen/sources_1/bd/ebaz4205/ip/ebaz4205_c_addsub_0_0/ebaz4205_c_addsub_0_0_stub.v
// Design      : ebaz4205_c_addsub_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_14,Vivado 2021.2" *)
module ebaz4205_c_addsub_0_0(A, B, CLK, S)
/* synthesis syn_black_box black_box_pad_pin="A[31:0],B[31:0],CLK,S[31:0]" */;
  input [31:0]A;
  input [31:0]B;
  input CLK;
  output [31:0]S;
endmodule
