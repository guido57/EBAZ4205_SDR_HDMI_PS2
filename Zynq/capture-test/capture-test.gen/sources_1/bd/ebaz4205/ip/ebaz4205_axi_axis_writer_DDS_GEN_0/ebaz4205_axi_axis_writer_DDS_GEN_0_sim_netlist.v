// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sun Dec 25 22:00:58 2022
// Host        : DESKTOP-SQGSJV7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top ebaz4205_axi_axis_writer_DDS_GEN_0 -prefix
//               ebaz4205_axi_axis_writer_DDS_GEN_0_ ebaz4205_axi_axis_writer_0_0_sim_netlist.v
// Design      : ebaz4205_axi_axis_writer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ebaz4205_axi_axis_writer_DDS_GEN_0_axi_axis_writer
   (int_wready_reg_reg_0,
    m_axis_tdata,
    m_axis_tvalid,
    int_awready_reg_reg_0,
    s_axi_bvalid,
    s_axi_wdata,
    aclk,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_bready,
    aresetn);
  output int_wready_reg_reg_0;
  output [31:0]m_axis_tdata;
  output m_axis_tvalid;
  output int_awready_reg_reg_0;
  output s_axi_bvalid;
  input [31:0]s_axi_wdata;
  input aclk;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input s_axi_bready;
  input aresetn;

  wire aclk;
  wire aresetn;
  wire int_awready_reg_i_1_n_0;
  wire int_awready_reg_reg_0;
  wire int_bdone_wire;
  wire int_bvalid_reg_i_1_n_0;
  wire [31:0]int_wdata_reg;
  wire int_wready_reg_i_1_n_0;
  wire int_wready_reg_reg_0;
  wire [31:0]m_axis_tdata;
  wire m_axis_tvalid;
  wire p_0_in;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wvalid;

  LUT6 #(
    .INIT(64'hFF4F4444FFFFFFFF)) 
    int_awready_reg_i_1
       (.I0(s_axi_awvalid),
        .I1(int_awready_reg_reg_0),
        .I2(int_wready_reg_reg_0),
        .I3(s_axi_wvalid),
        .I4(int_bdone_wire),
        .I5(aresetn),
        .O(int_awready_reg_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    int_awready_reg_i_2
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid),
        .O(int_bdone_wire));
  FDRE int_awready_reg_reg
       (.C(aclk),
        .CE(1'b1),
        .D(int_awready_reg_i_1_n_0),
        .Q(int_awready_reg_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF7F755F700000000)) 
    int_bvalid_reg_i_1
       (.I0(int_bdone_wire),
        .I1(int_awready_reg_reg_0),
        .I2(s_axi_awvalid),
        .I3(int_wready_reg_reg_0),
        .I4(s_axi_wvalid),
        .I5(aresetn),
        .O(int_bvalid_reg_i_1_n_0));
  FDRE int_bvalid_reg_reg
       (.C(aclk),
        .CE(1'b1),
        .D(int_bvalid_reg_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \int_wdata_reg[31]_i_1 
       (.I0(aresetn),
        .O(p_0_in));
  FDRE \int_wdata_reg_reg[0] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[0]),
        .Q(int_wdata_reg[0]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[10] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[10]),
        .Q(int_wdata_reg[10]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[11] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[11]),
        .Q(int_wdata_reg[11]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[12] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[12]),
        .Q(int_wdata_reg[12]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[13] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[13]),
        .Q(int_wdata_reg[13]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[14] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[14]),
        .Q(int_wdata_reg[14]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[15] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[15]),
        .Q(int_wdata_reg[15]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[16] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[16]),
        .Q(int_wdata_reg[16]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[17] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[17]),
        .Q(int_wdata_reg[17]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[18] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[18]),
        .Q(int_wdata_reg[18]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[19] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[19]),
        .Q(int_wdata_reg[19]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[1] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[1]),
        .Q(int_wdata_reg[1]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[20] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[20]),
        .Q(int_wdata_reg[20]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[21] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[21]),
        .Q(int_wdata_reg[21]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[22] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[22]),
        .Q(int_wdata_reg[22]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[23] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[23]),
        .Q(int_wdata_reg[23]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[24] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[24]),
        .Q(int_wdata_reg[24]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[25] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[25]),
        .Q(int_wdata_reg[25]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[26] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[26]),
        .Q(int_wdata_reg[26]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[27] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[27]),
        .Q(int_wdata_reg[27]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[28] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[28]),
        .Q(int_wdata_reg[28]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[29] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[29]),
        .Q(int_wdata_reg[29]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[2] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[2]),
        .Q(int_wdata_reg[2]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[30] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[30]),
        .Q(int_wdata_reg[30]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[31] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[31]),
        .Q(int_wdata_reg[31]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[3] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[3]),
        .Q(int_wdata_reg[3]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[4] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[4]),
        .Q(int_wdata_reg[4]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[5] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[5]),
        .Q(int_wdata_reg[5]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[6] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[6]),
        .Q(int_wdata_reg[6]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[7] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[7]),
        .Q(int_wdata_reg[7]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[8] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[8]),
        .Q(int_wdata_reg[8]),
        .R(p_0_in));
  FDRE \int_wdata_reg_reg[9] 
       (.C(aclk),
        .CE(int_wready_reg_reg_0),
        .D(s_axi_wdata[9]),
        .Q(int_wdata_reg[9]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFF4F4444FFFFFFFF)) 
    int_wready_reg_i_1
       (.I0(s_axi_wvalid),
        .I1(int_wready_reg_reg_0),
        .I2(int_awready_reg_reg_0),
        .I3(s_axi_awvalid),
        .I4(int_bdone_wire),
        .I5(aresetn),
        .O(int_wready_reg_i_1_n_0));
  FDRE int_wready_reg_reg
       (.C(aclk),
        .CE(1'b1),
        .D(int_wready_reg_i_1_n_0),
        .Q(int_wready_reg_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(s_axi_wdata[0]),
        .I1(int_wdata_reg[0]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(s_axi_wdata[10]),
        .I1(int_wdata_reg[10]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(s_axi_wdata[11]),
        .I1(int_wdata_reg[11]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(s_axi_wdata[12]),
        .I1(int_wdata_reg[12]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(s_axi_wdata[13]),
        .I1(int_wdata_reg[13]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[14]_INST_0 
       (.I0(s_axi_wdata[14]),
        .I1(int_wdata_reg[14]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[15]_INST_0 
       (.I0(s_axi_wdata[15]),
        .I1(int_wdata_reg[15]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(s_axi_wdata[16]),
        .I1(int_wdata_reg[16]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[17]_INST_0 
       (.I0(s_axi_wdata[17]),
        .I1(int_wdata_reg[17]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[18]_INST_0 
       (.I0(s_axi_wdata[18]),
        .I1(int_wdata_reg[18]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[19]_INST_0 
       (.I0(s_axi_wdata[19]),
        .I1(int_wdata_reg[19]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(s_axi_wdata[1]),
        .I1(int_wdata_reg[1]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[20]_INST_0 
       (.I0(s_axi_wdata[20]),
        .I1(int_wdata_reg[20]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[21]_INST_0 
       (.I0(s_axi_wdata[21]),
        .I1(int_wdata_reg[21]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[22]_INST_0 
       (.I0(s_axi_wdata[22]),
        .I1(int_wdata_reg[22]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[23]_INST_0 
       (.I0(s_axi_wdata[23]),
        .I1(int_wdata_reg[23]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[24]_INST_0 
       (.I0(s_axi_wdata[24]),
        .I1(int_wdata_reg[24]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[25]_INST_0 
       (.I0(s_axi_wdata[25]),
        .I1(int_wdata_reg[25]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[26]_INST_0 
       (.I0(s_axi_wdata[26]),
        .I1(int_wdata_reg[26]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[27]_INST_0 
       (.I0(s_axi_wdata[27]),
        .I1(int_wdata_reg[27]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[28]_INST_0 
       (.I0(s_axi_wdata[28]),
        .I1(int_wdata_reg[28]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[29]_INST_0 
       (.I0(s_axi_wdata[29]),
        .I1(int_wdata_reg[29]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(s_axi_wdata[2]),
        .I1(int_wdata_reg[2]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[30]_INST_0 
       (.I0(s_axi_wdata[30]),
        .I1(int_wdata_reg[30]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[31]_INST_0 
       (.I0(s_axi_wdata[31]),
        .I1(int_wdata_reg[31]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(s_axi_wdata[3]),
        .I1(int_wdata_reg[3]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(s_axi_wdata[4]),
        .I1(int_wdata_reg[4]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(s_axi_wdata[5]),
        .I1(int_wdata_reg[5]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(s_axi_wdata[6]),
        .I1(int_wdata_reg[6]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(s_axi_wdata[7]),
        .I1(int_wdata_reg[7]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(s_axi_wdata[8]),
        .I1(int_wdata_reg[8]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(s_axi_wdata[9]),
        .I1(int_wdata_reg[9]),
        .I2(int_wready_reg_reg_0),
        .O(m_axis_tdata[9]));
  LUT6 #(
    .INIT(64'hB0BBB0BB0000B0BB)) 
    m_axis_tvalid_INST_0
       (.I0(s_axi_wvalid),
        .I1(int_wready_reg_reg_0),
        .I2(s_axi_awvalid),
        .I3(int_awready_reg_reg_0),
        .I4(s_axi_bvalid),
        .I5(s_axi_bready),
        .O(m_axis_tvalid));
endmodule

(* CHECK_LICENSE_TYPE = "ebaz4205_axi_axis_writer_0_0,axi_axis_writer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi_axis_writer,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module ebaz4205_axi_axis_writer_DDS_GEN_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axis_tdata,
    m_axis_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axi, ASSOCIATED_RESET aresetn, FREQ_HZ 64000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ebaz4205_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [15:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [15:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 64000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN ebaz4205_processing_system7_0_0_FCLK_CLK1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 64000000, PHASE 0.0, CLK_DOMAIN ebaz4205_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axis_tdata;
  wire m_axis_tvalid;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;

  assign s_axi_arready = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  GND GND
       (.G(\<const0> ));
  ebaz4205_axi_axis_writer_DDS_GEN_0_axi_axis_writer inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .int_awready_reg_reg_0(s_axi_awready),
        .int_wready_reg_reg_0(s_axi_wready),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid));
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
