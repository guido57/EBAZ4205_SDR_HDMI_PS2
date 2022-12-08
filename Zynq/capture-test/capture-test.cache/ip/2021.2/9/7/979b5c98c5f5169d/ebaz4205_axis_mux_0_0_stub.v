// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Nov  1 19:16:15 2022
// Host        : DESKTOP-SQGSJV7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ebaz4205_axis_mux_0_0_stub.v
// Design      : ebaz4205_axis_mux_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis_mux,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(input0_axis_tdata, input0_axis_tvalid, 
  input1_axis_tdata, input1_axis_tvalid, select_input, output_axis_tdata, 
  output_axis_tvalid, clk)
/* synthesis syn_black_box black_box_pad_pin="input0_axis_tdata[15:0],input0_axis_tvalid,input1_axis_tdata[15:0],input1_axis_tvalid,select_input,output_axis_tdata[15:0],output_axis_tvalid,clk" */;
  input [15:0]input0_axis_tdata;
  input input0_axis_tvalid;
  input [15:0]input1_axis_tdata;
  input input1_axis_tvalid;
  input select_input;
  output [15:0]output_axis_tdata;
  output output_axis_tvalid;
  input clk;
endmodule
