//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Sat Oct  1 21:19:15 2022
//Host        : DESKTOP-SQGSJV7 running 64-bit major release  (build 9200)
//Command     : generate_target ebaz4205_wrapper.bd
//Design      : ebaz4205_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ebaz4205_wrapper
   (DDR_addr,
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
    LED,
    MDIO_ETHERNET_0_0_mdc,
    MDIO_ETHERNET_0_0_mdio_io,
    clk_66M,
    enet0_gmii_rxd,
    enet0_gmii_txd);
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
  output FCLK_CLK3_0;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output [1:0]LED;
  output MDIO_ETHERNET_0_0_mdc;
  inout MDIO_ETHERNET_0_0_mdio_io;
  output clk_66M;
  input [3:0]enet0_gmii_rxd;
  output [3:0]enet0_gmii_txd;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire ENET0_GMII_RX_CLK_0;
  wire ENET0_GMII_RX_DV_0;
  wire ENET0_GMII_TX_CLK_0;
  wire [0:0]ENET0_GMII_TX_EN_0;
  wire FCLK_CLK3_0;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [1:0]LED;
  wire MDIO_ETHERNET_0_0_mdc;
  wire MDIO_ETHERNET_0_0_mdio_i;
  wire MDIO_ETHERNET_0_0_mdio_io;
  wire MDIO_ETHERNET_0_0_mdio_o;
  wire MDIO_ETHERNET_0_0_mdio_t;
  wire clk_66M;
  wire [3:0]enet0_gmii_rxd;
  wire [3:0]enet0_gmii_txd;

  IOBUF MDIO_ETHERNET_0_0_mdio_iobuf
       (.I(MDIO_ETHERNET_0_0_mdio_o),
        .IO(MDIO_ETHERNET_0_0_mdio_io),
        .O(MDIO_ETHERNET_0_0_mdio_i),
        .T(MDIO_ETHERNET_0_0_mdio_t));
  ebaz4205 ebaz4205_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .ENET0_GMII_RX_CLK_0(ENET0_GMII_RX_CLK_0),
        .ENET0_GMII_RX_DV_0(ENET0_GMII_RX_DV_0),
        .ENET0_GMII_TX_CLK_0(ENET0_GMII_TX_CLK_0),
        .ENET0_GMII_TX_EN_0(ENET0_GMII_TX_EN_0),
        .FCLK_CLK3_0(FCLK_CLK3_0),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .LED(LED),
        .MDIO_ETHERNET_0_0_mdc(MDIO_ETHERNET_0_0_mdc),
        .MDIO_ETHERNET_0_0_mdio_i(MDIO_ETHERNET_0_0_mdio_i),
        .MDIO_ETHERNET_0_0_mdio_o(MDIO_ETHERNET_0_0_mdio_o),
        .MDIO_ETHERNET_0_0_mdio_t(MDIO_ETHERNET_0_0_mdio_t),
        .clk_66M(clk_66M),
        .enet0_gmii_rxd(enet0_gmii_rxd),
        .enet0_gmii_txd(enet0_gmii_txd));
endmodule
