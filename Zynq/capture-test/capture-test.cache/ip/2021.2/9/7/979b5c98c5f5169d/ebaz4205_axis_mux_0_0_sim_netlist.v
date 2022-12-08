// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Nov  1 19:16:15 2022
// Host        : DESKTOP-SQGSJV7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ebaz4205_axis_mux_0_0_sim_netlist.v
// Design      : ebaz4205_axis_mux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_mux
   (output_axis_tdata,
    output_axis_tvalid,
    select_input,
    clk,
    input1_axis_tdata,
    input0_axis_tdata,
    input1_axis_tvalid,
    input0_axis_tvalid);
  output [15:0]output_axis_tdata;
  output output_axis_tvalid;
  input select_input;
  input clk;
  input [15:0]input1_axis_tdata;
  input [15:0]input0_axis_tdata;
  input input1_axis_tvalid;
  input input0_axis_tvalid;

  wire clk;
  wire [15:0]input0_axis_tdata;
  wire input0_axis_tvalid;
  wire [15:0]input1_axis_tdata;
  wire input1_axis_tvalid;
  wire [15:0]output_axis_tdata;
  wire output_axis_tvalid;
  wire output_axis_tvalid_i_1_n_0;
  wire [15:0]p_0_in;
  wire select_input;
  wire select_input_sync_ff1;
  wire select_input_sync_ff2;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_axis_tdata[0]_i_1 
       (.I0(input1_axis_tdata[0]),
        .I1(input0_axis_tdata[0]),
        .I2(select_input_sync_ff2),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_axis_tdata[10]_i_1 
       (.I0(input1_axis_tdata[10]),
        .I1(input0_axis_tdata[10]),
        .I2(select_input_sync_ff2),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_axis_tdata[11]_i_1 
       (.I0(input1_axis_tdata[11]),
        .I1(input0_axis_tdata[11]),
        .I2(select_input_sync_ff2),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_axis_tdata[12]_i_1 
       (.I0(input1_axis_tdata[12]),
        .I1(input0_axis_tdata[12]),
        .I2(select_input_sync_ff2),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_axis_tdata[13]_i_1 
       (.I0(input1_axis_tdata[13]),
        .I1(input0_axis_tdata[13]),
        .I2(select_input_sync_ff2),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_axis_tdata[14]_i_1 
       (.I0(input1_axis_tdata[14]),
        .I1(input0_axis_tdata[14]),
        .I2(select_input_sync_ff2),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_axis_tdata[15]_i_1 
       (.I0(input1_axis_tdata[15]),
        .I1(input0_axis_tdata[15]),
        .I2(select_input_sync_ff2),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_axis_tdata[1]_i_1 
       (.I0(input1_axis_tdata[1]),
        .I1(input0_axis_tdata[1]),
        .I2(select_input_sync_ff2),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_axis_tdata[2]_i_1 
       (.I0(input1_axis_tdata[2]),
        .I1(input0_axis_tdata[2]),
        .I2(select_input_sync_ff2),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_axis_tdata[3]_i_1 
       (.I0(input1_axis_tdata[3]),
        .I1(input0_axis_tdata[3]),
        .I2(select_input_sync_ff2),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_axis_tdata[4]_i_1 
       (.I0(input1_axis_tdata[4]),
        .I1(input0_axis_tdata[4]),
        .I2(select_input_sync_ff2),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_axis_tdata[5]_i_1 
       (.I0(input1_axis_tdata[5]),
        .I1(input0_axis_tdata[5]),
        .I2(select_input_sync_ff2),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_axis_tdata[6]_i_1 
       (.I0(input1_axis_tdata[6]),
        .I1(input0_axis_tdata[6]),
        .I2(select_input_sync_ff2),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_axis_tdata[7]_i_1 
       (.I0(input1_axis_tdata[7]),
        .I1(input0_axis_tdata[7]),
        .I2(select_input_sync_ff2),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_axis_tdata[8]_i_1 
       (.I0(input1_axis_tdata[8]),
        .I1(input0_axis_tdata[8]),
        .I2(select_input_sync_ff2),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \output_axis_tdata[9]_i_1 
       (.I0(input1_axis_tdata[9]),
        .I1(input0_axis_tdata[9]),
        .I2(select_input_sync_ff2),
        .O(p_0_in[9]));
  FDRE \output_axis_tdata_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(output_axis_tdata[0]),
        .R(1'b0));
  FDRE \output_axis_tdata_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(output_axis_tdata[10]),
        .R(1'b0));
  FDRE \output_axis_tdata_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[11]),
        .Q(output_axis_tdata[11]),
        .R(1'b0));
  FDRE \output_axis_tdata_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[12]),
        .Q(output_axis_tdata[12]),
        .R(1'b0));
  FDRE \output_axis_tdata_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[13]),
        .Q(output_axis_tdata[13]),
        .R(1'b0));
  FDRE \output_axis_tdata_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[14]),
        .Q(output_axis_tdata[14]),
        .R(1'b0));
  FDRE \output_axis_tdata_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[15]),
        .Q(output_axis_tdata[15]),
        .R(1'b0));
  FDRE \output_axis_tdata_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(output_axis_tdata[1]),
        .R(1'b0));
  FDRE \output_axis_tdata_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(output_axis_tdata[2]),
        .R(1'b0));
  FDRE \output_axis_tdata_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(output_axis_tdata[3]),
        .R(1'b0));
  FDRE \output_axis_tdata_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(output_axis_tdata[4]),
        .R(1'b0));
  FDRE \output_axis_tdata_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(output_axis_tdata[5]),
        .R(1'b0));
  FDRE \output_axis_tdata_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(output_axis_tdata[6]),
        .R(1'b0));
  FDRE \output_axis_tdata_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(output_axis_tdata[7]),
        .R(1'b0));
  FDRE \output_axis_tdata_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(output_axis_tdata[8]),
        .R(1'b0));
  FDRE \output_axis_tdata_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(output_axis_tdata[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    output_axis_tvalid_i_1
       (.I0(input1_axis_tvalid),
        .I1(select_input_sync_ff2),
        .I2(input0_axis_tvalid),
        .O(output_axis_tvalid_i_1_n_0));
  FDRE output_axis_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(output_axis_tvalid_i_1_n_0),
        .Q(output_axis_tvalid),
        .R(1'b0));
  FDRE select_input_sync_ff1_reg
       (.C(clk),
        .CE(1'b1),
        .D(select_input),
        .Q(select_input_sync_ff1),
        .R(1'b0));
  FDRE select_input_sync_ff2_reg
       (.C(clk),
        .CE(1'b1),
        .D(select_input_sync_ff1),
        .Q(select_input_sync_ff2),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "ebaz4205_axis_mux_0_0,axis_mux,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axis_mux,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (input0_axis_tdata,
    input0_axis_tvalid,
    input1_axis_tdata,
    input1_axis_tvalid,
    select_input,
    output_axis_tdata,
    output_axis_tvalid,
    clk);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input0_axis TDATA" *) input [15:0]input0_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input0_axis TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME input0_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 1e+08, PHASE 0.0, CLK_DOMAIN ebaz4205_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency chan_stride format long minimum {} maximum {}} value 16} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_cosine {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cosine} enabled {attribs {resolve_type generated dependency cosine_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency cosine_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency cosine_fractwidth format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}} field_sine {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value sine} enabled {attribs {resolve_type generated dependency sine_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency sine_width format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type generated dependency sine_offset format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency sine_fractwidth format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}} TDATA_WIDTH 16 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_chanid {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chanid} enabled {attribs {resolve_type generated dependency chanid_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency chanid_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_user {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value user} enabled {attribs {resolve_type generated dependency user_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency user_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency user_offset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0" *) input input0_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input1_axis TDATA" *) input [15:0]input1_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input1_axis TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME input1_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 1e+08, PHASE 0.0, CLK_DOMAIN ebaz4205_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input input1_axis_tvalid;
  input select_input;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 output_axis TDATA" *) output [15:0]output_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 output_axis TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME output_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 1e+08, PHASE 0.0, CLK_DOMAIN ebaz4205_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output output_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF input0_axis:input1_axis:output_axis, FREQ_HZ 1e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ebaz4205_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;

  wire clk;
  wire [15:0]input0_axis_tdata;
  wire input0_axis_tvalid;
  wire [15:0]input1_axis_tdata;
  wire input1_axis_tvalid;
  wire [15:0]output_axis_tdata;
  wire output_axis_tvalid;
  wire select_input;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_mux inst
       (.clk(clk),
        .input0_axis_tdata(input0_axis_tdata),
        .input0_axis_tvalid(input0_axis_tvalid),
        .input1_axis_tdata(input1_axis_tdata),
        .input1_axis_tvalid(input1_axis_tvalid),
        .output_axis_tdata(output_axis_tdata),
        .output_axis_tvalid(output_axis_tvalid),
        .select_input(select_input));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
