//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Wed Dec 28 22:18:23 2022
//Host        : DESKTOP-SQGSJV7 running 64-bit major release  (build 9200)
//Command     : generate_target ebaz4205.bd
//Design      : ebaz4205
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ADC_TestGen_imp_QGE54V
   (ADC_clk_64M,
    ADC_in,
    LED_GREEN,
    LED_GREEN1,
    OTR,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    aresetn,
    ctrl_s_axi_araddr,
    ctrl_s_axi_arprot,
    ctrl_s_axi_arready,
    ctrl_s_axi_arvalid,
    ctrl_s_axi_awaddr,
    ctrl_s_axi_awprot,
    ctrl_s_axi_awready,
    ctrl_s_axi_awvalid,
    ctrl_s_axi_bready,
    ctrl_s_axi_bresp,
    ctrl_s_axi_bvalid,
    ctrl_s_axi_rdata,
    ctrl_s_axi_rready,
    ctrl_s_axi_rresp,
    ctrl_s_axi_rvalid,
    ctrl_s_axi_wdata,
    ctrl_s_axi_wready,
    ctrl_s_axi_wstrb,
    ctrl_s_axi_wvalid,
    dout,
    gpio2_io_o_0,
    output_axis_tvalid,
    s00_axis_aclk,
    s_axi_aresetn);
  input ADC_clk_64M;
  input [11:0]ADC_in;
  output [31:0]LED_GREEN;
  output [0:0]LED_GREEN1;
  input [0:0]OTR;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input aresetn;
  input [3:0]ctrl_s_axi_araddr;
  input [2:0]ctrl_s_axi_arprot;
  output ctrl_s_axi_arready;
  input ctrl_s_axi_arvalid;
  input [3:0]ctrl_s_axi_awaddr;
  input [2:0]ctrl_s_axi_awprot;
  output ctrl_s_axi_awready;
  input ctrl_s_axi_awvalid;
  input ctrl_s_axi_bready;
  output [1:0]ctrl_s_axi_bresp;
  output ctrl_s_axi_bvalid;
  output [31:0]ctrl_s_axi_rdata;
  input ctrl_s_axi_rready;
  output [1:0]ctrl_s_axi_rresp;
  output ctrl_s_axi_rvalid;
  input [31:0]ctrl_s_axi_wdata;
  output ctrl_s_axi_wready;
  input [3:0]ctrl_s_axi_wstrb;
  input ctrl_s_axi_wvalid;
  output [31:0]dout;
  output [0:0]gpio2_io_o_0;
  output output_axis_tvalid;
  input s00_axis_aclk;
  input s_axi_aresetn;

  wire [11:0]ADC_in_1;
  wire ADCandTestGen_output_axis_tvalid;
  wire [31:0]Conn1_ARADDR;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [31:0]Conn1_AWADDR;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [3:0]Conn2_ARADDR;
  wire [2:0]Conn2_ARPROT;
  wire Conn2_ARREADY;
  wire Conn2_ARVALID;
  wire [3:0]Conn2_AWADDR;
  wire [2:0]Conn2_AWPROT;
  wire Conn2_AWREADY;
  wire Conn2_AWVALID;
  wire Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire Conn2_BVALID;
  wire [31:0]Conn2_RDATA;
  wire Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire Conn2_RVALID;
  wire [31:0]Conn2_WDATA;
  wire Conn2_WREADY;
  wire [3:0]Conn2_WSTRB;
  wire Conn2_WVALID;
  wire [0:0]OTR_1;
  wire PS_FCLK_CLK1;
  wire [0:0]TestGen_LED_GREEN;
  wire [15:0]TestGen_dout;
  wire TestGen_m_axis_data_tvalid;
  wire [0:0]TestGen_s_axis_config_tvalid;
  wire [15:0]axis_mux_0_output_axis_tdata;
  wire s00_axis_aclk_1;
  wire s_axi_aresetn_1;
  wire [31:0]xlconcat_1_dout;
  wire [15:0]xlconcat_2_dout;
  wire [15:0]xlconstant_0_dout;
  wire [2:0]xlconstant_2_dout;

  assign ADC_in_1 = ADC_in[11:0];
  assign Conn1_ARADDR = S_AXI_araddr[31:0];
  assign Conn1_ARVALID = S_AXI_arvalid;
  assign Conn1_AWADDR = S_AXI_awaddr[31:0];
  assign Conn1_AWVALID = S_AXI_awvalid;
  assign Conn1_BREADY = S_AXI_bready;
  assign Conn1_RREADY = S_AXI_rready;
  assign Conn1_WDATA = S_AXI_wdata[31:0];
  assign Conn1_WSTRB = S_AXI_wstrb[3:0];
  assign Conn1_WVALID = S_AXI_wvalid;
  assign Conn2_ARADDR = ctrl_s_axi_araddr[3:0];
  assign Conn2_ARPROT = ctrl_s_axi_arprot[2:0];
  assign Conn2_ARVALID = ctrl_s_axi_arvalid;
  assign Conn2_AWADDR = ctrl_s_axi_awaddr[3:0];
  assign Conn2_AWPROT = ctrl_s_axi_awprot[2:0];
  assign Conn2_AWVALID = ctrl_s_axi_awvalid;
  assign Conn2_BREADY = ctrl_s_axi_bready;
  assign Conn2_RREADY = ctrl_s_axi_rready;
  assign Conn2_WDATA = ctrl_s_axi_wdata[31:0];
  assign Conn2_WSTRB = ctrl_s_axi_wstrb[3:0];
  assign Conn2_WVALID = ctrl_s_axi_wvalid;
  assign LED_GREEN1[0] = TestGen_LED_GREEN;
  assign OTR_1 = OTR[0];
  assign PS_FCLK_CLK1 = ADC_clk_64M;
  assign S_AXI_arready = Conn1_ARREADY;
  assign S_AXI_awready = Conn1_AWREADY;
  assign S_AXI_bresp[1:0] = Conn1_BRESP;
  assign S_AXI_bvalid = Conn1_BVALID;
  assign S_AXI_rdata[31:0] = Conn1_RDATA;
  assign S_AXI_rresp[1:0] = Conn1_RRESP;
  assign S_AXI_rvalid = Conn1_RVALID;
  assign S_AXI_wready = Conn1_WREADY;
  assign ctrl_s_axi_arready = Conn2_ARREADY;
  assign ctrl_s_axi_awready = Conn2_AWREADY;
  assign ctrl_s_axi_bresp[1:0] = Conn2_BRESP;
  assign ctrl_s_axi_bvalid = Conn2_BVALID;
  assign ctrl_s_axi_rdata[31:0] = Conn2_RDATA;
  assign ctrl_s_axi_rresp[1:0] = Conn2_RRESP;
  assign ctrl_s_axi_rvalid = Conn2_RVALID;
  assign ctrl_s_axi_wready = Conn2_WREADY;
  assign dout[31:0] = xlconcat_1_dout;
  assign output_axis_tvalid = ADCandTestGen_output_axis_tvalid;
  assign s00_axis_aclk_1 = s00_axis_aclk;
  assign s_axi_aresetn_1 = s_axi_aresetn;
  TestGen_imp_12Z2PFB TestGen
       (.ADC_clk_64M(PS_FCLK_CLK1),
        .LED_GREEN(TestGen_LED_GREEN),
        .S_AXI_araddr(Conn1_ARADDR),
        .S_AXI_arready(Conn1_ARREADY),
        .S_AXI_arvalid(Conn1_ARVALID),
        .S_AXI_awaddr(Conn1_AWADDR),
        .S_AXI_awready(Conn1_AWREADY),
        .S_AXI_awvalid(Conn1_AWVALID),
        .S_AXI_bready(Conn1_BREADY),
        .S_AXI_bresp(Conn1_BRESP),
        .S_AXI_bvalid(Conn1_BVALID),
        .S_AXI_rdata(Conn1_RDATA),
        .S_AXI_rready(Conn1_RREADY),
        .S_AXI_rresp(Conn1_RRESP),
        .S_AXI_rvalid(Conn1_RVALID),
        .S_AXI_wdata(Conn1_WDATA),
        .S_AXI_wready(Conn1_WREADY),
        .S_AXI_wstrb(Conn1_WSTRB),
        .S_AXI_wvalid(Conn1_WVALID),
        .ctrl_s_axi_araddr(Conn2_ARADDR),
        .ctrl_s_axi_arprot(Conn2_ARPROT),
        .ctrl_s_axi_arready(Conn2_ARREADY),
        .ctrl_s_axi_arvalid(Conn2_ARVALID),
        .ctrl_s_axi_awaddr(Conn2_AWADDR),
        .ctrl_s_axi_awprot(Conn2_AWPROT),
        .ctrl_s_axi_awready(Conn2_AWREADY),
        .ctrl_s_axi_awvalid(Conn2_AWVALID),
        .ctrl_s_axi_bready(Conn2_BREADY),
        .ctrl_s_axi_bresp(Conn2_BRESP),
        .ctrl_s_axi_bvalid(Conn2_BVALID),
        .ctrl_s_axi_rdata(Conn2_RDATA),
        .ctrl_s_axi_rready(Conn2_RREADY),
        .ctrl_s_axi_rresp(Conn2_RRESP),
        .ctrl_s_axi_rvalid(Conn2_RVALID),
        .ctrl_s_axi_wdata(Conn2_WDATA),
        .ctrl_s_axi_wready(Conn2_WREADY),
        .ctrl_s_axi_wstrb(Conn2_WSTRB),
        .ctrl_s_axi_wvalid(Conn2_WVALID),
        .dout(TestGen_dout),
        .m_axis_data_tvalid(TestGen_m_axis_data_tvalid),
        .s00_axis_aclk(s00_axis_aclk_1),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axis_config_tvalid(TestGen_s_axis_config_tvalid));
  ebaz4205_axis_mux_0_0 axis_mux_0
       (.clk(PS_FCLK_CLK1),
        .input0_axis_tdata(TestGen_dout),
        .input0_axis_tvalid(TestGen_m_axis_data_tvalid),
        .input1_axis_tdata(xlconcat_2_dout),
        .input1_axis_tvalid(TestGen_s_axis_config_tvalid),
        .output_axis_tdata(axis_mux_0_output_axis_tdata),
        .output_axis_tvalid(ADCandTestGen_output_axis_tvalid),
        .select_input(TestGen_LED_GREEN));
  ebaz4205_xlconcat_1_0 xlconcat_1
       (.In0(xlconstant_0_dout),
        .In1(axis_mux_0_output_axis_tdata),
        .dout(xlconcat_1_dout));
  ebaz4205_xlconcat_2_0 xlconcat_2
       (.In0(OTR_1),
        .In1(xlconstant_2_dout),
        .In2(ADC_in_1),
        .dout(xlconcat_2_dout));
  ebaz4205_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  ebaz4205_xlconstant_2_0 xlconstant_2
       (.dout(xlconstant_2_dout));
endmodule

module AM_demodulator_imp_UCGGQS
   (ADC_clk_64M,
    B,
    B1,
    U);
  input ADC_clk_64M;
  input [15:0]B;
  input [15:0]B1;
  output [15:0]U;

  wire [15:0]FIR_I_m_axis_data_tdata;
  wire [15:0]FIR_Q_m_axis_data_tdata;
  wire PS_FCLK_CLK1;
  wire [31:0]c_addsub_0_S;
  wire [31:0]mult_gen_0_P;
  wire [31:0]mult_gen_1_P;
  wire [15:0]sqrt32_0_U;

  assign FIR_I_m_axis_data_tdata = B[15:0];
  assign FIR_Q_m_axis_data_tdata = B1[15:0];
  assign PS_FCLK_CLK1 = ADC_clk_64M;
  assign U[15:0] = sqrt32_0_U;
  ebaz4205_mult_gen_0_1 I_square
       (.A(FIR_I_m_axis_data_tdata),
        .B(FIR_I_m_axis_data_tdata),
        .CLK(PS_FCLK_CLK1),
        .P(mult_gen_0_P));
  ebaz4205_mult_gen_1_0 Q_square
       (.A(FIR_Q_m_axis_data_tdata),
        .B(FIR_Q_m_axis_data_tdata),
        .CLK(PS_FCLK_CLK1),
        .P(mult_gen_1_P));
  ebaz4205_c_addsub_0_0 c_addsub_0
       (.A(mult_gen_0_P),
        .B(mult_gen_1_P),
        .CLK(PS_FCLK_CLK1),
        .S(c_addsub_0_S));
  ebaz4205_sqrt32_0_0 sqrt32_0
       (.P(c_addsub_0_S),
        .U(sqrt32_0_U));
endmodule

module ComplexMult_imp_2GTPFV
   (A,
    CLK,
    Din,
    P_cos,
    P_sin);
  input [11:0]A;
  input CLK;
  input [31:0]Din;
  output [15:0]P_cos;
  output [15:0]P_sin;

  wire [11:0]A_1;
  wire CLK_1;
  wire [31:0]LocalOscillator_m_axis_data_tdata;
  wire [15:0]mult_cos_P;
  wire [15:0]mult_sin_P;
  wire [15:0]xlslice_cos_Dout;
  wire [15:0]xlslice_sin_Dout;

  assign A_1 = A[11:0];
  assign CLK_1 = CLK;
  assign LocalOscillator_m_axis_data_tdata = Din[31:0];
  assign P_cos[15:0] = mult_cos_P;
  assign P_sin[15:0] = mult_sin_P;
  ebaz4205_mult_sin_0 mult_cos
       (.A(A_1),
        .B(xlslice_sin_Dout),
        .CLK(CLK_1),
        .P(mult_cos_P));
  ebaz4205_mult_gen_0_0 mult_sin
       (.A(A_1),
        .B(xlslice_cos_Dout),
        .CLK(CLK_1),
        .P(mult_sin_P));
  ebaz4205_xlslice_0_3 xlslice_cos
       (.Din(LocalOscillator_m_axis_data_tdata),
        .Dout(xlslice_cos_Dout));
  ebaz4205_xlslice_sin_0 xlslice_sin
       (.Din(LocalOscillator_m_axis_data_tdata),
        .Dout(xlslice_sin_Dout));
endmodule

module DDC_imp_9GECP5
   (A,
    CLK,
    DDC_I,
    DDC_Q,
    aresetn,
    ctrl_s_axi_araddr,
    ctrl_s_axi_arprot,
    ctrl_s_axi_arready,
    ctrl_s_axi_arvalid,
    ctrl_s_axi_awaddr,
    ctrl_s_axi_awprot,
    ctrl_s_axi_awready,
    ctrl_s_axi_awvalid,
    ctrl_s_axi_bready,
    ctrl_s_axi_bresp,
    ctrl_s_axi_bvalid,
    ctrl_s_axi_rdata,
    ctrl_s_axi_rready,
    ctrl_s_axi_rresp,
    ctrl_s_axi_rvalid,
    ctrl_s_axi_wdata,
    ctrl_s_axi_wready,
    ctrl_s_axi_wstrb,
    ctrl_s_axi_wvalid);
  input [11:0]A;
  input CLK;
  output [15:0]DDC_I;
  output [15:0]DDC_Q;
  input aresetn;
  input [3:0]ctrl_s_axi_araddr;
  input [2:0]ctrl_s_axi_arprot;
  output ctrl_s_axi_arready;
  input ctrl_s_axi_arvalid;
  input [3:0]ctrl_s_axi_awaddr;
  input [2:0]ctrl_s_axi_awprot;
  output ctrl_s_axi_awready;
  input ctrl_s_axi_awvalid;
  input ctrl_s_axi_bready;
  output [1:0]ctrl_s_axi_bresp;
  output ctrl_s_axi_bvalid;
  output [31:0]ctrl_s_axi_rdata;
  input ctrl_s_axi_rready;
  output [1:0]ctrl_s_axi_rresp;
  output ctrl_s_axi_rvalid;
  input [31:0]ctrl_s_axi_wdata;
  output ctrl_s_axi_wready;
  input [3:0]ctrl_s_axi_wstrb;
  input ctrl_s_axi_wvalid;

  wire [11:0]A_1;
  wire CLK_1;
  wire [15:0]ComplexMult_P_cos;
  wire [15:0]ComplexMult_P_sin;
  wire [31:0]LO_m_axis_data_tdata;
  wire aresetn_1;
  wire [3:0]ctrl_s_axi_1_ARADDR;
  wire [2:0]ctrl_s_axi_1_ARPROT;
  wire ctrl_s_axi_1_ARREADY;
  wire ctrl_s_axi_1_ARVALID;
  wire [3:0]ctrl_s_axi_1_AWADDR;
  wire [2:0]ctrl_s_axi_1_AWPROT;
  wire ctrl_s_axi_1_AWREADY;
  wire ctrl_s_axi_1_AWVALID;
  wire ctrl_s_axi_1_BREADY;
  wire [1:0]ctrl_s_axi_1_BRESP;
  wire ctrl_s_axi_1_BVALID;
  wire [31:0]ctrl_s_axi_1_RDATA;
  wire ctrl_s_axi_1_RREADY;
  wire [1:0]ctrl_s_axi_1_RRESP;
  wire ctrl_s_axi_1_RVALID;
  wire [31:0]ctrl_s_axi_1_WDATA;
  wire ctrl_s_axi_1_WREADY;
  wire [3:0]ctrl_s_axi_1_WSTRB;
  wire ctrl_s_axi_1_WVALID;

  assign A_1 = A[11:0];
  assign CLK_1 = CLK;
  assign DDC_I[15:0] = ComplexMult_P_cos;
  assign DDC_Q[15:0] = ComplexMult_P_sin;
  assign aresetn_1 = aresetn;
  assign ctrl_s_axi_1_ARADDR = ctrl_s_axi_araddr[3:0];
  assign ctrl_s_axi_1_ARPROT = ctrl_s_axi_arprot[2:0];
  assign ctrl_s_axi_1_ARVALID = ctrl_s_axi_arvalid;
  assign ctrl_s_axi_1_AWADDR = ctrl_s_axi_awaddr[3:0];
  assign ctrl_s_axi_1_AWPROT = ctrl_s_axi_awprot[2:0];
  assign ctrl_s_axi_1_AWVALID = ctrl_s_axi_awvalid;
  assign ctrl_s_axi_1_BREADY = ctrl_s_axi_bready;
  assign ctrl_s_axi_1_RREADY = ctrl_s_axi_rready;
  assign ctrl_s_axi_1_WDATA = ctrl_s_axi_wdata[31:0];
  assign ctrl_s_axi_1_WSTRB = ctrl_s_axi_wstrb[3:0];
  assign ctrl_s_axi_1_WVALID = ctrl_s_axi_wvalid;
  assign ctrl_s_axi_arready = ctrl_s_axi_1_ARREADY;
  assign ctrl_s_axi_awready = ctrl_s_axi_1_AWREADY;
  assign ctrl_s_axi_bresp[1:0] = ctrl_s_axi_1_BRESP;
  assign ctrl_s_axi_bvalid = ctrl_s_axi_1_BVALID;
  assign ctrl_s_axi_rdata[31:0] = ctrl_s_axi_1_RDATA;
  assign ctrl_s_axi_rresp[1:0] = ctrl_s_axi_1_RRESP;
  assign ctrl_s_axi_rvalid = ctrl_s_axi_1_RVALID;
  assign ctrl_s_axi_wready = ctrl_s_axi_1_WREADY;
  ComplexMult_imp_2GTPFV ComplexMult
       (.A(A_1),
        .CLK(CLK_1),
        .Din(LO_m_axis_data_tdata),
        .P_cos(ComplexMult_P_cos),
        .P_sin(ComplexMult_P_sin));
  LO_imp_1P3EDMO LO
       (.aresetn(aresetn_1),
        .ctrl_s_axi_araddr(ctrl_s_axi_1_ARADDR),
        .ctrl_s_axi_arprot(ctrl_s_axi_1_ARPROT),
        .ctrl_s_axi_arready(ctrl_s_axi_1_ARREADY),
        .ctrl_s_axi_arvalid(ctrl_s_axi_1_ARVALID),
        .ctrl_s_axi_awaddr(ctrl_s_axi_1_AWADDR),
        .ctrl_s_axi_awprot(ctrl_s_axi_1_AWPROT),
        .ctrl_s_axi_awready(ctrl_s_axi_1_AWREADY),
        .ctrl_s_axi_awvalid(ctrl_s_axi_1_AWVALID),
        .ctrl_s_axi_bready(ctrl_s_axi_1_BREADY),
        .ctrl_s_axi_bresp(ctrl_s_axi_1_BRESP),
        .ctrl_s_axi_bvalid(ctrl_s_axi_1_BVALID),
        .ctrl_s_axi_rdata(ctrl_s_axi_1_RDATA),
        .ctrl_s_axi_rready(ctrl_s_axi_1_RREADY),
        .ctrl_s_axi_rresp(ctrl_s_axi_1_RRESP),
        .ctrl_s_axi_rvalid(ctrl_s_axi_1_RVALID),
        .ctrl_s_axi_wdata(ctrl_s_axi_1_WDATA),
        .ctrl_s_axi_wready(ctrl_s_axi_1_WREADY),
        .ctrl_s_axi_wstrb(ctrl_s_axi_1_WSTRB),
        .ctrl_s_axi_wvalid(ctrl_s_axi_1_WVALID),
        .m_axis_data_tdata(LO_m_axis_data_tdata),
        .s_axi_aclk(CLK_1));
endmodule

module FILTER_imp_WBNR09
   (ADC_clk_64M,
    S_AXI1_araddr,
    S_AXI1_arready,
    S_AXI1_arvalid,
    S_AXI1_awaddr,
    S_AXI1_awready,
    S_AXI1_awvalid,
    S_AXI1_bready,
    S_AXI1_bresp,
    S_AXI1_bvalid,
    S_AXI1_rdata,
    S_AXI1_rready,
    S_AXI1_rresp,
    S_AXI1_rvalid,
    S_AXI1_wdata,
    S_AXI1_wready,
    S_AXI1_wstrb,
    S_AXI1_wvalid,
    aclk,
    aresetn,
    aresetn1,
    ctrl_s_axi1_araddr,
    ctrl_s_axi1_arprot,
    ctrl_s_axi1_arready,
    ctrl_s_axi1_arvalid,
    ctrl_s_axi1_awaddr,
    ctrl_s_axi1_awprot,
    ctrl_s_axi1_awready,
    ctrl_s_axi1_awvalid,
    ctrl_s_axi1_bready,
    ctrl_s_axi1_bresp,
    ctrl_s_axi1_bvalid,
    ctrl_s_axi1_rdata,
    ctrl_s_axi1_rready,
    ctrl_s_axi1_rresp,
    ctrl_s_axi1_rvalid,
    ctrl_s_axi1_wdata,
    ctrl_s_axi1_wready,
    ctrl_s_axi1_wstrb,
    ctrl_s_axi1_wvalid,
    ctrl_s_axi_araddr,
    ctrl_s_axi_arprot,
    ctrl_s_axi_arready,
    ctrl_s_axi_arvalid,
    ctrl_s_axi_awaddr,
    ctrl_s_axi_awprot,
    ctrl_s_axi_awready,
    ctrl_s_axi_awvalid,
    ctrl_s_axi_bready,
    ctrl_s_axi_bresp,
    ctrl_s_axi_bvalid,
    ctrl_s_axi_rdata,
    ctrl_s_axi_rready,
    ctrl_s_axi_rresp,
    ctrl_s_axi_rvalid,
    ctrl_s_axi_wdata,
    ctrl_s_axi_wready,
    ctrl_s_axi_wstrb,
    ctrl_s_axi_wvalid,
    m_axis_data_tdata,
    m_axis_data_tdata1,
    s_axis_data_tdata,
    s_axis_data_tdata1,
    s_axis_data_tvalid);
  input ADC_clk_64M;
  input [31:0]S_AXI1_araddr;
  output S_AXI1_arready;
  input S_AXI1_arvalid;
  input [31:0]S_AXI1_awaddr;
  output S_AXI1_awready;
  input S_AXI1_awvalid;
  input S_AXI1_bready;
  output [1:0]S_AXI1_bresp;
  output S_AXI1_bvalid;
  output [31:0]S_AXI1_rdata;
  input S_AXI1_rready;
  output [1:0]S_AXI1_rresp;
  output S_AXI1_rvalid;
  input [31:0]S_AXI1_wdata;
  output S_AXI1_wready;
  input [3:0]S_AXI1_wstrb;
  input S_AXI1_wvalid;
  input aclk;
  input aresetn;
  input aresetn1;
  input [3:0]ctrl_s_axi1_araddr;
  input [2:0]ctrl_s_axi1_arprot;
  output ctrl_s_axi1_arready;
  input ctrl_s_axi1_arvalid;
  input [3:0]ctrl_s_axi1_awaddr;
  input [2:0]ctrl_s_axi1_awprot;
  output ctrl_s_axi1_awready;
  input ctrl_s_axi1_awvalid;
  input ctrl_s_axi1_bready;
  output [1:0]ctrl_s_axi1_bresp;
  output ctrl_s_axi1_bvalid;
  output [31:0]ctrl_s_axi1_rdata;
  input ctrl_s_axi1_rready;
  output [1:0]ctrl_s_axi1_rresp;
  output ctrl_s_axi1_rvalid;
  input [31:0]ctrl_s_axi1_wdata;
  output ctrl_s_axi1_wready;
  input [3:0]ctrl_s_axi1_wstrb;
  input ctrl_s_axi1_wvalid;
  input [3:0]ctrl_s_axi_araddr;
  input [2:0]ctrl_s_axi_arprot;
  output ctrl_s_axi_arready;
  input ctrl_s_axi_arvalid;
  input [3:0]ctrl_s_axi_awaddr;
  input [2:0]ctrl_s_axi_awprot;
  output ctrl_s_axi_awready;
  input ctrl_s_axi_awvalid;
  input ctrl_s_axi_bready;
  output [1:0]ctrl_s_axi_bresp;
  output ctrl_s_axi_bvalid;
  output [31:0]ctrl_s_axi_rdata;
  input ctrl_s_axi_rready;
  output [1:0]ctrl_s_axi_rresp;
  output ctrl_s_axi_rvalid;
  input [31:0]ctrl_s_axi_wdata;
  output ctrl_s_axi_wready;
  input [3:0]ctrl_s_axi_wstrb;
  input ctrl_s_axi_wvalid;
  output [15:0]m_axis_data_tdata;
  output [15:0]m_axis_data_tdata1;
  input [15:0]s_axis_data_tdata;
  input [15:0]s_axis_data_tdata1;
  input s_axis_data_tvalid;

  wire [15:0]CIC_I_128_m_axis_data_tdata;
  wire CIC_I_128_m_axis_data_tvalid;
  wire [15:0]CIC_Q_128_m_axis_data_tdata;
  wire CIC_Q_128_m_axis_data_tvalid;
  wire [3:0]Conn1_ARADDR;
  wire [2:0]Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [3:0]Conn1_AWADDR;
  wire [2:0]Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [3:0]Conn2_ARADDR;
  wire [2:0]Conn2_ARPROT;
  wire Conn2_ARREADY;
  wire Conn2_ARVALID;
  wire [3:0]Conn2_AWADDR;
  wire [2:0]Conn2_AWPROT;
  wire Conn2_AWREADY;
  wire Conn2_AWVALID;
  wire Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire Conn2_BVALID;
  wire [31:0]Conn2_RDATA;
  wire Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire Conn2_RVALID;
  wire [31:0]Conn2_WDATA;
  wire Conn2_WREADY;
  wire [3:0]Conn2_WSTRB;
  wire Conn2_WVALID;
  wire [15:0]DDC_I;
  wire [15:0]DDC_Q;
  wire [15:0]FIR_I_m_axis_data_tdata;
  wire [15:0]FIR_Q_m_axis_data_tdata;
  wire PS_FCLK_CLK1;
  wire [31:0]S_AXI1_1_ARADDR;
  wire S_AXI1_1_ARREADY;
  wire S_AXI1_1_ARVALID;
  wire [31:0]S_AXI1_1_AWADDR;
  wire S_AXI1_1_AWREADY;
  wire S_AXI1_1_AWVALID;
  wire S_AXI1_1_BREADY;
  wire [1:0]S_AXI1_1_BRESP;
  wire S_AXI1_1_BVALID;
  wire [31:0]S_AXI1_1_RDATA;
  wire S_AXI1_1_RREADY;
  wire [1:0]S_AXI1_1_RRESP;
  wire S_AXI1_1_RVALID;
  wire [31:0]S_AXI1_1_WDATA;
  wire S_AXI1_1_WREADY;
  wire [3:0]S_AXI1_1_WSTRB;
  wire S_AXI1_1_WVALID;
  wire aclk_1;
  wire aresetn1_1;
  wire aresetn_1;
  wire [31:0]axi_gpio_FILTER_GAIN_gpio_io_o;
  wire [15:0]axi_interface_DEC_RATE_I_ctrl_m_axis_TDATA;
  wire axi_interface_DEC_RATE_I_ctrl_m_axis_TVALID;
  wire [15:0]axi_interface_DEC_RATE_Q_1_ctrl_m_axis_TDATA;
  wire axi_interface_DEC_RATE_Q_1_ctrl_m_axis_TVALID;
  wire [15:0]mult_by_4_I_P;
  wire [15:0]mult_by_4_Q_P;
  wire s_axis_data_tvalid_1;
  wire [0:0]xlconstant_2_dout;

  assign Conn1_ARADDR = ctrl_s_axi_araddr[3:0];
  assign Conn1_ARPROT = ctrl_s_axi_arprot[2:0];
  assign Conn1_ARVALID = ctrl_s_axi_arvalid;
  assign Conn1_AWADDR = ctrl_s_axi_awaddr[3:0];
  assign Conn1_AWPROT = ctrl_s_axi_awprot[2:0];
  assign Conn1_AWVALID = ctrl_s_axi_awvalid;
  assign Conn1_BREADY = ctrl_s_axi_bready;
  assign Conn1_RREADY = ctrl_s_axi_rready;
  assign Conn1_WDATA = ctrl_s_axi_wdata[31:0];
  assign Conn1_WSTRB = ctrl_s_axi_wstrb[3:0];
  assign Conn1_WVALID = ctrl_s_axi_wvalid;
  assign Conn2_ARADDR = ctrl_s_axi1_araddr[3:0];
  assign Conn2_ARPROT = ctrl_s_axi1_arprot[2:0];
  assign Conn2_ARVALID = ctrl_s_axi1_arvalid;
  assign Conn2_AWADDR = ctrl_s_axi1_awaddr[3:0];
  assign Conn2_AWPROT = ctrl_s_axi1_awprot[2:0];
  assign Conn2_AWVALID = ctrl_s_axi1_awvalid;
  assign Conn2_BREADY = ctrl_s_axi1_bready;
  assign Conn2_RREADY = ctrl_s_axi1_rready;
  assign Conn2_WDATA = ctrl_s_axi1_wdata[31:0];
  assign Conn2_WSTRB = ctrl_s_axi1_wstrb[3:0];
  assign Conn2_WVALID = ctrl_s_axi1_wvalid;
  assign DDC_I = s_axis_data_tdata[15:0];
  assign DDC_Q = s_axis_data_tdata1[15:0];
  assign PS_FCLK_CLK1 = ADC_clk_64M;
  assign S_AXI1_1_ARADDR = S_AXI1_araddr[31:0];
  assign S_AXI1_1_ARVALID = S_AXI1_arvalid;
  assign S_AXI1_1_AWADDR = S_AXI1_awaddr[31:0];
  assign S_AXI1_1_AWVALID = S_AXI1_awvalid;
  assign S_AXI1_1_BREADY = S_AXI1_bready;
  assign S_AXI1_1_RREADY = S_AXI1_rready;
  assign S_AXI1_1_WDATA = S_AXI1_wdata[31:0];
  assign S_AXI1_1_WSTRB = S_AXI1_wstrb[3:0];
  assign S_AXI1_1_WVALID = S_AXI1_wvalid;
  assign S_AXI1_arready = S_AXI1_1_ARREADY;
  assign S_AXI1_awready = S_AXI1_1_AWREADY;
  assign S_AXI1_bresp[1:0] = S_AXI1_1_BRESP;
  assign S_AXI1_bvalid = S_AXI1_1_BVALID;
  assign S_AXI1_rdata[31:0] = S_AXI1_1_RDATA;
  assign S_AXI1_rresp[1:0] = S_AXI1_1_RRESP;
  assign S_AXI1_rvalid = S_AXI1_1_RVALID;
  assign S_AXI1_wready = S_AXI1_1_WREADY;
  assign aclk_1 = aclk;
  assign aresetn1_1 = aresetn1;
  assign aresetn_1 = aresetn;
  assign ctrl_s_axi1_arready = Conn2_ARREADY;
  assign ctrl_s_axi1_awready = Conn2_AWREADY;
  assign ctrl_s_axi1_bresp[1:0] = Conn2_BRESP;
  assign ctrl_s_axi1_bvalid = Conn2_BVALID;
  assign ctrl_s_axi1_rdata[31:0] = Conn2_RDATA;
  assign ctrl_s_axi1_rresp[1:0] = Conn2_RRESP;
  assign ctrl_s_axi1_rvalid = Conn2_RVALID;
  assign ctrl_s_axi1_wready = Conn2_WREADY;
  assign ctrl_s_axi_arready = Conn1_ARREADY;
  assign ctrl_s_axi_awready = Conn1_AWREADY;
  assign ctrl_s_axi_bresp[1:0] = Conn1_BRESP;
  assign ctrl_s_axi_bvalid = Conn1_BVALID;
  assign ctrl_s_axi_rdata[31:0] = Conn1_RDATA;
  assign ctrl_s_axi_rresp[1:0] = Conn1_RRESP;
  assign ctrl_s_axi_rvalid = Conn1_RVALID;
  assign ctrl_s_axi_wready = Conn1_WREADY;
  assign m_axis_data_tdata[15:0] = FIR_Q_m_axis_data_tdata;
  assign m_axis_data_tdata1[15:0] = FIR_I_m_axis_data_tdata;
  assign s_axis_data_tvalid_1 = s_axis_data_tvalid;
  ebaz4205_cic_compiler_0_0 CIC_I_1024
       (.aclk(PS_FCLK_CLK1),
        .m_axis_data_tdata(CIC_I_128_m_axis_data_tdata),
        .m_axis_data_tvalid(CIC_I_128_m_axis_data_tvalid),
        .s_axis_config_tdata(axi_interface_DEC_RATE_Q_1_ctrl_m_axis_TDATA),
        .s_axis_config_tvalid(axi_interface_DEC_RATE_Q_1_ctrl_m_axis_TVALID),
        .s_axis_data_tdata(DDC_I),
        .s_axis_data_tvalid(s_axis_data_tvalid_1));
  ebaz4205_cic_compiler_0_1 CIC_Q_1024
       (.aclk(PS_FCLK_CLK1),
        .m_axis_data_tdata(CIC_Q_128_m_axis_data_tdata),
        .m_axis_data_tvalid(CIC_Q_128_m_axis_data_tvalid),
        .s_axis_config_tdata(axi_interface_DEC_RATE_I_ctrl_m_axis_TDATA),
        .s_axis_config_tvalid(axi_interface_DEC_RATE_I_ctrl_m_axis_TVALID),
        .s_axis_data_tdata(DDC_Q),
        .s_axis_data_tvalid(s_axis_data_tvalid_1));
  ebaz4205_fir_compiler_0_0 FIR_I_2
       (.aclk(PS_FCLK_CLK1),
        .m_axis_data_tdata(FIR_I_m_axis_data_tdata),
        .s_axis_data_tdata(mult_by_4_Q_P),
        .s_axis_data_tvalid(CIC_I_128_m_axis_data_tvalid));
  ebaz4205_fir_compiler_0_1 FIR_Q_2
       (.aclk(PS_FCLK_CLK1),
        .m_axis_data_tdata(FIR_Q_m_axis_data_tdata),
        .s_axis_data_tdata(mult_by_4_I_P),
        .s_axis_data_tvalid(CIC_Q_128_m_axis_data_tvalid));
  ebaz4205_axi_gpio_0_1 axi_gpio_FILTER_GAIN
       (.gpio_io_o(axi_gpio_FILTER_GAIN_gpio_io_o),
        .s_axi_aclk(aclk_1),
        .s_axi_araddr(S_AXI1_1_ARADDR[8:0]),
        .s_axi_aresetn(aresetn1_1),
        .s_axi_arready(S_AXI1_1_ARREADY),
        .s_axi_arvalid(S_AXI1_1_ARVALID),
        .s_axi_awaddr(S_AXI1_1_AWADDR[8:0]),
        .s_axi_awready(S_AXI1_1_AWREADY),
        .s_axi_awvalid(S_AXI1_1_AWVALID),
        .s_axi_bready(S_AXI1_1_BREADY),
        .s_axi_bresp(S_AXI1_1_BRESP),
        .s_axi_bvalid(S_AXI1_1_BVALID),
        .s_axi_rdata(S_AXI1_1_RDATA),
        .s_axi_rready(S_AXI1_1_RREADY),
        .s_axi_rresp(S_AXI1_1_RRESP),
        .s_axi_rvalid(S_AXI1_1_RVALID),
        .s_axi_wdata(S_AXI1_1_WDATA),
        .s_axi_wready(S_AXI1_1_WREADY),
        .s_axi_wstrb(S_AXI1_1_WSTRB),
        .s_axi_wvalid(S_AXI1_1_WVALID));
  ebaz4205_axi_interface_DEC_RATE_Q_0 axi_interface_DEC_RATE_I
       (.ctrl_m_axis_aclk(PS_FCLK_CLK1),
        .ctrl_m_axis_aresetn(aresetn_1),
        .ctrl_m_axis_tdata(axi_interface_DEC_RATE_Q_1_ctrl_m_axis_TDATA),
        .ctrl_m_axis_tvalid(axi_interface_DEC_RATE_Q_1_ctrl_m_axis_TVALID),
        .ctrl_s_axi_aclk(PS_FCLK_CLK1),
        .ctrl_s_axi_araddr(Conn2_ARADDR),
        .ctrl_s_axi_aresetn(aresetn_1),
        .ctrl_s_axi_arprot(Conn2_ARPROT),
        .ctrl_s_axi_arready(Conn2_ARREADY),
        .ctrl_s_axi_arvalid(Conn2_ARVALID),
        .ctrl_s_axi_awaddr(Conn2_AWADDR),
        .ctrl_s_axi_awprot(Conn2_AWPROT),
        .ctrl_s_axi_awready(Conn2_AWREADY),
        .ctrl_s_axi_awvalid(Conn2_AWVALID),
        .ctrl_s_axi_bready(Conn2_BREADY),
        .ctrl_s_axi_bresp(Conn2_BRESP),
        .ctrl_s_axi_bvalid(Conn2_BVALID),
        .ctrl_s_axi_rdata(Conn2_RDATA),
        .ctrl_s_axi_rready(Conn2_RREADY),
        .ctrl_s_axi_rresp(Conn2_RRESP),
        .ctrl_s_axi_rvalid(Conn2_RVALID),
        .ctrl_s_axi_wdata(Conn2_WDATA),
        .ctrl_s_axi_wready(Conn2_WREADY),
        .ctrl_s_axi_wstrb(Conn2_WSTRB),
        .ctrl_s_axi_wvalid(Conn2_WVALID));
  ebaz4205_dds_axi_interface_0_1 axi_interface_DEC_RATE_Q
       (.ctrl_m_axis_aclk(PS_FCLK_CLK1),
        .ctrl_m_axis_aresetn(xlconstant_2_dout),
        .ctrl_m_axis_tdata(axi_interface_DEC_RATE_I_ctrl_m_axis_TDATA),
        .ctrl_m_axis_tvalid(axi_interface_DEC_RATE_I_ctrl_m_axis_TVALID),
        .ctrl_s_axi_aclk(PS_FCLK_CLK1),
        .ctrl_s_axi_araddr(Conn1_ARADDR),
        .ctrl_s_axi_aresetn(aresetn_1),
        .ctrl_s_axi_arprot(Conn1_ARPROT),
        .ctrl_s_axi_arready(Conn1_ARREADY),
        .ctrl_s_axi_arvalid(Conn1_ARVALID),
        .ctrl_s_axi_awaddr(Conn1_AWADDR),
        .ctrl_s_axi_awprot(Conn1_AWPROT),
        .ctrl_s_axi_awready(Conn1_AWREADY),
        .ctrl_s_axi_awvalid(Conn1_AWVALID),
        .ctrl_s_axi_bready(Conn1_BREADY),
        .ctrl_s_axi_bresp(Conn1_BRESP),
        .ctrl_s_axi_bvalid(Conn1_BVALID),
        .ctrl_s_axi_rdata(Conn1_RDATA),
        .ctrl_s_axi_rready(Conn1_RREADY),
        .ctrl_s_axi_rresp(Conn1_RRESP),
        .ctrl_s_axi_rvalid(Conn1_RVALID),
        .ctrl_s_axi_wdata(Conn1_WDATA),
        .ctrl_s_axi_wready(Conn1_WREADY),
        .ctrl_s_axi_wstrb(Conn1_WSTRB),
        .ctrl_s_axi_wvalid(Conn1_WVALID));
  ebaz4205_mult_gen_0_3 mult_by_GAIN_I
       (.A(CIC_Q_128_m_axis_data_tdata),
        .B(axi_gpio_FILTER_GAIN_gpio_io_o),
        .P(mult_by_4_I_P));
  ebaz4205_mult_by_4_0 mult_by_GAIN_Q
       (.A(CIC_I_128_m_axis_data_tdata),
        .B(axi_gpio_FILTER_GAIN_gpio_io_o),
        .P(mult_by_4_Q_P));
  ebaz4205_xlconstant_2_2 xlconstant_2
       (.dout(xlconstant_2_dout));
endmodule

module I2S_imp_1GQSHGG
   (I2SDATA,
    LRCLK,
    SCLK,
    s00_axis_aclk,
    s00_axis_aresetn);
  output I2SDATA;
  output LRCLK;
  output SCLK;
  input s00_axis_aclk;
  input s00_axis_aresetn;

  wire DivideBy10_clk_out;
  wire I2S_Transmitter_0_bclk;
  wire I2S_Transmitter_0_lrclk;
  wire I2S_Transmitter_0_sdata;
  wire PS_ARESETN;
  wire PS_FCLK_CLK0;
  wire [31:0]dds_compiler_0_M_AXIS_DATA_TDATA;
  wire dds_compiler_0_M_AXIS_DATA_TVALID;

  assign I2SDATA = I2S_Transmitter_0_sdata;
  assign LRCLK = I2S_Transmitter_0_lrclk;
  assign PS_ARESETN = s00_axis_aresetn;
  assign PS_FCLK_CLK0 = s00_axis_aclk;
  assign SCLK = I2S_Transmitter_0_bclk;
  ebaz4205_DivideBy2N_0_0 DivideBy10
       (.clk(PS_FCLK_CLK0),
        .clk_out(DivideBy10_clk_out),
        .resetn(PS_ARESETN));
  ebaz4205_I2S_Transmitter_0_1 I2S_Transmitter_0
       (.bclk(I2S_Transmitter_0_bclk),
        .lrclk(I2S_Transmitter_0_lrclk),
        .mclk(DivideBy10_clk_out),
        .s00_axis_aclk(PS_FCLK_CLK0),
        .s00_axis_aresetn(PS_ARESETN),
        .s00_axis_tdata(dds_compiler_0_M_AXIS_DATA_TDATA),
        .s00_axis_tlast(1'b0),
        .s00_axis_tstrb({1'b1,1'b1,1'b1,1'b1}),
        .s00_axis_tvalid(dds_compiler_0_M_AXIS_DATA_TVALID),
        .sdata(I2S_Transmitter_0_sdata));
  ebaz4205_dds_compiler_0_1 dds_compiler_1KHz_sin_cos
       (.aclk(PS_FCLK_CLK0),
        .m_axis_data_tdata(dds_compiler_0_M_AXIS_DATA_TDATA),
        .m_axis_data_tvalid(dds_compiler_0_M_AXIS_DATA_TVALID));
endmodule

module LEDdriver_imp_DEC1BF
   (LED,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    s_axi_aclk);
  output [1:0]LED;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input s_axi_aclk;

  wire PS_FCLK_CLK0;
  wire [31:0]PS_M02_AXI_ARADDR;
  wire PS_M02_AXI_ARREADY;
  wire PS_M02_AXI_ARVALID;
  wire [31:0]PS_M02_AXI_AWADDR;
  wire PS_M02_AXI_AWREADY;
  wire PS_M02_AXI_AWVALID;
  wire PS_M02_AXI_BREADY;
  wire [1:0]PS_M02_AXI_BRESP;
  wire PS_M02_AXI_BVALID;
  wire [31:0]PS_M02_AXI_RDATA;
  wire PS_M02_AXI_RREADY;
  wire [1:0]PS_M02_AXI_RRESP;
  wire PS_M02_AXI_RVALID;
  wire [31:0]PS_M02_AXI_WDATA;
  wire PS_M02_AXI_WREADY;
  wire [3:0]PS_M02_AXI_WSTRB;
  wire PS_M02_AXI_WVALID;
  wire [0:0]axi_gpio_0_gpio_io_o;
  wire [1:0]xlconcat_0_dout;

  assign LED[1:0] = xlconcat_0_dout;
  assign PS_FCLK_CLK0 = s_axi_aclk;
  assign PS_M02_AXI_ARADDR = S_AXI_araddr[31:0];
  assign PS_M02_AXI_ARVALID = S_AXI_arvalid;
  assign PS_M02_AXI_AWADDR = S_AXI_awaddr[31:0];
  assign PS_M02_AXI_AWVALID = S_AXI_awvalid;
  assign PS_M02_AXI_BREADY = S_AXI_bready;
  assign PS_M02_AXI_RREADY = S_AXI_rready;
  assign PS_M02_AXI_WDATA = S_AXI_wdata[31:0];
  assign PS_M02_AXI_WSTRB = S_AXI_wstrb[3:0];
  assign PS_M02_AXI_WVALID = S_AXI_wvalid;
  assign S_AXI_arready = PS_M02_AXI_ARREADY;
  assign S_AXI_awready = PS_M02_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = PS_M02_AXI_BRESP;
  assign S_AXI_bvalid = PS_M02_AXI_BVALID;
  assign S_AXI_rdata[31:0] = PS_M02_AXI_RDATA;
  assign S_AXI_rresp[1:0] = PS_M02_AXI_RRESP;
  assign S_AXI_rvalid = PS_M02_AXI_RVALID;
  assign S_AXI_wready = PS_M02_AXI_WREADY;
  ebaz4205_axi_gpio_0_0 axi_gpio_0
       (.gpio_io_i(1'b0),
        .gpio_io_o(axi_gpio_0_gpio_io_o),
        .s_axi_aclk(PS_FCLK_CLK0),
        .s_axi_araddr(PS_M02_AXI_ARADDR[8:0]),
        .s_axi_aresetn(1'b1),
        .s_axi_arready(PS_M02_AXI_ARREADY),
        .s_axi_arvalid(PS_M02_AXI_ARVALID),
        .s_axi_awaddr(PS_M02_AXI_AWADDR[8:0]),
        .s_axi_awready(PS_M02_AXI_AWREADY),
        .s_axi_awvalid(PS_M02_AXI_AWVALID),
        .s_axi_bready(PS_M02_AXI_BREADY),
        .s_axi_bresp(PS_M02_AXI_BRESP),
        .s_axi_bvalid(PS_M02_AXI_BVALID),
        .s_axi_rdata(PS_M02_AXI_RDATA),
        .s_axi_rready(PS_M02_AXI_RREADY),
        .s_axi_rresp(PS_M02_AXI_RRESP),
        .s_axi_rvalid(PS_M02_AXI_RVALID),
        .s_axi_wdata(PS_M02_AXI_WDATA),
        .s_axi_wready(PS_M02_AXI_WREADY),
        .s_axi_wstrb(PS_M02_AXI_WSTRB),
        .s_axi_wvalid(PS_M02_AXI_WVALID));
  ebaz4205_xlconcat_0_1 xlconcat_0
       (.In0(axi_gpio_0_gpio_io_o),
        .In1(1'b0),
        .dout(xlconcat_0_dout));
endmodule

module LO_imp_1P3EDMO
   (aresetn,
    ctrl_s_axi_araddr,
    ctrl_s_axi_arprot,
    ctrl_s_axi_arready,
    ctrl_s_axi_arvalid,
    ctrl_s_axi_awaddr,
    ctrl_s_axi_awprot,
    ctrl_s_axi_awready,
    ctrl_s_axi_awvalid,
    ctrl_s_axi_bready,
    ctrl_s_axi_bresp,
    ctrl_s_axi_bvalid,
    ctrl_s_axi_rdata,
    ctrl_s_axi_rready,
    ctrl_s_axi_rresp,
    ctrl_s_axi_rvalid,
    ctrl_s_axi_wdata,
    ctrl_s_axi_wready,
    ctrl_s_axi_wstrb,
    ctrl_s_axi_wvalid,
    m_axis_data_tdata,
    s_axi_aclk);
  input aresetn;
  input [3:0]ctrl_s_axi_araddr;
  input [2:0]ctrl_s_axi_arprot;
  output ctrl_s_axi_arready;
  input ctrl_s_axi_arvalid;
  input [3:0]ctrl_s_axi_awaddr;
  input [2:0]ctrl_s_axi_awprot;
  output ctrl_s_axi_awready;
  input ctrl_s_axi_awvalid;
  input ctrl_s_axi_bready;
  output [1:0]ctrl_s_axi_bresp;
  output ctrl_s_axi_bvalid;
  output [31:0]ctrl_s_axi_rdata;
  input ctrl_s_axi_rready;
  output [1:0]ctrl_s_axi_rresp;
  output ctrl_s_axi_rvalid;
  input [31:0]ctrl_s_axi_wdata;
  output ctrl_s_axi_wready;
  input [3:0]ctrl_s_axi_wstrb;
  input ctrl_s_axi_wvalid;
  output [31:0]m_axis_data_tdata;
  input s_axi_aclk;

  wire [3:0]Conn2_ARADDR;
  wire [2:0]Conn2_ARPROT;
  wire Conn2_ARREADY;
  wire Conn2_ARVALID;
  wire [3:0]Conn2_AWADDR;
  wire [2:0]Conn2_AWPROT;
  wire Conn2_AWREADY;
  wire Conn2_AWVALID;
  wire Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire Conn2_BVALID;
  wire [31:0]Conn2_RDATA;
  wire Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire Conn2_RVALID;
  wire [31:0]Conn2_WDATA;
  wire Conn2_WREADY;
  wire [3:0]Conn2_WSTRB;
  wire Conn2_WVALID;
  wire [31:0]LocalOscillator_m_axis_data_tdata;
  wire aresetn_1;
  wire [31:0]dds_axi_interface_0_ctrl_m_axis_TDATA;
  wire dds_axi_interface_0_ctrl_m_axis_TVALID;
  wire s_axi_aclk_1;
  wire [0:0]xlconstant_2_dout;

  assign Conn2_ARADDR = ctrl_s_axi_araddr[3:0];
  assign Conn2_ARPROT = ctrl_s_axi_arprot[2:0];
  assign Conn2_ARVALID = ctrl_s_axi_arvalid;
  assign Conn2_AWADDR = ctrl_s_axi_awaddr[3:0];
  assign Conn2_AWPROT = ctrl_s_axi_awprot[2:0];
  assign Conn2_AWVALID = ctrl_s_axi_awvalid;
  assign Conn2_BREADY = ctrl_s_axi_bready;
  assign Conn2_RREADY = ctrl_s_axi_rready;
  assign Conn2_WDATA = ctrl_s_axi_wdata[31:0];
  assign Conn2_WSTRB = ctrl_s_axi_wstrb[3:0];
  assign Conn2_WVALID = ctrl_s_axi_wvalid;
  assign aresetn_1 = aresetn;
  assign ctrl_s_axi_arready = Conn2_ARREADY;
  assign ctrl_s_axi_awready = Conn2_AWREADY;
  assign ctrl_s_axi_bresp[1:0] = Conn2_BRESP;
  assign ctrl_s_axi_bvalid = Conn2_BVALID;
  assign ctrl_s_axi_rdata[31:0] = Conn2_RDATA;
  assign ctrl_s_axi_rresp[1:0] = Conn2_RRESP;
  assign ctrl_s_axi_rvalid = Conn2_RVALID;
  assign ctrl_s_axi_wready = Conn2_WREADY;
  assign m_axis_data_tdata[31:0] = LocalOscillator_m_axis_data_tdata;
  assign s_axi_aclk_1 = s_axi_aclk;
  ebaz4205_RF_test_1MHz_0 DDS_LO
       (.aclk(s_axi_aclk_1),
        .m_axis_data_tdata(LocalOscillator_m_axis_data_tdata),
        .s_axis_config_tdata(dds_axi_interface_0_ctrl_m_axis_TDATA),
        .s_axis_config_tvalid(dds_axi_interface_0_ctrl_m_axis_TVALID));
  ebaz4205_dds_axi_interface_0_0 DDS_LO_axi_interface
       (.ctrl_m_axis_aclk(s_axi_aclk_1),
        .ctrl_m_axis_aresetn(xlconstant_2_dout),
        .ctrl_m_axis_tdata(dds_axi_interface_0_ctrl_m_axis_TDATA),
        .ctrl_m_axis_tvalid(dds_axi_interface_0_ctrl_m_axis_TVALID),
        .ctrl_s_axi_aclk(s_axi_aclk_1),
        .ctrl_s_axi_araddr(Conn2_ARADDR),
        .ctrl_s_axi_aresetn(aresetn_1),
        .ctrl_s_axi_arprot(Conn2_ARPROT),
        .ctrl_s_axi_arready(Conn2_ARREADY),
        .ctrl_s_axi_arvalid(Conn2_ARVALID),
        .ctrl_s_axi_awaddr(Conn2_AWADDR),
        .ctrl_s_axi_awprot(Conn2_AWPROT),
        .ctrl_s_axi_awready(Conn2_AWREADY),
        .ctrl_s_axi_awvalid(Conn2_AWVALID),
        .ctrl_s_axi_bready(Conn2_BREADY),
        .ctrl_s_axi_bresp(Conn2_BRESP),
        .ctrl_s_axi_bvalid(Conn2_BVALID),
        .ctrl_s_axi_rdata(Conn2_RDATA),
        .ctrl_s_axi_rready(Conn2_RREADY),
        .ctrl_s_axi_rresp(Conn2_RRESP),
        .ctrl_s_axi_rvalid(Conn2_RVALID),
        .ctrl_s_axi_wdata(Conn2_WDATA),
        .ctrl_s_axi_wready(Conn2_WREADY),
        .ctrl_s_axi_wstrb(Conn2_WSTRB),
        .ctrl_s_axi_wvalid(Conn2_WVALID));
  ebaz4205_xlconstant_2_1 xlconstant_2
       (.dout(xlconstant_2_dout));
endmodule

module PS_imp_1B1U9UK
   (ARESETN,
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
    ENET0_GMII_RX_CLK_0,
    ENET0_GMII_RX_DV_0,
    ENET0_GMII_TX_CLK_0,
    ENET0_GMII_TX_EN_0,
    FCLK_CLK0_100M,
    FCLK_CLK1_64M,
    FCLK_CLK3_25M,
    FCLK_RESET0_N,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arprot,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awprot,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_AXI_araddr,
    M05_AXI_arprot,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awprot,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wvalid,
    M07_AXI_araddr,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wvalid,
    M08_AXI_araddr,
    M08_AXI_arprot,
    M08_AXI_arready,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awprot,
    M08_AXI_awready,
    M08_AXI_awvalid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    M09_AXI_araddr,
    M09_AXI_arready,
    M09_AXI_arvalid,
    M09_AXI_awaddr,
    M09_AXI_awready,
    M09_AXI_awvalid,
    M09_AXI_bready,
    M09_AXI_bresp,
    M09_AXI_bvalid,
    M09_AXI_rdata,
    M09_AXI_rready,
    M09_AXI_rresp,
    M09_AXI_rvalid,
    M09_AXI_wdata,
    M09_AXI_wready,
    M09_AXI_wstrb,
    M09_AXI_wvalid,
    MDIO_ETHERNET_0_0_mdc,
    MDIO_ETHERNET_0_0_mdio_i,
    MDIO_ETHERNET_0_0_mdio_o,
    MDIO_ETHERNET_0_0_mdio_t,
    S_AXI_HP0_araddr,
    S_AXI_HP0_arburst,
    S_AXI_HP0_arcache,
    S_AXI_HP0_arid,
    S_AXI_HP0_arlen,
    S_AXI_HP0_arlock,
    S_AXI_HP0_arprot,
    S_AXI_HP0_arqos,
    S_AXI_HP0_arready,
    S_AXI_HP0_arsize,
    S_AXI_HP0_arvalid,
    S_AXI_HP0_awaddr,
    S_AXI_HP0_awburst,
    S_AXI_HP0_awcache,
    S_AXI_HP0_awid,
    S_AXI_HP0_awlen,
    S_AXI_HP0_awlock,
    S_AXI_HP0_awprot,
    S_AXI_HP0_awqos,
    S_AXI_HP0_awready,
    S_AXI_HP0_awsize,
    S_AXI_HP0_awvalid,
    S_AXI_HP0_bid,
    S_AXI_HP0_bready,
    S_AXI_HP0_bresp,
    S_AXI_HP0_bvalid,
    S_AXI_HP0_rdata,
    S_AXI_HP0_rid,
    S_AXI_HP0_rlast,
    S_AXI_HP0_rready,
    S_AXI_HP0_rresp,
    S_AXI_HP0_rvalid,
    S_AXI_HP0_wdata,
    S_AXI_HP0_wid,
    S_AXI_HP0_wlast,
    S_AXI_HP0_wready,
    S_AXI_HP0_wstrb,
    S_AXI_HP0_wvalid,
    enet0_gmii_rxd,
    enet0_gmii_txd,
    peripheral_reset);
  output [0:0]ARESETN;
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
  input ENET0_GMII_RX_CLK_0;
  input ENET0_GMII_RX_DV_0;
  input ENET0_GMII_TX_CLK_0;
  output [0:0]ENET0_GMII_TX_EN_0;
  output FCLK_CLK0_100M;
  output FCLK_CLK1_64M;
  output FCLK_CLK3_25M;
  output FCLK_RESET0_N;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output [31:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  output [3:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [3:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  output [31:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  output [31:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ARESETN;
  output [3:0]M04_AXI_araddr;
  output [2:0]M04_AXI_arprot;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [3:0]M04_AXI_awaddr;
  output [2:0]M04_AXI_awprot;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  output [3:0]M05_AXI_araddr;
  output [2:0]M05_AXI_arprot;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [3:0]M05_AXI_awaddr;
  output [2:0]M05_AXI_awprot;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  output [15:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [15:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output M06_AXI_wvalid;
  output [15:0]M07_AXI_araddr;
  input M07_AXI_arready;
  output M07_AXI_arvalid;
  output [15:0]M07_AXI_awaddr;
  input M07_AXI_awready;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input M07_AXI_wready;
  output M07_AXI_wvalid;
  output [3:0]M08_AXI_araddr;
  output [2:0]M08_AXI_arprot;
  input M08_AXI_arready;
  output M08_AXI_arvalid;
  output [3:0]M08_AXI_awaddr;
  output [2:0]M08_AXI_awprot;
  input M08_AXI_awready;
  output M08_AXI_awvalid;
  output M08_AXI_bready;
  input [1:0]M08_AXI_bresp;
  input M08_AXI_bvalid;
  input [31:0]M08_AXI_rdata;
  output M08_AXI_rready;
  input [1:0]M08_AXI_rresp;
  input M08_AXI_rvalid;
  output [31:0]M08_AXI_wdata;
  input M08_AXI_wready;
  output [3:0]M08_AXI_wstrb;
  output M08_AXI_wvalid;
  output [31:0]M09_AXI_araddr;
  input M09_AXI_arready;
  output M09_AXI_arvalid;
  output [31:0]M09_AXI_awaddr;
  input M09_AXI_awready;
  output M09_AXI_awvalid;
  output M09_AXI_bready;
  input [1:0]M09_AXI_bresp;
  input M09_AXI_bvalid;
  input [31:0]M09_AXI_rdata;
  output M09_AXI_rready;
  input [1:0]M09_AXI_rresp;
  input M09_AXI_rvalid;
  output [31:0]M09_AXI_wdata;
  input M09_AXI_wready;
  output [3:0]M09_AXI_wstrb;
  output M09_AXI_wvalid;
  output MDIO_ETHERNET_0_0_mdc;
  input MDIO_ETHERNET_0_0_mdio_i;
  output MDIO_ETHERNET_0_0_mdio_o;
  output MDIO_ETHERNET_0_0_mdio_t;
  input S_AXI_HP0_araddr;
  input S_AXI_HP0_arburst;
  input S_AXI_HP0_arcache;
  input S_AXI_HP0_arid;
  input S_AXI_HP0_arlen;
  input S_AXI_HP0_arlock;
  input S_AXI_HP0_arprot;
  input S_AXI_HP0_arqos;
  output S_AXI_HP0_arready;
  input S_AXI_HP0_arsize;
  input S_AXI_HP0_arvalid;
  input S_AXI_HP0_awaddr;
  input S_AXI_HP0_awburst;
  input S_AXI_HP0_awcache;
  input S_AXI_HP0_awid;
  input S_AXI_HP0_awlen;
  input S_AXI_HP0_awlock;
  input S_AXI_HP0_awprot;
  input S_AXI_HP0_awqos;
  output S_AXI_HP0_awready;
  input S_AXI_HP0_awsize;
  input S_AXI_HP0_awvalid;
  output S_AXI_HP0_bid;
  input S_AXI_HP0_bready;
  output S_AXI_HP0_bresp;
  output S_AXI_HP0_bvalid;
  output S_AXI_HP0_rdata;
  output S_AXI_HP0_rid;
  output S_AXI_HP0_rlast;
  input S_AXI_HP0_rready;
  output S_AXI_HP0_rresp;
  output S_AXI_HP0_rvalid;
  input S_AXI_HP0_wdata;
  input S_AXI_HP0_wid;
  input S_AXI_HP0_wlast;
  output S_AXI_HP0_wready;
  input S_AXI_HP0_wstrb;
  input S_AXI_HP0_wvalid;
  input [3:0]enet0_gmii_rxd;
  output [3:0]enet0_gmii_txd;
  output [0:0]peripheral_reset;

  wire [3:0]Conn1_ARADDR;
  wire [2:0]Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [3:0]Conn1_AWADDR;
  wire [2:0]Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [31:0]Conn2_ARADDR;
  wire Conn2_ARREADY;
  wire Conn2_ARVALID;
  wire [31:0]Conn2_AWADDR;
  wire Conn2_AWREADY;
  wire Conn2_AWVALID;
  wire Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire Conn2_BVALID;
  wire [31:0]Conn2_RDATA;
  wire Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire Conn2_RVALID;
  wire [31:0]Conn2_WDATA;
  wire Conn2_WREADY;
  wire [3:0]Conn2_WSTRB;
  wire Conn2_WVALID;
  wire Conn3_ARADDR;
  wire Conn3_ARBURST;
  wire Conn3_ARCACHE;
  wire Conn3_ARID;
  wire Conn3_ARLEN;
  wire Conn3_ARLOCK;
  wire Conn3_ARPROT;
  wire Conn3_ARQOS;
  wire Conn3_ARREADY;
  wire Conn3_ARSIZE;
  wire Conn3_ARVALID;
  wire Conn3_AWADDR;
  wire Conn3_AWBURST;
  wire Conn3_AWCACHE;
  wire Conn3_AWID;
  wire Conn3_AWLEN;
  wire Conn3_AWLOCK;
  wire Conn3_AWPROT;
  wire Conn3_AWQOS;
  wire Conn3_AWREADY;
  wire Conn3_AWSIZE;
  wire Conn3_AWVALID;
  wire [5:0]Conn3_BID;
  wire Conn3_BREADY;
  wire [1:0]Conn3_BRESP;
  wire Conn3_BVALID;
  wire [63:0]Conn3_RDATA;
  wire [5:0]Conn3_RID;
  wire Conn3_RLAST;
  wire Conn3_RREADY;
  wire [1:0]Conn3_RRESP;
  wire Conn3_RVALID;
  wire Conn3_WDATA;
  wire Conn3_WID;
  wire Conn3_WLAST;
  wire Conn3_WREADY;
  wire Conn3_WSTRB;
  wire Conn3_WVALID;
  wire [31:0]Conn4_ARADDR;
  wire Conn4_ARREADY;
  wire Conn4_ARVALID;
  wire [31:0]Conn4_AWADDR;
  wire Conn4_AWREADY;
  wire Conn4_AWVALID;
  wire Conn4_BREADY;
  wire [1:0]Conn4_BRESP;
  wire Conn4_BVALID;
  wire [31:0]Conn4_RDATA;
  wire Conn4_RREADY;
  wire [1:0]Conn4_RRESP;
  wire Conn4_RVALID;
  wire [31:0]Conn4_WDATA;
  wire Conn4_WREADY;
  wire [3:0]Conn4_WSTRB;
  wire Conn4_WVALID;
  wire [3:0]Conn5_ARADDR;
  wire [2:0]Conn5_ARPROT;
  wire Conn5_ARREADY;
  wire Conn5_ARVALID;
  wire [3:0]Conn5_AWADDR;
  wire [2:0]Conn5_AWPROT;
  wire Conn5_AWREADY;
  wire Conn5_AWVALID;
  wire Conn5_BREADY;
  wire [1:0]Conn5_BRESP;
  wire Conn5_BVALID;
  wire [31:0]Conn5_RDATA;
  wire Conn5_RREADY;
  wire [1:0]Conn5_RRESP;
  wire Conn5_RVALID;
  wire [31:0]Conn5_WDATA;
  wire Conn5_WREADY;
  wire [3:0]Conn5_WSTRB;
  wire Conn5_WVALID;
  wire [15:0]Conn6_ARADDR;
  wire Conn6_ARREADY;
  wire Conn6_ARVALID;
  wire [15:0]Conn6_AWADDR;
  wire Conn6_AWREADY;
  wire Conn6_AWVALID;
  wire Conn6_BREADY;
  wire [1:0]Conn6_BRESP;
  wire Conn6_BVALID;
  wire [31:0]Conn6_RDATA;
  wire Conn6_RREADY;
  wire [1:0]Conn6_RRESP;
  wire Conn6_RVALID;
  wire [31:0]Conn6_WDATA;
  wire Conn6_WREADY;
  wire Conn6_WVALID;
  wire ENET0_GMII_RX_CLK_0_1;
  wire ENET0_GMII_RX_DV_0_1;
  wire ENET0_GMII_TX_CLK_0_1;
  wire [3:0]In0_0_1;
  wire M04_ARESETN_1;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_reset;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire [7:0]processing_system7_0_ENET0_GMII_TXD;
  wire [0:0]processing_system7_0_ENET0_GMII_TX_EN;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_CLK1;
  wire processing_system7_0_FCLK_CLK3;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire processing_system7_0_MDIO_ETHERNET_0_MDC;
  wire processing_system7_0_MDIO_ETHERNET_0_MDIO_I;
  wire processing_system7_0_MDIO_ETHERNET_0_MDIO_O;
  wire processing_system7_0_MDIO_ETHERNET_0_MDIO_T;
  wire [31:0]processing_system7_0_M_AXI_GP0_ARADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_ARID;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARQOS;
  wire [0:0]processing_system7_0_M_AXI_GP0_ARREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARSIZE;
  wire processing_system7_0_M_AXI_GP0_ARVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_AWADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_AWID;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWQOS;
  wire [0:0]processing_system7_0_M_AXI_GP0_AWREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWSIZE;
  wire processing_system7_0_M_AXI_GP0_AWVALID;
  wire [11:0]processing_system7_0_M_AXI_GP0_BID;
  wire processing_system7_0_M_AXI_GP0_BREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_BRESP;
  wire [0:0]processing_system7_0_M_AXI_GP0_BVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_RDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_RID;
  wire processing_system7_0_M_AXI_GP0_RLAST;
  wire processing_system7_0_M_AXI_GP0_RREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_RRESP;
  wire [0:0]processing_system7_0_M_AXI_GP0_RVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_WDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_WID;
  wire processing_system7_0_M_AXI_GP0_WLAST;
  wire [0:0]processing_system7_0_M_AXI_GP0_WREADY;
  wire [3:0]processing_system7_0_M_AXI_GP0_WSTRB;
  wire processing_system7_0_M_AXI_GP0_WVALID;
  wire [31:0]ps7_axi_periph_M00_AXI_ARADDR;
  wire [2:0]ps7_axi_periph_M00_AXI_ARPROT;
  wire ps7_axi_periph_M00_AXI_ARREADY;
  wire ps7_axi_periph_M00_AXI_ARVALID;
  wire [31:0]ps7_axi_periph_M00_AXI_AWADDR;
  wire [2:0]ps7_axi_periph_M00_AXI_AWPROT;
  wire ps7_axi_periph_M00_AXI_AWREADY;
  wire ps7_axi_periph_M00_AXI_AWVALID;
  wire ps7_axi_periph_M00_AXI_BREADY;
  wire [1:0]ps7_axi_periph_M00_AXI_BRESP;
  wire ps7_axi_periph_M00_AXI_BVALID;
  wire [31:0]ps7_axi_periph_M00_AXI_RDATA;
  wire ps7_axi_periph_M00_AXI_RREADY;
  wire [1:0]ps7_axi_periph_M00_AXI_RRESP;
  wire ps7_axi_periph_M00_AXI_RVALID;
  wire [31:0]ps7_axi_periph_M00_AXI_WDATA;
  wire ps7_axi_periph_M00_AXI_WREADY;
  wire [3:0]ps7_axi_periph_M00_AXI_WSTRB;
  wire ps7_axi_periph_M00_AXI_WVALID;
  wire [3:0]ps7_axi_periph_M04_AXI_ARADDR;
  wire [2:0]ps7_axi_periph_M04_AXI_ARPROT;
  wire ps7_axi_periph_M04_AXI_ARREADY;
  wire ps7_axi_periph_M04_AXI_ARVALID;
  wire [3:0]ps7_axi_periph_M04_AXI_AWADDR;
  wire [2:0]ps7_axi_periph_M04_AXI_AWPROT;
  wire ps7_axi_periph_M04_AXI_AWREADY;
  wire ps7_axi_periph_M04_AXI_AWVALID;
  wire ps7_axi_periph_M04_AXI_BREADY;
  wire [1:0]ps7_axi_periph_M04_AXI_BRESP;
  wire ps7_axi_periph_M04_AXI_BVALID;
  wire [31:0]ps7_axi_periph_M04_AXI_RDATA;
  wire ps7_axi_periph_M04_AXI_RREADY;
  wire [1:0]ps7_axi_periph_M04_AXI_RRESP;
  wire ps7_axi_periph_M04_AXI_RVALID;
  wire [31:0]ps7_axi_periph_M04_AXI_WDATA;
  wire ps7_axi_periph_M04_AXI_WREADY;
  wire [3:0]ps7_axi_periph_M04_AXI_WSTRB;
  wire ps7_axi_periph_M04_AXI_WVALID;
  wire [15:0]ps7_axi_periph_M06_AXI_ARADDR;
  wire ps7_axi_periph_M06_AXI_ARREADY;
  wire ps7_axi_periph_M06_AXI_ARVALID;
  wire [15:0]ps7_axi_periph_M06_AXI_AWADDR;
  wire ps7_axi_periph_M06_AXI_AWREADY;
  wire ps7_axi_periph_M06_AXI_AWVALID;
  wire ps7_axi_periph_M06_AXI_BREADY;
  wire [1:0]ps7_axi_periph_M06_AXI_BRESP;
  wire ps7_axi_periph_M06_AXI_BVALID;
  wire [31:0]ps7_axi_periph_M06_AXI_RDATA;
  wire ps7_axi_periph_M06_AXI_RREADY;
  wire [1:0]ps7_axi_periph_M06_AXI_RRESP;
  wire ps7_axi_periph_M06_AXI_RVALID;
  wire [31:0]ps7_axi_periph_M06_AXI_WDATA;
  wire ps7_axi_periph_M06_AXI_WREADY;
  wire ps7_axi_periph_M06_AXI_WVALID;
  wire [3:0]ps7_axi_periph_M08_AXI_ARADDR;
  wire [2:0]ps7_axi_periph_M08_AXI_ARPROT;
  wire ps7_axi_periph_M08_AXI_ARREADY;
  wire ps7_axi_periph_M08_AXI_ARVALID;
  wire [3:0]ps7_axi_periph_M08_AXI_AWADDR;
  wire [2:0]ps7_axi_periph_M08_AXI_AWPROT;
  wire ps7_axi_periph_M08_AXI_AWREADY;
  wire ps7_axi_periph_M08_AXI_AWVALID;
  wire ps7_axi_periph_M08_AXI_BREADY;
  wire [1:0]ps7_axi_periph_M08_AXI_BRESP;
  wire ps7_axi_periph_M08_AXI_BVALID;
  wire [31:0]ps7_axi_periph_M08_AXI_RDATA;
  wire ps7_axi_periph_M08_AXI_RREADY;
  wire [1:0]ps7_axi_periph_M08_AXI_RRESP;
  wire ps7_axi_periph_M08_AXI_RVALID;
  wire [31:0]ps7_axi_periph_M08_AXI_WDATA;
  wire ps7_axi_periph_M08_AXI_WREADY;
  wire [3:0]ps7_axi_periph_M08_AXI_WSTRB;
  wire ps7_axi_periph_M08_AXI_WVALID;
  wire [31:0]ps7_axi_periph_M09_AXI_ARADDR;
  wire ps7_axi_periph_M09_AXI_ARREADY;
  wire ps7_axi_periph_M09_AXI_ARVALID;
  wire [31:0]ps7_axi_periph_M09_AXI_AWADDR;
  wire ps7_axi_periph_M09_AXI_AWREADY;
  wire ps7_axi_periph_M09_AXI_AWVALID;
  wire ps7_axi_periph_M09_AXI_BREADY;
  wire [1:0]ps7_axi_periph_M09_AXI_BRESP;
  wire ps7_axi_periph_M09_AXI_BVALID;
  wire [31:0]ps7_axi_periph_M09_AXI_RDATA;
  wire ps7_axi_periph_M09_AXI_RREADY;
  wire [1:0]ps7_axi_periph_M09_AXI_RRESP;
  wire ps7_axi_periph_M09_AXI_RVALID;
  wire [31:0]ps7_axi_periph_M09_AXI_WDATA;
  wire ps7_axi_periph_M09_AXI_WREADY;
  wire [3:0]ps7_axi_periph_M09_AXI_WSTRB;
  wire ps7_axi_periph_M09_AXI_WVALID;
  wire [7:0]xlconcat_0_dout;
  wire [3:0]xlslice_0_Dout;

  assign ARESETN[0] = proc_sys_reset_0_peripheral_aresetn;
  assign Conn1_ARREADY = M01_AXI_arready;
  assign Conn1_AWREADY = M01_AXI_awready;
  assign Conn1_BRESP = M01_AXI_bresp[1:0];
  assign Conn1_BVALID = M01_AXI_bvalid;
  assign Conn1_RDATA = M01_AXI_rdata[31:0];
  assign Conn1_RRESP = M01_AXI_rresp[1:0];
  assign Conn1_RVALID = M01_AXI_rvalid;
  assign Conn1_WREADY = M01_AXI_wready;
  assign Conn2_ARREADY = M02_AXI_arready;
  assign Conn2_AWREADY = M02_AXI_awready;
  assign Conn2_BRESP = M02_AXI_bresp[1:0];
  assign Conn2_BVALID = M02_AXI_bvalid;
  assign Conn2_RDATA = M02_AXI_rdata[31:0];
  assign Conn2_RRESP = M02_AXI_rresp[1:0];
  assign Conn2_RVALID = M02_AXI_rvalid;
  assign Conn2_WREADY = M02_AXI_wready;
  assign Conn3_ARADDR = S_AXI_HP0_araddr;
  assign Conn3_ARBURST = S_AXI_HP0_arburst;
  assign Conn3_ARCACHE = S_AXI_HP0_arcache;
  assign Conn3_ARID = S_AXI_HP0_arid;
  assign Conn3_ARLEN = S_AXI_HP0_arlen;
  assign Conn3_ARLOCK = S_AXI_HP0_arlock;
  assign Conn3_ARPROT = S_AXI_HP0_arprot;
  assign Conn3_ARQOS = S_AXI_HP0_arqos;
  assign Conn3_ARSIZE = S_AXI_HP0_arsize;
  assign Conn3_ARVALID = S_AXI_HP0_arvalid;
  assign Conn3_AWADDR = S_AXI_HP0_awaddr;
  assign Conn3_AWBURST = S_AXI_HP0_awburst;
  assign Conn3_AWCACHE = S_AXI_HP0_awcache;
  assign Conn3_AWID = S_AXI_HP0_awid;
  assign Conn3_AWLEN = S_AXI_HP0_awlen;
  assign Conn3_AWLOCK = S_AXI_HP0_awlock;
  assign Conn3_AWPROT = S_AXI_HP0_awprot;
  assign Conn3_AWQOS = S_AXI_HP0_awqos;
  assign Conn3_AWSIZE = S_AXI_HP0_awsize;
  assign Conn3_AWVALID = S_AXI_HP0_awvalid;
  assign Conn3_BREADY = S_AXI_HP0_bready;
  assign Conn3_RREADY = S_AXI_HP0_rready;
  assign Conn3_WDATA = S_AXI_HP0_wdata;
  assign Conn3_WID = S_AXI_HP0_wid;
  assign Conn3_WLAST = S_AXI_HP0_wlast;
  assign Conn3_WSTRB = S_AXI_HP0_wstrb;
  assign Conn3_WVALID = S_AXI_HP0_wvalid;
  assign Conn4_ARREADY = M03_AXI_arready;
  assign Conn4_AWREADY = M03_AXI_awready;
  assign Conn4_BRESP = M03_AXI_bresp[1:0];
  assign Conn4_BVALID = M03_AXI_bvalid;
  assign Conn4_RDATA = M03_AXI_rdata[31:0];
  assign Conn4_RRESP = M03_AXI_rresp[1:0];
  assign Conn4_RVALID = M03_AXI_rvalid;
  assign Conn4_WREADY = M03_AXI_wready;
  assign Conn5_ARREADY = M05_AXI_arready;
  assign Conn5_AWREADY = M05_AXI_awready;
  assign Conn5_BRESP = M05_AXI_bresp[1:0];
  assign Conn5_BVALID = M05_AXI_bvalid;
  assign Conn5_RDATA = M05_AXI_rdata[31:0];
  assign Conn5_RRESP = M05_AXI_rresp[1:0];
  assign Conn5_RVALID = M05_AXI_rvalid;
  assign Conn5_WREADY = M05_AXI_wready;
  assign Conn6_ARREADY = M07_AXI_arready;
  assign Conn6_AWREADY = M07_AXI_awready;
  assign Conn6_BRESP = M07_AXI_bresp[1:0];
  assign Conn6_BVALID = M07_AXI_bvalid;
  assign Conn6_RDATA = M07_AXI_rdata[31:0];
  assign Conn6_RRESP = M07_AXI_rresp[1:0];
  assign Conn6_RVALID = M07_AXI_rvalid;
  assign Conn6_WREADY = M07_AXI_wready;
  assign ENET0_GMII_RX_CLK_0_1 = ENET0_GMII_RX_CLK_0;
  assign ENET0_GMII_RX_DV_0_1 = ENET0_GMII_RX_DV_0;
  assign ENET0_GMII_TX_CLK_0_1 = ENET0_GMII_TX_CLK_0;
  assign ENET0_GMII_TX_EN_0[0] = processing_system7_0_ENET0_GMII_TX_EN;
  assign FCLK_CLK0_100M = processing_system7_0_FCLK_CLK0;
  assign FCLK_CLK1_64M = processing_system7_0_FCLK_CLK1;
  assign FCLK_CLK3_25M = processing_system7_0_FCLK_CLK3;
  assign FCLK_RESET0_N = processing_system7_0_FCLK_RESET0_N;
  assign In0_0_1 = enet0_gmii_rxd[3:0];
  assign M00_AXI_araddr[31:0] = ps7_axi_periph_M00_AXI_ARADDR;
  assign M00_AXI_arprot[2:0] = ps7_axi_periph_M00_AXI_ARPROT;
  assign M00_AXI_arvalid = ps7_axi_periph_M00_AXI_ARVALID;
  assign M00_AXI_awaddr[31:0] = ps7_axi_periph_M00_AXI_AWADDR;
  assign M00_AXI_awprot[2:0] = ps7_axi_periph_M00_AXI_AWPROT;
  assign M00_AXI_awvalid = ps7_axi_periph_M00_AXI_AWVALID;
  assign M00_AXI_bready = ps7_axi_periph_M00_AXI_BREADY;
  assign M00_AXI_rready = ps7_axi_periph_M00_AXI_RREADY;
  assign M00_AXI_wdata[31:0] = ps7_axi_periph_M00_AXI_WDATA;
  assign M00_AXI_wstrb[3:0] = ps7_axi_periph_M00_AXI_WSTRB;
  assign M00_AXI_wvalid = ps7_axi_periph_M00_AXI_WVALID;
  assign M01_AXI_araddr[3:0] = Conn1_ARADDR;
  assign M01_AXI_arprot[2:0] = Conn1_ARPROT;
  assign M01_AXI_arvalid = Conn1_ARVALID;
  assign M01_AXI_awaddr[3:0] = Conn1_AWADDR;
  assign M01_AXI_awprot[2:0] = Conn1_AWPROT;
  assign M01_AXI_awvalid = Conn1_AWVALID;
  assign M01_AXI_bready = Conn1_BREADY;
  assign M01_AXI_rready = Conn1_RREADY;
  assign M01_AXI_wdata[31:0] = Conn1_WDATA;
  assign M01_AXI_wstrb[3:0] = Conn1_WSTRB;
  assign M01_AXI_wvalid = Conn1_WVALID;
  assign M02_AXI_araddr[31:0] = Conn2_ARADDR;
  assign M02_AXI_arvalid = Conn2_ARVALID;
  assign M02_AXI_awaddr[31:0] = Conn2_AWADDR;
  assign M02_AXI_awvalid = Conn2_AWVALID;
  assign M02_AXI_bready = Conn2_BREADY;
  assign M02_AXI_rready = Conn2_RREADY;
  assign M02_AXI_wdata[31:0] = Conn2_WDATA;
  assign M02_AXI_wstrb[3:0] = Conn2_WSTRB;
  assign M02_AXI_wvalid = Conn2_WVALID;
  assign M03_AXI_araddr[31:0] = Conn4_ARADDR;
  assign M03_AXI_arvalid = Conn4_ARVALID;
  assign M03_AXI_awaddr[31:0] = Conn4_AWADDR;
  assign M03_AXI_awvalid = Conn4_AWVALID;
  assign M03_AXI_bready = Conn4_BREADY;
  assign M03_AXI_rready = Conn4_RREADY;
  assign M03_AXI_wdata[31:0] = Conn4_WDATA;
  assign M03_AXI_wstrb[3:0] = Conn4_WSTRB;
  assign M03_AXI_wvalid = Conn4_WVALID;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[3:0] = ps7_axi_periph_M04_AXI_ARADDR;
  assign M04_AXI_arprot[2:0] = ps7_axi_periph_M04_AXI_ARPROT;
  assign M04_AXI_arvalid = ps7_axi_periph_M04_AXI_ARVALID;
  assign M04_AXI_awaddr[3:0] = ps7_axi_periph_M04_AXI_AWADDR;
  assign M04_AXI_awprot[2:0] = ps7_axi_periph_M04_AXI_AWPROT;
  assign M04_AXI_awvalid = ps7_axi_periph_M04_AXI_AWVALID;
  assign M04_AXI_bready = ps7_axi_periph_M04_AXI_BREADY;
  assign M04_AXI_rready = ps7_axi_periph_M04_AXI_RREADY;
  assign M04_AXI_wdata[31:0] = ps7_axi_periph_M04_AXI_WDATA;
  assign M04_AXI_wstrb[3:0] = ps7_axi_periph_M04_AXI_WSTRB;
  assign M04_AXI_wvalid = ps7_axi_periph_M04_AXI_WVALID;
  assign M05_AXI_araddr[3:0] = Conn5_ARADDR;
  assign M05_AXI_arprot[2:0] = Conn5_ARPROT;
  assign M05_AXI_arvalid = Conn5_ARVALID;
  assign M05_AXI_awaddr[3:0] = Conn5_AWADDR;
  assign M05_AXI_awprot[2:0] = Conn5_AWPROT;
  assign M05_AXI_awvalid = Conn5_AWVALID;
  assign M05_AXI_bready = Conn5_BREADY;
  assign M05_AXI_rready = Conn5_RREADY;
  assign M05_AXI_wdata[31:0] = Conn5_WDATA;
  assign M05_AXI_wstrb[3:0] = Conn5_WSTRB;
  assign M05_AXI_wvalid = Conn5_WVALID;
  assign M06_AXI_araddr[15:0] = ps7_axi_periph_M06_AXI_ARADDR;
  assign M06_AXI_arvalid = ps7_axi_periph_M06_AXI_ARVALID;
  assign M06_AXI_awaddr[15:0] = ps7_axi_periph_M06_AXI_AWADDR;
  assign M06_AXI_awvalid = ps7_axi_periph_M06_AXI_AWVALID;
  assign M06_AXI_bready = ps7_axi_periph_M06_AXI_BREADY;
  assign M06_AXI_rready = ps7_axi_periph_M06_AXI_RREADY;
  assign M06_AXI_wdata[31:0] = ps7_axi_periph_M06_AXI_WDATA;
  assign M06_AXI_wvalid = ps7_axi_periph_M06_AXI_WVALID;
  assign M07_AXI_araddr[15:0] = Conn6_ARADDR;
  assign M07_AXI_arvalid = Conn6_ARVALID;
  assign M07_AXI_awaddr[15:0] = Conn6_AWADDR;
  assign M07_AXI_awvalid = Conn6_AWVALID;
  assign M07_AXI_bready = Conn6_BREADY;
  assign M07_AXI_rready = Conn6_RREADY;
  assign M07_AXI_wdata[31:0] = Conn6_WDATA;
  assign M07_AXI_wvalid = Conn6_WVALID;
  assign M08_AXI_araddr[3:0] = ps7_axi_periph_M08_AXI_ARADDR;
  assign M08_AXI_arprot[2:0] = ps7_axi_periph_M08_AXI_ARPROT;
  assign M08_AXI_arvalid = ps7_axi_periph_M08_AXI_ARVALID;
  assign M08_AXI_awaddr[3:0] = ps7_axi_periph_M08_AXI_AWADDR;
  assign M08_AXI_awprot[2:0] = ps7_axi_periph_M08_AXI_AWPROT;
  assign M08_AXI_awvalid = ps7_axi_periph_M08_AXI_AWVALID;
  assign M08_AXI_bready = ps7_axi_periph_M08_AXI_BREADY;
  assign M08_AXI_rready = ps7_axi_periph_M08_AXI_RREADY;
  assign M08_AXI_wdata[31:0] = ps7_axi_periph_M08_AXI_WDATA;
  assign M08_AXI_wstrb[3:0] = ps7_axi_periph_M08_AXI_WSTRB;
  assign M08_AXI_wvalid = ps7_axi_periph_M08_AXI_WVALID;
  assign M09_AXI_araddr[31:0] = ps7_axi_periph_M09_AXI_ARADDR;
  assign M09_AXI_arvalid = ps7_axi_periph_M09_AXI_ARVALID;
  assign M09_AXI_awaddr[31:0] = ps7_axi_periph_M09_AXI_AWADDR;
  assign M09_AXI_awvalid = ps7_axi_periph_M09_AXI_AWVALID;
  assign M09_AXI_bready = ps7_axi_periph_M09_AXI_BREADY;
  assign M09_AXI_rready = ps7_axi_periph_M09_AXI_RREADY;
  assign M09_AXI_wdata[31:0] = ps7_axi_periph_M09_AXI_WDATA;
  assign M09_AXI_wstrb[3:0] = ps7_axi_periph_M09_AXI_WSTRB;
  assign M09_AXI_wvalid = ps7_axi_periph_M09_AXI_WVALID;
  assign MDIO_ETHERNET_0_0_mdc = processing_system7_0_MDIO_ETHERNET_0_MDC;
  assign MDIO_ETHERNET_0_0_mdio_o = processing_system7_0_MDIO_ETHERNET_0_MDIO_O;
  assign MDIO_ETHERNET_0_0_mdio_t = processing_system7_0_MDIO_ETHERNET_0_MDIO_T;
  assign S_AXI_HP0_arready = Conn3_ARREADY;
  assign S_AXI_HP0_awready = Conn3_AWREADY;
  assign S_AXI_HP0_bid = Conn3_BID[0];
  assign S_AXI_HP0_bresp = Conn3_BRESP[0];
  assign S_AXI_HP0_bvalid = Conn3_BVALID;
  assign S_AXI_HP0_rdata = Conn3_RDATA[0];
  assign S_AXI_HP0_rid = Conn3_RID[0];
  assign S_AXI_HP0_rlast = Conn3_RLAST;
  assign S_AXI_HP0_rresp = Conn3_RRESP[0];
  assign S_AXI_HP0_rvalid = Conn3_RVALID;
  assign S_AXI_HP0_wready = Conn3_WREADY;
  assign enet0_gmii_txd[3:0] = xlslice_0_Dout;
  assign peripheral_reset[0] = proc_sys_reset_0_peripheral_reset;
  assign processing_system7_0_MDIO_ETHERNET_0_MDIO_I = MDIO_ETHERNET_0_0_mdio_i;
  assign ps7_axi_periph_M00_AXI_ARREADY = M00_AXI_arready;
  assign ps7_axi_periph_M00_AXI_AWREADY = M00_AXI_awready;
  assign ps7_axi_periph_M00_AXI_BRESP = M00_AXI_bresp[1:0];
  assign ps7_axi_periph_M00_AXI_BVALID = M00_AXI_bvalid;
  assign ps7_axi_periph_M00_AXI_RDATA = M00_AXI_rdata[31:0];
  assign ps7_axi_periph_M00_AXI_RRESP = M00_AXI_rresp[1:0];
  assign ps7_axi_periph_M00_AXI_RVALID = M00_AXI_rvalid;
  assign ps7_axi_periph_M00_AXI_WREADY = M00_AXI_wready;
  assign ps7_axi_periph_M04_AXI_ARREADY = M04_AXI_arready;
  assign ps7_axi_periph_M04_AXI_AWREADY = M04_AXI_awready;
  assign ps7_axi_periph_M04_AXI_BRESP = M04_AXI_bresp[1:0];
  assign ps7_axi_periph_M04_AXI_BVALID = M04_AXI_bvalid;
  assign ps7_axi_periph_M04_AXI_RDATA = M04_AXI_rdata[31:0];
  assign ps7_axi_periph_M04_AXI_RRESP = M04_AXI_rresp[1:0];
  assign ps7_axi_periph_M04_AXI_RVALID = M04_AXI_rvalid;
  assign ps7_axi_periph_M04_AXI_WREADY = M04_AXI_wready;
  assign ps7_axi_periph_M06_AXI_ARREADY = M06_AXI_arready;
  assign ps7_axi_periph_M06_AXI_AWREADY = M06_AXI_awready;
  assign ps7_axi_periph_M06_AXI_BRESP = M06_AXI_bresp[1:0];
  assign ps7_axi_periph_M06_AXI_BVALID = M06_AXI_bvalid;
  assign ps7_axi_periph_M06_AXI_RDATA = M06_AXI_rdata[31:0];
  assign ps7_axi_periph_M06_AXI_RRESP = M06_AXI_rresp[1:0];
  assign ps7_axi_periph_M06_AXI_RVALID = M06_AXI_rvalid;
  assign ps7_axi_periph_M06_AXI_WREADY = M06_AXI_wready;
  assign ps7_axi_periph_M08_AXI_ARREADY = M08_AXI_arready;
  assign ps7_axi_periph_M08_AXI_AWREADY = M08_AXI_awready;
  assign ps7_axi_periph_M08_AXI_BRESP = M08_AXI_bresp[1:0];
  assign ps7_axi_periph_M08_AXI_BVALID = M08_AXI_bvalid;
  assign ps7_axi_periph_M08_AXI_RDATA = M08_AXI_rdata[31:0];
  assign ps7_axi_periph_M08_AXI_RRESP = M08_AXI_rresp[1:0];
  assign ps7_axi_periph_M08_AXI_RVALID = M08_AXI_rvalid;
  assign ps7_axi_periph_M08_AXI_WREADY = M08_AXI_wready;
  assign ps7_axi_periph_M09_AXI_ARREADY = M09_AXI_arready;
  assign ps7_axi_periph_M09_AXI_AWREADY = M09_AXI_awready;
  assign ps7_axi_periph_M09_AXI_BRESP = M09_AXI_bresp[1:0];
  assign ps7_axi_periph_M09_AXI_BVALID = M09_AXI_bvalid;
  assign ps7_axi_periph_M09_AXI_RDATA = M09_AXI_rdata[31:0];
  assign ps7_axi_periph_M09_AXI_RRESP = M09_AXI_rresp[1:0];
  assign ps7_axi_periph_M09_AXI_RVALID = M09_AXI_rvalid;
  assign ps7_axi_periph_M09_AXI_WREADY = M09_AXI_wready;
  ebaz4205_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .peripheral_reset(proc_sys_reset_0_peripheral_reset),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK0));
  ebaz4205_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .ENET0_EXT_INTIN(1'b0),
        .ENET0_GMII_COL(1'b0),
        .ENET0_GMII_CRS(1'b0),
        .ENET0_GMII_RXD(xlconcat_0_dout),
        .ENET0_GMII_RX_CLK(ENET0_GMII_RX_CLK_0_1),
        .ENET0_GMII_RX_DV(ENET0_GMII_RX_DV_0_1),
        .ENET0_GMII_RX_ER(1'b0),
        .ENET0_GMII_TXD(processing_system7_0_ENET0_GMII_TXD),
        .ENET0_GMII_TX_CLK(ENET0_GMII_TX_CLK_0_1),
        .ENET0_GMII_TX_EN(processing_system7_0_ENET0_GMII_TX_EN),
        .ENET0_MDIO_I(processing_system7_0_MDIO_ETHERNET_0_MDIO_I),
        .ENET0_MDIO_MDC(processing_system7_0_MDIO_ETHERNET_0_MDC),
        .ENET0_MDIO_O(processing_system7_0_MDIO_ETHERNET_0_MDIO_O),
        .ENET0_MDIO_T(processing_system7_0_MDIO_ETHERNET_0_MDIO_T),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_CLK1(processing_system7_0_FCLK_CLK1),
        .FCLK_CLK3(processing_system7_0_FCLK_CLK3),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .GPIO_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
        .M_AXI_GP0_ARADDR(processing_system7_0_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system7_0_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system7_0_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system7_0_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(processing_system7_0_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system7_0_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system7_0_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system7_0_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system7_0_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system7_0_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system7_0_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_0_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system7_0_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system7_0_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system7_0_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(processing_system7_0_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system7_0_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system7_0_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system7_0_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system7_0_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system7_0_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system7_0_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(processing_system7_0_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(processing_system7_0_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_0_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_0_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(processing_system7_0_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(processing_system7_0_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(processing_system7_0_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(processing_system7_0_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(processing_system7_0_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(processing_system7_0_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(processing_system7_0_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(processing_system7_0_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(processing_system7_0_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(processing_system7_0_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system7_0_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_0_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .S_AXI_HP0_ACLK(processing_system7_0_FCLK_CLK0),
        .S_AXI_HP0_ARADDR({Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR,Conn3_ARADDR}),
        .S_AXI_HP0_ARBURST({Conn3_ARBURST,Conn3_ARBURST}),
        .S_AXI_HP0_ARCACHE({Conn3_ARCACHE,Conn3_ARCACHE,Conn3_ARCACHE,Conn3_ARCACHE}),
        .S_AXI_HP0_ARID({Conn3_ARID,Conn3_ARID,Conn3_ARID,Conn3_ARID,Conn3_ARID,Conn3_ARID}),
        .S_AXI_HP0_ARLEN({Conn3_ARLEN,Conn3_ARLEN,Conn3_ARLEN,Conn3_ARLEN}),
        .S_AXI_HP0_ARLOCK({Conn3_ARLOCK,Conn3_ARLOCK}),
        .S_AXI_HP0_ARPROT({Conn3_ARPROT,Conn3_ARPROT,Conn3_ARPROT}),
        .S_AXI_HP0_ARQOS({Conn3_ARQOS,Conn3_ARQOS,Conn3_ARQOS,Conn3_ARQOS}),
        .S_AXI_HP0_ARREADY(Conn3_ARREADY),
        .S_AXI_HP0_ARSIZE({Conn3_ARSIZE,Conn3_ARSIZE,Conn3_ARSIZE}),
        .S_AXI_HP0_ARVALID(Conn3_ARVALID),
        .S_AXI_HP0_AWADDR({Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR,Conn3_AWADDR}),
        .S_AXI_HP0_AWBURST({Conn3_AWBURST,Conn3_AWBURST}),
        .S_AXI_HP0_AWCACHE({Conn3_AWCACHE,Conn3_AWCACHE,Conn3_AWCACHE,Conn3_AWCACHE}),
        .S_AXI_HP0_AWID({Conn3_AWID,Conn3_AWID,Conn3_AWID,Conn3_AWID,Conn3_AWID,Conn3_AWID}),
        .S_AXI_HP0_AWLEN({Conn3_AWLEN,Conn3_AWLEN,Conn3_AWLEN,Conn3_AWLEN}),
        .S_AXI_HP0_AWLOCK({Conn3_AWLOCK,Conn3_AWLOCK}),
        .S_AXI_HP0_AWPROT({Conn3_AWPROT,Conn3_AWPROT,Conn3_AWPROT}),
        .S_AXI_HP0_AWQOS({Conn3_AWQOS,Conn3_AWQOS,Conn3_AWQOS,Conn3_AWQOS}),
        .S_AXI_HP0_AWREADY(Conn3_AWREADY),
        .S_AXI_HP0_AWSIZE({Conn3_AWSIZE,Conn3_AWSIZE,Conn3_AWSIZE}),
        .S_AXI_HP0_AWVALID(Conn3_AWVALID),
        .S_AXI_HP0_BID(Conn3_BID),
        .S_AXI_HP0_BREADY(Conn3_BREADY),
        .S_AXI_HP0_BRESP(Conn3_BRESP),
        .S_AXI_HP0_BVALID(Conn3_BVALID),
        .S_AXI_HP0_RDATA(Conn3_RDATA),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RID(Conn3_RID),
        .S_AXI_HP0_RLAST(Conn3_RLAST),
        .S_AXI_HP0_RREADY(Conn3_RREADY),
        .S_AXI_HP0_RRESP(Conn3_RRESP),
        .S_AXI_HP0_RVALID(Conn3_RVALID),
        .S_AXI_HP0_WDATA({Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA,Conn3_WDATA}),
        .S_AXI_HP0_WID({Conn3_WID,Conn3_WID,Conn3_WID,Conn3_WID,Conn3_WID,Conn3_WID}),
        .S_AXI_HP0_WLAST(Conn3_WLAST),
        .S_AXI_HP0_WREADY(Conn3_WREADY),
        .S_AXI_HP0_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP0_WSTRB({Conn3_WSTRB,Conn3_WSTRB,Conn3_WSTRB,Conn3_WSTRB,Conn3_WSTRB,Conn3_WSTRB,Conn3_WSTRB,Conn3_WSTRB}),
        .S_AXI_HP0_WVALID(Conn3_WVALID));
  ebaz4205_axi_interconnect_0_0 ps7_axi_periph
       (.ACLK(processing_system7_0_FCLK_CLK0),
        .ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M00_ACLK(processing_system7_0_FCLK_CLK0),
        .M00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M00_AXI_araddr(ps7_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arprot(ps7_axi_periph_M00_AXI_ARPROT),
        .M00_AXI_arready(ps7_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(ps7_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(ps7_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awprot(ps7_axi_periph_M00_AXI_AWPROT),
        .M00_AXI_awready(ps7_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(ps7_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(ps7_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(ps7_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(ps7_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(ps7_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(ps7_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(ps7_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(ps7_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(ps7_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(ps7_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(ps7_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(ps7_axi_periph_M00_AXI_WVALID),
        .M01_ACLK(processing_system7_0_FCLK_CLK1),
        .M01_ARESETN(M04_ARESETN_1),
        .M01_AXI_araddr(Conn1_ARADDR),
        .M01_AXI_arprot(Conn1_ARPROT),
        .M01_AXI_arready(Conn1_ARREADY),
        .M01_AXI_arvalid(Conn1_ARVALID),
        .M01_AXI_awaddr(Conn1_AWADDR),
        .M01_AXI_awprot(Conn1_AWPROT),
        .M01_AXI_awready(Conn1_AWREADY),
        .M01_AXI_awvalid(Conn1_AWVALID),
        .M01_AXI_bready(Conn1_BREADY),
        .M01_AXI_bresp(Conn1_BRESP),
        .M01_AXI_bvalid(Conn1_BVALID),
        .M01_AXI_rdata(Conn1_RDATA),
        .M01_AXI_rready(Conn1_RREADY),
        .M01_AXI_rresp(Conn1_RRESP),
        .M01_AXI_rvalid(Conn1_RVALID),
        .M01_AXI_wdata(Conn1_WDATA),
        .M01_AXI_wready(Conn1_WREADY),
        .M01_AXI_wstrb(Conn1_WSTRB),
        .M01_AXI_wvalid(Conn1_WVALID),
        .M02_ACLK(processing_system7_0_FCLK_CLK0),
        .M02_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M02_AXI_araddr(Conn2_ARADDR),
        .M02_AXI_arready(Conn2_ARREADY),
        .M02_AXI_arvalid(Conn2_ARVALID),
        .M02_AXI_awaddr(Conn2_AWADDR),
        .M02_AXI_awready(Conn2_AWREADY),
        .M02_AXI_awvalid(Conn2_AWVALID),
        .M02_AXI_bready(Conn2_BREADY),
        .M02_AXI_bresp(Conn2_BRESP),
        .M02_AXI_bvalid(Conn2_BVALID),
        .M02_AXI_rdata(Conn2_RDATA),
        .M02_AXI_rready(Conn2_RREADY),
        .M02_AXI_rresp(Conn2_RRESP),
        .M02_AXI_rvalid(Conn2_RVALID),
        .M02_AXI_wdata(Conn2_WDATA),
        .M02_AXI_wready(Conn2_WREADY),
        .M02_AXI_wstrb(Conn2_WSTRB),
        .M02_AXI_wvalid(Conn2_WVALID),
        .M03_ACLK(processing_system7_0_FCLK_CLK0),
        .M03_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M03_AXI_araddr(Conn4_ARADDR),
        .M03_AXI_arready(Conn4_ARREADY),
        .M03_AXI_arvalid(Conn4_ARVALID),
        .M03_AXI_awaddr(Conn4_AWADDR),
        .M03_AXI_awready(Conn4_AWREADY),
        .M03_AXI_awvalid(Conn4_AWVALID),
        .M03_AXI_bready(Conn4_BREADY),
        .M03_AXI_bresp(Conn4_BRESP),
        .M03_AXI_bvalid(Conn4_BVALID),
        .M03_AXI_rdata(Conn4_RDATA),
        .M03_AXI_rready(Conn4_RREADY),
        .M03_AXI_rresp(Conn4_RRESP),
        .M03_AXI_rvalid(Conn4_RVALID),
        .M03_AXI_wdata(Conn4_WDATA),
        .M03_AXI_wready(Conn4_WREADY),
        .M03_AXI_wstrb(Conn4_WSTRB),
        .M03_AXI_wvalid(Conn4_WVALID),
        .M04_ACLK(processing_system7_0_FCLK_CLK1),
        .M04_ARESETN(M04_ARESETN_1),
        .M04_AXI_araddr(ps7_axi_periph_M04_AXI_ARADDR),
        .M04_AXI_arprot(ps7_axi_periph_M04_AXI_ARPROT),
        .M04_AXI_arready(ps7_axi_periph_M04_AXI_ARREADY),
        .M04_AXI_arvalid(ps7_axi_periph_M04_AXI_ARVALID),
        .M04_AXI_awaddr(ps7_axi_periph_M04_AXI_AWADDR),
        .M04_AXI_awprot(ps7_axi_periph_M04_AXI_AWPROT),
        .M04_AXI_awready(ps7_axi_periph_M04_AXI_AWREADY),
        .M04_AXI_awvalid(ps7_axi_periph_M04_AXI_AWVALID),
        .M04_AXI_bready(ps7_axi_periph_M04_AXI_BREADY),
        .M04_AXI_bresp(ps7_axi_periph_M04_AXI_BRESP),
        .M04_AXI_bvalid(ps7_axi_periph_M04_AXI_BVALID),
        .M04_AXI_rdata(ps7_axi_periph_M04_AXI_RDATA),
        .M04_AXI_rready(ps7_axi_periph_M04_AXI_RREADY),
        .M04_AXI_rresp(ps7_axi_periph_M04_AXI_RRESP),
        .M04_AXI_rvalid(ps7_axi_periph_M04_AXI_RVALID),
        .M04_AXI_wdata(ps7_axi_periph_M04_AXI_WDATA),
        .M04_AXI_wready(ps7_axi_periph_M04_AXI_WREADY),
        .M04_AXI_wstrb(ps7_axi_periph_M04_AXI_WSTRB),
        .M04_AXI_wvalid(ps7_axi_periph_M04_AXI_WVALID),
        .M05_ACLK(processing_system7_0_FCLK_CLK1),
        .M05_ARESETN(M04_ARESETN_1),
        .M05_AXI_araddr(Conn5_ARADDR),
        .M05_AXI_arprot(Conn5_ARPROT),
        .M05_AXI_arready(Conn5_ARREADY),
        .M05_AXI_arvalid(Conn5_ARVALID),
        .M05_AXI_awaddr(Conn5_AWADDR),
        .M05_AXI_awprot(Conn5_AWPROT),
        .M05_AXI_awready(Conn5_AWREADY),
        .M05_AXI_awvalid(Conn5_AWVALID),
        .M05_AXI_bready(Conn5_BREADY),
        .M05_AXI_bresp(Conn5_BRESP),
        .M05_AXI_bvalid(Conn5_BVALID),
        .M05_AXI_rdata(Conn5_RDATA),
        .M05_AXI_rready(Conn5_RREADY),
        .M05_AXI_rresp(Conn5_RRESP),
        .M05_AXI_rvalid(Conn5_RVALID),
        .M05_AXI_wdata(Conn5_WDATA),
        .M05_AXI_wready(Conn5_WREADY),
        .M05_AXI_wstrb(Conn5_WSTRB),
        .M05_AXI_wvalid(Conn5_WVALID),
        .M06_ACLK(processing_system7_0_FCLK_CLK1),
        .M06_ARESETN(M04_ARESETN_1),
        .M06_AXI_araddr(ps7_axi_periph_M06_AXI_ARADDR),
        .M06_AXI_arready(ps7_axi_periph_M06_AXI_ARREADY),
        .M06_AXI_arvalid(ps7_axi_periph_M06_AXI_ARVALID),
        .M06_AXI_awaddr(ps7_axi_periph_M06_AXI_AWADDR),
        .M06_AXI_awready(ps7_axi_periph_M06_AXI_AWREADY),
        .M06_AXI_awvalid(ps7_axi_periph_M06_AXI_AWVALID),
        .M06_AXI_bready(ps7_axi_periph_M06_AXI_BREADY),
        .M06_AXI_bresp(ps7_axi_periph_M06_AXI_BRESP),
        .M06_AXI_bvalid(ps7_axi_periph_M06_AXI_BVALID),
        .M06_AXI_rdata(ps7_axi_periph_M06_AXI_RDATA),
        .M06_AXI_rready(ps7_axi_periph_M06_AXI_RREADY),
        .M06_AXI_rresp(ps7_axi_periph_M06_AXI_RRESP),
        .M06_AXI_rvalid(ps7_axi_periph_M06_AXI_RVALID),
        .M06_AXI_wdata(ps7_axi_periph_M06_AXI_WDATA),
        .M06_AXI_wready(ps7_axi_periph_M06_AXI_WREADY),
        .M06_AXI_wvalid(ps7_axi_periph_M06_AXI_WVALID),
        .M07_ACLK(processing_system7_0_FCLK_CLK1),
        .M07_ARESETN(M04_ARESETN_1),
        .M07_AXI_araddr(Conn6_ARADDR),
        .M07_AXI_arready(Conn6_ARREADY),
        .M07_AXI_arvalid(Conn6_ARVALID),
        .M07_AXI_awaddr(Conn6_AWADDR),
        .M07_AXI_awready(Conn6_AWREADY),
        .M07_AXI_awvalid(Conn6_AWVALID),
        .M07_AXI_bready(Conn6_BREADY),
        .M07_AXI_bresp(Conn6_BRESP),
        .M07_AXI_bvalid(Conn6_BVALID),
        .M07_AXI_rdata(Conn6_RDATA),
        .M07_AXI_rready(Conn6_RREADY),
        .M07_AXI_rresp(Conn6_RRESP),
        .M07_AXI_rvalid(Conn6_RVALID),
        .M07_AXI_wdata(Conn6_WDATA),
        .M07_AXI_wready(Conn6_WREADY),
        .M07_AXI_wvalid(Conn6_WVALID),
        .M08_ACLK(processing_system7_0_FCLK_CLK1),
        .M08_ARESETN(M04_ARESETN_1),
        .M08_AXI_araddr(ps7_axi_periph_M08_AXI_ARADDR),
        .M08_AXI_arprot(ps7_axi_periph_M08_AXI_ARPROT),
        .M08_AXI_arready(ps7_axi_periph_M08_AXI_ARREADY),
        .M08_AXI_arvalid(ps7_axi_periph_M08_AXI_ARVALID),
        .M08_AXI_awaddr(ps7_axi_periph_M08_AXI_AWADDR),
        .M08_AXI_awprot(ps7_axi_periph_M08_AXI_AWPROT),
        .M08_AXI_awready(ps7_axi_periph_M08_AXI_AWREADY),
        .M08_AXI_awvalid(ps7_axi_periph_M08_AXI_AWVALID),
        .M08_AXI_bready(ps7_axi_periph_M08_AXI_BREADY),
        .M08_AXI_bresp(ps7_axi_periph_M08_AXI_BRESP),
        .M08_AXI_bvalid(ps7_axi_periph_M08_AXI_BVALID),
        .M08_AXI_rdata(ps7_axi_periph_M08_AXI_RDATA),
        .M08_AXI_rready(ps7_axi_periph_M08_AXI_RREADY),
        .M08_AXI_rresp(ps7_axi_periph_M08_AXI_RRESP),
        .M08_AXI_rvalid(ps7_axi_periph_M08_AXI_RVALID),
        .M08_AXI_wdata(ps7_axi_periph_M08_AXI_WDATA),
        .M08_AXI_wready(ps7_axi_periph_M08_AXI_WREADY),
        .M08_AXI_wstrb(ps7_axi_periph_M08_AXI_WSTRB),
        .M08_AXI_wvalid(ps7_axi_periph_M08_AXI_WVALID),
        .M09_ACLK(processing_system7_0_FCLK_CLK0),
        .M09_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M09_AXI_araddr(ps7_axi_periph_M09_AXI_ARADDR),
        .M09_AXI_arready(ps7_axi_periph_M09_AXI_ARREADY),
        .M09_AXI_arvalid(ps7_axi_periph_M09_AXI_ARVALID),
        .M09_AXI_awaddr(ps7_axi_periph_M09_AXI_AWADDR),
        .M09_AXI_awready(ps7_axi_periph_M09_AXI_AWREADY),
        .M09_AXI_awvalid(ps7_axi_periph_M09_AXI_AWVALID),
        .M09_AXI_bready(ps7_axi_periph_M09_AXI_BREADY),
        .M09_AXI_bresp(ps7_axi_periph_M09_AXI_BRESP),
        .M09_AXI_bvalid(ps7_axi_periph_M09_AXI_BVALID),
        .M09_AXI_rdata(ps7_axi_periph_M09_AXI_RDATA),
        .M09_AXI_rready(ps7_axi_periph_M09_AXI_RREADY),
        .M09_AXI_rresp(ps7_axi_periph_M09_AXI_RRESP),
        .M09_AXI_rvalid(ps7_axi_periph_M09_AXI_RVALID),
        .M09_AXI_wdata(ps7_axi_periph_M09_AXI_WDATA),
        .M09_AXI_wready(ps7_axi_periph_M09_AXI_WREADY),
        .M09_AXI_wstrb(ps7_axi_periph_M09_AXI_WSTRB),
        .M09_AXI_wvalid(ps7_axi_periph_M09_AXI_WVALID),
        .S00_ACLK(processing_system7_0_FCLK_CLK0),
        .S00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .S00_AXI_araddr(processing_system7_0_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(processing_system7_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(processing_system7_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(processing_system7_0_M_AXI_GP0_ARID),
        .S00_AXI_arlen(processing_system7_0_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(processing_system7_0_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(processing_system7_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(processing_system7_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(processing_system7_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(processing_system7_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(processing_system7_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(processing_system7_0_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(processing_system7_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(processing_system7_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(processing_system7_0_M_AXI_GP0_AWID),
        .S00_AXI_awlen(processing_system7_0_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(processing_system7_0_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(processing_system7_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(processing_system7_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(processing_system7_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(processing_system7_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(processing_system7_0_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(processing_system7_0_M_AXI_GP0_BID),
        .S00_AXI_bready(processing_system7_0_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(processing_system7_0_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(processing_system7_0_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(processing_system7_0_M_AXI_GP0_RDATA),
        .S00_AXI_rid(processing_system7_0_M_AXI_GP0_RID),
        .S00_AXI_rlast(processing_system7_0_M_AXI_GP0_RLAST),
        .S00_AXI_rready(processing_system7_0_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(processing_system7_0_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(processing_system7_0_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(processing_system7_0_M_AXI_GP0_WDATA),
        .S00_AXI_wid(processing_system7_0_M_AXI_GP0_WID),
        .S00_AXI_wlast(processing_system7_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(processing_system7_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(processing_system7_0_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(processing_system7_0_M_AXI_GP0_WVALID));
  ebaz4205_rst_ENET0_GMII_RX_CLK_0_100M_0 rst_ENET0_GMII_RX_CLK_0_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(proc_sys_reset_0_peripheral_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(ENET0_GMII_RX_CLK_0_1));
  ebaz4205_xlconcat_0_0 xlconcat_0
       (.In0(In0_0_1),
        .In1({1'b0,1'b0,1'b0,1'b0}),
        .dout(xlconcat_0_dout));
  ebaz4205_xlslice_0_0 xlslice_0
       (.Din(processing_system7_0_ENET0_GMII_TXD),
        .Dout(xlslice_0_Dout));
endmodule

module TestGen_imp_12Z2PFB
   (ADC_clk_64M,
    LED_GREEN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    ctrl_s_axi_araddr,
    ctrl_s_axi_arprot,
    ctrl_s_axi_arready,
    ctrl_s_axi_arvalid,
    ctrl_s_axi_awaddr,
    ctrl_s_axi_awprot,
    ctrl_s_axi_awready,
    ctrl_s_axi_awvalid,
    ctrl_s_axi_bready,
    ctrl_s_axi_bresp,
    ctrl_s_axi_bvalid,
    ctrl_s_axi_rdata,
    ctrl_s_axi_rready,
    ctrl_s_axi_rresp,
    ctrl_s_axi_rvalid,
    ctrl_s_axi_wdata,
    ctrl_s_axi_wready,
    ctrl_s_axi_wstrb,
    ctrl_s_axi_wvalid,
    dout,
    m_axis_data_tvalid,
    s00_axis_aclk,
    s_axi_aresetn,
    s_axis_config_tvalid);
  input ADC_clk_64M;
  output [0:0]LED_GREEN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input [3:0]ctrl_s_axi_araddr;
  input [2:0]ctrl_s_axi_arprot;
  output ctrl_s_axi_arready;
  input ctrl_s_axi_arvalid;
  input [3:0]ctrl_s_axi_awaddr;
  input [2:0]ctrl_s_axi_awprot;
  output ctrl_s_axi_awready;
  input ctrl_s_axi_awvalid;
  input ctrl_s_axi_bready;
  output [1:0]ctrl_s_axi_bresp;
  output ctrl_s_axi_bvalid;
  output [31:0]ctrl_s_axi_rdata;
  input ctrl_s_axi_rready;
  output [1:0]ctrl_s_axi_rresp;
  output ctrl_s_axi_rvalid;
  input [31:0]ctrl_s_axi_wdata;
  output ctrl_s_axi_wready;
  input [3:0]ctrl_s_axi_wstrb;
  input ctrl_s_axi_wvalid;
  output [15:0]dout;
  output m_axis_data_tvalid;
  input s00_axis_aclk;
  input s_axi_aresetn;
  output [0:0]s_axis_config_tvalid;

  wire [3:0]Conn1_ARADDR;
  wire [2:0]Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [3:0]Conn1_AWADDR;
  wire [2:0]Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire PS_FCLK_CLK0;
  wire PS_FCLK_CLK1;
  wire [31:0]PS_M03_AXI_ARADDR;
  wire PS_M03_AXI_ARREADY;
  wire PS_M03_AXI_ARVALID;
  wire [31:0]PS_M03_AXI_AWADDR;
  wire PS_M03_AXI_AWREADY;
  wire PS_M03_AXI_AWVALID;
  wire PS_M03_AXI_BREADY;
  wire [1:0]PS_M03_AXI_BRESP;
  wire PS_M03_AXI_BVALID;
  wire [31:0]PS_M03_AXI_RDATA;
  wire PS_M03_AXI_RREADY;
  wire [1:0]PS_M03_AXI_RRESP;
  wire PS_M03_AXI_RVALID;
  wire [31:0]PS_M03_AXI_WDATA;
  wire PS_M03_AXI_WREADY;
  wire [3:0]PS_M03_AXI_WSTRB;
  wire PS_M03_AXI_WVALID;
  wire [15:0]RF_test_1MHz_m_axis_data_tdata;
  wire RF_test_1MHz_m_axis_data_tvalid;
  wire [0:0]axi_gpio_dds_gpio2_io_o;
  wire [15:0]c_addsub_0_S;
  wire [31:0]dds_axi_interface_0_ctrl_m_axis_TDATA;
  wire dds_axi_interface_0_ctrl_m_axis_TVALID;
  wire [15:0]dds_compiler_1KHz_m_axis_data_tdata;
  wire [15:0]mult_gen_0_P;
  wire s_axi_aresetn_1;
  wire [0:0]xlconstant_1_dout;
  wire [15:0]xlconstant_2048_dout;
  wire [0:0]xlconstant_2_dout;

  assign Conn1_ARADDR = ctrl_s_axi_araddr[3:0];
  assign Conn1_ARPROT = ctrl_s_axi_arprot[2:0];
  assign Conn1_ARVALID = ctrl_s_axi_arvalid;
  assign Conn1_AWADDR = ctrl_s_axi_awaddr[3:0];
  assign Conn1_AWPROT = ctrl_s_axi_awprot[2:0];
  assign Conn1_AWVALID = ctrl_s_axi_awvalid;
  assign Conn1_BREADY = ctrl_s_axi_bready;
  assign Conn1_RREADY = ctrl_s_axi_rready;
  assign Conn1_WDATA = ctrl_s_axi_wdata[31:0];
  assign Conn1_WSTRB = ctrl_s_axi_wstrb[3:0];
  assign Conn1_WVALID = ctrl_s_axi_wvalid;
  assign LED_GREEN[0] = axi_gpio_dds_gpio2_io_o;
  assign PS_FCLK_CLK0 = s00_axis_aclk;
  assign PS_FCLK_CLK1 = ADC_clk_64M;
  assign PS_M03_AXI_ARADDR = S_AXI_araddr[31:0];
  assign PS_M03_AXI_ARVALID = S_AXI_arvalid;
  assign PS_M03_AXI_AWADDR = S_AXI_awaddr[31:0];
  assign PS_M03_AXI_AWVALID = S_AXI_awvalid;
  assign PS_M03_AXI_BREADY = S_AXI_bready;
  assign PS_M03_AXI_RREADY = S_AXI_rready;
  assign PS_M03_AXI_WDATA = S_AXI_wdata[31:0];
  assign PS_M03_AXI_WSTRB = S_AXI_wstrb[3:0];
  assign PS_M03_AXI_WVALID = S_AXI_wvalid;
  assign S_AXI_arready = PS_M03_AXI_ARREADY;
  assign S_AXI_awready = PS_M03_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = PS_M03_AXI_BRESP;
  assign S_AXI_bvalid = PS_M03_AXI_BVALID;
  assign S_AXI_rdata[31:0] = PS_M03_AXI_RDATA;
  assign S_AXI_rresp[1:0] = PS_M03_AXI_RRESP;
  assign S_AXI_rvalid = PS_M03_AXI_RVALID;
  assign S_AXI_wready = PS_M03_AXI_WREADY;
  assign ctrl_s_axi_arready = Conn1_ARREADY;
  assign ctrl_s_axi_awready = Conn1_AWREADY;
  assign ctrl_s_axi_bresp[1:0] = Conn1_BRESP;
  assign ctrl_s_axi_bvalid = Conn1_BVALID;
  assign ctrl_s_axi_rdata[31:0] = Conn1_RDATA;
  assign ctrl_s_axi_rresp[1:0] = Conn1_RRESP;
  assign ctrl_s_axi_rvalid = Conn1_RVALID;
  assign ctrl_s_axi_wready = Conn1_WREADY;
  assign dout[15:0] = mult_gen_0_P;
  assign m_axis_data_tvalid = RF_test_1MHz_m_axis_data_tvalid;
  assign s_axi_aresetn_1 = s_axi_aresetn;
  assign s_axis_config_tvalid[0] = xlconstant_1_dout;
  ebaz4205_dds_compiler_0_0 RF_test_10MHz
       (.aclk(PS_FCLK_CLK1),
        .m_axis_data_tdata(RF_test_1MHz_m_axis_data_tdata),
        .m_axis_data_tvalid(RF_test_1MHz_m_axis_data_tvalid),
        .s_axis_config_tdata(dds_axi_interface_0_ctrl_m_axis_TDATA),
        .s_axis_config_tvalid(dds_axi_interface_0_ctrl_m_axis_TVALID));
  ebaz4205_axi_gpio_1_0 axi_gpio_ADC_TEST
       (.gpio2_io_o(axi_gpio_dds_gpio2_io_o),
        .s_axi_aclk(PS_FCLK_CLK0),
        .s_axi_araddr(PS_M03_AXI_ARADDR[8:0]),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arready(PS_M03_AXI_ARREADY),
        .s_axi_arvalid(PS_M03_AXI_ARVALID),
        .s_axi_awaddr(PS_M03_AXI_AWADDR[8:0]),
        .s_axi_awready(PS_M03_AXI_AWREADY),
        .s_axi_awvalid(PS_M03_AXI_AWVALID),
        .s_axi_bready(PS_M03_AXI_BREADY),
        .s_axi_bresp(PS_M03_AXI_BRESP),
        .s_axi_bvalid(PS_M03_AXI_BVALID),
        .s_axi_rdata(PS_M03_AXI_RDATA),
        .s_axi_rready(PS_M03_AXI_RREADY),
        .s_axi_rresp(PS_M03_AXI_RRESP),
        .s_axi_rvalid(PS_M03_AXI_RVALID),
        .s_axi_wdata(PS_M03_AXI_WDATA),
        .s_axi_wready(PS_M03_AXI_WREADY),
        .s_axi_wstrb(PS_M03_AXI_WSTRB),
        .s_axi_wvalid(PS_M03_AXI_WVALID));
  ebaz4205_c_addsub_0_1 c_addsub_0
       (.A(xlconstant_2048_dout),
        .B(dds_compiler_1KHz_m_axis_data_tdata),
        .CLK(PS_FCLK_CLK1),
        .S(c_addsub_0_S));
  ebaz4205_dds_axi_interface_0_2 dds_axi_interface_0
       (.ctrl_m_axis_aclk(PS_FCLK_CLK1),
        .ctrl_m_axis_aresetn(xlconstant_2_dout),
        .ctrl_m_axis_tdata(dds_axi_interface_0_ctrl_m_axis_TDATA),
        .ctrl_m_axis_tvalid(dds_axi_interface_0_ctrl_m_axis_TVALID),
        .ctrl_s_axi_aclk(PS_FCLK_CLK1),
        .ctrl_s_axi_araddr(Conn1_ARADDR),
        .ctrl_s_axi_aresetn(xlconstant_2_dout),
        .ctrl_s_axi_arprot(Conn1_ARPROT),
        .ctrl_s_axi_arready(Conn1_ARREADY),
        .ctrl_s_axi_arvalid(Conn1_ARVALID),
        .ctrl_s_axi_awaddr(Conn1_AWADDR),
        .ctrl_s_axi_awprot(Conn1_AWPROT),
        .ctrl_s_axi_awready(Conn1_AWREADY),
        .ctrl_s_axi_awvalid(Conn1_AWVALID),
        .ctrl_s_axi_bready(Conn1_BREADY),
        .ctrl_s_axi_bresp(Conn1_BRESP),
        .ctrl_s_axi_bvalid(Conn1_BVALID),
        .ctrl_s_axi_rdata(Conn1_RDATA),
        .ctrl_s_axi_rready(Conn1_RREADY),
        .ctrl_s_axi_rresp(Conn1_RRESP),
        .ctrl_s_axi_rvalid(Conn1_RVALID),
        .ctrl_s_axi_wdata(Conn1_WDATA),
        .ctrl_s_axi_wready(Conn1_WREADY),
        .ctrl_s_axi_wstrb(Conn1_WSTRB),
        .ctrl_s_axi_wvalid(Conn1_WVALID));
  ebaz4205_dds_compiler_0_2 dds_compiler_1KHz
       (.aclk(PS_FCLK_CLK1),
        .m_axis_data_tdata(dds_compiler_1KHz_m_axis_data_tdata));
  ebaz4205_mult_gen_0_2 mult_gen_AM_modulator
       (.A(RF_test_1MHz_m_axis_data_tdata),
        .B(c_addsub_0_S),
        .CLK(PS_FCLK_CLK1),
        .P(mult_gen_0_P));
  ebaz4205_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  ebaz4205_xlconstant_2_3 xlconstant_2
       (.dout(xlconstant_2_dout));
  ebaz4205_xlconstant_3_0 xlconstant_2048
       (.dout(xlconstant_2048_dout));
endmodule

/* PS groups:
- Programmable System(CPU)
- Reset
- AXI control
- Ethernet */
(* CORE_GENERATION_INFO = "ebaz4205,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ebaz4205,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=84,numReposBlks=62,numNonXlnxBlks=0,numHierBlks=22,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=11,numPkgbdBlks=0,bdsource=USER,\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_axi4_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"=1,\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_board_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"=1,\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_clkrst_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"=2,\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_axi4_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"=1,\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_clkrst_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"=1,\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_axi4_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"=3,\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_board_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"=2,\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_axi4_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"=2,\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_clkrst_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"=2,\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_axi4_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"=1,\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_board_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"=1,\"\"\"\"\"\"\"da_axi4_cnt\"\"\"\"\"\"\"=1,\"\"\"\"\"\"\"da_board_cnt\"\"\"\"\"\"\"=1,da_axi4_cnt=10,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "ebaz4205.hwdef" *) 
module ebaz4205
   (ADC_clk_64M,
    ADC_in,
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
    ENET0_GMII_RX_CLK_0,
    ENET0_GMII_RX_DV_0,
    ENET0_GMII_TX_CLK_0,
    ENET0_GMII_TX_EN_0,
    FCLK_CLK3_0,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    I2SDATA,
    LED_GREEN,
    LED_RED,
    LRCLK,
    MDIO_ETHERNET_0_0_mdc,
    MDIO_ETHERNET_0_0_mdio_i,
    MDIO_ETHERNET_0_0_mdio_o,
    MDIO_ETHERNET_0_0_mdio_t,
    OTR,
    SCLK,
    enet0_gmii_rxd,
    enet0_gmii_txd);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ADC_CLK_64M CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ADC_CLK_64M, CLK_DOMAIN ebaz4205_processing_system7_0_0_FCLK_CLK1, FREQ_HZ 64000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output ADC_clk_64M;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ADC_IN DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ADC_IN, LAYERED_METADATA undef" *) input [11:0]ADC_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ENET0_GMII_RX_CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ENET0_GMII_RX_CLK_0, CLK_DOMAIN ebaz4205_ENET0_GMII_RX_CLK_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ENET0_GMII_RX_CLK_0;
  input ENET0_GMII_RX_DV_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ENET0_GMII_TX_CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ENET0_GMII_TX_CLK_0, CLK_DOMAIN ebaz4205_ENET0_GMII_TX_CLK_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ENET0_GMII_TX_CLK_0;
  output [0:0]ENET0_GMII_TX_EN_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.FCLK_CLK3_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.FCLK_CLK3_0, CLK_DOMAIN ebaz4205_processing_system7_0_0_FCLK_CLK3, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output FCLK_CLK3_0;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  output I2SDATA;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LED_GREEN DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LED_GREEN, LAYERED_METADATA undef" *) output [0:0]LED_GREEN;
  output [0:0]LED_RED;
  output LRCLK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 MDIO_ETHERNET_0_0 MDC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MDIO_ETHERNET_0_0, CAN_DEBUG false" *) output MDIO_ETHERNET_0_0_mdc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 MDIO_ETHERNET_0_0 MDIO_I" *) input MDIO_ETHERNET_0_0_mdio_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 MDIO_ETHERNET_0_0 MDIO_O" *) output MDIO_ETHERNET_0_0_mdio_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 MDIO_ETHERNET_0_0 MDIO_T" *) output MDIO_ETHERNET_0_0_mdio_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.OTR DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.OTR, LAYERED_METADATA undef" *) input OTR;
  output SCLK;
  input [3:0]enet0_gmii_rxd;
  output [3:0]enet0_gmii_txd;

  wire [0:0]ADC_TestGen_LED_GREEN1;
  wire [11:0]ADC_in_1;
  wire ADCandTestGen_output_axis_tvalid;
  wire [15:0]AM_demodulator_U;
  wire [15:0]DDC_I;
  wire [15:0]DDC_Q;
  wire DivideBy2_clk_out;
  wire ENET0_GMII_RX_CLK_0_1;
  wire ENET0_GMII_RX_DV_0_1;
  wire ENET0_GMII_TX_CLK_0_1;
  wire [15:0]FIR_I_m_axis_data_tdata;
  wire [15:0]FIR_Q_m_axis_data_tdata;
  wire I2S_Transmitter_0_bclk;
  wire I2S_Transmitter_0_lrclk;
  wire I2S_Transmitter_0_sdata;
  wire [3:0]In0_0_1;
  wire OTR_1;
  wire [0:0]PS_ARESETN;
  wire PS_FCLK_CLK0;
  wire PS_FCLK_CLK1;
  wire PS_FCLK_CLK3_0;
  wire PS_FCLK_RESET0_N;
  wire [31:0]PS_M00_AXI_ARADDR;
  wire [2:0]PS_M00_AXI_ARPROT;
  wire PS_M00_AXI_ARREADY;
  wire PS_M00_AXI_ARVALID;
  wire [31:0]PS_M00_AXI_AWADDR;
  wire [2:0]PS_M00_AXI_AWPROT;
  wire PS_M00_AXI_AWREADY;
  wire PS_M00_AXI_AWVALID;
  wire PS_M00_AXI_BREADY;
  wire [1:0]PS_M00_AXI_BRESP;
  wire PS_M00_AXI_BVALID;
  wire [31:0]PS_M00_AXI_RDATA;
  wire PS_M00_AXI_RREADY;
  wire [1:0]PS_M00_AXI_RRESP;
  wire PS_M00_AXI_RVALID;
  wire [31:0]PS_M00_AXI_WDATA;
  wire PS_M00_AXI_WREADY;
  wire [3:0]PS_M00_AXI_WSTRB;
  wire PS_M00_AXI_WVALID;
  wire [3:0]PS_M01_AXI_ARADDR;
  wire [2:0]PS_M01_AXI_ARPROT;
  wire PS_M01_AXI_ARREADY;
  wire PS_M01_AXI_ARVALID;
  wire [3:0]PS_M01_AXI_AWADDR;
  wire [2:0]PS_M01_AXI_AWPROT;
  wire PS_M01_AXI_AWREADY;
  wire PS_M01_AXI_AWVALID;
  wire PS_M01_AXI_BREADY;
  wire [1:0]PS_M01_AXI_BRESP;
  wire PS_M01_AXI_BVALID;
  wire [31:0]PS_M01_AXI_RDATA;
  wire PS_M01_AXI_RREADY;
  wire [1:0]PS_M01_AXI_RRESP;
  wire PS_M01_AXI_RVALID;
  wire [31:0]PS_M01_AXI_WDATA;
  wire PS_M01_AXI_WREADY;
  wire [3:0]PS_M01_AXI_WSTRB;
  wire PS_M01_AXI_WVALID;
  wire [31:0]PS_M02_AXI_ARADDR;
  wire PS_M02_AXI_ARREADY;
  wire PS_M02_AXI_ARVALID;
  wire [31:0]PS_M02_AXI_AWADDR;
  wire PS_M02_AXI_AWREADY;
  wire PS_M02_AXI_AWVALID;
  wire PS_M02_AXI_BREADY;
  wire [1:0]PS_M02_AXI_BRESP;
  wire PS_M02_AXI_BVALID;
  wire [31:0]PS_M02_AXI_RDATA;
  wire PS_M02_AXI_RREADY;
  wire [1:0]PS_M02_AXI_RRESP;
  wire PS_M02_AXI_RVALID;
  wire [31:0]PS_M02_AXI_WDATA;
  wire PS_M02_AXI_WREADY;
  wire [3:0]PS_M02_AXI_WSTRB;
  wire PS_M02_AXI_WVALID;
  wire [31:0]PS_M03_AXI_ARADDR;
  wire PS_M03_AXI_ARREADY;
  wire PS_M03_AXI_ARVALID;
  wire [31:0]PS_M03_AXI_AWADDR;
  wire PS_M03_AXI_AWREADY;
  wire PS_M03_AXI_AWVALID;
  wire PS_M03_AXI_BREADY;
  wire [1:0]PS_M03_AXI_BRESP;
  wire PS_M03_AXI_BVALID;
  wire [31:0]PS_M03_AXI_RDATA;
  wire PS_M03_AXI_RREADY;
  wire [1:0]PS_M03_AXI_RRESP;
  wire PS_M03_AXI_RVALID;
  wire [31:0]PS_M03_AXI_WDATA;
  wire PS_M03_AXI_WREADY;
  wire [3:0]PS_M03_AXI_WSTRB;
  wire PS_M03_AXI_WVALID;
  wire [3:0]PS_M04_AXI_ARADDR;
  wire [2:0]PS_M04_AXI_ARPROT;
  wire PS_M04_AXI_ARREADY;
  wire PS_M04_AXI_ARVALID;
  wire [3:0]PS_M04_AXI_AWADDR;
  wire [2:0]PS_M04_AXI_AWPROT;
  wire PS_M04_AXI_AWREADY;
  wire PS_M04_AXI_AWVALID;
  wire PS_M04_AXI_BREADY;
  wire [1:0]PS_M04_AXI_BRESP;
  wire PS_M04_AXI_BVALID;
  wire [31:0]PS_M04_AXI_RDATA;
  wire PS_M04_AXI_RREADY;
  wire [1:0]PS_M04_AXI_RRESP;
  wire PS_M04_AXI_RVALID;
  wire [31:0]PS_M04_AXI_WDATA;
  wire PS_M04_AXI_WREADY;
  wire [3:0]PS_M04_AXI_WSTRB;
  wire PS_M04_AXI_WVALID;
  wire [3:0]PS_M05_AXI_ARADDR;
  wire [2:0]PS_M05_AXI_ARPROT;
  wire PS_M05_AXI_ARREADY;
  wire PS_M05_AXI_ARVALID;
  wire [3:0]PS_M05_AXI_AWADDR;
  wire [2:0]PS_M05_AXI_AWPROT;
  wire PS_M05_AXI_AWREADY;
  wire PS_M05_AXI_AWVALID;
  wire PS_M05_AXI_BREADY;
  wire [1:0]PS_M05_AXI_BRESP;
  wire PS_M05_AXI_BVALID;
  wire [31:0]PS_M05_AXI_RDATA;
  wire PS_M05_AXI_RREADY;
  wire [1:0]PS_M05_AXI_RRESP;
  wire PS_M05_AXI_RVALID;
  wire [31:0]PS_M05_AXI_WDATA;
  wire PS_M05_AXI_WREADY;
  wire [3:0]PS_M05_AXI_WSTRB;
  wire PS_M05_AXI_WVALID;
  wire [15:0]PS_M07_AXI_ARADDR;
  wire PS_M07_AXI_ARREADY;
  wire PS_M07_AXI_ARVALID;
  wire [15:0]PS_M07_AXI_AWADDR;
  wire PS_M07_AXI_AWREADY;
  wire PS_M07_AXI_AWVALID;
  wire PS_M07_AXI_BREADY;
  wire [1:0]PS_M07_AXI_BRESP;
  wire PS_M07_AXI_BVALID;
  wire [31:0]PS_M07_AXI_RDATA;
  wire PS_M07_AXI_RREADY;
  wire [1:0]PS_M07_AXI_RRESP;
  wire PS_M07_AXI_RVALID;
  wire [31:0]PS_M07_AXI_WDATA;
  wire PS_M07_AXI_WREADY;
  wire PS_M07_AXI_WVALID;
  wire [3:0]PS_M08_AXI_ARADDR;
  wire [2:0]PS_M08_AXI_ARPROT;
  wire PS_M08_AXI_ARREADY;
  wire PS_M08_AXI_ARVALID;
  wire [3:0]PS_M08_AXI_AWADDR;
  wire [2:0]PS_M08_AXI_AWPROT;
  wire PS_M08_AXI_AWREADY;
  wire PS_M08_AXI_AWVALID;
  wire PS_M08_AXI_BREADY;
  wire [1:0]PS_M08_AXI_BRESP;
  wire PS_M08_AXI_BVALID;
  wire [31:0]PS_M08_AXI_RDATA;
  wire PS_M08_AXI_RREADY;
  wire [1:0]PS_M08_AXI_RRESP;
  wire PS_M08_AXI_RVALID;
  wire [31:0]PS_M08_AXI_WDATA;
  wire PS_M08_AXI_WREADY;
  wire [3:0]PS_M08_AXI_WSTRB;
  wire PS_M08_AXI_WVALID;
  wire [31:0]PS_M09_AXI_ARADDR;
  wire PS_M09_AXI_ARREADY;
  wire PS_M09_AXI_ARVALID;
  wire [31:0]PS_M09_AXI_AWADDR;
  wire PS_M09_AXI_AWREADY;
  wire PS_M09_AXI_AWVALID;
  wire PS_M09_AXI_BREADY;
  wire [1:0]PS_M09_AXI_BRESP;
  wire PS_M09_AXI_BVALID;
  wire [31:0]PS_M09_AXI_RDATA;
  wire PS_M09_AXI_RREADY;
  wire [1:0]PS_M09_AXI_RRESP;
  wire PS_M09_AXI_RVALID;
  wire [31:0]PS_M09_AXI_WDATA;
  wire PS_M09_AXI_WREADY;
  wire [3:0]PS_M09_AXI_WSTRB;
  wire PS_M09_AXI_WVALID;
  wire [31:0]axi_axis_writer_LED_RED_m_axis_tdata;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire [0:0]processing_system7_0_ENET0_GMII_TX_EN;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire processing_system7_0_MDIO_ETHERNET_0_MDC;
  wire processing_system7_0_MDIO_ETHERNET_0_MDIO_I;
  wire processing_system7_0_MDIO_ETHERNET_0_MDIO_O;
  wire processing_system7_0_MDIO_ETHERNET_0_MDIO_T;
  wire [0:0]rst_ps7_0_64M_peripheral_aresetn;
  wire [31:0]xlconcat_0_dout1;
  wire [31:0]xlconcat_1_dout;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [3:0]xlslice_0_Dout;
  wire [11:0]xlslice_0_Dout1;
  wire [0:0]xlslice_1_Dout;

  assign ADC_clk_64M = PS_FCLK_CLK1;
  assign ADC_in_1 = ADC_in[11:0];
  assign ENET0_GMII_RX_CLK_0_1 = ENET0_GMII_RX_CLK_0;
  assign ENET0_GMII_RX_DV_0_1 = ENET0_GMII_RX_DV_0;
  assign ENET0_GMII_TX_CLK_0_1 = ENET0_GMII_TX_CLK_0;
  assign ENET0_GMII_TX_EN_0[0] = processing_system7_0_ENET0_GMII_TX_EN;
  assign FCLK_CLK3_0 = PS_FCLK_CLK3_0;
  assign I2SDATA = I2S_Transmitter_0_sdata;
  assign In0_0_1 = enet0_gmii_rxd[3:0];
  assign LED_GREEN[0] = ADC_TestGen_LED_GREEN1;
  assign LED_RED[0] = xlslice_1_Dout;
  assign LRCLK = I2S_Transmitter_0_lrclk;
  assign MDIO_ETHERNET_0_0_mdc = processing_system7_0_MDIO_ETHERNET_0_MDC;
  assign MDIO_ETHERNET_0_0_mdio_o = processing_system7_0_MDIO_ETHERNET_0_MDIO_O;
  assign MDIO_ETHERNET_0_0_mdio_t = processing_system7_0_MDIO_ETHERNET_0_MDIO_T;
  assign OTR_1 = OTR;
  assign SCLK = I2S_Transmitter_0_bclk;
  assign enet0_gmii_txd[3:0] = xlslice_0_Dout;
  assign processing_system7_0_MDIO_ETHERNET_0_MDIO_I = MDIO_ETHERNET_0_0_mdio_i;
  ADC_TestGen_imp_QGE54V ADC_TestGen
       (.ADC_clk_64M(PS_FCLK_CLK1),
        .ADC_in(ADC_in_1),
        .LED_GREEN1(ADC_TestGen_LED_GREEN1),
        .OTR(OTR_1),
        .S_AXI_araddr(PS_M03_AXI_ARADDR),
        .S_AXI_arready(PS_M03_AXI_ARREADY),
        .S_AXI_arvalid(PS_M03_AXI_ARVALID),
        .S_AXI_awaddr(PS_M03_AXI_AWADDR),
        .S_AXI_awready(PS_M03_AXI_AWREADY),
        .S_AXI_awvalid(PS_M03_AXI_AWVALID),
        .S_AXI_bready(PS_M03_AXI_BREADY),
        .S_AXI_bresp(PS_M03_AXI_BRESP),
        .S_AXI_bvalid(PS_M03_AXI_BVALID),
        .S_AXI_rdata(PS_M03_AXI_RDATA),
        .S_AXI_rready(PS_M03_AXI_RREADY),
        .S_AXI_rresp(PS_M03_AXI_RRESP),
        .S_AXI_rvalid(PS_M03_AXI_RVALID),
        .S_AXI_wdata(PS_M03_AXI_WDATA),
        .S_AXI_wready(PS_M03_AXI_WREADY),
        .S_AXI_wstrb(PS_M03_AXI_WSTRB),
        .S_AXI_wvalid(PS_M03_AXI_WVALID),
        .aresetn(rst_ps7_0_64M_peripheral_aresetn),
        .ctrl_s_axi_araddr(PS_M04_AXI_ARADDR),
        .ctrl_s_axi_arprot(PS_M04_AXI_ARPROT),
        .ctrl_s_axi_arready(PS_M04_AXI_ARREADY),
        .ctrl_s_axi_arvalid(PS_M04_AXI_ARVALID),
        .ctrl_s_axi_awaddr(PS_M04_AXI_AWADDR),
        .ctrl_s_axi_awprot(PS_M04_AXI_AWPROT),
        .ctrl_s_axi_awready(PS_M04_AXI_AWREADY),
        .ctrl_s_axi_awvalid(PS_M04_AXI_AWVALID),
        .ctrl_s_axi_bready(PS_M04_AXI_BREADY),
        .ctrl_s_axi_bresp(PS_M04_AXI_BRESP),
        .ctrl_s_axi_bvalid(PS_M04_AXI_BVALID),
        .ctrl_s_axi_rdata(PS_M04_AXI_RDATA),
        .ctrl_s_axi_rready(PS_M04_AXI_RREADY),
        .ctrl_s_axi_rresp(PS_M04_AXI_RRESP),
        .ctrl_s_axi_rvalid(PS_M04_AXI_RVALID),
        .ctrl_s_axi_wdata(PS_M04_AXI_WDATA),
        .ctrl_s_axi_wready(PS_M04_AXI_WREADY),
        .ctrl_s_axi_wstrb(PS_M04_AXI_WSTRB),
        .ctrl_s_axi_wvalid(PS_M04_AXI_WVALID),
        .dout(xlconcat_1_dout),
        .output_axis_tvalid(ADCandTestGen_output_axis_tvalid),
        .s00_axis_aclk(PS_FCLK_CLK0),
        .s_axi_aresetn(PS_ARESETN));
  AM_demodulator_imp_UCGGQS AM_demodulator
       (.ADC_clk_64M(PS_FCLK_CLK1),
        .B(FIR_I_m_axis_data_tdata),
        .B1(FIR_Q_m_axis_data_tdata),
        .U(AM_demodulator_U));
  DDC_imp_9GECP5 DDC
       (.A(xlslice_0_Dout1),
        .CLK(PS_FCLK_CLK1),
        .DDC_I(DDC_I),
        .DDC_Q(DDC_Q),
        .aresetn(rst_ps7_0_64M_peripheral_aresetn),
        .ctrl_s_axi_araddr(PS_M08_AXI_ARADDR),
        .ctrl_s_axi_arprot(PS_M08_AXI_ARPROT),
        .ctrl_s_axi_arready(PS_M08_AXI_ARREADY),
        .ctrl_s_axi_arvalid(PS_M08_AXI_ARVALID),
        .ctrl_s_axi_awaddr(PS_M08_AXI_AWADDR),
        .ctrl_s_axi_awprot(PS_M08_AXI_AWPROT),
        .ctrl_s_axi_awready(PS_M08_AXI_AWREADY),
        .ctrl_s_axi_awvalid(PS_M08_AXI_AWVALID),
        .ctrl_s_axi_bready(PS_M08_AXI_BREADY),
        .ctrl_s_axi_bresp(PS_M08_AXI_BRESP),
        .ctrl_s_axi_bvalid(PS_M08_AXI_BVALID),
        .ctrl_s_axi_rdata(PS_M08_AXI_RDATA),
        .ctrl_s_axi_rready(PS_M08_AXI_RREADY),
        .ctrl_s_axi_rresp(PS_M08_AXI_RRESP),
        .ctrl_s_axi_rvalid(PS_M08_AXI_RVALID),
        .ctrl_s_axi_wdata(PS_M08_AXI_WDATA),
        .ctrl_s_axi_wready(PS_M08_AXI_WREADY),
        .ctrl_s_axi_wstrb(PS_M08_AXI_WSTRB),
        .ctrl_s_axi_wvalid(PS_M08_AXI_WVALID));
  ebaz4205_DivideBy10_0 DivideBy10
       (.clk(PS_FCLK_CLK0),
        .clk_out(DivideBy2_clk_out),
        .resetn(PS_ARESETN));
  FILTER_imp_WBNR09 FILTER
       (.ADC_clk_64M(PS_FCLK_CLK1),
        .S_AXI1_araddr(PS_M09_AXI_ARADDR),
        .S_AXI1_arready(PS_M09_AXI_ARREADY),
        .S_AXI1_arvalid(PS_M09_AXI_ARVALID),
        .S_AXI1_awaddr(PS_M09_AXI_AWADDR),
        .S_AXI1_awready(PS_M09_AXI_AWREADY),
        .S_AXI1_awvalid(PS_M09_AXI_AWVALID),
        .S_AXI1_bready(PS_M09_AXI_BREADY),
        .S_AXI1_bresp(PS_M09_AXI_BRESP),
        .S_AXI1_bvalid(PS_M09_AXI_BVALID),
        .S_AXI1_rdata(PS_M09_AXI_RDATA),
        .S_AXI1_rready(PS_M09_AXI_RREADY),
        .S_AXI1_rresp(PS_M09_AXI_RRESP),
        .S_AXI1_rvalid(PS_M09_AXI_RVALID),
        .S_AXI1_wdata(PS_M09_AXI_WDATA),
        .S_AXI1_wready(PS_M09_AXI_WREADY),
        .S_AXI1_wstrb(PS_M09_AXI_WSTRB),
        .S_AXI1_wvalid(PS_M09_AXI_WVALID),
        .aclk(PS_FCLK_CLK0),
        .aresetn(rst_ps7_0_64M_peripheral_aresetn),
        .aresetn1(PS_ARESETN),
        .ctrl_s_axi1_araddr(PS_M05_AXI_ARADDR),
        .ctrl_s_axi1_arprot(PS_M05_AXI_ARPROT),
        .ctrl_s_axi1_arready(PS_M05_AXI_ARREADY),
        .ctrl_s_axi1_arvalid(PS_M05_AXI_ARVALID),
        .ctrl_s_axi1_awaddr(PS_M05_AXI_AWADDR),
        .ctrl_s_axi1_awprot(PS_M05_AXI_AWPROT),
        .ctrl_s_axi1_awready(PS_M05_AXI_AWREADY),
        .ctrl_s_axi1_awvalid(PS_M05_AXI_AWVALID),
        .ctrl_s_axi1_bready(PS_M05_AXI_BREADY),
        .ctrl_s_axi1_bresp(PS_M05_AXI_BRESP),
        .ctrl_s_axi1_bvalid(PS_M05_AXI_BVALID),
        .ctrl_s_axi1_rdata(PS_M05_AXI_RDATA),
        .ctrl_s_axi1_rready(PS_M05_AXI_RREADY),
        .ctrl_s_axi1_rresp(PS_M05_AXI_RRESP),
        .ctrl_s_axi1_rvalid(PS_M05_AXI_RVALID),
        .ctrl_s_axi1_wdata(PS_M05_AXI_WDATA),
        .ctrl_s_axi1_wready(PS_M05_AXI_WREADY),
        .ctrl_s_axi1_wstrb(PS_M05_AXI_WSTRB),
        .ctrl_s_axi1_wvalid(PS_M05_AXI_WVALID),
        .ctrl_s_axi_araddr(PS_M01_AXI_ARADDR),
        .ctrl_s_axi_arprot(PS_M01_AXI_ARPROT),
        .ctrl_s_axi_arready(PS_M01_AXI_ARREADY),
        .ctrl_s_axi_arvalid(PS_M01_AXI_ARVALID),
        .ctrl_s_axi_awaddr(PS_M01_AXI_AWADDR),
        .ctrl_s_axi_awprot(PS_M01_AXI_AWPROT),
        .ctrl_s_axi_awready(PS_M01_AXI_AWREADY),
        .ctrl_s_axi_awvalid(PS_M01_AXI_AWVALID),
        .ctrl_s_axi_bready(PS_M01_AXI_BREADY),
        .ctrl_s_axi_bresp(PS_M01_AXI_BRESP),
        .ctrl_s_axi_bvalid(PS_M01_AXI_BVALID),
        .ctrl_s_axi_rdata(PS_M01_AXI_RDATA),
        .ctrl_s_axi_rready(PS_M01_AXI_RREADY),
        .ctrl_s_axi_rresp(PS_M01_AXI_RRESP),
        .ctrl_s_axi_rvalid(PS_M01_AXI_RVALID),
        .ctrl_s_axi_wdata(PS_M01_AXI_WDATA),
        .ctrl_s_axi_wready(PS_M01_AXI_WREADY),
        .ctrl_s_axi_wstrb(PS_M01_AXI_WSTRB),
        .ctrl_s_axi_wvalid(PS_M01_AXI_WVALID),
        .m_axis_data_tdata(FIR_Q_m_axis_data_tdata),
        .m_axis_data_tdata1(FIR_I_m_axis_data_tdata),
        .s_axis_data_tdata(DDC_I),
        .s_axis_data_tdata1(DDC_Q),
        .s_axis_data_tvalid(xlconstant_0_dout));
  I2S_imp_1GQSHGG I2S
       (.s00_axis_aclk(PS_FCLK_CLK0),
        .s00_axis_aresetn(PS_ARESETN));
  ebaz4205_I2S_Transmitter_0_2 I2S_Transmitter_0
       (.bclk(I2S_Transmitter_0_bclk),
        .lrclk(I2S_Transmitter_0_lrclk),
        .mclk(DivideBy2_clk_out),
        .s00_axis_aclk(PS_FCLK_CLK0),
        .s00_axis_aresetn(PS_ARESETN),
        .s00_axis_tdata(xlconcat_0_dout1),
        .s00_axis_tlast(1'b0),
        .s00_axis_tstrb({1'b1,1'b1,1'b1,1'b1}),
        .s00_axis_tvalid(xlconstant_1_dout),
        .sdata(I2S_Transmitter_0_sdata));
  LEDdriver_imp_DEC1BF LEDdriver
       (.S_AXI_araddr(PS_M02_AXI_ARADDR),
        .S_AXI_arready(PS_M02_AXI_ARREADY),
        .S_AXI_arvalid(PS_M02_AXI_ARVALID),
        .S_AXI_awaddr(PS_M02_AXI_AWADDR),
        .S_AXI_awready(PS_M02_AXI_AWREADY),
        .S_AXI_awvalid(PS_M02_AXI_AWVALID),
        .S_AXI_bready(PS_M02_AXI_BREADY),
        .S_AXI_bresp(PS_M02_AXI_BRESP),
        .S_AXI_bvalid(PS_M02_AXI_BVALID),
        .S_AXI_rdata(PS_M02_AXI_RDATA),
        .S_AXI_rready(PS_M02_AXI_RREADY),
        .S_AXI_rresp(PS_M02_AXI_RRESP),
        .S_AXI_rvalid(PS_M02_AXI_RVALID),
        .S_AXI_wdata(PS_M02_AXI_WDATA),
        .S_AXI_wready(PS_M02_AXI_WREADY),
        .S_AXI_wstrb(PS_M02_AXI_WSTRB),
        .S_AXI_wvalid(PS_M02_AXI_WVALID),
        .s_axi_aclk(PS_FCLK_CLK0));
  PS_imp_1B1U9UK PS
       (.ARESETN(PS_ARESETN),
        .DDR_addr(DDR_addr[14:0]),
        .DDR_ba(DDR_ba[2:0]),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm[3:0]),
        .DDR_dq(DDR_dq[31:0]),
        .DDR_dqs_n(DDR_dqs_n[3:0]),
        .DDR_dqs_p(DDR_dqs_p[3:0]),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .ENET0_GMII_RX_CLK_0(ENET0_GMII_RX_CLK_0_1),
        .ENET0_GMII_RX_DV_0(ENET0_GMII_RX_DV_0_1),
        .ENET0_GMII_TX_CLK_0(ENET0_GMII_TX_CLK_0_1),
        .ENET0_GMII_TX_EN_0(processing_system7_0_ENET0_GMII_TX_EN),
        .FCLK_CLK0_100M(PS_FCLK_CLK0),
        .FCLK_CLK1_64M(PS_FCLK_CLK1),
        .FCLK_CLK3_25M(PS_FCLK_CLK3_0),
        .FCLK_RESET0_N(PS_FCLK_RESET0_N),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio[53:0]),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .M00_AXI_araddr(PS_M00_AXI_ARADDR),
        .M00_AXI_arprot(PS_M00_AXI_ARPROT),
        .M00_AXI_arready(PS_M00_AXI_ARREADY),
        .M00_AXI_arvalid(PS_M00_AXI_ARVALID),
        .M00_AXI_awaddr(PS_M00_AXI_AWADDR),
        .M00_AXI_awprot(PS_M00_AXI_AWPROT),
        .M00_AXI_awready(PS_M00_AXI_AWREADY),
        .M00_AXI_awvalid(PS_M00_AXI_AWVALID),
        .M00_AXI_bready(PS_M00_AXI_BREADY),
        .M00_AXI_bresp(PS_M00_AXI_BRESP),
        .M00_AXI_bvalid(PS_M00_AXI_BVALID),
        .M00_AXI_rdata(PS_M00_AXI_RDATA),
        .M00_AXI_rready(PS_M00_AXI_RREADY),
        .M00_AXI_rresp(PS_M00_AXI_RRESP),
        .M00_AXI_rvalid(PS_M00_AXI_RVALID),
        .M00_AXI_wdata(PS_M00_AXI_WDATA),
        .M00_AXI_wready(PS_M00_AXI_WREADY),
        .M00_AXI_wstrb(PS_M00_AXI_WSTRB),
        .M00_AXI_wvalid(PS_M00_AXI_WVALID),
        .M01_AXI_araddr(PS_M01_AXI_ARADDR),
        .M01_AXI_arprot(PS_M01_AXI_ARPROT),
        .M01_AXI_arready(PS_M01_AXI_ARREADY),
        .M01_AXI_arvalid(PS_M01_AXI_ARVALID),
        .M01_AXI_awaddr(PS_M01_AXI_AWADDR),
        .M01_AXI_awprot(PS_M01_AXI_AWPROT),
        .M01_AXI_awready(PS_M01_AXI_AWREADY),
        .M01_AXI_awvalid(PS_M01_AXI_AWVALID),
        .M01_AXI_bready(PS_M01_AXI_BREADY),
        .M01_AXI_bresp(PS_M01_AXI_BRESP),
        .M01_AXI_bvalid(PS_M01_AXI_BVALID),
        .M01_AXI_rdata(PS_M01_AXI_RDATA),
        .M01_AXI_rready(PS_M01_AXI_RREADY),
        .M01_AXI_rresp(PS_M01_AXI_RRESP),
        .M01_AXI_rvalid(PS_M01_AXI_RVALID),
        .M01_AXI_wdata(PS_M01_AXI_WDATA),
        .M01_AXI_wready(PS_M01_AXI_WREADY),
        .M01_AXI_wstrb(PS_M01_AXI_WSTRB),
        .M01_AXI_wvalid(PS_M01_AXI_WVALID),
        .M02_AXI_araddr(PS_M02_AXI_ARADDR),
        .M02_AXI_arready(PS_M02_AXI_ARREADY),
        .M02_AXI_arvalid(PS_M02_AXI_ARVALID),
        .M02_AXI_awaddr(PS_M02_AXI_AWADDR),
        .M02_AXI_awready(PS_M02_AXI_AWREADY),
        .M02_AXI_awvalid(PS_M02_AXI_AWVALID),
        .M02_AXI_bready(PS_M02_AXI_BREADY),
        .M02_AXI_bresp(PS_M02_AXI_BRESP),
        .M02_AXI_bvalid(PS_M02_AXI_BVALID),
        .M02_AXI_rdata(PS_M02_AXI_RDATA),
        .M02_AXI_rready(PS_M02_AXI_RREADY),
        .M02_AXI_rresp(PS_M02_AXI_RRESP),
        .M02_AXI_rvalid(PS_M02_AXI_RVALID),
        .M02_AXI_wdata(PS_M02_AXI_WDATA),
        .M02_AXI_wready(PS_M02_AXI_WREADY),
        .M02_AXI_wstrb(PS_M02_AXI_WSTRB),
        .M02_AXI_wvalid(PS_M02_AXI_WVALID),
        .M03_AXI_araddr(PS_M03_AXI_ARADDR),
        .M03_AXI_arready(PS_M03_AXI_ARREADY),
        .M03_AXI_arvalid(PS_M03_AXI_ARVALID),
        .M03_AXI_awaddr(PS_M03_AXI_AWADDR),
        .M03_AXI_awready(PS_M03_AXI_AWREADY),
        .M03_AXI_awvalid(PS_M03_AXI_AWVALID),
        .M03_AXI_bready(PS_M03_AXI_BREADY),
        .M03_AXI_bresp(PS_M03_AXI_BRESP),
        .M03_AXI_bvalid(PS_M03_AXI_BVALID),
        .M03_AXI_rdata(PS_M03_AXI_RDATA),
        .M03_AXI_rready(PS_M03_AXI_RREADY),
        .M03_AXI_rresp(PS_M03_AXI_RRESP),
        .M03_AXI_rvalid(PS_M03_AXI_RVALID),
        .M03_AXI_wdata(PS_M03_AXI_WDATA),
        .M03_AXI_wready(PS_M03_AXI_WREADY),
        .M03_AXI_wstrb(PS_M03_AXI_WSTRB),
        .M03_AXI_wvalid(PS_M03_AXI_WVALID),
        .M04_ARESETN(rst_ps7_0_64M_peripheral_aresetn),
        .M04_AXI_araddr(PS_M04_AXI_ARADDR),
        .M04_AXI_arprot(PS_M04_AXI_ARPROT),
        .M04_AXI_arready(PS_M04_AXI_ARREADY),
        .M04_AXI_arvalid(PS_M04_AXI_ARVALID),
        .M04_AXI_awaddr(PS_M04_AXI_AWADDR),
        .M04_AXI_awprot(PS_M04_AXI_AWPROT),
        .M04_AXI_awready(PS_M04_AXI_AWREADY),
        .M04_AXI_awvalid(PS_M04_AXI_AWVALID),
        .M04_AXI_bready(PS_M04_AXI_BREADY),
        .M04_AXI_bresp(PS_M04_AXI_BRESP),
        .M04_AXI_bvalid(PS_M04_AXI_BVALID),
        .M04_AXI_rdata(PS_M04_AXI_RDATA),
        .M04_AXI_rready(PS_M04_AXI_RREADY),
        .M04_AXI_rresp(PS_M04_AXI_RRESP),
        .M04_AXI_rvalid(PS_M04_AXI_RVALID),
        .M04_AXI_wdata(PS_M04_AXI_WDATA),
        .M04_AXI_wready(PS_M04_AXI_WREADY),
        .M04_AXI_wstrb(PS_M04_AXI_WSTRB),
        .M04_AXI_wvalid(PS_M04_AXI_WVALID),
        .M05_AXI_araddr(PS_M05_AXI_ARADDR),
        .M05_AXI_arprot(PS_M05_AXI_ARPROT),
        .M05_AXI_arready(PS_M05_AXI_ARREADY),
        .M05_AXI_arvalid(PS_M05_AXI_ARVALID),
        .M05_AXI_awaddr(PS_M05_AXI_AWADDR),
        .M05_AXI_awprot(PS_M05_AXI_AWPROT),
        .M05_AXI_awready(PS_M05_AXI_AWREADY),
        .M05_AXI_awvalid(PS_M05_AXI_AWVALID),
        .M05_AXI_bready(PS_M05_AXI_BREADY),
        .M05_AXI_bresp(PS_M05_AXI_BRESP),
        .M05_AXI_bvalid(PS_M05_AXI_BVALID),
        .M05_AXI_rdata(PS_M05_AXI_RDATA),
        .M05_AXI_rready(PS_M05_AXI_RREADY),
        .M05_AXI_rresp(PS_M05_AXI_RRESP),
        .M05_AXI_rvalid(PS_M05_AXI_RVALID),
        .M05_AXI_wdata(PS_M05_AXI_WDATA),
        .M05_AXI_wready(PS_M05_AXI_WREADY),
        .M05_AXI_wstrb(PS_M05_AXI_WSTRB),
        .M05_AXI_wvalid(PS_M05_AXI_WVALID),
        .M06_AXI_arready(1'b0),
        .M06_AXI_awready(1'b0),
        .M06_AXI_bresp({1'b0,1'b0}),
        .M06_AXI_bvalid(1'b0),
        .M06_AXI_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M06_AXI_rresp({1'b0,1'b0}),
        .M06_AXI_rvalid(1'b0),
        .M06_AXI_wready(1'b0),
        .M07_AXI_araddr(PS_M07_AXI_ARADDR),
        .M07_AXI_arready(PS_M07_AXI_ARREADY),
        .M07_AXI_arvalid(PS_M07_AXI_ARVALID),
        .M07_AXI_awaddr(PS_M07_AXI_AWADDR),
        .M07_AXI_awready(PS_M07_AXI_AWREADY),
        .M07_AXI_awvalid(PS_M07_AXI_AWVALID),
        .M07_AXI_bready(PS_M07_AXI_BREADY),
        .M07_AXI_bresp(PS_M07_AXI_BRESP),
        .M07_AXI_bvalid(PS_M07_AXI_BVALID),
        .M07_AXI_rdata(PS_M07_AXI_RDATA),
        .M07_AXI_rready(PS_M07_AXI_RREADY),
        .M07_AXI_rresp(PS_M07_AXI_RRESP),
        .M07_AXI_rvalid(PS_M07_AXI_RVALID),
        .M07_AXI_wdata(PS_M07_AXI_WDATA),
        .M07_AXI_wready(PS_M07_AXI_WREADY),
        .M07_AXI_wvalid(PS_M07_AXI_WVALID),
        .M08_AXI_araddr(PS_M08_AXI_ARADDR),
        .M08_AXI_arprot(PS_M08_AXI_ARPROT),
        .M08_AXI_arready(PS_M08_AXI_ARREADY),
        .M08_AXI_arvalid(PS_M08_AXI_ARVALID),
        .M08_AXI_awaddr(PS_M08_AXI_AWADDR),
        .M08_AXI_awprot(PS_M08_AXI_AWPROT),
        .M08_AXI_awready(PS_M08_AXI_AWREADY),
        .M08_AXI_awvalid(PS_M08_AXI_AWVALID),
        .M08_AXI_bready(PS_M08_AXI_BREADY),
        .M08_AXI_bresp(PS_M08_AXI_BRESP),
        .M08_AXI_bvalid(PS_M08_AXI_BVALID),
        .M08_AXI_rdata(PS_M08_AXI_RDATA),
        .M08_AXI_rready(PS_M08_AXI_RREADY),
        .M08_AXI_rresp(PS_M08_AXI_RRESP),
        .M08_AXI_rvalid(PS_M08_AXI_RVALID),
        .M08_AXI_wdata(PS_M08_AXI_WDATA),
        .M08_AXI_wready(PS_M08_AXI_WREADY),
        .M08_AXI_wstrb(PS_M08_AXI_WSTRB),
        .M08_AXI_wvalid(PS_M08_AXI_WVALID),
        .M09_AXI_araddr(PS_M09_AXI_ARADDR),
        .M09_AXI_arready(PS_M09_AXI_ARREADY),
        .M09_AXI_arvalid(PS_M09_AXI_ARVALID),
        .M09_AXI_awaddr(PS_M09_AXI_AWADDR),
        .M09_AXI_awready(PS_M09_AXI_AWREADY),
        .M09_AXI_awvalid(PS_M09_AXI_AWVALID),
        .M09_AXI_bready(PS_M09_AXI_BREADY),
        .M09_AXI_bresp(PS_M09_AXI_BRESP),
        .M09_AXI_bvalid(PS_M09_AXI_BVALID),
        .M09_AXI_rdata(PS_M09_AXI_RDATA),
        .M09_AXI_rready(PS_M09_AXI_RREADY),
        .M09_AXI_rresp(PS_M09_AXI_RRESP),
        .M09_AXI_rvalid(PS_M09_AXI_RVALID),
        .M09_AXI_wdata(PS_M09_AXI_WDATA),
        .M09_AXI_wready(PS_M09_AXI_WREADY),
        .M09_AXI_wstrb(PS_M09_AXI_WSTRB),
        .M09_AXI_wvalid(PS_M09_AXI_WVALID),
        .MDIO_ETHERNET_0_0_mdc(processing_system7_0_MDIO_ETHERNET_0_MDC),
        .MDIO_ETHERNET_0_0_mdio_i(processing_system7_0_MDIO_ETHERNET_0_MDIO_I),
        .MDIO_ETHERNET_0_0_mdio_o(processing_system7_0_MDIO_ETHERNET_0_MDIO_O),
        .MDIO_ETHERNET_0_0_mdio_t(processing_system7_0_MDIO_ETHERNET_0_MDIO_T),
        .S_AXI_HP0_araddr(1'b0),
        .S_AXI_HP0_arburst(1'b1),
        .S_AXI_HP0_arcache(1'b1),
        .S_AXI_HP0_arid(1'b0),
        .S_AXI_HP0_arlen(1'b0),
        .S_AXI_HP0_arlock(1'b0),
        .S_AXI_HP0_arprot(1'b0),
        .S_AXI_HP0_arqos(1'b0),
        .S_AXI_HP0_arsize(1'b1),
        .S_AXI_HP0_arvalid(1'b0),
        .S_AXI_HP0_awaddr(1'b0),
        .S_AXI_HP0_awburst(1'b1),
        .S_AXI_HP0_awcache(1'b1),
        .S_AXI_HP0_awid(1'b0),
        .S_AXI_HP0_awlen(1'b0),
        .S_AXI_HP0_awlock(1'b0),
        .S_AXI_HP0_awprot(1'b0),
        .S_AXI_HP0_awqos(1'b0),
        .S_AXI_HP0_awsize(1'b1),
        .S_AXI_HP0_awvalid(1'b0),
        .S_AXI_HP0_bready(1'b0),
        .S_AXI_HP0_rready(1'b0),
        .S_AXI_HP0_wdata(1'b0),
        .S_AXI_HP0_wid(1'b0),
        .S_AXI_HP0_wlast(1'b0),
        .S_AXI_HP0_wstrb(1'b1),
        .S_AXI_HP0_wvalid(1'b0),
        .enet0_gmii_rxd(In0_0_1),
        .enet0_gmii_txd(xlslice_0_Dout));
  ebaz4205_axi_axis_writer_DDS_GEN_0 axi_axis_writer_LED_RED
       (.aclk(PS_FCLK_CLK1),
        .aresetn(rst_ps7_0_64M_peripheral_aresetn),
        .m_axis_tdata(axi_axis_writer_LED_RED_m_axis_tdata),
        .s_axi_araddr(PS_M07_AXI_ARADDR),
        .s_axi_arready(PS_M07_AXI_ARREADY),
        .s_axi_arvalid(PS_M07_AXI_ARVALID),
        .s_axi_awaddr(PS_M07_AXI_AWADDR),
        .s_axi_awready(PS_M07_AXI_AWREADY),
        .s_axi_awvalid(PS_M07_AXI_AWVALID),
        .s_axi_bready(PS_M07_AXI_BREADY),
        .s_axi_bresp(PS_M07_AXI_BRESP),
        .s_axi_bvalid(PS_M07_AXI_BVALID),
        .s_axi_rdata(PS_M07_AXI_RDATA),
        .s_axi_rready(PS_M07_AXI_RREADY),
        .s_axi_rresp(PS_M07_AXI_RRESP),
        .s_axi_rvalid(PS_M07_AXI_RVALID),
        .s_axi_wdata(PS_M07_AXI_WDATA),
        .s_axi_wready(PS_M07_AXI_WREADY),
        .s_axi_wvalid(PS_M07_AXI_WVALID));
  ebaz4205_axis_capture_0_4 axis_capture_RF
       (.capture_clk(PS_FCLK_CLK1),
        .capture_data(xlconcat_1_dout),
        .capture_valid(ADCandTestGen_output_axis_tvalid),
        .ctrl_s_axi_aclk(PS_FCLK_CLK0),
        .ctrl_s_axi_araddr(PS_M00_AXI_ARADDR[4:0]),
        .ctrl_s_axi_aresetn(PS_ARESETN),
        .ctrl_s_axi_arprot(PS_M00_AXI_ARPROT),
        .ctrl_s_axi_arready(PS_M00_AXI_ARREADY),
        .ctrl_s_axi_arvalid(PS_M00_AXI_ARVALID),
        .ctrl_s_axi_awaddr(PS_M00_AXI_AWADDR[4:0]),
        .ctrl_s_axi_awprot(PS_M00_AXI_AWPROT),
        .ctrl_s_axi_awready(PS_M00_AXI_AWREADY),
        .ctrl_s_axi_awvalid(PS_M00_AXI_AWVALID),
        .ctrl_s_axi_bready(PS_M00_AXI_BREADY),
        .ctrl_s_axi_bresp(PS_M00_AXI_BRESP),
        .ctrl_s_axi_bvalid(PS_M00_AXI_BVALID),
        .ctrl_s_axi_rdata(PS_M00_AXI_RDATA),
        .ctrl_s_axi_rready(PS_M00_AXI_RREADY),
        .ctrl_s_axi_rresp(PS_M00_AXI_RRESP),
        .ctrl_s_axi_rvalid(PS_M00_AXI_RVALID),
        .ctrl_s_axi_wdata(PS_M00_AXI_WDATA),
        .ctrl_s_axi_wready(PS_M00_AXI_WREADY),
        .ctrl_s_axi_wstrb(PS_M00_AXI_WSTRB),
        .ctrl_s_axi_wvalid(PS_M00_AXI_WVALID));
  ebaz4205_rst_ps7_0_64M_0 rst_ps7_0_64M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(PS_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps7_0_64M_peripheral_aresetn),
        .slowest_sync_clk(PS_FCLK_CLK1));
  ebaz4205_xlconcat_0_2 xlconcat_0
       (.In0(AM_demodulator_U),
        .In1(AM_demodulator_U),
        .dout(xlconcat_0_dout1));
  ebaz4205_xlconstant_0_1 xlconstant_0
       (.dout(xlconstant_0_dout));
  ebaz4205_xlconstant_1_1 xlconstant_1
       (.dout(xlconstant_1_dout));
  ebaz4205_xlslice_0_4 xlslice_0
       (.Din(xlconcat_1_dout),
        .Dout(xlslice_0_Dout1));
  ebaz4205_xlslice_1_1 xlslice_1
       (.Din(axi_axis_writer_LED_RED_m_axis_tdata),
        .Dout(xlslice_1_Dout));
endmodule

module ebaz4205_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arprot,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awprot,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arprot,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awprot,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wvalid,
    M08_ACLK,
    M08_ARESETN,
    M08_AXI_araddr,
    M08_AXI_arprot,
    M08_AXI_arready,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awprot,
    M08_AXI_awready,
    M08_AXI_awvalid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    M09_ACLK,
    M09_ARESETN,
    M09_AXI_araddr,
    M09_AXI_arready,
    M09_AXI_arvalid,
    M09_AXI_awaddr,
    M09_AXI_awready,
    M09_AXI_awvalid,
    M09_AXI_bready,
    M09_AXI_bresp,
    M09_AXI_bvalid,
    M09_AXI_rdata,
    M09_AXI_rready,
    M09_AXI_rresp,
    M09_AXI_rvalid,
    M09_AXI_wdata,
    M09_AXI_wready,
    M09_AXI_wstrb,
    M09_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [3:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [3:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [3:0]M04_AXI_araddr;
  output [2:0]M04_AXI_arprot;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [3:0]M04_AXI_awaddr;
  output [2:0]M04_AXI_awprot;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [3:0]M05_AXI_araddr;
  output [2:0]M05_AXI_arprot;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [3:0]M05_AXI_awaddr;
  output [2:0]M05_AXI_awprot;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [15:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [15:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output M06_AXI_wvalid;
  input M07_ACLK;
  input M07_ARESETN;
  output [15:0]M07_AXI_araddr;
  input M07_AXI_arready;
  output M07_AXI_arvalid;
  output [15:0]M07_AXI_awaddr;
  input M07_AXI_awready;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input M07_AXI_wready;
  output M07_AXI_wvalid;
  input M08_ACLK;
  input M08_ARESETN;
  output [3:0]M08_AXI_araddr;
  output [2:0]M08_AXI_arprot;
  input M08_AXI_arready;
  output M08_AXI_arvalid;
  output [3:0]M08_AXI_awaddr;
  output [2:0]M08_AXI_awprot;
  input M08_AXI_awready;
  output M08_AXI_awvalid;
  output M08_AXI_bready;
  input [1:0]M08_AXI_bresp;
  input M08_AXI_bvalid;
  input [31:0]M08_AXI_rdata;
  output M08_AXI_rready;
  input [1:0]M08_AXI_rresp;
  input M08_AXI_rvalid;
  output [31:0]M08_AXI_wdata;
  input M08_AXI_wready;
  output [3:0]M08_AXI_wstrb;
  output M08_AXI_wvalid;
  input M09_ACLK;
  input M09_ARESETN;
  output [31:0]M09_AXI_araddr;
  input M09_AXI_arready;
  output M09_AXI_arvalid;
  output [31:0]M09_AXI_awaddr;
  input M09_AXI_awready;
  output M09_AXI_awvalid;
  output M09_AXI_bready;
  input [1:0]M09_AXI_bresp;
  input M09_AXI_bvalid;
  input [31:0]M09_AXI_rdata;
  output M09_AXI_rready;
  input [1:0]M09_AXI_rresp;
  input M09_AXI_rvalid;
  output [31:0]M09_AXI_wdata;
  input M09_AXI_wready;
  output [3:0]M09_AXI_wstrb;
  output M09_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output [0:0]S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output [0:0]S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [0:0]S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire M04_ACLK_1;
  wire M04_ARESETN_1;
  wire M05_ACLK_1;
  wire M05_ARESETN_1;
  wire M06_ACLK_1;
  wire M06_ARESETN_1;
  wire M07_ACLK_1;
  wire M07_ARESETN_1;
  wire M08_ACLK_1;
  wire M08_ARESETN_1;
  wire M09_ACLK_1;
  wire M09_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire [31:0]m00_couplers_to_ps7_axi_periph_ARADDR;
  wire [2:0]m00_couplers_to_ps7_axi_periph_ARPROT;
  wire m00_couplers_to_ps7_axi_periph_ARREADY;
  wire m00_couplers_to_ps7_axi_periph_ARVALID;
  wire [31:0]m00_couplers_to_ps7_axi_periph_AWADDR;
  wire [2:0]m00_couplers_to_ps7_axi_periph_AWPROT;
  wire m00_couplers_to_ps7_axi_periph_AWREADY;
  wire m00_couplers_to_ps7_axi_periph_AWVALID;
  wire m00_couplers_to_ps7_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_ps7_axi_periph_BRESP;
  wire m00_couplers_to_ps7_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_ps7_axi_periph_RDATA;
  wire m00_couplers_to_ps7_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_ps7_axi_periph_RRESP;
  wire m00_couplers_to_ps7_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_ps7_axi_periph_WDATA;
  wire m00_couplers_to_ps7_axi_periph_WREADY;
  wire [3:0]m00_couplers_to_ps7_axi_periph_WSTRB;
  wire m00_couplers_to_ps7_axi_periph_WVALID;
  wire [3:0]m01_couplers_to_ps7_axi_periph_ARADDR;
  wire [2:0]m01_couplers_to_ps7_axi_periph_ARPROT;
  wire m01_couplers_to_ps7_axi_periph_ARREADY;
  wire m01_couplers_to_ps7_axi_periph_ARVALID;
  wire [3:0]m01_couplers_to_ps7_axi_periph_AWADDR;
  wire [2:0]m01_couplers_to_ps7_axi_periph_AWPROT;
  wire m01_couplers_to_ps7_axi_periph_AWREADY;
  wire m01_couplers_to_ps7_axi_periph_AWVALID;
  wire m01_couplers_to_ps7_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_ps7_axi_periph_BRESP;
  wire m01_couplers_to_ps7_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_ps7_axi_periph_RDATA;
  wire m01_couplers_to_ps7_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_ps7_axi_periph_RRESP;
  wire m01_couplers_to_ps7_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_ps7_axi_periph_WDATA;
  wire m01_couplers_to_ps7_axi_periph_WREADY;
  wire [3:0]m01_couplers_to_ps7_axi_periph_WSTRB;
  wire m01_couplers_to_ps7_axi_periph_WVALID;
  wire [31:0]m02_couplers_to_ps7_axi_periph_ARADDR;
  wire m02_couplers_to_ps7_axi_periph_ARREADY;
  wire m02_couplers_to_ps7_axi_periph_ARVALID;
  wire [31:0]m02_couplers_to_ps7_axi_periph_AWADDR;
  wire m02_couplers_to_ps7_axi_periph_AWREADY;
  wire m02_couplers_to_ps7_axi_periph_AWVALID;
  wire m02_couplers_to_ps7_axi_periph_BREADY;
  wire [1:0]m02_couplers_to_ps7_axi_periph_BRESP;
  wire m02_couplers_to_ps7_axi_periph_BVALID;
  wire [31:0]m02_couplers_to_ps7_axi_periph_RDATA;
  wire m02_couplers_to_ps7_axi_periph_RREADY;
  wire [1:0]m02_couplers_to_ps7_axi_periph_RRESP;
  wire m02_couplers_to_ps7_axi_periph_RVALID;
  wire [31:0]m02_couplers_to_ps7_axi_periph_WDATA;
  wire m02_couplers_to_ps7_axi_periph_WREADY;
  wire [3:0]m02_couplers_to_ps7_axi_periph_WSTRB;
  wire m02_couplers_to_ps7_axi_periph_WVALID;
  wire [31:0]m03_couplers_to_ps7_axi_periph_ARADDR;
  wire m03_couplers_to_ps7_axi_periph_ARREADY;
  wire m03_couplers_to_ps7_axi_periph_ARVALID;
  wire [31:0]m03_couplers_to_ps7_axi_periph_AWADDR;
  wire m03_couplers_to_ps7_axi_periph_AWREADY;
  wire m03_couplers_to_ps7_axi_periph_AWVALID;
  wire m03_couplers_to_ps7_axi_periph_BREADY;
  wire [1:0]m03_couplers_to_ps7_axi_periph_BRESP;
  wire m03_couplers_to_ps7_axi_periph_BVALID;
  wire [31:0]m03_couplers_to_ps7_axi_periph_RDATA;
  wire m03_couplers_to_ps7_axi_periph_RREADY;
  wire [1:0]m03_couplers_to_ps7_axi_periph_RRESP;
  wire m03_couplers_to_ps7_axi_periph_RVALID;
  wire [31:0]m03_couplers_to_ps7_axi_periph_WDATA;
  wire m03_couplers_to_ps7_axi_periph_WREADY;
  wire [3:0]m03_couplers_to_ps7_axi_periph_WSTRB;
  wire m03_couplers_to_ps7_axi_periph_WVALID;
  wire [3:0]m04_couplers_to_ps7_axi_periph_ARADDR;
  wire [2:0]m04_couplers_to_ps7_axi_periph_ARPROT;
  wire m04_couplers_to_ps7_axi_periph_ARREADY;
  wire m04_couplers_to_ps7_axi_periph_ARVALID;
  wire [3:0]m04_couplers_to_ps7_axi_periph_AWADDR;
  wire [2:0]m04_couplers_to_ps7_axi_periph_AWPROT;
  wire m04_couplers_to_ps7_axi_periph_AWREADY;
  wire m04_couplers_to_ps7_axi_periph_AWVALID;
  wire m04_couplers_to_ps7_axi_periph_BREADY;
  wire [1:0]m04_couplers_to_ps7_axi_periph_BRESP;
  wire m04_couplers_to_ps7_axi_periph_BVALID;
  wire [31:0]m04_couplers_to_ps7_axi_periph_RDATA;
  wire m04_couplers_to_ps7_axi_periph_RREADY;
  wire [1:0]m04_couplers_to_ps7_axi_periph_RRESP;
  wire m04_couplers_to_ps7_axi_periph_RVALID;
  wire [31:0]m04_couplers_to_ps7_axi_periph_WDATA;
  wire m04_couplers_to_ps7_axi_periph_WREADY;
  wire [3:0]m04_couplers_to_ps7_axi_periph_WSTRB;
  wire m04_couplers_to_ps7_axi_periph_WVALID;
  wire [3:0]m05_couplers_to_ps7_axi_periph_ARADDR;
  wire [2:0]m05_couplers_to_ps7_axi_periph_ARPROT;
  wire m05_couplers_to_ps7_axi_periph_ARREADY;
  wire m05_couplers_to_ps7_axi_periph_ARVALID;
  wire [3:0]m05_couplers_to_ps7_axi_periph_AWADDR;
  wire [2:0]m05_couplers_to_ps7_axi_periph_AWPROT;
  wire m05_couplers_to_ps7_axi_periph_AWREADY;
  wire m05_couplers_to_ps7_axi_periph_AWVALID;
  wire m05_couplers_to_ps7_axi_periph_BREADY;
  wire [1:0]m05_couplers_to_ps7_axi_periph_BRESP;
  wire m05_couplers_to_ps7_axi_periph_BVALID;
  wire [31:0]m05_couplers_to_ps7_axi_periph_RDATA;
  wire m05_couplers_to_ps7_axi_periph_RREADY;
  wire [1:0]m05_couplers_to_ps7_axi_periph_RRESP;
  wire m05_couplers_to_ps7_axi_periph_RVALID;
  wire [31:0]m05_couplers_to_ps7_axi_periph_WDATA;
  wire m05_couplers_to_ps7_axi_periph_WREADY;
  wire [3:0]m05_couplers_to_ps7_axi_periph_WSTRB;
  wire m05_couplers_to_ps7_axi_periph_WVALID;
  wire m06_couplers_to_ps7_axi_periph_ARADDR;
  wire m06_couplers_to_ps7_axi_periph_ARREADY;
  wire m06_couplers_to_ps7_axi_periph_ARVALID;
  wire m06_couplers_to_ps7_axi_periph_AWADDR;
  wire m06_couplers_to_ps7_axi_periph_AWREADY;
  wire m06_couplers_to_ps7_axi_periph_AWVALID;
  wire m06_couplers_to_ps7_axi_periph_BREADY;
  wire [1:0]m06_couplers_to_ps7_axi_periph_BRESP;
  wire m06_couplers_to_ps7_axi_periph_BVALID;
  wire [31:0]m06_couplers_to_ps7_axi_periph_RDATA;
  wire m06_couplers_to_ps7_axi_periph_RREADY;
  wire [1:0]m06_couplers_to_ps7_axi_periph_RRESP;
  wire m06_couplers_to_ps7_axi_periph_RVALID;
  wire m06_couplers_to_ps7_axi_periph_WDATA;
  wire m06_couplers_to_ps7_axi_periph_WREADY;
  wire m06_couplers_to_ps7_axi_periph_WVALID;
  wire [15:0]m07_couplers_to_ps7_axi_periph_ARADDR;
  wire m07_couplers_to_ps7_axi_periph_ARREADY;
  wire m07_couplers_to_ps7_axi_periph_ARVALID;
  wire [15:0]m07_couplers_to_ps7_axi_periph_AWADDR;
  wire m07_couplers_to_ps7_axi_periph_AWREADY;
  wire m07_couplers_to_ps7_axi_periph_AWVALID;
  wire m07_couplers_to_ps7_axi_periph_BREADY;
  wire [1:0]m07_couplers_to_ps7_axi_periph_BRESP;
  wire m07_couplers_to_ps7_axi_periph_BVALID;
  wire [31:0]m07_couplers_to_ps7_axi_periph_RDATA;
  wire m07_couplers_to_ps7_axi_periph_RREADY;
  wire [1:0]m07_couplers_to_ps7_axi_periph_RRESP;
  wire m07_couplers_to_ps7_axi_periph_RVALID;
  wire [31:0]m07_couplers_to_ps7_axi_periph_WDATA;
  wire m07_couplers_to_ps7_axi_periph_WREADY;
  wire m07_couplers_to_ps7_axi_periph_WVALID;
  wire [3:0]m08_couplers_to_ps7_axi_periph_ARADDR;
  wire [2:0]m08_couplers_to_ps7_axi_periph_ARPROT;
  wire m08_couplers_to_ps7_axi_periph_ARREADY;
  wire m08_couplers_to_ps7_axi_periph_ARVALID;
  wire [3:0]m08_couplers_to_ps7_axi_periph_AWADDR;
  wire [2:0]m08_couplers_to_ps7_axi_periph_AWPROT;
  wire m08_couplers_to_ps7_axi_periph_AWREADY;
  wire m08_couplers_to_ps7_axi_periph_AWVALID;
  wire m08_couplers_to_ps7_axi_periph_BREADY;
  wire [1:0]m08_couplers_to_ps7_axi_periph_BRESP;
  wire m08_couplers_to_ps7_axi_periph_BVALID;
  wire [31:0]m08_couplers_to_ps7_axi_periph_RDATA;
  wire m08_couplers_to_ps7_axi_periph_RREADY;
  wire [1:0]m08_couplers_to_ps7_axi_periph_RRESP;
  wire m08_couplers_to_ps7_axi_periph_RVALID;
  wire [31:0]m08_couplers_to_ps7_axi_periph_WDATA;
  wire m08_couplers_to_ps7_axi_periph_WREADY;
  wire [3:0]m08_couplers_to_ps7_axi_periph_WSTRB;
  wire m08_couplers_to_ps7_axi_periph_WVALID;
  wire [31:0]m09_couplers_to_ps7_axi_periph_ARADDR;
  wire m09_couplers_to_ps7_axi_periph_ARREADY;
  wire m09_couplers_to_ps7_axi_periph_ARVALID;
  wire [31:0]m09_couplers_to_ps7_axi_periph_AWADDR;
  wire m09_couplers_to_ps7_axi_periph_AWREADY;
  wire m09_couplers_to_ps7_axi_periph_AWVALID;
  wire m09_couplers_to_ps7_axi_periph_BREADY;
  wire [1:0]m09_couplers_to_ps7_axi_periph_BRESP;
  wire m09_couplers_to_ps7_axi_periph_BVALID;
  wire [31:0]m09_couplers_to_ps7_axi_periph_RDATA;
  wire m09_couplers_to_ps7_axi_periph_RREADY;
  wire [1:0]m09_couplers_to_ps7_axi_periph_RRESP;
  wire m09_couplers_to_ps7_axi_periph_RVALID;
  wire [31:0]m09_couplers_to_ps7_axi_periph_WDATA;
  wire m09_couplers_to_ps7_axi_periph_WREADY;
  wire [3:0]m09_couplers_to_ps7_axi_periph_WSTRB;
  wire m09_couplers_to_ps7_axi_periph_WVALID;
  wire ps7_axi_periph_ACLK_net;
  wire ps7_axi_periph_ARESETN_net;
  wire [31:0]ps7_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]ps7_axi_periph_to_s00_couplers_ARBURST;
  wire [3:0]ps7_axi_periph_to_s00_couplers_ARCACHE;
  wire [11:0]ps7_axi_periph_to_s00_couplers_ARID;
  wire [3:0]ps7_axi_periph_to_s00_couplers_ARLEN;
  wire [1:0]ps7_axi_periph_to_s00_couplers_ARLOCK;
  wire [2:0]ps7_axi_periph_to_s00_couplers_ARPROT;
  wire [3:0]ps7_axi_periph_to_s00_couplers_ARQOS;
  wire ps7_axi_periph_to_s00_couplers_ARREADY;
  wire [2:0]ps7_axi_periph_to_s00_couplers_ARSIZE;
  wire [0:0]ps7_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]ps7_axi_periph_to_s00_couplers_AWADDR;
  wire [1:0]ps7_axi_periph_to_s00_couplers_AWBURST;
  wire [3:0]ps7_axi_periph_to_s00_couplers_AWCACHE;
  wire [11:0]ps7_axi_periph_to_s00_couplers_AWID;
  wire [3:0]ps7_axi_periph_to_s00_couplers_AWLEN;
  wire [1:0]ps7_axi_periph_to_s00_couplers_AWLOCK;
  wire [2:0]ps7_axi_periph_to_s00_couplers_AWPROT;
  wire [3:0]ps7_axi_periph_to_s00_couplers_AWQOS;
  wire ps7_axi_periph_to_s00_couplers_AWREADY;
  wire [2:0]ps7_axi_periph_to_s00_couplers_AWSIZE;
  wire [0:0]ps7_axi_periph_to_s00_couplers_AWVALID;
  wire [11:0]ps7_axi_periph_to_s00_couplers_BID;
  wire [0:0]ps7_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]ps7_axi_periph_to_s00_couplers_BRESP;
  wire ps7_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]ps7_axi_periph_to_s00_couplers_RDATA;
  wire [11:0]ps7_axi_periph_to_s00_couplers_RID;
  wire ps7_axi_periph_to_s00_couplers_RLAST;
  wire [0:0]ps7_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]ps7_axi_periph_to_s00_couplers_RRESP;
  wire ps7_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]ps7_axi_periph_to_s00_couplers_WDATA;
  wire [11:0]ps7_axi_periph_to_s00_couplers_WID;
  wire ps7_axi_periph_to_s00_couplers_WLAST;
  wire ps7_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]ps7_axi_periph_to_s00_couplers_WSTRB;
  wire [0:0]ps7_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire [17:15]xbar_to_m05_couplers_ARPROT;
  wire xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire [17:15]xbar_to_m05_couplers_AWPROT;
  wire xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [223:192]xbar_to_m06_couplers_ARADDR;
  wire xbar_to_m06_couplers_ARREADY;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [223:192]xbar_to_m06_couplers_AWADDR;
  wire xbar_to_m06_couplers_AWREADY;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire xbar_to_m06_couplers_RDATA;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire xbar_to_m06_couplers_WREADY;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [255:224]xbar_to_m07_couplers_ARADDR;
  wire [23:21]xbar_to_m07_couplers_ARPROT;
  wire xbar_to_m07_couplers_ARREADY;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [255:224]xbar_to_m07_couplers_AWADDR;
  wire [23:21]xbar_to_m07_couplers_AWPROT;
  wire xbar_to_m07_couplers_AWREADY;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire xbar_to_m07_couplers_BVALID;
  wire [31:0]xbar_to_m07_couplers_RDATA;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire xbar_to_m07_couplers_RVALID;
  wire [255:224]xbar_to_m07_couplers_WDATA;
  wire xbar_to_m07_couplers_WREADY;
  wire [31:28]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;
  wire [287:256]xbar_to_m08_couplers_ARADDR;
  wire [26:24]xbar_to_m08_couplers_ARPROT;
  wire xbar_to_m08_couplers_ARREADY;
  wire [8:8]xbar_to_m08_couplers_ARVALID;
  wire [287:256]xbar_to_m08_couplers_AWADDR;
  wire [26:24]xbar_to_m08_couplers_AWPROT;
  wire xbar_to_m08_couplers_AWREADY;
  wire [8:8]xbar_to_m08_couplers_AWVALID;
  wire [8:8]xbar_to_m08_couplers_BREADY;
  wire [1:0]xbar_to_m08_couplers_BRESP;
  wire xbar_to_m08_couplers_BVALID;
  wire [31:0]xbar_to_m08_couplers_RDATA;
  wire [8:8]xbar_to_m08_couplers_RREADY;
  wire [1:0]xbar_to_m08_couplers_RRESP;
  wire xbar_to_m08_couplers_RVALID;
  wire [287:256]xbar_to_m08_couplers_WDATA;
  wire xbar_to_m08_couplers_WREADY;
  wire [35:32]xbar_to_m08_couplers_WSTRB;
  wire [8:8]xbar_to_m08_couplers_WVALID;
  wire [319:288]xbar_to_m09_couplers_ARADDR;
  wire xbar_to_m09_couplers_ARREADY;
  wire [9:9]xbar_to_m09_couplers_ARVALID;
  wire [319:288]xbar_to_m09_couplers_AWADDR;
  wire xbar_to_m09_couplers_AWREADY;
  wire [9:9]xbar_to_m09_couplers_AWVALID;
  wire [9:9]xbar_to_m09_couplers_BREADY;
  wire [1:0]xbar_to_m09_couplers_BRESP;
  wire xbar_to_m09_couplers_BVALID;
  wire [31:0]xbar_to_m09_couplers_RDATA;
  wire [9:9]xbar_to_m09_couplers_RREADY;
  wire [1:0]xbar_to_m09_couplers_RRESP;
  wire xbar_to_m09_couplers_RVALID;
  wire [319:288]xbar_to_m09_couplers_WDATA;
  wire xbar_to_m09_couplers_WREADY;
  wire [39:36]xbar_to_m09_couplers_WSTRB;
  wire [9:9]xbar_to_m09_couplers_WVALID;
  wire [29:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [29:0]NLW_xbar_m_axi_awprot_UNCONNECTED;
  wire [39:0]NLW_xbar_m_axi_wstrb_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_ps7_axi_periph_ARADDR;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_ps7_axi_periph_ARPROT;
  assign M00_AXI_arvalid = m00_couplers_to_ps7_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_ps7_axi_periph_AWADDR;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_ps7_axi_periph_AWPROT;
  assign M00_AXI_awvalid = m00_couplers_to_ps7_axi_periph_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_ps7_axi_periph_BREADY;
  assign M00_AXI_rready = m00_couplers_to_ps7_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_ps7_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_ps7_axi_periph_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_ps7_axi_periph_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[3:0] = m01_couplers_to_ps7_axi_periph_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_ps7_axi_periph_ARPROT;
  assign M01_AXI_arvalid = m01_couplers_to_ps7_axi_periph_ARVALID;
  assign M01_AXI_awaddr[3:0] = m01_couplers_to_ps7_axi_periph_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_ps7_axi_periph_AWPROT;
  assign M01_AXI_awvalid = m01_couplers_to_ps7_axi_periph_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_ps7_axi_periph_BREADY;
  assign M01_AXI_rready = m01_couplers_to_ps7_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_ps7_axi_periph_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_ps7_axi_periph_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_ps7_axi_periph_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_ps7_axi_periph_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_ps7_axi_periph_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_ps7_axi_periph_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_ps7_axi_periph_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_ps7_axi_periph_BREADY;
  assign M02_AXI_rready = m02_couplers_to_ps7_axi_periph_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_ps7_axi_periph_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_ps7_axi_periph_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_ps7_axi_periph_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_ps7_axi_periph_ARADDR;
  assign M03_AXI_arvalid = m03_couplers_to_ps7_axi_periph_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_ps7_axi_periph_AWADDR;
  assign M03_AXI_awvalid = m03_couplers_to_ps7_axi_periph_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_ps7_axi_periph_BREADY;
  assign M03_AXI_rready = m03_couplers_to_ps7_axi_periph_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_ps7_axi_periph_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_ps7_axi_periph_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_ps7_axi_periph_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[3:0] = m04_couplers_to_ps7_axi_periph_ARADDR;
  assign M04_AXI_arprot[2:0] = m04_couplers_to_ps7_axi_periph_ARPROT;
  assign M04_AXI_arvalid = m04_couplers_to_ps7_axi_periph_ARVALID;
  assign M04_AXI_awaddr[3:0] = m04_couplers_to_ps7_axi_periph_AWADDR;
  assign M04_AXI_awprot[2:0] = m04_couplers_to_ps7_axi_periph_AWPROT;
  assign M04_AXI_awvalid = m04_couplers_to_ps7_axi_periph_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_ps7_axi_periph_BREADY;
  assign M04_AXI_rready = m04_couplers_to_ps7_axi_periph_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_ps7_axi_periph_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_ps7_axi_periph_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_ps7_axi_periph_WVALID;
  assign M05_ACLK_1 = M05_ACLK;
  assign M05_ARESETN_1 = M05_ARESETN;
  assign M05_AXI_araddr[3:0] = m05_couplers_to_ps7_axi_periph_ARADDR;
  assign M05_AXI_arprot[2:0] = m05_couplers_to_ps7_axi_periph_ARPROT;
  assign M05_AXI_arvalid = m05_couplers_to_ps7_axi_periph_ARVALID;
  assign M05_AXI_awaddr[3:0] = m05_couplers_to_ps7_axi_periph_AWADDR;
  assign M05_AXI_awprot[2:0] = m05_couplers_to_ps7_axi_periph_AWPROT;
  assign M05_AXI_awvalid = m05_couplers_to_ps7_axi_periph_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_ps7_axi_periph_BREADY;
  assign M05_AXI_rready = m05_couplers_to_ps7_axi_periph_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_ps7_axi_periph_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_ps7_axi_periph_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_ps7_axi_periph_WVALID;
  assign M06_ACLK_1 = M06_ACLK;
  assign M06_ARESETN_1 = M06_ARESETN;
  assign M06_AXI_araddr[0] = m06_couplers_to_ps7_axi_periph_ARADDR;
  assign M06_AXI_arvalid = m06_couplers_to_ps7_axi_periph_ARVALID;
  assign M06_AXI_awaddr[0] = m06_couplers_to_ps7_axi_periph_AWADDR;
  assign M06_AXI_awvalid = m06_couplers_to_ps7_axi_periph_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_ps7_axi_periph_BREADY;
  assign M06_AXI_rready = m06_couplers_to_ps7_axi_periph_RREADY;
  assign M06_AXI_wdata[0] = m06_couplers_to_ps7_axi_periph_WDATA;
  assign M06_AXI_wvalid = m06_couplers_to_ps7_axi_periph_WVALID;
  assign M07_ACLK_1 = M07_ACLK;
  assign M07_ARESETN_1 = M07_ARESETN;
  assign M07_AXI_araddr[15:0] = m07_couplers_to_ps7_axi_periph_ARADDR;
  assign M07_AXI_arvalid = m07_couplers_to_ps7_axi_periph_ARVALID;
  assign M07_AXI_awaddr[15:0] = m07_couplers_to_ps7_axi_periph_AWADDR;
  assign M07_AXI_awvalid = m07_couplers_to_ps7_axi_periph_AWVALID;
  assign M07_AXI_bready = m07_couplers_to_ps7_axi_periph_BREADY;
  assign M07_AXI_rready = m07_couplers_to_ps7_axi_periph_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_ps7_axi_periph_WDATA;
  assign M07_AXI_wvalid = m07_couplers_to_ps7_axi_periph_WVALID;
  assign M08_ACLK_1 = M08_ACLK;
  assign M08_ARESETN_1 = M08_ARESETN;
  assign M08_AXI_araddr[3:0] = m08_couplers_to_ps7_axi_periph_ARADDR;
  assign M08_AXI_arprot[2:0] = m08_couplers_to_ps7_axi_periph_ARPROT;
  assign M08_AXI_arvalid = m08_couplers_to_ps7_axi_periph_ARVALID;
  assign M08_AXI_awaddr[3:0] = m08_couplers_to_ps7_axi_periph_AWADDR;
  assign M08_AXI_awprot[2:0] = m08_couplers_to_ps7_axi_periph_AWPROT;
  assign M08_AXI_awvalid = m08_couplers_to_ps7_axi_periph_AWVALID;
  assign M08_AXI_bready = m08_couplers_to_ps7_axi_periph_BREADY;
  assign M08_AXI_rready = m08_couplers_to_ps7_axi_periph_RREADY;
  assign M08_AXI_wdata[31:0] = m08_couplers_to_ps7_axi_periph_WDATA;
  assign M08_AXI_wstrb[3:0] = m08_couplers_to_ps7_axi_periph_WSTRB;
  assign M08_AXI_wvalid = m08_couplers_to_ps7_axi_periph_WVALID;
  assign M09_ACLK_1 = M09_ACLK;
  assign M09_ARESETN_1 = M09_ARESETN;
  assign M09_AXI_araddr[31:0] = m09_couplers_to_ps7_axi_periph_ARADDR;
  assign M09_AXI_arvalid = m09_couplers_to_ps7_axi_periph_ARVALID;
  assign M09_AXI_awaddr[31:0] = m09_couplers_to_ps7_axi_periph_AWADDR;
  assign M09_AXI_awvalid = m09_couplers_to_ps7_axi_periph_AWVALID;
  assign M09_AXI_bready = m09_couplers_to_ps7_axi_periph_BREADY;
  assign M09_AXI_rready = m09_couplers_to_ps7_axi_periph_RREADY;
  assign M09_AXI_wdata[31:0] = m09_couplers_to_ps7_axi_periph_WDATA;
  assign M09_AXI_wstrb[3:0] = m09_couplers_to_ps7_axi_periph_WSTRB;
  assign M09_AXI_wvalid = m09_couplers_to_ps7_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready[0] = ps7_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = ps7_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = ps7_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = ps7_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = ps7_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = ps7_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = ps7_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rlast = ps7_axi_periph_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = ps7_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = ps7_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = ps7_axi_periph_to_s00_couplers_WREADY;
  assign m00_couplers_to_ps7_axi_periph_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_ps7_axi_periph_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_ps7_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_ps7_axi_periph_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_ps7_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_ps7_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_ps7_axi_periph_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_ps7_axi_periph_WREADY = M00_AXI_wready;
  assign m01_couplers_to_ps7_axi_periph_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_ps7_axi_periph_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_ps7_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_ps7_axi_periph_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_ps7_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_ps7_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_ps7_axi_periph_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_ps7_axi_periph_WREADY = M01_AXI_wready;
  assign m02_couplers_to_ps7_axi_periph_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_ps7_axi_periph_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_ps7_axi_periph_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_ps7_axi_periph_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_ps7_axi_periph_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_ps7_axi_periph_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_ps7_axi_periph_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_ps7_axi_periph_WREADY = M02_AXI_wready;
  assign m03_couplers_to_ps7_axi_periph_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_ps7_axi_periph_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_ps7_axi_periph_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_ps7_axi_periph_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_ps7_axi_periph_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_ps7_axi_periph_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_ps7_axi_periph_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_ps7_axi_periph_WREADY = M03_AXI_wready;
  assign m04_couplers_to_ps7_axi_periph_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_ps7_axi_periph_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_ps7_axi_periph_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_ps7_axi_periph_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_ps7_axi_periph_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_ps7_axi_periph_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_ps7_axi_periph_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_ps7_axi_periph_WREADY = M04_AXI_wready;
  assign m05_couplers_to_ps7_axi_periph_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_ps7_axi_periph_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_ps7_axi_periph_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_ps7_axi_periph_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_ps7_axi_periph_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_ps7_axi_periph_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_ps7_axi_periph_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_ps7_axi_periph_WREADY = M05_AXI_wready;
  assign m06_couplers_to_ps7_axi_periph_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_ps7_axi_periph_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_ps7_axi_periph_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_ps7_axi_periph_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_ps7_axi_periph_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_ps7_axi_periph_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_ps7_axi_periph_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_ps7_axi_periph_WREADY = M06_AXI_wready;
  assign m07_couplers_to_ps7_axi_periph_ARREADY = M07_AXI_arready;
  assign m07_couplers_to_ps7_axi_periph_AWREADY = M07_AXI_awready;
  assign m07_couplers_to_ps7_axi_periph_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_ps7_axi_periph_BVALID = M07_AXI_bvalid;
  assign m07_couplers_to_ps7_axi_periph_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_ps7_axi_periph_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_ps7_axi_periph_RVALID = M07_AXI_rvalid;
  assign m07_couplers_to_ps7_axi_periph_WREADY = M07_AXI_wready;
  assign m08_couplers_to_ps7_axi_periph_ARREADY = M08_AXI_arready;
  assign m08_couplers_to_ps7_axi_periph_AWREADY = M08_AXI_awready;
  assign m08_couplers_to_ps7_axi_periph_BRESP = M08_AXI_bresp[1:0];
  assign m08_couplers_to_ps7_axi_periph_BVALID = M08_AXI_bvalid;
  assign m08_couplers_to_ps7_axi_periph_RDATA = M08_AXI_rdata[31:0];
  assign m08_couplers_to_ps7_axi_periph_RRESP = M08_AXI_rresp[1:0];
  assign m08_couplers_to_ps7_axi_periph_RVALID = M08_AXI_rvalid;
  assign m08_couplers_to_ps7_axi_periph_WREADY = M08_AXI_wready;
  assign m09_couplers_to_ps7_axi_periph_ARREADY = M09_AXI_arready;
  assign m09_couplers_to_ps7_axi_periph_AWREADY = M09_AXI_awready;
  assign m09_couplers_to_ps7_axi_periph_BRESP = M09_AXI_bresp[1:0];
  assign m09_couplers_to_ps7_axi_periph_BVALID = M09_AXI_bvalid;
  assign m09_couplers_to_ps7_axi_periph_RDATA = M09_AXI_rdata[31:0];
  assign m09_couplers_to_ps7_axi_periph_RRESP = M09_AXI_rresp[1:0];
  assign m09_couplers_to_ps7_axi_periph_RVALID = M09_AXI_rvalid;
  assign m09_couplers_to_ps7_axi_periph_WREADY = M09_AXI_wready;
  assign ps7_axi_periph_ACLK_net = ACLK;
  assign ps7_axi_periph_ARESETN_net = ARESETN;
  assign ps7_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign ps7_axi_periph_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign ps7_axi_periph_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign ps7_axi_periph_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign ps7_axi_periph_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign ps7_axi_periph_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign ps7_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign ps7_axi_periph_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign ps7_axi_periph_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign ps7_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign ps7_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign ps7_axi_periph_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign ps7_axi_periph_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign ps7_axi_periph_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign ps7_axi_periph_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign ps7_axi_periph_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign ps7_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign ps7_axi_periph_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign ps7_axi_periph_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign ps7_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign ps7_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign ps7_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign ps7_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign ps7_axi_periph_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign ps7_axi_periph_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign ps7_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign ps7_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  m00_couplers_imp_18OUB6N m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_ps7_axi_periph_ARADDR),
        .M_AXI_arprot(m00_couplers_to_ps7_axi_periph_ARPROT),
        .M_AXI_arready(m00_couplers_to_ps7_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_ps7_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_ps7_axi_periph_AWADDR),
        .M_AXI_awprot(m00_couplers_to_ps7_axi_periph_AWPROT),
        .M_AXI_awready(m00_couplers_to_ps7_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_ps7_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_ps7_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_ps7_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_ps7_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_ps7_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_ps7_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_ps7_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_ps7_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_ps7_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_ps7_axi_periph_WREADY),
        .M_AXI_wstrb(m00_couplers_to_ps7_axi_periph_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_ps7_axi_periph_WVALID),
        .S_ACLK(ps7_axi_periph_ACLK_net),
        .S_ARESETN(ps7_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_LPPMGU m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_ps7_axi_periph_ARADDR),
        .M_AXI_arprot(m01_couplers_to_ps7_axi_periph_ARPROT),
        .M_AXI_arready(m01_couplers_to_ps7_axi_periph_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_ps7_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_ps7_axi_periph_AWADDR),
        .M_AXI_awprot(m01_couplers_to_ps7_axi_periph_AWPROT),
        .M_AXI_awready(m01_couplers_to_ps7_axi_periph_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_ps7_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_ps7_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_ps7_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_ps7_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_ps7_axi_periph_RDATA),
        .M_AXI_rready(m01_couplers_to_ps7_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_ps7_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_ps7_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_ps7_axi_periph_WDATA),
        .M_AXI_wready(m01_couplers_to_ps7_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_ps7_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_ps7_axi_periph_WVALID),
        .S_ACLK(ps7_axi_periph_ACLK_net),
        .S_ARESETN(ps7_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_19PTQCC m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_ps7_axi_periph_ARADDR),
        .M_AXI_arready(m02_couplers_to_ps7_axi_periph_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_ps7_axi_periph_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_ps7_axi_periph_AWADDR),
        .M_AXI_awready(m02_couplers_to_ps7_axi_periph_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_ps7_axi_periph_AWVALID),
        .M_AXI_bready(m02_couplers_to_ps7_axi_periph_BREADY),
        .M_AXI_bresp(m02_couplers_to_ps7_axi_periph_BRESP),
        .M_AXI_bvalid(m02_couplers_to_ps7_axi_periph_BVALID),
        .M_AXI_rdata(m02_couplers_to_ps7_axi_periph_RDATA),
        .M_AXI_rready(m02_couplers_to_ps7_axi_periph_RREADY),
        .M_AXI_rresp(m02_couplers_to_ps7_axi_periph_RRESP),
        .M_AXI_rvalid(m02_couplers_to_ps7_axi_periph_RVALID),
        .M_AXI_wdata(m02_couplers_to_ps7_axi_periph_WDATA),
        .M_AXI_wready(m02_couplers_to_ps7_axi_periph_WREADY),
        .M_AXI_wstrb(m02_couplers_to_ps7_axi_periph_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_ps7_axi_periph_WVALID),
        .S_ACLK(ps7_axi_periph_ACLK_net),
        .S_ARESETN(ps7_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_KZ096L m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_ps7_axi_periph_ARADDR),
        .M_AXI_arready(m03_couplers_to_ps7_axi_periph_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_ps7_axi_periph_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_ps7_axi_periph_AWADDR),
        .M_AXI_awready(m03_couplers_to_ps7_axi_periph_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_ps7_axi_periph_AWVALID),
        .M_AXI_bready(m03_couplers_to_ps7_axi_periph_BREADY),
        .M_AXI_bresp(m03_couplers_to_ps7_axi_periph_BRESP),
        .M_AXI_bvalid(m03_couplers_to_ps7_axi_periph_BVALID),
        .M_AXI_rdata(m03_couplers_to_ps7_axi_periph_RDATA),
        .M_AXI_rready(m03_couplers_to_ps7_axi_periph_RREADY),
        .M_AXI_rresp(m03_couplers_to_ps7_axi_periph_RRESP),
        .M_AXI_rvalid(m03_couplers_to_ps7_axi_periph_RVALID),
        .M_AXI_wdata(m03_couplers_to_ps7_axi_periph_WDATA),
        .M_AXI_wready(m03_couplers_to_ps7_axi_periph_WREADY),
        .M_AXI_wstrb(m03_couplers_to_ps7_axi_periph_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_ps7_axi_periph_WVALID),
        .S_ACLK(ps7_axi_periph_ACLK_net),
        .S_ARESETN(ps7_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_1BD9HQX m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_ps7_axi_periph_ARADDR),
        .M_AXI_arprot(m04_couplers_to_ps7_axi_periph_ARPROT),
        .M_AXI_arready(m04_couplers_to_ps7_axi_periph_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_ps7_axi_periph_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_ps7_axi_periph_AWADDR),
        .M_AXI_awprot(m04_couplers_to_ps7_axi_periph_AWPROT),
        .M_AXI_awready(m04_couplers_to_ps7_axi_periph_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_ps7_axi_periph_AWVALID),
        .M_AXI_bready(m04_couplers_to_ps7_axi_periph_BREADY),
        .M_AXI_bresp(m04_couplers_to_ps7_axi_periph_BRESP),
        .M_AXI_bvalid(m04_couplers_to_ps7_axi_periph_BVALID),
        .M_AXI_rdata(m04_couplers_to_ps7_axi_periph_RDATA),
        .M_AXI_rready(m04_couplers_to_ps7_axi_periph_RREADY),
        .M_AXI_rresp(m04_couplers_to_ps7_axi_periph_RRESP),
        .M_AXI_rvalid(m04_couplers_to_ps7_axi_periph_RVALID),
        .M_AXI_wdata(m04_couplers_to_ps7_axi_periph_WDATA),
        .M_AXI_wready(m04_couplers_to_ps7_axi_periph_WREADY),
        .M_AXI_wstrb(m04_couplers_to_ps7_axi_periph_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_ps7_axi_periph_WVALID),
        .S_ACLK(ps7_axi_periph_ACLK_net),
        .S_ARESETN(ps7_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_JEDPTK m05_couplers
       (.M_ACLK(M05_ACLK_1),
        .M_ARESETN(M05_ARESETN_1),
        .M_AXI_araddr(m05_couplers_to_ps7_axi_periph_ARADDR),
        .M_AXI_arprot(m05_couplers_to_ps7_axi_periph_ARPROT),
        .M_AXI_arready(m05_couplers_to_ps7_axi_periph_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_ps7_axi_periph_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_ps7_axi_periph_AWADDR),
        .M_AXI_awprot(m05_couplers_to_ps7_axi_periph_AWPROT),
        .M_AXI_awready(m05_couplers_to_ps7_axi_periph_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_ps7_axi_periph_AWVALID),
        .M_AXI_bready(m05_couplers_to_ps7_axi_periph_BREADY),
        .M_AXI_bresp(m05_couplers_to_ps7_axi_periph_BRESP),
        .M_AXI_bvalid(m05_couplers_to_ps7_axi_periph_BVALID),
        .M_AXI_rdata(m05_couplers_to_ps7_axi_periph_RDATA),
        .M_AXI_rready(m05_couplers_to_ps7_axi_periph_RREADY),
        .M_AXI_rresp(m05_couplers_to_ps7_axi_periph_RRESP),
        .M_AXI_rvalid(m05_couplers_to_ps7_axi_periph_RVALID),
        .M_AXI_wdata(m05_couplers_to_ps7_axi_periph_WDATA),
        .M_AXI_wready(m05_couplers_to_ps7_axi_periph_WREADY),
        .M_AXI_wstrb(m05_couplers_to_ps7_axi_periph_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_ps7_axi_periph_WVALID),
        .S_ACLK(ps7_axi_periph_ACLK_net),
        .S_ARESETN(ps7_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m05_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m05_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_1CO96E2 m06_couplers
       (.M_ACLK(M06_ACLK_1),
        .M_ARESETN(M06_ARESETN_1),
        .M_AXI_araddr(m06_couplers_to_ps7_axi_periph_ARADDR),
        .M_AXI_arready(m06_couplers_to_ps7_axi_periph_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_ps7_axi_periph_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_ps7_axi_periph_AWADDR),
        .M_AXI_awready(m06_couplers_to_ps7_axi_periph_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_ps7_axi_periph_AWVALID),
        .M_AXI_bready(m06_couplers_to_ps7_axi_periph_BREADY),
        .M_AXI_bresp(m06_couplers_to_ps7_axi_periph_BRESP[0]),
        .M_AXI_bvalid(m06_couplers_to_ps7_axi_periph_BVALID),
        .M_AXI_rdata(m06_couplers_to_ps7_axi_periph_RDATA[0]),
        .M_AXI_rready(m06_couplers_to_ps7_axi_periph_RREADY),
        .M_AXI_rresp(m06_couplers_to_ps7_axi_periph_RRESP[0]),
        .M_AXI_rvalid(m06_couplers_to_ps7_axi_periph_RVALID),
        .M_AXI_wdata(m06_couplers_to_ps7_axi_periph_WDATA),
        .M_AXI_wready(m06_couplers_to_ps7_axi_periph_WREADY),
        .M_AXI_wvalid(m06_couplers_to_ps7_axi_periph_WVALID),
        .S_ACLK(ps7_axi_periph_ACLK_net),
        .S_ARESETN(ps7_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR[192]),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR[192]),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA[192]),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  m07_couplers_imp_HTQA2J m07_couplers
       (.M_ACLK(M07_ACLK_1),
        .M_ARESETN(M07_ARESETN_1),
        .M_AXI_araddr(m07_couplers_to_ps7_axi_periph_ARADDR),
        .M_AXI_arready(m07_couplers_to_ps7_axi_periph_ARREADY),
        .M_AXI_arvalid(m07_couplers_to_ps7_axi_periph_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_ps7_axi_periph_AWADDR),
        .M_AXI_awready(m07_couplers_to_ps7_axi_periph_AWREADY),
        .M_AXI_awvalid(m07_couplers_to_ps7_axi_periph_AWVALID),
        .M_AXI_bready(m07_couplers_to_ps7_axi_periph_BREADY),
        .M_AXI_bresp(m07_couplers_to_ps7_axi_periph_BRESP),
        .M_AXI_bvalid(m07_couplers_to_ps7_axi_periph_BVALID),
        .M_AXI_rdata(m07_couplers_to_ps7_axi_periph_RDATA),
        .M_AXI_rready(m07_couplers_to_ps7_axi_periph_RREADY),
        .M_AXI_rresp(m07_couplers_to_ps7_axi_periph_RRESP),
        .M_AXI_rvalid(m07_couplers_to_ps7_axi_periph_RVALID),
        .M_AXI_wdata(m07_couplers_to_ps7_axi_periph_WDATA),
        .M_AXI_wready(m07_couplers_to_ps7_axi_periph_WREADY),
        .M_AXI_wvalid(m07_couplers_to_ps7_axi_periph_WVALID),
        .S_ACLK(ps7_axi_periph_ACLK_net),
        .S_ARESETN(ps7_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m07_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m07_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
  m08_couplers_imp_1EKI13N m08_couplers
       (.M_ACLK(M08_ACLK_1),
        .M_ARESETN(M08_ARESETN_1),
        .M_AXI_araddr(m08_couplers_to_ps7_axi_periph_ARADDR),
        .M_AXI_arprot(m08_couplers_to_ps7_axi_periph_ARPROT),
        .M_AXI_arready(m08_couplers_to_ps7_axi_periph_ARREADY),
        .M_AXI_arvalid(m08_couplers_to_ps7_axi_periph_ARVALID),
        .M_AXI_awaddr(m08_couplers_to_ps7_axi_periph_AWADDR),
        .M_AXI_awprot(m08_couplers_to_ps7_axi_periph_AWPROT),
        .M_AXI_awready(m08_couplers_to_ps7_axi_periph_AWREADY),
        .M_AXI_awvalid(m08_couplers_to_ps7_axi_periph_AWVALID),
        .M_AXI_bready(m08_couplers_to_ps7_axi_periph_BREADY),
        .M_AXI_bresp(m08_couplers_to_ps7_axi_periph_BRESP),
        .M_AXI_bvalid(m08_couplers_to_ps7_axi_periph_BVALID),
        .M_AXI_rdata(m08_couplers_to_ps7_axi_periph_RDATA),
        .M_AXI_rready(m08_couplers_to_ps7_axi_periph_RREADY),
        .M_AXI_rresp(m08_couplers_to_ps7_axi_periph_RRESP),
        .M_AXI_rvalid(m08_couplers_to_ps7_axi_periph_RVALID),
        .M_AXI_wdata(m08_couplers_to_ps7_axi_periph_WDATA),
        .M_AXI_wready(m08_couplers_to_ps7_axi_periph_WREADY),
        .M_AXI_wstrb(m08_couplers_to_ps7_axi_periph_WSTRB),
        .M_AXI_wvalid(m08_couplers_to_ps7_axi_periph_WVALID),
        .S_ACLK(ps7_axi_periph_ACLK_net),
        .S_ARESETN(ps7_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m08_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m08_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m08_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m08_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m08_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m08_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m08_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m08_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m08_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m08_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m08_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m08_couplers_RDATA),
        .S_AXI_rready(xbar_to_m08_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m08_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m08_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m08_couplers_WDATA),
        .S_AXI_wready(xbar_to_m08_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m08_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m08_couplers_WVALID));
  m09_couplers_imp_OPRMR6 m09_couplers
       (.M_ACLK(M09_ACLK_1),
        .M_ARESETN(M09_ARESETN_1),
        .M_AXI_araddr(m09_couplers_to_ps7_axi_periph_ARADDR),
        .M_AXI_arready(m09_couplers_to_ps7_axi_periph_ARREADY),
        .M_AXI_arvalid(m09_couplers_to_ps7_axi_periph_ARVALID),
        .M_AXI_awaddr(m09_couplers_to_ps7_axi_periph_AWADDR),
        .M_AXI_awready(m09_couplers_to_ps7_axi_periph_AWREADY),
        .M_AXI_awvalid(m09_couplers_to_ps7_axi_periph_AWVALID),
        .M_AXI_bready(m09_couplers_to_ps7_axi_periph_BREADY),
        .M_AXI_bresp(m09_couplers_to_ps7_axi_periph_BRESP),
        .M_AXI_bvalid(m09_couplers_to_ps7_axi_periph_BVALID),
        .M_AXI_rdata(m09_couplers_to_ps7_axi_periph_RDATA),
        .M_AXI_rready(m09_couplers_to_ps7_axi_periph_RREADY),
        .M_AXI_rresp(m09_couplers_to_ps7_axi_periph_RRESP),
        .M_AXI_rvalid(m09_couplers_to_ps7_axi_periph_RVALID),
        .M_AXI_wdata(m09_couplers_to_ps7_axi_periph_WDATA),
        .M_AXI_wready(m09_couplers_to_ps7_axi_periph_WREADY),
        .M_AXI_wstrb(m09_couplers_to_ps7_axi_periph_WSTRB),
        .M_AXI_wvalid(m09_couplers_to_ps7_axi_periph_WVALID),
        .S_ACLK(ps7_axi_periph_ACLK_net),
        .S_ARESETN(ps7_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m09_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m09_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m09_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m09_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m09_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m09_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m09_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m09_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m09_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m09_couplers_RDATA),
        .S_AXI_rready(xbar_to_m09_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m09_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m09_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m09_couplers_WDATA),
        .S_AXI_wready(xbar_to_m09_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m09_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m09_couplers_WVALID));
  s00_couplers_imp_OGT7Q5 s00_couplers
       (.M_ACLK(ps7_axi_periph_ACLK_net),
        .M_ARESETN(ps7_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(ps7_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arburst(ps7_axi_periph_to_s00_couplers_ARBURST),
        .S_AXI_arcache(ps7_axi_periph_to_s00_couplers_ARCACHE),
        .S_AXI_arid(ps7_axi_periph_to_s00_couplers_ARID),
        .S_AXI_arlen(ps7_axi_periph_to_s00_couplers_ARLEN),
        .S_AXI_arlock(ps7_axi_periph_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(ps7_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arqos(ps7_axi_periph_to_s00_couplers_ARQOS),
        .S_AXI_arready(ps7_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arsize(ps7_axi_periph_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(ps7_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(ps7_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awburst(ps7_axi_periph_to_s00_couplers_AWBURST),
        .S_AXI_awcache(ps7_axi_periph_to_s00_couplers_AWCACHE),
        .S_AXI_awid(ps7_axi_periph_to_s00_couplers_AWID),
        .S_AXI_awlen(ps7_axi_periph_to_s00_couplers_AWLEN),
        .S_AXI_awlock(ps7_axi_periph_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(ps7_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awqos(ps7_axi_periph_to_s00_couplers_AWQOS),
        .S_AXI_awready(ps7_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awsize(ps7_axi_periph_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(ps7_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bid(ps7_axi_periph_to_s00_couplers_BID),
        .S_AXI_bready(ps7_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(ps7_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(ps7_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(ps7_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rid(ps7_axi_periph_to_s00_couplers_RID),
        .S_AXI_rlast(ps7_axi_periph_to_s00_couplers_RLAST),
        .S_AXI_rready(ps7_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(ps7_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(ps7_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(ps7_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wid(ps7_axi_periph_to_s00_couplers_WID),
        .S_AXI_wlast(ps7_axi_periph_to_s00_couplers_WLAST),
        .S_AXI_wready(ps7_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(ps7_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(ps7_axi_periph_to_s00_couplers_WVALID));
  ebaz4205_xbar_0 xbar
       (.aclk(ps7_axi_periph_ACLK_net),
        .aresetn(ps7_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m09_couplers_ARADDR,xbar_to_m08_couplers_ARADDR,xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m08_couplers_ARPROT,xbar_to_m07_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[20:18],xbar_to_m05_couplers_ARPROT,xbar_to_m04_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[11:6],xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m09_couplers_ARREADY,xbar_to_m08_couplers_ARREADY,xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m09_couplers_ARVALID,xbar_to_m08_couplers_ARVALID,xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m09_couplers_AWADDR,xbar_to_m08_couplers_AWADDR,xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m08_couplers_AWPROT,xbar_to_m07_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[20:18],xbar_to_m05_couplers_AWPROT,xbar_to_m04_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[11:6],xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m09_couplers_AWREADY,xbar_to_m08_couplers_AWREADY,xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m09_couplers_AWVALID,xbar_to_m08_couplers_AWVALID,xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m09_couplers_BREADY,xbar_to_m08_couplers_BREADY,xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m09_couplers_BRESP,xbar_to_m08_couplers_BRESP,xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m09_couplers_BVALID,xbar_to_m08_couplers_BVALID,xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m09_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m09_couplers_RREADY,xbar_to_m08_couplers_RREADY,xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m09_couplers_RRESP,xbar_to_m08_couplers_RRESP,xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m09_couplers_RVALID,xbar_to_m08_couplers_RVALID,xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m09_couplers_WDATA,xbar_to_m08_couplers_WDATA,xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m09_couplers_WREADY,xbar_to_m08_couplers_WREADY,xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m09_couplers_WSTRB,xbar_to_m08_couplers_WSTRB,xbar_to_m07_couplers_WSTRB,NLW_xbar_m_axi_wstrb_UNCONNECTED[27:24],xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m09_couplers_WVALID,xbar_to_m08_couplers_WVALID,xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module m00_couplers_imp_18OUB6N
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_LPPMGU
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [3:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [3:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [3:0]auto_cc_to_m01_couplers_ARADDR;
  wire [2:0]auto_cc_to_m01_couplers_ARPROT;
  wire auto_cc_to_m01_couplers_ARREADY;
  wire auto_cc_to_m01_couplers_ARVALID;
  wire [3:0]auto_cc_to_m01_couplers_AWADDR;
  wire [2:0]auto_cc_to_m01_couplers_AWPROT;
  wire auto_cc_to_m01_couplers_AWREADY;
  wire auto_cc_to_m01_couplers_AWVALID;
  wire auto_cc_to_m01_couplers_BREADY;
  wire [1:0]auto_cc_to_m01_couplers_BRESP;
  wire auto_cc_to_m01_couplers_BVALID;
  wire [31:0]auto_cc_to_m01_couplers_RDATA;
  wire auto_cc_to_m01_couplers_RREADY;
  wire [1:0]auto_cc_to_m01_couplers_RRESP;
  wire auto_cc_to_m01_couplers_RVALID;
  wire [31:0]auto_cc_to_m01_couplers_WDATA;
  wire auto_cc_to_m01_couplers_WREADY;
  wire [3:0]auto_cc_to_m01_couplers_WSTRB;
  wire auto_cc_to_m01_couplers_WVALID;
  wire [31:0]m01_couplers_to_auto_cc_ARADDR;
  wire [2:0]m01_couplers_to_auto_cc_ARPROT;
  wire m01_couplers_to_auto_cc_ARREADY;
  wire m01_couplers_to_auto_cc_ARVALID;
  wire [31:0]m01_couplers_to_auto_cc_AWADDR;
  wire [2:0]m01_couplers_to_auto_cc_AWPROT;
  wire m01_couplers_to_auto_cc_AWREADY;
  wire m01_couplers_to_auto_cc_AWVALID;
  wire m01_couplers_to_auto_cc_BREADY;
  wire [1:0]m01_couplers_to_auto_cc_BRESP;
  wire m01_couplers_to_auto_cc_BVALID;
  wire [31:0]m01_couplers_to_auto_cc_RDATA;
  wire m01_couplers_to_auto_cc_RREADY;
  wire [1:0]m01_couplers_to_auto_cc_RRESP;
  wire m01_couplers_to_auto_cc_RVALID;
  wire [31:0]m01_couplers_to_auto_cc_WDATA;
  wire m01_couplers_to_auto_cc_WREADY;
  wire [3:0]m01_couplers_to_auto_cc_WSTRB;
  wire m01_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[3:0] = auto_cc_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_cc_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid = auto_cc_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[3:0] = auto_cc_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_cc_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid = auto_cc_to_m01_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m01_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m01_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m01_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  ebaz4205_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m01_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m01_couplers_ARPROT),
        .m_axi_arready(auto_cc_to_m01_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m01_couplers_AWADDR),
        .m_axi_awprot(auto_cc_to_m01_couplers_AWPROT),
        .m_axi_awready(auto_cc_to_m01_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m01_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m01_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m01_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m01_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m01_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m01_couplers_to_auto_cc_ARADDR[3:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m01_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m01_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m01_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_cc_AWADDR[3:0]),
        .s_axi_awprot(m01_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m01_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m01_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m01_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m01_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m01_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_cc_WVALID));
endmodule

module m02_couplers_imp_19PTQCC
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m03_couplers_imp_KZ096L
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m03_couplers_to_m03_couplers_ARADDR;
  wire m03_couplers_to_m03_couplers_ARREADY;
  wire m03_couplers_to_m03_couplers_ARVALID;
  wire [31:0]m03_couplers_to_m03_couplers_AWADDR;
  wire m03_couplers_to_m03_couplers_AWREADY;
  wire m03_couplers_to_m03_couplers_AWVALID;
  wire m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready;
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready;
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid;
endmodule

module m04_couplers_imp_1BD9HQX
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [3:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [3:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [3:0]auto_cc_to_m04_couplers_ARADDR;
  wire [2:0]auto_cc_to_m04_couplers_ARPROT;
  wire auto_cc_to_m04_couplers_ARREADY;
  wire auto_cc_to_m04_couplers_ARVALID;
  wire [3:0]auto_cc_to_m04_couplers_AWADDR;
  wire [2:0]auto_cc_to_m04_couplers_AWPROT;
  wire auto_cc_to_m04_couplers_AWREADY;
  wire auto_cc_to_m04_couplers_AWVALID;
  wire auto_cc_to_m04_couplers_BREADY;
  wire [1:0]auto_cc_to_m04_couplers_BRESP;
  wire auto_cc_to_m04_couplers_BVALID;
  wire [31:0]auto_cc_to_m04_couplers_RDATA;
  wire auto_cc_to_m04_couplers_RREADY;
  wire [1:0]auto_cc_to_m04_couplers_RRESP;
  wire auto_cc_to_m04_couplers_RVALID;
  wire [31:0]auto_cc_to_m04_couplers_WDATA;
  wire auto_cc_to_m04_couplers_WREADY;
  wire [3:0]auto_cc_to_m04_couplers_WSTRB;
  wire auto_cc_to_m04_couplers_WVALID;
  wire [31:0]m04_couplers_to_auto_cc_ARADDR;
  wire [2:0]m04_couplers_to_auto_cc_ARPROT;
  wire m04_couplers_to_auto_cc_ARREADY;
  wire m04_couplers_to_auto_cc_ARVALID;
  wire [31:0]m04_couplers_to_auto_cc_AWADDR;
  wire [2:0]m04_couplers_to_auto_cc_AWPROT;
  wire m04_couplers_to_auto_cc_AWREADY;
  wire m04_couplers_to_auto_cc_AWVALID;
  wire m04_couplers_to_auto_cc_BREADY;
  wire [1:0]m04_couplers_to_auto_cc_BRESP;
  wire m04_couplers_to_auto_cc_BVALID;
  wire [31:0]m04_couplers_to_auto_cc_RDATA;
  wire m04_couplers_to_auto_cc_RREADY;
  wire [1:0]m04_couplers_to_auto_cc_RRESP;
  wire m04_couplers_to_auto_cc_RVALID;
  wire [31:0]m04_couplers_to_auto_cc_WDATA;
  wire m04_couplers_to_auto_cc_WREADY;
  wire [3:0]m04_couplers_to_auto_cc_WSTRB;
  wire m04_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[3:0] = auto_cc_to_m04_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_cc_to_m04_couplers_ARPROT;
  assign M_AXI_arvalid = auto_cc_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[3:0] = auto_cc_to_m04_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_cc_to_m04_couplers_AWPROT;
  assign M_AXI_awvalid = auto_cc_to_m04_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m04_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m04_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m04_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m04_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m04_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m04_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m04_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m04_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m04_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  ebaz4205_auto_cc_1 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m04_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m04_couplers_ARPROT),
        .m_axi_arready(auto_cc_to_m04_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m04_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m04_couplers_AWADDR),
        .m_axi_awprot(auto_cc_to_m04_couplers_AWPROT),
        .m_axi_awready(auto_cc_to_m04_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m04_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m04_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m04_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m04_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m04_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m04_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m04_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m04_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m04_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m04_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m04_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m04_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m04_couplers_to_auto_cc_ARADDR[3:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m04_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m04_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m04_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m04_couplers_to_auto_cc_AWADDR[3:0]),
        .s_axi_awprot(m04_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m04_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m04_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m04_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m04_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m04_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m04_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m04_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m04_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m04_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m04_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m04_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m04_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m04_couplers_to_auto_cc_WVALID));
endmodule

module m05_couplers_imp_JEDPTK
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [3:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [3:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [3:0]auto_cc_to_m05_couplers_ARADDR;
  wire [2:0]auto_cc_to_m05_couplers_ARPROT;
  wire auto_cc_to_m05_couplers_ARREADY;
  wire auto_cc_to_m05_couplers_ARVALID;
  wire [3:0]auto_cc_to_m05_couplers_AWADDR;
  wire [2:0]auto_cc_to_m05_couplers_AWPROT;
  wire auto_cc_to_m05_couplers_AWREADY;
  wire auto_cc_to_m05_couplers_AWVALID;
  wire auto_cc_to_m05_couplers_BREADY;
  wire [1:0]auto_cc_to_m05_couplers_BRESP;
  wire auto_cc_to_m05_couplers_BVALID;
  wire [31:0]auto_cc_to_m05_couplers_RDATA;
  wire auto_cc_to_m05_couplers_RREADY;
  wire [1:0]auto_cc_to_m05_couplers_RRESP;
  wire auto_cc_to_m05_couplers_RVALID;
  wire [31:0]auto_cc_to_m05_couplers_WDATA;
  wire auto_cc_to_m05_couplers_WREADY;
  wire [3:0]auto_cc_to_m05_couplers_WSTRB;
  wire auto_cc_to_m05_couplers_WVALID;
  wire [31:0]m05_couplers_to_auto_cc_ARADDR;
  wire [2:0]m05_couplers_to_auto_cc_ARPROT;
  wire m05_couplers_to_auto_cc_ARREADY;
  wire m05_couplers_to_auto_cc_ARVALID;
  wire [31:0]m05_couplers_to_auto_cc_AWADDR;
  wire [2:0]m05_couplers_to_auto_cc_AWPROT;
  wire m05_couplers_to_auto_cc_AWREADY;
  wire m05_couplers_to_auto_cc_AWVALID;
  wire m05_couplers_to_auto_cc_BREADY;
  wire [1:0]m05_couplers_to_auto_cc_BRESP;
  wire m05_couplers_to_auto_cc_BVALID;
  wire [31:0]m05_couplers_to_auto_cc_RDATA;
  wire m05_couplers_to_auto_cc_RREADY;
  wire [1:0]m05_couplers_to_auto_cc_RRESP;
  wire m05_couplers_to_auto_cc_RVALID;
  wire [31:0]m05_couplers_to_auto_cc_WDATA;
  wire m05_couplers_to_auto_cc_WREADY;
  wire [3:0]m05_couplers_to_auto_cc_WSTRB;
  wire m05_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[3:0] = auto_cc_to_m05_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_cc_to_m05_couplers_ARPROT;
  assign M_AXI_arvalid = auto_cc_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[3:0] = auto_cc_to_m05_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_cc_to_m05_couplers_AWPROT;
  assign M_AXI_awvalid = auto_cc_to_m05_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m05_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m05_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m05_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m05_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m05_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m05_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m05_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m05_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m05_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m05_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m05_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  ebaz4205_auto_cc_2 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m05_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m05_couplers_ARPROT),
        .m_axi_arready(auto_cc_to_m05_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m05_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m05_couplers_AWADDR),
        .m_axi_awprot(auto_cc_to_m05_couplers_AWPROT),
        .m_axi_awready(auto_cc_to_m05_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m05_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m05_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m05_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m05_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m05_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m05_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m05_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m05_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m05_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m05_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m05_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m05_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m05_couplers_to_auto_cc_ARADDR[3:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m05_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m05_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m05_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m05_couplers_to_auto_cc_AWADDR[3:0]),
        .s_axi_awprot(m05_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m05_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m05_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m05_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m05_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m05_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m05_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m05_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m05_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m05_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m05_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m05_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m05_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m05_couplers_to_auto_cc_WVALID));
endmodule

module m06_couplers_imp_1CO96E2
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  output S_AXI_wready;
  input S_AXI_wvalid;

  wire m06_couplers_to_m06_couplers_ARADDR;
  wire m06_couplers_to_m06_couplers_ARREADY;
  wire m06_couplers_to_m06_couplers_ARVALID;
  wire m06_couplers_to_m06_couplers_AWADDR;
  wire m06_couplers_to_m06_couplers_AWREADY;
  wire m06_couplers_to_m06_couplers_AWVALID;
  wire m06_couplers_to_m06_couplers_BREADY;
  wire m06_couplers_to_m06_couplers_BRESP;
  wire m06_couplers_to_m06_couplers_BVALID;
  wire m06_couplers_to_m06_couplers_RDATA;
  wire m06_couplers_to_m06_couplers_RREADY;
  wire m06_couplers_to_m06_couplers_RRESP;
  wire m06_couplers_to_m06_couplers_RVALID;
  wire m06_couplers_to_m06_couplers_WDATA;
  wire m06_couplers_to_m06_couplers_WREADY;
  wire m06_couplers_to_m06_couplers_WVALID;

  assign M_AXI_araddr = m06_couplers_to_m06_couplers_ARADDR;
  assign M_AXI_arvalid = m06_couplers_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr = m06_couplers_to_m06_couplers_AWADDR;
  assign M_AXI_awvalid = m06_couplers_to_m06_couplers_AWVALID;
  assign M_AXI_bready = m06_couplers_to_m06_couplers_BREADY;
  assign M_AXI_rready = m06_couplers_to_m06_couplers_RREADY;
  assign M_AXI_wdata = m06_couplers_to_m06_couplers_WDATA;
  assign M_AXI_wvalid = m06_couplers_to_m06_couplers_WVALID;
  assign S_AXI_arready = m06_couplers_to_m06_couplers_ARREADY;
  assign S_AXI_awready = m06_couplers_to_m06_couplers_AWREADY;
  assign S_AXI_bresp = m06_couplers_to_m06_couplers_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_m06_couplers_BVALID;
  assign S_AXI_rdata = m06_couplers_to_m06_couplers_RDATA;
  assign S_AXI_rresp = m06_couplers_to_m06_couplers_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_m06_couplers_RVALID;
  assign S_AXI_wready = m06_couplers_to_m06_couplers_WREADY;
  assign m06_couplers_to_m06_couplers_ARADDR = S_AXI_araddr;
  assign m06_couplers_to_m06_couplers_ARREADY = M_AXI_arready;
  assign m06_couplers_to_m06_couplers_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_m06_couplers_AWADDR = S_AXI_awaddr;
  assign m06_couplers_to_m06_couplers_AWREADY = M_AXI_awready;
  assign m06_couplers_to_m06_couplers_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_m06_couplers_BREADY = S_AXI_bready;
  assign m06_couplers_to_m06_couplers_BRESP = M_AXI_bresp;
  assign m06_couplers_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign m06_couplers_to_m06_couplers_RDATA = M_AXI_rdata;
  assign m06_couplers_to_m06_couplers_RREADY = S_AXI_rready;
  assign m06_couplers_to_m06_couplers_RRESP = M_AXI_rresp;
  assign m06_couplers_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign m06_couplers_to_m06_couplers_WDATA = S_AXI_wdata;
  assign m06_couplers_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_m06_couplers_WVALID = S_AXI_wvalid;
endmodule

module m07_couplers_imp_HTQA2J
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [15:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [15:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [15:0]auto_cc_to_m07_couplers_ARADDR;
  wire auto_cc_to_m07_couplers_ARREADY;
  wire auto_cc_to_m07_couplers_ARVALID;
  wire [15:0]auto_cc_to_m07_couplers_AWADDR;
  wire auto_cc_to_m07_couplers_AWREADY;
  wire auto_cc_to_m07_couplers_AWVALID;
  wire auto_cc_to_m07_couplers_BREADY;
  wire [1:0]auto_cc_to_m07_couplers_BRESP;
  wire auto_cc_to_m07_couplers_BVALID;
  wire [31:0]auto_cc_to_m07_couplers_RDATA;
  wire auto_cc_to_m07_couplers_RREADY;
  wire [1:0]auto_cc_to_m07_couplers_RRESP;
  wire auto_cc_to_m07_couplers_RVALID;
  wire [31:0]auto_cc_to_m07_couplers_WDATA;
  wire auto_cc_to_m07_couplers_WREADY;
  wire auto_cc_to_m07_couplers_WVALID;
  wire [31:0]m07_couplers_to_auto_cc_ARADDR;
  wire [2:0]m07_couplers_to_auto_cc_ARPROT;
  wire m07_couplers_to_auto_cc_ARREADY;
  wire m07_couplers_to_auto_cc_ARVALID;
  wire [31:0]m07_couplers_to_auto_cc_AWADDR;
  wire [2:0]m07_couplers_to_auto_cc_AWPROT;
  wire m07_couplers_to_auto_cc_AWREADY;
  wire m07_couplers_to_auto_cc_AWVALID;
  wire m07_couplers_to_auto_cc_BREADY;
  wire [1:0]m07_couplers_to_auto_cc_BRESP;
  wire m07_couplers_to_auto_cc_BVALID;
  wire [31:0]m07_couplers_to_auto_cc_RDATA;
  wire m07_couplers_to_auto_cc_RREADY;
  wire [1:0]m07_couplers_to_auto_cc_RRESP;
  wire m07_couplers_to_auto_cc_RVALID;
  wire [31:0]m07_couplers_to_auto_cc_WDATA;
  wire m07_couplers_to_auto_cc_WREADY;
  wire [3:0]m07_couplers_to_auto_cc_WSTRB;
  wire m07_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[15:0] = auto_cc_to_m07_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[15:0] = auto_cc_to_m07_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m07_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m07_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m07_couplers_WDATA;
  assign M_AXI_wvalid = auto_cc_to_m07_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m07_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m07_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m07_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m07_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m07_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m07_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m07_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m07_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m07_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m07_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m07_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m07_couplers_WREADY = M_AXI_wready;
  assign m07_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m07_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m07_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m07_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m07_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m07_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m07_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m07_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m07_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m07_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  ebaz4205_auto_cc_3 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m07_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m07_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m07_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m07_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m07_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m07_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m07_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m07_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m07_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m07_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m07_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m07_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m07_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m07_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m07_couplers_WREADY),
        .m_axi_wvalid(auto_cc_to_m07_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m07_couplers_to_auto_cc_ARADDR[15:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m07_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m07_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m07_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m07_couplers_to_auto_cc_AWADDR[15:0]),
        .s_axi_awprot(m07_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m07_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m07_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m07_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m07_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m07_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m07_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m07_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m07_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m07_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m07_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m07_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m07_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m07_couplers_to_auto_cc_WVALID));
endmodule

module m08_couplers_imp_1EKI13N
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [3:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [3:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [3:0]auto_cc_to_m08_couplers_ARADDR;
  wire [2:0]auto_cc_to_m08_couplers_ARPROT;
  wire auto_cc_to_m08_couplers_ARREADY;
  wire auto_cc_to_m08_couplers_ARVALID;
  wire [3:0]auto_cc_to_m08_couplers_AWADDR;
  wire [2:0]auto_cc_to_m08_couplers_AWPROT;
  wire auto_cc_to_m08_couplers_AWREADY;
  wire auto_cc_to_m08_couplers_AWVALID;
  wire auto_cc_to_m08_couplers_BREADY;
  wire [1:0]auto_cc_to_m08_couplers_BRESP;
  wire auto_cc_to_m08_couplers_BVALID;
  wire [31:0]auto_cc_to_m08_couplers_RDATA;
  wire auto_cc_to_m08_couplers_RREADY;
  wire [1:0]auto_cc_to_m08_couplers_RRESP;
  wire auto_cc_to_m08_couplers_RVALID;
  wire [31:0]auto_cc_to_m08_couplers_WDATA;
  wire auto_cc_to_m08_couplers_WREADY;
  wire [3:0]auto_cc_to_m08_couplers_WSTRB;
  wire auto_cc_to_m08_couplers_WVALID;
  wire [31:0]m08_couplers_to_auto_cc_ARADDR;
  wire [2:0]m08_couplers_to_auto_cc_ARPROT;
  wire m08_couplers_to_auto_cc_ARREADY;
  wire m08_couplers_to_auto_cc_ARVALID;
  wire [31:0]m08_couplers_to_auto_cc_AWADDR;
  wire [2:0]m08_couplers_to_auto_cc_AWPROT;
  wire m08_couplers_to_auto_cc_AWREADY;
  wire m08_couplers_to_auto_cc_AWVALID;
  wire m08_couplers_to_auto_cc_BREADY;
  wire [1:0]m08_couplers_to_auto_cc_BRESP;
  wire m08_couplers_to_auto_cc_BVALID;
  wire [31:0]m08_couplers_to_auto_cc_RDATA;
  wire m08_couplers_to_auto_cc_RREADY;
  wire [1:0]m08_couplers_to_auto_cc_RRESP;
  wire m08_couplers_to_auto_cc_RVALID;
  wire [31:0]m08_couplers_to_auto_cc_WDATA;
  wire m08_couplers_to_auto_cc_WREADY;
  wire [3:0]m08_couplers_to_auto_cc_WSTRB;
  wire m08_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[3:0] = auto_cc_to_m08_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_cc_to_m08_couplers_ARPROT;
  assign M_AXI_arvalid = auto_cc_to_m08_couplers_ARVALID;
  assign M_AXI_awaddr[3:0] = auto_cc_to_m08_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_cc_to_m08_couplers_AWPROT;
  assign M_AXI_awvalid = auto_cc_to_m08_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m08_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m08_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m08_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m08_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m08_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m08_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m08_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m08_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m08_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m08_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m08_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m08_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m08_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m08_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m08_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m08_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m08_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m08_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m08_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m08_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m08_couplers_WREADY = M_AXI_wready;
  assign m08_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m08_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m08_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m08_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m08_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m08_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m08_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m08_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m08_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m08_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m08_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  ebaz4205_auto_cc_4 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m08_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m08_couplers_ARPROT),
        .m_axi_arready(auto_cc_to_m08_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m08_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m08_couplers_AWADDR),
        .m_axi_awprot(auto_cc_to_m08_couplers_AWPROT),
        .m_axi_awready(auto_cc_to_m08_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m08_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m08_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m08_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m08_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m08_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m08_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m08_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m08_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m08_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m08_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m08_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m08_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m08_couplers_to_auto_cc_ARADDR[3:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m08_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m08_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m08_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m08_couplers_to_auto_cc_AWADDR[3:0]),
        .s_axi_awprot(m08_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m08_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m08_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m08_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m08_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m08_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m08_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m08_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m08_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m08_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m08_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m08_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m08_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m08_couplers_to_auto_cc_WVALID));
endmodule

module m09_couplers_imp_OPRMR6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m09_couplers_to_m09_couplers_ARADDR;
  wire m09_couplers_to_m09_couplers_ARREADY;
  wire m09_couplers_to_m09_couplers_ARVALID;
  wire [31:0]m09_couplers_to_m09_couplers_AWADDR;
  wire m09_couplers_to_m09_couplers_AWREADY;
  wire m09_couplers_to_m09_couplers_AWVALID;
  wire m09_couplers_to_m09_couplers_BREADY;
  wire [1:0]m09_couplers_to_m09_couplers_BRESP;
  wire m09_couplers_to_m09_couplers_BVALID;
  wire [31:0]m09_couplers_to_m09_couplers_RDATA;
  wire m09_couplers_to_m09_couplers_RREADY;
  wire [1:0]m09_couplers_to_m09_couplers_RRESP;
  wire m09_couplers_to_m09_couplers_RVALID;
  wire [31:0]m09_couplers_to_m09_couplers_WDATA;
  wire m09_couplers_to_m09_couplers_WREADY;
  wire [3:0]m09_couplers_to_m09_couplers_WSTRB;
  wire m09_couplers_to_m09_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m09_couplers_to_m09_couplers_ARADDR;
  assign M_AXI_arvalid = m09_couplers_to_m09_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m09_couplers_to_m09_couplers_AWADDR;
  assign M_AXI_awvalid = m09_couplers_to_m09_couplers_AWVALID;
  assign M_AXI_bready = m09_couplers_to_m09_couplers_BREADY;
  assign M_AXI_rready = m09_couplers_to_m09_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m09_couplers_to_m09_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m09_couplers_to_m09_couplers_WSTRB;
  assign M_AXI_wvalid = m09_couplers_to_m09_couplers_WVALID;
  assign S_AXI_arready = m09_couplers_to_m09_couplers_ARREADY;
  assign S_AXI_awready = m09_couplers_to_m09_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m09_couplers_to_m09_couplers_BRESP;
  assign S_AXI_bvalid = m09_couplers_to_m09_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m09_couplers_to_m09_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m09_couplers_to_m09_couplers_RRESP;
  assign S_AXI_rvalid = m09_couplers_to_m09_couplers_RVALID;
  assign S_AXI_wready = m09_couplers_to_m09_couplers_WREADY;
  assign m09_couplers_to_m09_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m09_couplers_to_m09_couplers_ARREADY = M_AXI_arready;
  assign m09_couplers_to_m09_couplers_ARVALID = S_AXI_arvalid;
  assign m09_couplers_to_m09_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m09_couplers_to_m09_couplers_AWREADY = M_AXI_awready;
  assign m09_couplers_to_m09_couplers_AWVALID = S_AXI_awvalid;
  assign m09_couplers_to_m09_couplers_BREADY = S_AXI_bready;
  assign m09_couplers_to_m09_couplers_BRESP = M_AXI_bresp[1:0];
  assign m09_couplers_to_m09_couplers_BVALID = M_AXI_bvalid;
  assign m09_couplers_to_m09_couplers_RDATA = M_AXI_rdata[31:0];
  assign m09_couplers_to_m09_couplers_RREADY = S_AXI_rready;
  assign m09_couplers_to_m09_couplers_RRESP = M_AXI_rresp[1:0];
  assign m09_couplers_to_m09_couplers_RVALID = M_AXI_rvalid;
  assign m09_couplers_to_m09_couplers_WDATA = S_AXI_wdata[31:0];
  assign m09_couplers_to_m09_couplers_WREADY = M_AXI_wready;
  assign m09_couplers_to_m09_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m09_couplers_to_m09_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_OGT7Q5
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  ebaz4205_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule
