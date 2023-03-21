// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Mar 20 21:27:39 2023
// Host        : guido-UM690 running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/guido/GitHub/EBAZ4205_SDR_HDMI_PS2/Vivado/Vivado.gen/sources_1/bd/ebaz4205/ip/ebaz4205_axis_capture_0_4/ebaz4205_axis_capture_0_4_sim_netlist.v
// Design      : ebaz4205_axis_capture_0_4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ebaz4205_axis_capture_0_4,axis_capture,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "axis_capture,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module ebaz4205_axis_capture_0_4
   (capture_clk,
    capture_data,
    capture_valid,
    ctrl_s_axi_aclk,
    ctrl_s_axi_aresetn,
    ctrl_s_axi_awaddr,
    ctrl_s_axi_awprot,
    ctrl_s_axi_awvalid,
    ctrl_s_axi_awready,
    ctrl_s_axi_wdata,
    ctrl_s_axi_wstrb,
    ctrl_s_axi_wvalid,
    ctrl_s_axi_wready,
    ctrl_s_axi_bresp,
    ctrl_s_axi_bvalid,
    ctrl_s_axi_bready,
    ctrl_s_axi_araddr,
    ctrl_s_axi_arprot,
    ctrl_s_axi_arvalid,
    ctrl_s_axi_arready,
    ctrl_s_axi_rdata,
    ctrl_s_axi_rresp,
    ctrl_s_axi_rvalid,
    ctrl_s_axi_rready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 capture_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME capture_clk, ASSOCIATED_BUSIF capture, FREQ_HZ 6.4e+07, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ebaz4205_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input capture_clk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 capture TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME capture, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 6.4e+07, PHASE 0.0, CLK_DOMAIN ebaz4205_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]capture_data;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 capture TVALID" *) input capture_valid;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ctrl_s_axi_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ctrl_s_axi_aclk, ASSOCIATED_BUSIF ctrl_s_axi, ASSOCIATED_RESET ctrl_s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ebaz4205_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ctrl_s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ctrl_s_axi_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ctrl_s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ctrl_s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 ctrl_s_axi AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME ctrl_s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN ebaz4205_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]ctrl_s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 ctrl_s_axi AWPROT" *) input [2:0]ctrl_s_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 ctrl_s_axi AWVALID" *) input ctrl_s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 ctrl_s_axi AWREADY" *) output ctrl_s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 ctrl_s_axi WDATA" *) input [31:0]ctrl_s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 ctrl_s_axi WSTRB" *) input [3:0]ctrl_s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 ctrl_s_axi WVALID" *) input ctrl_s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 ctrl_s_axi WREADY" *) output ctrl_s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 ctrl_s_axi BRESP" *) output [1:0]ctrl_s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 ctrl_s_axi BVALID" *) output ctrl_s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 ctrl_s_axi BREADY" *) input ctrl_s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 ctrl_s_axi ARADDR" *) input [4:0]ctrl_s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 ctrl_s_axi ARPROT" *) input [2:0]ctrl_s_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 ctrl_s_axi ARVALID" *) input ctrl_s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 ctrl_s_axi ARREADY" *) output ctrl_s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 ctrl_s_axi RDATA" *) output [31:0]ctrl_s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 ctrl_s_axi RRESP" *) output [1:0]ctrl_s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 ctrl_s_axi RVALID" *) output ctrl_s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 ctrl_s_axi RREADY" *) input ctrl_s_axi_rready;

  wire \<const0> ;
  wire capture_clk;
  wire [31:0]capture_data;
  wire capture_valid;
  wire ctrl_s_axi_aclk;
  wire [4:0]ctrl_s_axi_araddr;
  wire ctrl_s_axi_aresetn;
  wire ctrl_s_axi_arready;
  wire ctrl_s_axi_arvalid;
  wire [4:0]ctrl_s_axi_awaddr;
  wire ctrl_s_axi_awready;
  wire ctrl_s_axi_awvalid;
  wire ctrl_s_axi_bready;
  wire ctrl_s_axi_bvalid;
  wire [31:0]ctrl_s_axi_rdata;
  wire ctrl_s_axi_rready;
  wire ctrl_s_axi_rvalid;
  wire [31:0]ctrl_s_axi_wdata;
  wire ctrl_s_axi_wready;
  wire [3:0]ctrl_s_axi_wstrb;
  wire ctrl_s_axi_wvalid;

  assign ctrl_s_axi_bresp[1] = \<const0> ;
  assign ctrl_s_axi_bresp[0] = \<const0> ;
  assign ctrl_s_axi_rresp[1] = \<const0> ;
  assign ctrl_s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  ebaz4205_axis_capture_0_4_axis_capture U0
       (.S_AXI_ARREADY(ctrl_s_axi_arready),
        .S_AXI_AWREADY(ctrl_s_axi_awready),
        .S_AXI_WREADY(ctrl_s_axi_wready),
        .axi_rvalid_reg(ctrl_s_axi_rvalid),
        .capture_clk(capture_clk),
        .capture_data(capture_data),
        .capture_valid(capture_valid),
        .ctrl_s_axi_aclk(ctrl_s_axi_aclk),
        .ctrl_s_axi_araddr(ctrl_s_axi_araddr[4:2]),
        .ctrl_s_axi_aresetn(ctrl_s_axi_aresetn),
        .ctrl_s_axi_arvalid(ctrl_s_axi_arvalid),
        .ctrl_s_axi_awaddr(ctrl_s_axi_awaddr[4:2]),
        .ctrl_s_axi_awvalid(ctrl_s_axi_awvalid),
        .ctrl_s_axi_bready(ctrl_s_axi_bready),
        .ctrl_s_axi_bvalid(ctrl_s_axi_bvalid),
        .ctrl_s_axi_rdata(ctrl_s_axi_rdata),
        .ctrl_s_axi_rready(ctrl_s_axi_rready),
        .ctrl_s_axi_wdata(ctrl_s_axi_wdata),
        .ctrl_s_axi_wstrb(ctrl_s_axi_wstrb),
        .ctrl_s_axi_wvalid(ctrl_s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axis_capture" *) 
module ebaz4205_axis_capture_0_4_axis_capture
   (axi_rvalid_reg,
    S_AXI_ARREADY,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    ctrl_s_axi_rdata,
    ctrl_s_axi_bvalid,
    ctrl_s_axi_arvalid,
    ctrl_s_axi_aresetn,
    capture_valid,
    ctrl_s_axi_aclk,
    ctrl_s_axi_awaddr,
    ctrl_s_axi_wvalid,
    ctrl_s_axi_awvalid,
    ctrl_s_axi_wdata,
    capture_clk,
    ctrl_s_axi_araddr,
    capture_data,
    ctrl_s_axi_wstrb,
    ctrl_s_axi_bready,
    ctrl_s_axi_rready);
  output axi_rvalid_reg;
  output S_AXI_ARREADY;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [31:0]ctrl_s_axi_rdata;
  output ctrl_s_axi_bvalid;
  input ctrl_s_axi_arvalid;
  input ctrl_s_axi_aresetn;
  input capture_valid;
  input ctrl_s_axi_aclk;
  input [2:0]ctrl_s_axi_awaddr;
  input ctrl_s_axi_wvalid;
  input ctrl_s_axi_awvalid;
  input [31:0]ctrl_s_axi_wdata;
  input capture_clk;
  input [2:0]ctrl_s_axi_araddr;
  input [31:0]capture_data;
  input [3:0]ctrl_s_axi_wstrb;
  input ctrl_s_axi_bready;
  input ctrl_s_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire axi_rvalid_reg;
  wire capture_clk;
  wire [31:0]capture_data;
  wire capture_valid;
  wire ctrl_s_axi_aclk;
  wire [2:0]ctrl_s_axi_araddr;
  wire ctrl_s_axi_aresetn;
  wire ctrl_s_axi_arvalid;
  wire [2:0]ctrl_s_axi_awaddr;
  wire ctrl_s_axi_awvalid;
  wire ctrl_s_axi_bready;
  wire ctrl_s_axi_bvalid;
  wire [31:0]ctrl_s_axi_rdata;
  wire ctrl_s_axi_rready;
  wire [31:0]ctrl_s_axi_wdata;
  wire [3:0]ctrl_s_axi_wstrb;
  wire ctrl_s_axi_wvalid;

  ebaz4205_axis_capture_0_4_axis_capture_logic axis_capture_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .capture_clk(capture_clk),
        .capture_data(capture_data),
        .capture_valid(capture_valid),
        .ctrl_s_axi_aclk(ctrl_s_axi_aclk),
        .ctrl_s_axi_araddr(ctrl_s_axi_araddr),
        .ctrl_s_axi_aresetn(ctrl_s_axi_aresetn),
        .ctrl_s_axi_arvalid(ctrl_s_axi_arvalid),
        .ctrl_s_axi_awaddr(ctrl_s_axi_awaddr),
        .ctrl_s_axi_awvalid(ctrl_s_axi_awvalid),
        .ctrl_s_axi_bready(ctrl_s_axi_bready),
        .ctrl_s_axi_bvalid(ctrl_s_axi_bvalid),
        .ctrl_s_axi_rdata(ctrl_s_axi_rdata),
        .ctrl_s_axi_rready(ctrl_s_axi_rready),
        .ctrl_s_axi_wdata(ctrl_s_axi_wdata),
        .ctrl_s_axi_wstrb(ctrl_s_axi_wstrb),
        .ctrl_s_axi_wvalid(ctrl_s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axis_capture_logic" *) 
module ebaz4205_axis_capture_0_4_axis_capture_logic
   (axi_rvalid_reg_0,
    S_AXI_ARREADY,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    ctrl_s_axi_rdata,
    ctrl_s_axi_bvalid,
    ctrl_s_axi_arvalid,
    ctrl_s_axi_aresetn,
    capture_valid,
    ctrl_s_axi_aclk,
    ctrl_s_axi_awaddr,
    ctrl_s_axi_wvalid,
    ctrl_s_axi_awvalid,
    ctrl_s_axi_wdata,
    capture_clk,
    ctrl_s_axi_araddr,
    capture_data,
    ctrl_s_axi_wstrb,
    ctrl_s_axi_bready,
    ctrl_s_axi_rready);
  output axi_rvalid_reg_0;
  output S_AXI_ARREADY;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [31:0]ctrl_s_axi_rdata;
  output ctrl_s_axi_bvalid;
  input ctrl_s_axi_arvalid;
  input ctrl_s_axi_aresetn;
  input capture_valid;
  input ctrl_s_axi_aclk;
  input [2:0]ctrl_s_axi_awaddr;
  input ctrl_s_axi_wvalid;
  input ctrl_s_axi_awvalid;
  input [31:0]ctrl_s_axi_wdata;
  input capture_clk;
  input [2:0]ctrl_s_axi_araddr;
  input [31:0]capture_data;
  input [3:0]ctrl_s_axi_wstrb;
  input ctrl_s_axi_bready;
  input ctrl_s_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_1_n_0 ;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_4_n_0 ;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready0;
  wire capture_active0;
  wire capture_active_i_1_n_0;
  wire capture_active_reg_n_0;
  wire capture_busy;
  wire capture_busy_i_1_n_0;
  wire capture_clk;
  wire [31:0]capture_data;
  wire \capture_data_ram[31]_i_1_n_0 ;
  wire \capture_data_ram[31]_i_2_n_0 ;
  wire \capture_data_ram[31]_i_3_n_0 ;
  wire \capture_data_ram_reg_n_0_[0] ;
  wire \capture_data_ram_reg_n_0_[10] ;
  wire \capture_data_ram_reg_n_0_[11] ;
  wire \capture_data_ram_reg_n_0_[12] ;
  wire \capture_data_ram_reg_n_0_[13] ;
  wire \capture_data_ram_reg_n_0_[14] ;
  wire \capture_data_ram_reg_n_0_[15] ;
  wire \capture_data_ram_reg_n_0_[16] ;
  wire \capture_data_ram_reg_n_0_[17] ;
  wire \capture_data_ram_reg_n_0_[18] ;
  wire \capture_data_ram_reg_n_0_[19] ;
  wire \capture_data_ram_reg_n_0_[1] ;
  wire \capture_data_ram_reg_n_0_[20] ;
  wire \capture_data_ram_reg_n_0_[21] ;
  wire \capture_data_ram_reg_n_0_[22] ;
  wire \capture_data_ram_reg_n_0_[23] ;
  wire \capture_data_ram_reg_n_0_[24] ;
  wire \capture_data_ram_reg_n_0_[25] ;
  wire \capture_data_ram_reg_n_0_[26] ;
  wire \capture_data_ram_reg_n_0_[27] ;
  wire \capture_data_ram_reg_n_0_[28] ;
  wire \capture_data_ram_reg_n_0_[29] ;
  wire \capture_data_ram_reg_n_0_[2] ;
  wire \capture_data_ram_reg_n_0_[30] ;
  wire \capture_data_ram_reg_n_0_[31] ;
  wire \capture_data_ram_reg_n_0_[3] ;
  wire \capture_data_ram_reg_n_0_[4] ;
  wire \capture_data_ram_reg_n_0_[5] ;
  wire \capture_data_ram_reg_n_0_[6] ;
  wire \capture_data_ram_reg_n_0_[7] ;
  wire \capture_data_ram_reg_n_0_[8] ;
  wire \capture_data_ram_reg_n_0_[9] ;
  wire capture_finished;
  wire capture_finished_i_1_n_0;
  wire capture_valid;
  wire ctrl_s_axi_aclk;
  wire [2:0]ctrl_s_axi_araddr;
  wire ctrl_s_axi_aresetn;
  wire ctrl_s_axi_arvalid;
  wire [2:0]ctrl_s_axi_awaddr;
  wire ctrl_s_axi_awvalid;
  wire ctrl_s_axi_bready;
  wire ctrl_s_axi_bvalid;
  wire [31:0]ctrl_s_axi_rdata;
  wire ctrl_s_axi_rready;
  wire [31:0]ctrl_s_axi_wdata;
  wire [3:0]ctrl_s_axi_wstrb;
  wire ctrl_s_axi_wvalid;
  wire [11:1]data0;
  wire finished_sync_ff1;
  wire finished_sync_ff2;
  wire finished_sync_ff3;
  wire [2:0]p_0_in;
  wire [31:7]p_1_in;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire [31:1]reg_data_out;
  wire [2:0]sel0;
  wire slv_reg_0_d;
  wire slv_reg_0_d_i_1_n_0;
  wire \slv_reg_0_reg_n_0_[0] ;
  wire \slv_reg_0_reg_n_0_[10] ;
  wire \slv_reg_0_reg_n_0_[11] ;
  wire \slv_reg_0_reg_n_0_[12] ;
  wire \slv_reg_0_reg_n_0_[13] ;
  wire \slv_reg_0_reg_n_0_[14] ;
  wire \slv_reg_0_reg_n_0_[15] ;
  wire \slv_reg_0_reg_n_0_[16] ;
  wire \slv_reg_0_reg_n_0_[17] ;
  wire \slv_reg_0_reg_n_0_[18] ;
  wire \slv_reg_0_reg_n_0_[19] ;
  wire \slv_reg_0_reg_n_0_[1] ;
  wire \slv_reg_0_reg_n_0_[20] ;
  wire \slv_reg_0_reg_n_0_[21] ;
  wire \slv_reg_0_reg_n_0_[22] ;
  wire \slv_reg_0_reg_n_0_[23] ;
  wire \slv_reg_0_reg_n_0_[24] ;
  wire \slv_reg_0_reg_n_0_[25] ;
  wire \slv_reg_0_reg_n_0_[26] ;
  wire \slv_reg_0_reg_n_0_[27] ;
  wire \slv_reg_0_reg_n_0_[28] ;
  wire \slv_reg_0_reg_n_0_[29] ;
  wire \slv_reg_0_reg_n_0_[2] ;
  wire \slv_reg_0_reg_n_0_[30] ;
  wire \slv_reg_0_reg_n_0_[31] ;
  wire \slv_reg_0_reg_n_0_[3] ;
  wire \slv_reg_0_reg_n_0_[4] ;
  wire \slv_reg_0_reg_n_0_[5] ;
  wire \slv_reg_0_reg_n_0_[6] ;
  wire \slv_reg_0_reg_n_0_[7] ;
  wire \slv_reg_0_reg_n_0_[8] ;
  wire \slv_reg_0_reg_n_0_[9] ;
  wire [10:0]slv_reg_14;
  wire \slv_reg_14[15]_i_1_n_0 ;
  wire \slv_reg_14[23]_i_1_n_0 ;
  wire \slv_reg_14[31]_i_1_n_0 ;
  wire \slv_reg_14[7]_i_1_n_0 ;
  wire \slv_reg_14_reg_n_0_[11] ;
  wire \slv_reg_14_reg_n_0_[12] ;
  wire \slv_reg_14_reg_n_0_[13] ;
  wire \slv_reg_14_reg_n_0_[14] ;
  wire \slv_reg_14_reg_n_0_[15] ;
  wire \slv_reg_14_reg_n_0_[16] ;
  wire \slv_reg_14_reg_n_0_[17] ;
  wire \slv_reg_14_reg_n_0_[18] ;
  wire \slv_reg_14_reg_n_0_[19] ;
  wire \slv_reg_14_reg_n_0_[20] ;
  wire \slv_reg_14_reg_n_0_[21] ;
  wire \slv_reg_14_reg_n_0_[22] ;
  wire \slv_reg_14_reg_n_0_[23] ;
  wire \slv_reg_14_reg_n_0_[24] ;
  wire \slv_reg_14_reg_n_0_[25] ;
  wire \slv_reg_14_reg_n_0_[26] ;
  wire \slv_reg_14_reg_n_0_[27] ;
  wire \slv_reg_14_reg_n_0_[28] ;
  wire \slv_reg_14_reg_n_0_[29] ;
  wire \slv_reg_14_reg_n_0_[30] ;
  wire \slv_reg_14_reg_n_0_[31] ;
  wire [10:0]slv_reg_18;
  wire [31:0]slv_reg_1c;
  wire \slv_reg_1c[15]_i_1_n_0 ;
  wire \slv_reg_1c[23]_i_1_n_0 ;
  wire \slv_reg_1c[31]_i_1_n_0 ;
  wire \slv_reg_1c[7]_i_1_n_0 ;
  wire [31:0]slv_reg_c;
  wire \slv_reg_c[15]_i_1_n_0 ;
  wire \slv_reg_c[23]_i_1_n_0 ;
  wire \slv_reg_c[31]_i_1_n_0 ;
  wire \slv_reg_c[7]_i_1_n_0 ;
  wire slv_reg_wren__0;
  wire start_sync_ff1;
  wire start_sync_ff2;
  wire start_sync_ff3;
  wire [11:11]test_ram_adr_cnt;
  wire \test_ram_adr_cnt[0]_i_1_n_0 ;
  wire \test_ram_adr_cnt[0]_i_2_n_0 ;
  wire \test_ram_adr_cnt[10]_i_1_n_0 ;
  wire \test_ram_adr_cnt[11]_i_3_n_0 ;
  wire \test_ram_adr_cnt[11]_i_4_n_0 ;
  wire \test_ram_adr_cnt[11]_i_5_n_0 ;
  wire \test_ram_adr_cnt[11]_i_6_n_0 ;
  wire \test_ram_adr_cnt[1]_i_1_n_0 ;
  wire \test_ram_adr_cnt[2]_i_1_n_0 ;
  wire \test_ram_adr_cnt[3]_i_1_n_0 ;
  wire \test_ram_adr_cnt[4]_i_1_n_0 ;
  wire \test_ram_adr_cnt[5]_i_1_n_0 ;
  wire \test_ram_adr_cnt[6]_i_1_n_0 ;
  wire \test_ram_adr_cnt[7]_i_1_n_0 ;
  wire \test_ram_adr_cnt[8]_i_1_n_0 ;
  wire \test_ram_adr_cnt[9]_i_1_n_0 ;
  wire test_ram_adr_cnt_0;
  wire \test_ram_adr_cnt_reg_n_0_[0] ;
  wire \test_ram_adr_cnt_reg_n_0_[10] ;
  wire \test_ram_adr_cnt_reg_n_0_[1] ;
  wire \test_ram_adr_cnt_reg_n_0_[2] ;
  wire \test_ram_adr_cnt_reg_n_0_[3] ;
  wire \test_ram_adr_cnt_reg_n_0_[4] ;
  wire \test_ram_adr_cnt_reg_n_0_[5] ;
  wire \test_ram_adr_cnt_reg_n_0_[6] ;
  wire \test_ram_adr_cnt_reg_n_0_[7] ;
  wire \test_ram_adr_cnt_reg_n_0_[8] ;
  wire \test_ram_adr_cnt_reg_n_0_[9] ;
  wire [10:0]test_ram_adr_r_out;
  wire test_ram_module_n_0;
  wire we_ram;
  wire we_ram_i_1_n_0;
  wire [3:2]NLW_plusOp_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__1_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(ctrl_s_axi_araddr[0]),
        .I1(ctrl_s_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(ctrl_s_axi_araddr[1]),
        .I1(ctrl_s_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[4]_i_1 
       (.I0(ctrl_s_axi_araddr[2]),
        .I1(ctrl_s_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(sel0[0]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[3] 
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[4] 
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .S(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(ctrl_s_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(ctrl_s_axi_awaddr[0]),
        .I1(ctrl_s_axi_wvalid),
        .I2(ctrl_s_axi_awvalid),
        .I3(S_AXI_AWREADY),
        .I4(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(ctrl_s_axi_awaddr[1]),
        .I1(ctrl_s_axi_wvalid),
        .I2(ctrl_s_axi_awvalid),
        .I3(S_AXI_AWREADY),
        .I4(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[4]_i_1 
       (.I0(ctrl_s_axi_awaddr[2]),
        .I1(ctrl_s_axi_wvalid),
        .I2(ctrl_s_axi_awvalid),
        .I3(S_AXI_AWREADY),
        .I4(p_0_in[2]),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(ctrl_s_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(ctrl_s_axi_wvalid),
        .I1(ctrl_s_axi_awvalid),
        .I2(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(ctrl_s_axi_wvalid),
        .I1(ctrl_s_axi_awvalid),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .I4(ctrl_s_axi_bready),
        .I5(ctrl_s_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(ctrl_s_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFE2)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(test_ram_module_n_0),
        .I3(\axi_rdata[0]_i_4_n_0 ),
        .O(\axi_rdata[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[0]_i_2 
       (.I0(slv_reg_c[0]),
        .I1(sel0[1]),
        .I2(capture_busy),
        .I3(sel0[0]),
        .I4(\slv_reg_0_reg_n_0_[0] ),
        .O(\axi_rdata[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \axi_rdata[0]_i_4 
       (.I0(axi_rvalid_reg_0),
        .I1(ctrl_s_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(ctrl_s_axi_aresetn),
        .O(\axi_rdata[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(ctrl_s_axi_arvalid),
        .I2(axi_rvalid_reg_0),
        .O(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[0]_i_1_n_0 ),
        .Q(ctrl_s_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[10]),
        .Q(ctrl_s_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[11]),
        .Q(ctrl_s_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[12]),
        .Q(ctrl_s_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[13]),
        .Q(ctrl_s_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[14]),
        .Q(ctrl_s_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[15]),
        .Q(ctrl_s_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[16]),
        .Q(ctrl_s_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[17]),
        .Q(ctrl_s_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[18]),
        .Q(ctrl_s_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[19]),
        .Q(ctrl_s_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[1]),
        .Q(ctrl_s_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[20]),
        .Q(ctrl_s_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[21]),
        .Q(ctrl_s_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[22]),
        .Q(ctrl_s_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[23]),
        .Q(ctrl_s_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[24]),
        .Q(ctrl_s_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[25]),
        .Q(ctrl_s_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[26]),
        .Q(ctrl_s_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[27]),
        .Q(ctrl_s_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[28]),
        .Q(ctrl_s_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[29]),
        .Q(ctrl_s_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[2]),
        .Q(ctrl_s_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[30]),
        .Q(ctrl_s_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[31]),
        .Q(ctrl_s_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[3]),
        .Q(ctrl_s_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[4]),
        .Q(ctrl_s_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[5]),
        .Q(ctrl_s_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[6]),
        .Q(ctrl_s_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[7]),
        .Q(ctrl_s_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[8]),
        .Q(ctrl_s_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(ctrl_s_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[9]),
        .Q(ctrl_s_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(ctrl_s_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(axi_rvalid_reg_0),
        .I3(ctrl_s_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(ctrl_s_axi_wvalid),
        .I1(ctrl_s_axi_awvalid),
        .I2(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    capture_active_i_1
       (.I0(capture_active_reg_n_0),
        .I1(\test_ram_adr_cnt[11]_i_4_n_0 ),
        .I2(start_sync_ff3),
        .I3(start_sync_ff2),
        .O(capture_active_i_1_n_0));
  FDRE capture_active_reg
       (.C(capture_clk),
        .CE(1'b1),
        .D(capture_active_i_1_n_0),
        .Q(capture_active_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AEAE00AE)) 
    capture_busy_i_1
       (.I0(capture_busy),
        .I1(\slv_reg_0_reg_n_0_[0] ),
        .I2(slv_reg_0_d),
        .I3(finished_sync_ff2),
        .I4(finished_sync_ff3),
        .I5(\slv_reg_0_reg_n_0_[1] ),
        .O(capture_busy_i_1_n_0));
  FDRE capture_busy_reg
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(capture_busy_i_1_n_0),
        .Q(capture_busy),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h222200222F2F002F)) 
    \capture_data_ram[31]_i_1 
       (.I0(capture_active_reg_n_0),
        .I1(capture_valid),
        .I2(test_ram_adr_cnt),
        .I3(start_sync_ff2),
        .I4(start_sync_ff3),
        .I5(\capture_data_ram[31]_i_3_n_0 ),
        .O(\capture_data_ram[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF4FF)) 
    \capture_data_ram[31]_i_2 
       (.I0(start_sync_ff3),
        .I1(start_sync_ff2),
        .I2(capture_active_reg_n_0),
        .I3(\test_ram_adr_cnt[11]_i_4_n_0 ),
        .O(\capture_data_ram[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \capture_data_ram[31]_i_3 
       (.I0(\test_ram_adr_cnt_reg_n_0_[4] ),
        .I1(\test_ram_adr_cnt_reg_n_0_[3] ),
        .I2(\test_ram_adr_cnt_reg_n_0_[6] ),
        .I3(\test_ram_adr_cnt_reg_n_0_[5] ),
        .I4(\test_ram_adr_cnt[11]_i_5_n_0 ),
        .I5(\test_ram_adr_cnt_reg_n_0_[0] ),
        .O(\capture_data_ram[31]_i_3_n_0 ));
  FDRE \capture_data_ram_reg[0] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[0]),
        .Q(\capture_data_ram_reg_n_0_[0] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[10] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[10]),
        .Q(\capture_data_ram_reg_n_0_[10] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[11] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[11]),
        .Q(\capture_data_ram_reg_n_0_[11] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[12] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[12]),
        .Q(\capture_data_ram_reg_n_0_[12] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[13] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[13]),
        .Q(\capture_data_ram_reg_n_0_[13] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[14] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[14]),
        .Q(\capture_data_ram_reg_n_0_[14] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[15] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[15]),
        .Q(\capture_data_ram_reg_n_0_[15] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[16] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[16]),
        .Q(\capture_data_ram_reg_n_0_[16] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[17] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[17]),
        .Q(\capture_data_ram_reg_n_0_[17] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[18] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[18]),
        .Q(\capture_data_ram_reg_n_0_[18] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[19] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[19]),
        .Q(\capture_data_ram_reg_n_0_[19] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[1] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[1]),
        .Q(\capture_data_ram_reg_n_0_[1] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[20] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[20]),
        .Q(\capture_data_ram_reg_n_0_[20] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[21] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[21]),
        .Q(\capture_data_ram_reg_n_0_[21] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[22] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[22]),
        .Q(\capture_data_ram_reg_n_0_[22] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[23] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[23]),
        .Q(\capture_data_ram_reg_n_0_[23] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[24] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[24]),
        .Q(\capture_data_ram_reg_n_0_[24] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[25] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[25]),
        .Q(\capture_data_ram_reg_n_0_[25] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[26] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[26]),
        .Q(\capture_data_ram_reg_n_0_[26] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[27] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[27]),
        .Q(\capture_data_ram_reg_n_0_[27] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[28] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[28]),
        .Q(\capture_data_ram_reg_n_0_[28] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[29] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[29]),
        .Q(\capture_data_ram_reg_n_0_[29] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[2] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[2]),
        .Q(\capture_data_ram_reg_n_0_[2] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[30] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[30]),
        .Q(\capture_data_ram_reg_n_0_[30] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[31] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[31]),
        .Q(\capture_data_ram_reg_n_0_[31] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[3] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[3]),
        .Q(\capture_data_ram_reg_n_0_[3] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[4] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[4]),
        .Q(\capture_data_ram_reg_n_0_[4] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[5] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[5]),
        .Q(\capture_data_ram_reg_n_0_[5] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[6] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[6]),
        .Q(\capture_data_ram_reg_n_0_[6] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[7] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[7]),
        .Q(\capture_data_ram_reg_n_0_[7] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[8] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[8]),
        .Q(\capture_data_ram_reg_n_0_[8] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  FDRE \capture_data_ram_reg[9] 
       (.C(capture_clk),
        .CE(\capture_data_ram[31]_i_2_n_0 ),
        .D(capture_data[9]),
        .Q(\capture_data_ram_reg_n_0_[9] ),
        .R(\capture_data_ram[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h3B003B3B)) 
    capture_finished_i_1
       (.I0(capture_finished),
        .I1(\test_ram_adr_cnt[11]_i_4_n_0 ),
        .I2(capture_active_reg_n_0),
        .I3(start_sync_ff3),
        .I4(start_sync_ff2),
        .O(capture_finished_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    capture_finished_reg
       (.C(capture_clk),
        .CE(1'b1),
        .D(capture_finished_i_1_n_0),
        .Q(capture_finished),
        .R(1'b0));
  FDRE finished_sync_ff1_reg
       (.C(ctrl_s_axi_aclk),
        .CE(slv_reg_0_d_i_1_n_0),
        .D(capture_finished),
        .Q(finished_sync_ff1),
        .R(1'b0));
  FDRE finished_sync_ff2_reg
       (.C(ctrl_s_axi_aclk),
        .CE(slv_reg_0_d_i_1_n_0),
        .D(finished_sync_ff1),
        .Q(finished_sync_ff2),
        .R(1'b0));
  FDRE finished_sync_ff3_reg
       (.C(ctrl_s_axi_aclk),
        .CE(slv_reg_0_d_i_1_n_0),
        .D(finished_sync_ff2),
        .Q(finished_sync_ff3),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(\test_ram_adr_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\test_ram_adr_cnt_reg_n_0_[4] ,\test_ram_adr_cnt_reg_n_0_[3] ,\test_ram_adr_cnt_reg_n_0_[2] ,\test_ram_adr_cnt_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\test_ram_adr_cnt_reg_n_0_[8] ,\test_ram_adr_cnt_reg_n_0_[7] ,\test_ram_adr_cnt_reg_n_0_[6] ,\test_ram_adr_cnt_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({NLW_plusOp_carry__1_CO_UNCONNECTED[3:2],plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__1_O_UNCONNECTED[3],data0[11:9]}),
        .S({1'b0,test_ram_adr_cnt,\test_ram_adr_cnt_reg_n_0_[10] ,\test_ram_adr_cnt_reg_n_0_[9] }));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg_0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(ctrl_s_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg_0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(ctrl_s_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg_0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(ctrl_s_axi_wstrb[3]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg_0[31]_i_2 
       (.I0(S_AXI_AWREADY),
        .I1(S_AXI_WREADY),
        .I2(ctrl_s_axi_wvalid),
        .I3(ctrl_s_axi_awvalid),
        .O(slv_reg_wren__0));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg_0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(ctrl_s_axi_wstrb[0]),
        .O(p_1_in[7]));
  LUT1 #(
    .INIT(2'h1)) 
    slv_reg_0_d_i_1
       (.I0(\slv_reg_0_reg_n_0_[1] ),
        .O(slv_reg_0_d_i_1_n_0));
  FDRE slv_reg_0_d_reg
       (.C(ctrl_s_axi_aclk),
        .CE(slv_reg_0_d_i_1_n_0),
        .D(\slv_reg_0_reg_n_0_[0] ),
        .Q(slv_reg_0_d),
        .R(1'b0));
  FDRE \slv_reg_0_reg[0] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[7]),
        .D(ctrl_s_axi_wdata[0]),
        .Q(\slv_reg_0_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[10] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[15]),
        .D(ctrl_s_axi_wdata[10]),
        .Q(\slv_reg_0_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[11] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[15]),
        .D(ctrl_s_axi_wdata[11]),
        .Q(\slv_reg_0_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[12] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[15]),
        .D(ctrl_s_axi_wdata[12]),
        .Q(\slv_reg_0_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[13] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[15]),
        .D(ctrl_s_axi_wdata[13]),
        .Q(\slv_reg_0_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[14] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[15]),
        .D(ctrl_s_axi_wdata[14]),
        .Q(\slv_reg_0_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[15] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[15]),
        .D(ctrl_s_axi_wdata[15]),
        .Q(\slv_reg_0_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[16] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[23]),
        .D(ctrl_s_axi_wdata[16]),
        .Q(\slv_reg_0_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[17] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[23]),
        .D(ctrl_s_axi_wdata[17]),
        .Q(\slv_reg_0_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[18] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[23]),
        .D(ctrl_s_axi_wdata[18]),
        .Q(\slv_reg_0_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[19] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[23]),
        .D(ctrl_s_axi_wdata[19]),
        .Q(\slv_reg_0_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[1] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[7]),
        .D(ctrl_s_axi_wdata[1]),
        .Q(\slv_reg_0_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[20] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[23]),
        .D(ctrl_s_axi_wdata[20]),
        .Q(\slv_reg_0_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[21] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[23]),
        .D(ctrl_s_axi_wdata[21]),
        .Q(\slv_reg_0_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[22] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[23]),
        .D(ctrl_s_axi_wdata[22]),
        .Q(\slv_reg_0_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[23] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[23]),
        .D(ctrl_s_axi_wdata[23]),
        .Q(\slv_reg_0_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[24] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[31]),
        .D(ctrl_s_axi_wdata[24]),
        .Q(\slv_reg_0_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[25] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[31]),
        .D(ctrl_s_axi_wdata[25]),
        .Q(\slv_reg_0_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[26] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[31]),
        .D(ctrl_s_axi_wdata[26]),
        .Q(\slv_reg_0_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[27] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[31]),
        .D(ctrl_s_axi_wdata[27]),
        .Q(\slv_reg_0_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[28] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[31]),
        .D(ctrl_s_axi_wdata[28]),
        .Q(\slv_reg_0_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[29] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[31]),
        .D(ctrl_s_axi_wdata[29]),
        .Q(\slv_reg_0_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[2] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[7]),
        .D(ctrl_s_axi_wdata[2]),
        .Q(\slv_reg_0_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[30] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[31]),
        .D(ctrl_s_axi_wdata[30]),
        .Q(\slv_reg_0_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[31] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[31]),
        .D(ctrl_s_axi_wdata[31]),
        .Q(\slv_reg_0_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[3] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[7]),
        .D(ctrl_s_axi_wdata[3]),
        .Q(\slv_reg_0_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[4] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[7]),
        .D(ctrl_s_axi_wdata[4]),
        .Q(\slv_reg_0_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[5] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[7]),
        .D(ctrl_s_axi_wdata[5]),
        .Q(\slv_reg_0_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[6] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[7]),
        .D(ctrl_s_axi_wdata[6]),
        .Q(\slv_reg_0_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[7] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[7]),
        .D(ctrl_s_axi_wdata[7]),
        .Q(\slv_reg_0_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[8] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[15]),
        .D(ctrl_s_axi_wdata[8]),
        .Q(\slv_reg_0_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_0_reg[9] 
       (.C(ctrl_s_axi_aclk),
        .CE(p_1_in[15]),
        .D(ctrl_s_axi_wdata[9]),
        .Q(\slv_reg_0_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg_14[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(ctrl_s_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg_14[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg_14[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(ctrl_s_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg_14[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg_14[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(ctrl_s_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg_14[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg_14[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(ctrl_s_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg_14[7]_i_1_n_0 ));
  FDRE \slv_reg_14_reg[0] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[7]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[0]),
        .Q(slv_reg_14[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[10] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[15]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[10]),
        .Q(slv_reg_14[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[11] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[15]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[11]),
        .Q(\slv_reg_14_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[12] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[15]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[12]),
        .Q(\slv_reg_14_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[13] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[15]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[13]),
        .Q(\slv_reg_14_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[14] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[15]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[14]),
        .Q(\slv_reg_14_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[15] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[15]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[15]),
        .Q(\slv_reg_14_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[16] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[23]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[16]),
        .Q(\slv_reg_14_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[17] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[23]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[17]),
        .Q(\slv_reg_14_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[18] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[23]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[18]),
        .Q(\slv_reg_14_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[19] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[23]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[19]),
        .Q(\slv_reg_14_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[1] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[7]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[1]),
        .Q(slv_reg_14[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[20] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[23]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[20]),
        .Q(\slv_reg_14_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[21] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[23]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[21]),
        .Q(\slv_reg_14_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[22] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[23]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[22]),
        .Q(\slv_reg_14_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[23] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[23]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[23]),
        .Q(\slv_reg_14_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[24] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[31]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[24]),
        .Q(\slv_reg_14_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[25] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[31]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[25]),
        .Q(\slv_reg_14_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[26] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[31]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[26]),
        .Q(\slv_reg_14_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[27] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[31]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[27]),
        .Q(\slv_reg_14_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[28] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[31]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[28]),
        .Q(\slv_reg_14_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[29] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[31]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[29]),
        .Q(\slv_reg_14_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[2] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[7]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[2]),
        .Q(slv_reg_14[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[30] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[31]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[30]),
        .Q(\slv_reg_14_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[31] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[31]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[31]),
        .Q(\slv_reg_14_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[3] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[7]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[3]),
        .Q(slv_reg_14[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[4] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[7]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[4]),
        .Q(slv_reg_14[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[5] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[7]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[5]),
        .Q(slv_reg_14[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[6] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[7]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[6]),
        .Q(slv_reg_14[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[7] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[7]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[7]),
        .Q(slv_reg_14[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[8] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[15]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[8]),
        .Q(slv_reg_14[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_14_reg[9] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_14[15]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[9]),
        .Q(slv_reg_14[9]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_18_reg[0] 
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(test_ram_adr_r_out[0]),
        .Q(slv_reg_18[0]),
        .R(1'b0));
  FDRE \slv_reg_18_reg[10] 
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(test_ram_adr_r_out[10]),
        .Q(slv_reg_18[10]),
        .R(1'b0));
  FDRE \slv_reg_18_reg[1] 
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(test_ram_adr_r_out[1]),
        .Q(slv_reg_18[1]),
        .R(1'b0));
  FDRE \slv_reg_18_reg[2] 
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(test_ram_adr_r_out[2]),
        .Q(slv_reg_18[2]),
        .R(1'b0));
  FDRE \slv_reg_18_reg[3] 
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(test_ram_adr_r_out[3]),
        .Q(slv_reg_18[3]),
        .R(1'b0));
  FDRE \slv_reg_18_reg[4] 
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(test_ram_adr_r_out[4]),
        .Q(slv_reg_18[4]),
        .R(1'b0));
  FDRE \slv_reg_18_reg[5] 
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(test_ram_adr_r_out[5]),
        .Q(slv_reg_18[5]),
        .R(1'b0));
  FDRE \slv_reg_18_reg[6] 
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(test_ram_adr_r_out[6]),
        .Q(slv_reg_18[6]),
        .R(1'b0));
  FDRE \slv_reg_18_reg[7] 
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(test_ram_adr_r_out[7]),
        .Q(slv_reg_18[7]),
        .R(1'b0));
  FDRE \slv_reg_18_reg[8] 
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(test_ram_adr_r_out[8]),
        .Q(slv_reg_18[8]),
        .R(1'b0));
  FDRE \slv_reg_18_reg[9] 
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(test_ram_adr_r_out[9]),
        .Q(slv_reg_18[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg_1c[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(ctrl_s_axi_wstrb[1]),
        .O(\slv_reg_1c[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg_1c[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(ctrl_s_axi_wstrb[2]),
        .O(\slv_reg_1c[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg_1c[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(ctrl_s_axi_wstrb[3]),
        .O(\slv_reg_1c[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg_1c[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(ctrl_s_axi_wstrb[0]),
        .O(\slv_reg_1c[7]_i_1_n_0 ));
  FDRE \slv_reg_1c_reg[0] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[7]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[0]),
        .Q(slv_reg_1c[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[10] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[15]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[10]),
        .Q(slv_reg_1c[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[11] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[15]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[11]),
        .Q(slv_reg_1c[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[12] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[15]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[12]),
        .Q(slv_reg_1c[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[13] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[15]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[13]),
        .Q(slv_reg_1c[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[14] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[15]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[14]),
        .Q(slv_reg_1c[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[15] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[15]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[15]),
        .Q(slv_reg_1c[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[16] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[23]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[16]),
        .Q(slv_reg_1c[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[17] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[23]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[17]),
        .Q(slv_reg_1c[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[18] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[23]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[18]),
        .Q(slv_reg_1c[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[19] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[23]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[19]),
        .Q(slv_reg_1c[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[1] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[7]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[1]),
        .Q(slv_reg_1c[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[20] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[23]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[20]),
        .Q(slv_reg_1c[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[21] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[23]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[21]),
        .Q(slv_reg_1c[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[22] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[23]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[22]),
        .Q(slv_reg_1c[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[23] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[23]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[23]),
        .Q(slv_reg_1c[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[24] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[31]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[24]),
        .Q(slv_reg_1c[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[25] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[31]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[25]),
        .Q(slv_reg_1c[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[26] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[31]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[26]),
        .Q(slv_reg_1c[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[27] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[31]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[27]),
        .Q(slv_reg_1c[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[28] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[31]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[28]),
        .Q(slv_reg_1c[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[29] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[31]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[29]),
        .Q(slv_reg_1c[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[2] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[7]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[2]),
        .Q(slv_reg_1c[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[30] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[31]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[30]),
        .Q(slv_reg_1c[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[31] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[31]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[31]),
        .Q(slv_reg_1c[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[3] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[7]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[3]),
        .Q(slv_reg_1c[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[4] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[7]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[4]),
        .Q(slv_reg_1c[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[5] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[7]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[5]),
        .Q(slv_reg_1c[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[6] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[7]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[6]),
        .Q(slv_reg_1c[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[7] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[7]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[7]),
        .Q(slv_reg_1c[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[8] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[15]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[8]),
        .Q(slv_reg_1c[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_1c_reg[9] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_1c[15]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[9]),
        .Q(slv_reg_1c[9]),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg_c[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(ctrl_s_axi_wstrb[1]),
        .O(\slv_reg_c[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg_c[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(ctrl_s_axi_wstrb[2]),
        .O(\slv_reg_c[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg_c[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(ctrl_s_axi_wstrb[3]),
        .O(\slv_reg_c[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg_c[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(ctrl_s_axi_wstrb[0]),
        .O(\slv_reg_c[7]_i_1_n_0 ));
  FDRE \slv_reg_c_reg[0] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[7]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[0]),
        .Q(slv_reg_c[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[10] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[15]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[10]),
        .Q(slv_reg_c[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[11] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[15]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[11]),
        .Q(slv_reg_c[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[12] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[15]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[12]),
        .Q(slv_reg_c[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[13] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[15]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[13]),
        .Q(slv_reg_c[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[14] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[15]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[14]),
        .Q(slv_reg_c[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[15] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[15]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[15]),
        .Q(slv_reg_c[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[16] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[23]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[16]),
        .Q(slv_reg_c[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[17] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[23]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[17]),
        .Q(slv_reg_c[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[18] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[23]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[18]),
        .Q(slv_reg_c[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[19] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[23]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[19]),
        .Q(slv_reg_c[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[1] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[7]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[1]),
        .Q(slv_reg_c[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[20] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[23]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[20]),
        .Q(slv_reg_c[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[21] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[23]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[21]),
        .Q(slv_reg_c[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[22] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[23]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[22]),
        .Q(slv_reg_c[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[23] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[23]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[23]),
        .Q(slv_reg_c[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[24] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[31]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[24]),
        .Q(slv_reg_c[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[25] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[31]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[25]),
        .Q(slv_reg_c[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[26] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[31]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[26]),
        .Q(slv_reg_c[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[27] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[31]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[27]),
        .Q(slv_reg_c[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[28] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[31]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[28]),
        .Q(slv_reg_c[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[29] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[31]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[29]),
        .Q(slv_reg_c[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[2] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[7]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[2]),
        .Q(slv_reg_c[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[30] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[31]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[30]),
        .Q(slv_reg_c[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[31] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[31]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[31]),
        .Q(slv_reg_c[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[3] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[7]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[3]),
        .Q(slv_reg_c[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[4] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[7]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[4]),
        .Q(slv_reg_c[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[5] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[7]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[5]),
        .Q(slv_reg_c[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[6] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[7]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[6]),
        .Q(slv_reg_c[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[7] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[7]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[7]),
        .Q(slv_reg_c[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[8] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[15]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[8]),
        .Q(slv_reg_c[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg_c_reg[9] 
       (.C(ctrl_s_axi_aclk),
        .CE(\slv_reg_c[15]_i_1_n_0 ),
        .D(ctrl_s_axi_wdata[9]),
        .Q(slv_reg_c[9]),
        .R(axi_awready_i_1_n_0));
  FDRE start_sync_ff1_reg
       (.C(capture_clk),
        .CE(1'b1),
        .D(capture_busy),
        .Q(start_sync_ff1),
        .R(1'b0));
  FDRE start_sync_ff2_reg
       (.C(capture_clk),
        .CE(1'b1),
        .D(start_sync_ff1),
        .Q(start_sync_ff2),
        .R(1'b0));
  FDRE start_sync_ff3_reg
       (.C(capture_clk),
        .CE(1'b1),
        .D(start_sync_ff2),
        .Q(start_sync_ff3),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \test_ram_adr_cnt[0]_i_1 
       (.I0(test_ram_adr_cnt),
        .I1(\test_ram_adr_cnt[0]_i_2_n_0 ),
        .I2(\test_ram_adr_cnt_reg_n_0_[0] ),
        .O(\test_ram_adr_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \test_ram_adr_cnt[0]_i_2 
       (.I0(\test_ram_adr_cnt[11]_i_5_n_0 ),
        .I1(\test_ram_adr_cnt_reg_n_0_[5] ),
        .I2(\test_ram_adr_cnt_reg_n_0_[6] ),
        .I3(\test_ram_adr_cnt_reg_n_0_[3] ),
        .I4(\test_ram_adr_cnt_reg_n_0_[4] ),
        .O(\test_ram_adr_cnt[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \test_ram_adr_cnt[10]_i_1 
       (.I0(data0[10]),
        .I1(\test_ram_adr_cnt[11]_i_4_n_0 ),
        .O(\test_ram_adr_cnt[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \test_ram_adr_cnt[11]_i_1 
       (.I0(start_sync_ff2),
        .I1(start_sync_ff3),
        .O(capture_active0));
  LUT3 #(
    .INIT(8'h8F)) 
    \test_ram_adr_cnt[11]_i_2 
       (.I0(capture_valid),
        .I1(capture_active_reg_n_0),
        .I2(\test_ram_adr_cnt[11]_i_4_n_0 ),
        .O(test_ram_adr_cnt_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \test_ram_adr_cnt[11]_i_3 
       (.I0(data0[11]),
        .I1(\test_ram_adr_cnt[11]_i_4_n_0 ),
        .O(\test_ram_adr_cnt[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \test_ram_adr_cnt[11]_i_4 
       (.I0(\test_ram_adr_cnt_reg_n_0_[0] ),
        .I1(\test_ram_adr_cnt[11]_i_5_n_0 ),
        .I2(\test_ram_adr_cnt[11]_i_6_n_0 ),
        .I3(test_ram_adr_cnt),
        .O(\test_ram_adr_cnt[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \test_ram_adr_cnt[11]_i_5 
       (.I0(\test_ram_adr_cnt_reg_n_0_[9] ),
        .I1(\test_ram_adr_cnt_reg_n_0_[10] ),
        .I2(\test_ram_adr_cnt_reg_n_0_[7] ),
        .I3(\test_ram_adr_cnt_reg_n_0_[8] ),
        .I4(\test_ram_adr_cnt_reg_n_0_[2] ),
        .I5(\test_ram_adr_cnt_reg_n_0_[1] ),
        .O(\test_ram_adr_cnt[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \test_ram_adr_cnt[11]_i_6 
       (.I0(\test_ram_adr_cnt_reg_n_0_[4] ),
        .I1(\test_ram_adr_cnt_reg_n_0_[3] ),
        .I2(\test_ram_adr_cnt_reg_n_0_[6] ),
        .I3(\test_ram_adr_cnt_reg_n_0_[5] ),
        .O(\test_ram_adr_cnt[11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \test_ram_adr_cnt[1]_i_1 
       (.I0(data0[1]),
        .I1(\test_ram_adr_cnt[11]_i_4_n_0 ),
        .O(\test_ram_adr_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \test_ram_adr_cnt[2]_i_1 
       (.I0(data0[2]),
        .I1(\test_ram_adr_cnt[11]_i_4_n_0 ),
        .O(\test_ram_adr_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \test_ram_adr_cnt[3]_i_1 
       (.I0(data0[3]),
        .I1(\test_ram_adr_cnt[11]_i_4_n_0 ),
        .O(\test_ram_adr_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \test_ram_adr_cnt[4]_i_1 
       (.I0(data0[4]),
        .I1(\test_ram_adr_cnt[11]_i_4_n_0 ),
        .O(\test_ram_adr_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \test_ram_adr_cnt[5]_i_1 
       (.I0(data0[5]),
        .I1(\test_ram_adr_cnt[11]_i_4_n_0 ),
        .O(\test_ram_adr_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \test_ram_adr_cnt[6]_i_1 
       (.I0(data0[6]),
        .I1(\test_ram_adr_cnt[11]_i_4_n_0 ),
        .O(\test_ram_adr_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \test_ram_adr_cnt[7]_i_1 
       (.I0(data0[7]),
        .I1(\test_ram_adr_cnt[11]_i_4_n_0 ),
        .O(\test_ram_adr_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \test_ram_adr_cnt[8]_i_1 
       (.I0(data0[8]),
        .I1(\test_ram_adr_cnt[11]_i_4_n_0 ),
        .O(\test_ram_adr_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \test_ram_adr_cnt[9]_i_1 
       (.I0(data0[9]),
        .I1(\test_ram_adr_cnt[11]_i_4_n_0 ),
        .O(\test_ram_adr_cnt[9]_i_1_n_0 ));
  FDSE \test_ram_adr_cnt_reg[0] 
       (.C(capture_clk),
        .CE(test_ram_adr_cnt_0),
        .D(\test_ram_adr_cnt[0]_i_1_n_0 ),
        .Q(\test_ram_adr_cnt_reg_n_0_[0] ),
        .S(capture_active0));
  FDSE \test_ram_adr_cnt_reg[10] 
       (.C(capture_clk),
        .CE(test_ram_adr_cnt_0),
        .D(\test_ram_adr_cnt[10]_i_1_n_0 ),
        .Q(\test_ram_adr_cnt_reg_n_0_[10] ),
        .S(capture_active0));
  FDSE \test_ram_adr_cnt_reg[11] 
       (.C(capture_clk),
        .CE(test_ram_adr_cnt_0),
        .D(\test_ram_adr_cnt[11]_i_3_n_0 ),
        .Q(test_ram_adr_cnt),
        .S(capture_active0));
  FDSE \test_ram_adr_cnt_reg[1] 
       (.C(capture_clk),
        .CE(test_ram_adr_cnt_0),
        .D(\test_ram_adr_cnt[1]_i_1_n_0 ),
        .Q(\test_ram_adr_cnt_reg_n_0_[1] ),
        .S(capture_active0));
  FDSE \test_ram_adr_cnt_reg[2] 
       (.C(capture_clk),
        .CE(test_ram_adr_cnt_0),
        .D(\test_ram_adr_cnt[2]_i_1_n_0 ),
        .Q(\test_ram_adr_cnt_reg_n_0_[2] ),
        .S(capture_active0));
  FDSE \test_ram_adr_cnt_reg[3] 
       (.C(capture_clk),
        .CE(test_ram_adr_cnt_0),
        .D(\test_ram_adr_cnt[3]_i_1_n_0 ),
        .Q(\test_ram_adr_cnt_reg_n_0_[3] ),
        .S(capture_active0));
  FDSE \test_ram_adr_cnt_reg[4] 
       (.C(capture_clk),
        .CE(test_ram_adr_cnt_0),
        .D(\test_ram_adr_cnt[4]_i_1_n_0 ),
        .Q(\test_ram_adr_cnt_reg_n_0_[4] ),
        .S(capture_active0));
  FDSE \test_ram_adr_cnt_reg[5] 
       (.C(capture_clk),
        .CE(test_ram_adr_cnt_0),
        .D(\test_ram_adr_cnt[5]_i_1_n_0 ),
        .Q(\test_ram_adr_cnt_reg_n_0_[5] ),
        .S(capture_active0));
  FDSE \test_ram_adr_cnt_reg[6] 
       (.C(capture_clk),
        .CE(test_ram_adr_cnt_0),
        .D(\test_ram_adr_cnt[6]_i_1_n_0 ),
        .Q(\test_ram_adr_cnt_reg_n_0_[6] ),
        .S(capture_active0));
  FDSE \test_ram_adr_cnt_reg[7] 
       (.C(capture_clk),
        .CE(test_ram_adr_cnt_0),
        .D(\test_ram_adr_cnt[7]_i_1_n_0 ),
        .Q(\test_ram_adr_cnt_reg_n_0_[7] ),
        .S(capture_active0));
  FDSE \test_ram_adr_cnt_reg[8] 
       (.C(capture_clk),
        .CE(test_ram_adr_cnt_0),
        .D(\test_ram_adr_cnt[8]_i_1_n_0 ),
        .Q(\test_ram_adr_cnt_reg_n_0_[8] ),
        .S(capture_active0));
  FDSE \test_ram_adr_cnt_reg[9] 
       (.C(capture_clk),
        .CE(test_ram_adr_cnt_0),
        .D(\test_ram_adr_cnt[9]_i_1_n_0 ),
        .Q(\test_ram_adr_cnt_reg_n_0_[9] ),
        .S(capture_active0));
  FDRE \test_ram_adr_r_out_reg[0] 
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_14[0]),
        .Q(test_ram_adr_r_out[0]),
        .R(1'b0));
  FDRE \test_ram_adr_r_out_reg[10] 
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_14[10]),
        .Q(test_ram_adr_r_out[10]),
        .R(1'b0));
  FDRE \test_ram_adr_r_out_reg[1] 
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_14[1]),
        .Q(test_ram_adr_r_out[1]),
        .R(1'b0));
  FDRE \test_ram_adr_r_out_reg[2] 
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_14[2]),
        .Q(test_ram_adr_r_out[2]),
        .R(1'b0));
  FDRE \test_ram_adr_r_out_reg[3] 
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_14[3]),
        .Q(test_ram_adr_r_out[3]),
        .R(1'b0));
  FDRE \test_ram_adr_r_out_reg[4] 
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_14[4]),
        .Q(test_ram_adr_r_out[4]),
        .R(1'b0));
  FDRE \test_ram_adr_r_out_reg[5] 
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_14[5]),
        .Q(test_ram_adr_r_out[5]),
        .R(1'b0));
  FDRE \test_ram_adr_r_out_reg[6] 
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_14[6]),
        .Q(test_ram_adr_r_out[6]),
        .R(1'b0));
  FDRE \test_ram_adr_r_out_reg[7] 
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_14[7]),
        .Q(test_ram_adr_r_out[7]),
        .R(1'b0));
  FDRE \test_ram_adr_r_out_reg[8] 
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_14[8]),
        .Q(test_ram_adr_r_out[8]),
        .R(1'b0));
  FDRE \test_ram_adr_r_out_reg[9] 
       (.C(ctrl_s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_14[9]),
        .Q(test_ram_adr_r_out[9]),
        .R(1'b0));
  ebaz4205_axis_capture_0_4_dp_ram_1r_1w_2clk test_ram_module
       (.Q(slv_reg_1c),
        .RAM_reg_1_0({\test_ram_adr_cnt_reg_n_0_[10] ,\test_ram_adr_cnt_reg_n_0_[9] ,\test_ram_adr_cnt_reg_n_0_[8] ,\test_ram_adr_cnt_reg_n_0_[7] ,\test_ram_adr_cnt_reg_n_0_[6] ,\test_ram_adr_cnt_reg_n_0_[5] ,\test_ram_adr_cnt_reg_n_0_[4] ,\test_ram_adr_cnt_reg_n_0_[3] ,\test_ram_adr_cnt_reg_n_0_[2] ,\test_ram_adr_cnt_reg_n_0_[1] ,\test_ram_adr_cnt_reg_n_0_[0] }),
        .WEA(we_ram),
        .\axi_rdata_reg[10] (slv_reg_18),
        .\axi_rdata_reg[31] ({\slv_reg_14_reg_n_0_[31] ,\slv_reg_14_reg_n_0_[30] ,\slv_reg_14_reg_n_0_[29] ,\slv_reg_14_reg_n_0_[28] ,\slv_reg_14_reg_n_0_[27] ,\slv_reg_14_reg_n_0_[26] ,\slv_reg_14_reg_n_0_[25] ,\slv_reg_14_reg_n_0_[24] ,\slv_reg_14_reg_n_0_[23] ,\slv_reg_14_reg_n_0_[22] ,\slv_reg_14_reg_n_0_[21] ,\slv_reg_14_reg_n_0_[20] ,\slv_reg_14_reg_n_0_[19] ,\slv_reg_14_reg_n_0_[18] ,\slv_reg_14_reg_n_0_[17] ,\slv_reg_14_reg_n_0_[16] ,\slv_reg_14_reg_n_0_[15] ,\slv_reg_14_reg_n_0_[14] ,\slv_reg_14_reg_n_0_[13] ,\slv_reg_14_reg_n_0_[12] ,\slv_reg_14_reg_n_0_[11] ,slv_reg_14}),
        .\axi_rdata_reg[31]_0 (slv_reg_c[31:1]),
        .\axi_rdata_reg[31]_1 ({\slv_reg_0_reg_n_0_[31] ,\slv_reg_0_reg_n_0_[30] ,\slv_reg_0_reg_n_0_[29] ,\slv_reg_0_reg_n_0_[28] ,\slv_reg_0_reg_n_0_[27] ,\slv_reg_0_reg_n_0_[26] ,\slv_reg_0_reg_n_0_[25] ,\slv_reg_0_reg_n_0_[24] ,\slv_reg_0_reg_n_0_[23] ,\slv_reg_0_reg_n_0_[22] ,\slv_reg_0_reg_n_0_[21] ,\slv_reg_0_reg_n_0_[20] ,\slv_reg_0_reg_n_0_[19] ,\slv_reg_0_reg_n_0_[18] ,\slv_reg_0_reg_n_0_[17] ,\slv_reg_0_reg_n_0_[16] ,\slv_reg_0_reg_n_0_[15] ,\slv_reg_0_reg_n_0_[14] ,\slv_reg_0_reg_n_0_[13] ,\slv_reg_0_reg_n_0_[12] ,\slv_reg_0_reg_n_0_[11] ,\slv_reg_0_reg_n_0_[10] ,\slv_reg_0_reg_n_0_[9] ,\slv_reg_0_reg_n_0_[8] ,\slv_reg_0_reg_n_0_[7] ,\slv_reg_0_reg_n_0_[6] ,\slv_reg_0_reg_n_0_[5] ,\slv_reg_0_reg_n_0_[4] ,\slv_reg_0_reg_n_0_[3] ,\slv_reg_0_reg_n_0_[2] ,\slv_reg_0_reg_n_0_[1] }),
        .capture_clk(capture_clk),
        .capture_data_ram({\capture_data_ram_reg_n_0_[31] ,\capture_data_ram_reg_n_0_[30] ,\capture_data_ram_reg_n_0_[29] ,\capture_data_ram_reg_n_0_[28] ,\capture_data_ram_reg_n_0_[27] ,\capture_data_ram_reg_n_0_[26] ,\capture_data_ram_reg_n_0_[25] ,\capture_data_ram_reg_n_0_[24] ,\capture_data_ram_reg_n_0_[23] ,\capture_data_ram_reg_n_0_[22] ,\capture_data_ram_reg_n_0_[21] ,\capture_data_ram_reg_n_0_[20] ,\capture_data_ram_reg_n_0_[19] ,\capture_data_ram_reg_n_0_[18] ,\capture_data_ram_reg_n_0_[17] ,\capture_data_ram_reg_n_0_[16] ,\capture_data_ram_reg_n_0_[15] ,\capture_data_ram_reg_n_0_[14] ,\capture_data_ram_reg_n_0_[13] ,\capture_data_ram_reg_n_0_[12] ,\capture_data_ram_reg_n_0_[11] ,\capture_data_ram_reg_n_0_[10] ,\capture_data_ram_reg_n_0_[9] ,\capture_data_ram_reg_n_0_[8] ,\capture_data_ram_reg_n_0_[7] ,\capture_data_ram_reg_n_0_[6] ,\capture_data_ram_reg_n_0_[5] ,\capture_data_ram_reg_n_0_[4] ,\capture_data_ram_reg_n_0_[3] ,\capture_data_ram_reg_n_0_[2] ,\capture_data_ram_reg_n_0_[1] ,\capture_data_ram_reg_n_0_[0] }),
        .ctrl_s_axi_aclk(ctrl_s_axi_aclk),
        .reg_data_out(reg_data_out),
        .sel0(sel0),
        .\slv_reg_1c_reg[0] (test_ram_module_n_0));
  LUT6 #(
    .INIT(64'hB800B8B800000000)) 
    we_ram_i_1
       (.I0(capture_valid),
        .I1(capture_active_reg_n_0),
        .I2(we_ram),
        .I3(start_sync_ff3),
        .I4(start_sync_ff2),
        .I5(\test_ram_adr_cnt[11]_i_4_n_0 ),
        .O(we_ram_i_1_n_0));
  FDRE we_ram_reg
       (.C(capture_clk),
        .CE(1'b1),
        .D(we_ram_i_1_n_0),
        .Q(we_ram),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dp_ram_1r_1w_2clk" *) 
module ebaz4205_axis_capture_0_4_dp_ram_1r_1w_2clk
   (\slv_reg_1c_reg[0] ,
    reg_data_out,
    Q,
    \axi_rdata_reg[10] ,
    sel0,
    \axi_rdata_reg[31] ,
    \axi_rdata_reg[31]_0 ,
    \axi_rdata_reg[31]_1 ,
    capture_clk,
    ctrl_s_axi_aclk,
    WEA,
    RAM_reg_1_0,
    capture_data_ram);
  output \slv_reg_1c_reg[0] ;
  output [30:0]reg_data_out;
  input [31:0]Q;
  input [10:0]\axi_rdata_reg[10] ;
  input [2:0]sel0;
  input [31:0]\axi_rdata_reg[31] ;
  input [30:0]\axi_rdata_reg[31]_0 ;
  input [30:0]\axi_rdata_reg[31]_1 ;
  input capture_clk;
  input ctrl_s_axi_aclk;
  input [0:0]WEA;
  input [10:0]RAM_reg_1_0;
  input [31:0]capture_data_ram;

  wire [31:0]Q;
  wire [10:0]RAM_reg_1_0;
  wire [0:0]WEA;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire [10:0]\axi_rdata_reg[10] ;
  wire [31:0]\axi_rdata_reg[31] ;
  wire [30:0]\axi_rdata_reg[31]_0 ;
  wire [30:0]\axi_rdata_reg[31]_1 ;
  wire capture_clk;
  wire [31:0]capture_data_ram;
  wire ctrl_s_axi_aclk;
  wire [30:0]reg_data_out;
  wire [2:0]sel0;
  wire [31:0]slv_reg_10;
  wire \slv_reg_1c_reg[0] ;
  wire NLW_RAM_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_RAM_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_RAM_reg_0_DBITERR_UNCONNECTED;
  wire NLW_RAM_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_RAM_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_RAM_reg_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_RAM_reg_0_DOADO_UNCONNECTED;
  wire [31:16]NLW_RAM_reg_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_RAM_reg_0_DOPADOP_UNCONNECTED;
  wire [3:2]NLW_RAM_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_RAM_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_RAM_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_RAM_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_RAM_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_RAM_reg_1_DBITERR_UNCONNECTED;
  wire NLW_RAM_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_RAM_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_RAM_reg_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_RAM_reg_1_DOADO_UNCONNECTED;
  wire [31:14]NLW_RAM_reg_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_RAM_reg_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_RAM_reg_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_RAM_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_RAM_reg_1_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "U0/axis_capture_inst/test_ram_module/RAM_reg_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    RAM_reg_0
       (.ADDRARDADDR({1'b1,RAM_reg_1_0,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,\axi_rdata_reg[31] [10:0],1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_RAM_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_RAM_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(capture_clk),
        .CLKBWRCLK(ctrl_s_axi_aclk),
        .DBITERR(NLW_RAM_reg_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,capture_data_ram[15:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,capture_data_ram[17:16]}),
        .DIPBDIP({1'b0,1'b0,1'b1,1'b1}),
        .DOADO(NLW_RAM_reg_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_RAM_reg_0_DOBDO_UNCONNECTED[31:16],slv_reg_10[15:0]}),
        .DOPADOP(NLW_RAM_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP({NLW_RAM_reg_0_DOPBDOP_UNCONNECTED[3:2],slv_reg_10[17:16]}),
        .ECCPARITY(NLW_RAM_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(WEA),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_RAM_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_RAM_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_RAM_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_RAM_reg_0_SBITERR_UNCONNECTED),
        .WEA({WEA,WEA,1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d14" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d14" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "U0/axis_capture_inst/test_ram_module/RAM_reg_1" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    RAM_reg_1
       (.ADDRARDADDR({1'b1,RAM_reg_1_0,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,\axi_rdata_reg[31] [10:0],1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_RAM_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_RAM_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(capture_clk),
        .CLKBWRCLK(ctrl_s_axi_aclk),
        .DBITERR(NLW_RAM_reg_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,capture_data_ram[31:18]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_RAM_reg_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_RAM_reg_1_DOBDO_UNCONNECTED[31:14],slv_reg_10[31:18]}),
        .DOPADOP(NLW_RAM_reg_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_RAM_reg_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_RAM_reg_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(WEA),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_RAM_reg_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_RAM_reg_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_RAM_reg_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_RAM_reg_1_SBITERR_UNCONNECTED),
        .WEA({WEA,WEA,1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_3 
       (.I0(Q[0]),
        .I1(\axi_rdata_reg[10] [0]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [0]),
        .I4(sel0[0]),
        .I5(slv_reg_10[0]),
        .O(\slv_reg_1c_reg[0] ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [9]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [9]),
        .I5(sel0[0]),
        .O(reg_data_out[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_2 
       (.I0(Q[10]),
        .I1(\axi_rdata_reg[10] [10]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [10]),
        .I4(sel0[0]),
        .I5(slv_reg_10[10]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [10]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [10]),
        .I5(sel0[0]),
        .O(reg_data_out[10]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[11]_i_2 
       (.I0(Q[11]),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[31] [11]),
        .I3(sel0[0]),
        .I4(slv_reg_10[11]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [11]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [11]),
        .I5(sel0[0]),
        .O(reg_data_out[11]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[12]_i_2 
       (.I0(Q[12]),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[31] [12]),
        .I3(sel0[0]),
        .I4(slv_reg_10[12]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [12]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [12]),
        .I5(sel0[0]),
        .O(reg_data_out[12]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[13]_i_2 
       (.I0(Q[13]),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[31] [13]),
        .I3(sel0[0]),
        .I4(slv_reg_10[13]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [13]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [13]),
        .I5(sel0[0]),
        .O(reg_data_out[13]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[14]_i_2 
       (.I0(Q[14]),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[31] [14]),
        .I3(sel0[0]),
        .I4(slv_reg_10[14]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [14]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [14]),
        .I5(sel0[0]),
        .O(reg_data_out[14]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[15]_i_2 
       (.I0(Q[15]),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[31] [15]),
        .I3(sel0[0]),
        .I4(slv_reg_10[15]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_rdata[16]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [15]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [15]),
        .I5(sel0[0]),
        .O(reg_data_out[15]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[16]_i_2 
       (.I0(Q[16]),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[31] [16]),
        .I3(sel0[0]),
        .I4(slv_reg_10[16]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_rdata[17]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [16]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [16]),
        .I5(sel0[0]),
        .O(reg_data_out[16]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[17]_i_2 
       (.I0(Q[17]),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[31] [17]),
        .I3(sel0[0]),
        .I4(slv_reg_10[17]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_rdata[18]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [17]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [17]),
        .I5(sel0[0]),
        .O(reg_data_out[17]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[18]_i_2 
       (.I0(Q[18]),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[31] [18]),
        .I3(sel0[0]),
        .I4(slv_reg_10[18]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_rdata[19]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [18]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [18]),
        .I5(sel0[0]),
        .O(reg_data_out[18]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[19]_i_2 
       (.I0(Q[19]),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[31] [19]),
        .I3(sel0[0]),
        .I4(slv_reg_10[19]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [0]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [0]),
        .I5(sel0[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_2 
       (.I0(Q[1]),
        .I1(\axi_rdata_reg[10] [1]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [1]),
        .I4(sel0[0]),
        .I5(slv_reg_10[1]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_rdata[20]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [19]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [19]),
        .I5(sel0[0]),
        .O(reg_data_out[19]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[20]_i_2 
       (.I0(Q[20]),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[31] [20]),
        .I3(sel0[0]),
        .I4(slv_reg_10[20]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_rdata[21]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [20]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [20]),
        .I5(sel0[0]),
        .O(reg_data_out[20]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[21]_i_2 
       (.I0(Q[21]),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[31] [21]),
        .I3(sel0[0]),
        .I4(slv_reg_10[21]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[22]_i_1 
       (.I0(\axi_rdata[22]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [21]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [21]),
        .I5(sel0[0]),
        .O(reg_data_out[21]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[22]_i_2 
       (.I0(Q[22]),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[31] [22]),
        .I3(sel0[0]),
        .I4(slv_reg_10[22]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_rdata[23]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [22]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [22]),
        .I5(sel0[0]),
        .O(reg_data_out[22]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[23]_i_2 
       (.I0(Q[23]),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[31] [23]),
        .I3(sel0[0]),
        .I4(slv_reg_10[23]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[24]_i_1 
       (.I0(\axi_rdata[24]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [23]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [23]),
        .I5(sel0[0]),
        .O(reg_data_out[23]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[24]_i_2 
       (.I0(Q[24]),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[31] [24]),
        .I3(sel0[0]),
        .I4(slv_reg_10[24]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[25]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [24]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [24]),
        .I5(sel0[0]),
        .O(reg_data_out[24]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[25]_i_2 
       (.I0(Q[25]),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[31] [25]),
        .I3(sel0[0]),
        .I4(slv_reg_10[25]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[26]_i_1 
       (.I0(\axi_rdata[26]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [25]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [25]),
        .I5(sel0[0]),
        .O(reg_data_out[25]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[26]_i_2 
       (.I0(Q[26]),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[31] [26]),
        .I3(sel0[0]),
        .I4(slv_reg_10[26]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[27]_i_1 
       (.I0(\axi_rdata[27]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [26]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [26]),
        .I5(sel0[0]),
        .O(reg_data_out[26]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[27]_i_2 
       (.I0(Q[27]),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[31] [27]),
        .I3(sel0[0]),
        .I4(slv_reg_10[27]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[28]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [27]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [27]),
        .I5(sel0[0]),
        .O(reg_data_out[27]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[28]_i_2 
       (.I0(Q[28]),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[31] [28]),
        .I3(sel0[0]),
        .I4(slv_reg_10[28]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[29]_i_1 
       (.I0(\axi_rdata[29]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [28]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [28]),
        .I5(sel0[0]),
        .O(reg_data_out[28]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[29]_i_2 
       (.I0(Q[29]),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[31] [29]),
        .I3(sel0[0]),
        .I4(slv_reg_10[29]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [1]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [1]),
        .I5(sel0[0]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_2 
       (.I0(Q[2]),
        .I1(\axi_rdata_reg[10] [2]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [2]),
        .I4(sel0[0]),
        .I5(slv_reg_10[2]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[30]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [29]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [29]),
        .I5(sel0[0]),
        .O(reg_data_out[29]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[30]_i_2 
       (.I0(Q[30]),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[31] [30]),
        .I3(sel0[0]),
        .I4(slv_reg_10[30]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[31]_i_2 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [30]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [30]),
        .I5(sel0[0]),
        .O(reg_data_out[30]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[31]_i_3 
       (.I0(Q[31]),
        .I1(sel0[1]),
        .I2(\axi_rdata_reg[31] [31]),
        .I3(sel0[0]),
        .I4(slv_reg_10[31]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [2]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [2]),
        .I5(sel0[0]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_2 
       (.I0(Q[3]),
        .I1(\axi_rdata_reg[10] [3]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [3]),
        .I4(sel0[0]),
        .I5(slv_reg_10[3]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [3]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [3]),
        .I5(sel0[0]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_2 
       (.I0(Q[4]),
        .I1(\axi_rdata_reg[10] [4]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [4]),
        .I4(sel0[0]),
        .I5(slv_reg_10[4]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [4]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [4]),
        .I5(sel0[0]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_2 
       (.I0(Q[5]),
        .I1(\axi_rdata_reg[10] [5]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [5]),
        .I4(sel0[0]),
        .I5(slv_reg_10[5]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [5]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [5]),
        .I5(sel0[0]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_2 
       (.I0(Q[6]),
        .I1(\axi_rdata_reg[10] [6]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [6]),
        .I4(sel0[0]),
        .I5(slv_reg_10[6]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [6]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [6]),
        .I5(sel0[0]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_2 
       (.I0(Q[7]),
        .I1(\axi_rdata_reg[10] [7]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [7]),
        .I4(sel0[0]),
        .I5(slv_reg_10[7]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [7]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [7]),
        .I5(sel0[0]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_2 
       (.I0(Q[8]),
        .I1(\axi_rdata_reg[10] [8]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [8]),
        .I4(sel0[0]),
        .I5(slv_reg_10[8]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[31]_0 [8]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[31]_1 [8]),
        .I5(sel0[0]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_2 
       (.I0(Q[9]),
        .I1(\axi_rdata_reg[10] [9]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [9]),
        .I4(sel0[0]),
        .I5(slv_reg_10[9]),
        .O(\axi_rdata[9]_i_2_n_0 ));
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
