-makelib xcelium_lib/xilinx_vip -sv \
  "D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xlslice_v1_0_2 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/ebaz4205/ip/ebaz4205_xlslice_0_0/sim/ebaz4205_xlslice_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/ebaz4205/ip/ebaz4205_proc_sys_reset_0_0/sim/ebaz4205_proc_sys_reset_0_0.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_11 -sv \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/63b7/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_13 -sv \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/3007/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/ebaz4205/ip/ebaz4205_processing_system7_0_0/sim/ebaz4205_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_4 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/ebaz4205/ip/ebaz4205_xlconcat_0_0/sim/ebaz4205_xlconcat_0_0.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_25 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/e1e6/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_24 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/fa53/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_26 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ac57/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/ebaz4205/ip/ebaz4205_xbar_0/sim/ebaz4205_xbar_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/ebaz4205/ip/ebaz4205_rst_ENET0_GMII_RX_CLK_0_100M_0/sim/ebaz4205_rst_ENET0_GMII_RX_CLK_0_100M_0.vhd" \
  "../../../bd/ebaz4205/ipshared/2c69/dp_ram_1r_1w_2clk.vhd" \
  "../../../bd/ebaz4205/ipshared/2c69/axis_capture_logic.vhd" \
  "../../../bd/ebaz4205/ipshared/2c69/axis_capture.vhd" \
  "../../../bd/ebaz4205/ip/ebaz4205_axis_capture_0_4/sim/ebaz4205_axis_capture_0_4.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/ebaz4205/ip/ebaz4205_xlconcat_1_0/sim/ebaz4205_xlconcat_1_0.v" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_7 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/ebaz4205/ip/ebaz4205_xlconstant_0_0/sim/ebaz4205_xlconstant_0_0.v" \
  "../../../bd/ebaz4205/ip/ebaz4205_xlconstant_2_0/sim/ebaz4205_xlconstant_2_0.v" \
  "../../../bd/ebaz4205/ip/ebaz4205_axis_mux_0_0/sim/ebaz4205_axis_mux_0_0.v" \
  "../../../bd/ebaz4205/ip/ebaz4205_xlconcat_2_0/sim/ebaz4205_xlconcat_2_0.v" \
  "../../../bd/ebaz4205/ip/ebaz4205_xlconstant_1_0/sim/ebaz4205_xlconstant_1_0.v" \
  "../../../bd/ebaz4205/ip/ebaz4205_xlconstant_3_0/sim/ebaz4205_xlconstant_3_0.v" \
-endlib
-makelib xcelium_lib/xbip_utils_v3_0_10 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_utils_v2_0_6 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_pipe_v3_0_6 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_bram18k_v3_0_6 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/mult_gen_v12_0_17 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/dd36/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_addsub_v3_0_6 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_multadd_v3_0_6 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/dds_compiler_v6_0_21 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/7e37/hdl/dds_compiler_v6_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/ebaz4205/ip/ebaz4205_dds_compiler_0_0/sim/ebaz4205_dds_compiler_0_0.vhd" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_27 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/a5bb/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/ebaz4205/ip/ebaz4205_axi_gpio_1_0/sim/ebaz4205_axi_gpio_1_0.vhd" \
  "../../../bd/ebaz4205/ip/ebaz4205_dds_compiler_0_2/sim/ebaz4205_dds_compiler_0_2.vhd" \
-endlib
-makelib xcelium_lib/c_reg_fd_v12_0_6 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_addsub_v3_0_6 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_addsub_v12_0_14 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ebb8/hdl/c_addsub_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/ebaz4205/ip/ebaz4205_c_addsub_0_1/sim/ebaz4205_c_addsub_0_1.vhd" \
  "../../../bd/ebaz4205/ip/ebaz4205_mult_gen_0_2/sim/ebaz4205_mult_gen_0_2.vhd" \
  "../../../bd/ebaz4205/ip/ebaz4205_axi_gpio_0_0/sim/ebaz4205_axi_gpio_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/ebaz4205/ip/ebaz4205_xlconcat_0_1/sim/ebaz4205_xlconcat_0_1.v" \
  "../../../bd/ebaz4205/ip/ebaz4205_DivideBy2N_0_0/sim/ebaz4205_DivideBy2N_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/ebaz4205/ip/ebaz4205_dds_compiler_0_1/sim/ebaz4205_dds_compiler_0_1.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/ebaz4205/ip/ebaz4205_I2S_Transmitter_0_1/sim/ebaz4205_I2S_Transmitter_0_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/ebaz4205/ip/ebaz4205_RF_test_1MHz_0/sim/ebaz4205_RF_test_1MHz_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/ebaz4205/ip/ebaz4205_axi_axis_writer_0_0/sim/ebaz4205_axi_axis_writer_0_0.v" \
  "../../../bd/ebaz4205/ip/ebaz4205_xlslice_sin_0/sim/ebaz4205_xlslice_sin_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/ebaz4205/ip/ebaz4205_mult_sin_0/sim/ebaz4205_mult_sin_0.vhd" \
  "../../../bd/ebaz4205/ip/ebaz4205_mult_gen_0_0/sim/ebaz4205_mult_gen_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/ebaz4205/ip/ebaz4205_xlslice_0_3/sim/ebaz4205_xlslice_0_3.v" \
  "../../../bd/ebaz4205/ip/ebaz4205_xlslice_0_4/sim/ebaz4205_xlslice_0_4.v" \
-endlib
-makelib xcelium_lib/fir_compiler_v7_2_17 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/cf11/hdl/fir_compiler_v7_2_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/ebaz4205/ip/ebaz4205_fir_compiler_0_0/sim/ebaz4205_fir_compiler_0_0.vhd" \
-endlib
-makelib xcelium_lib/cic_compiler_v4_0_15 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/0aa2/hdl/cic_compiler_v4_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/ebaz4205/ip/ebaz4205_cic_compiler_0_0/sim/ebaz4205_cic_compiler_0_0.vhd" \
  "../../../bd/ebaz4205/ip/ebaz4205_cic_compiler_0_1/sim/ebaz4205_cic_compiler_0_1.vhd" \
  "../../../bd/ebaz4205/ip/ebaz4205_fir_compiler_0_1/sim/ebaz4205_fir_compiler_0_1.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/ebaz4205/ip/ebaz4205_xlconstant_0_1/sim/ebaz4205_xlconstant_0_1.v" \
  "../../../bd/ebaz4205/ip/ebaz4205_sqrt32_0_0/sim/ebaz4205_sqrt32_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/ebaz4205/ip/ebaz4205_mult_gen_0_1/sim/ebaz4205_mult_gen_0_1.vhd" \
  "../../../bd/ebaz4205/ip/ebaz4205_c_addsub_0_0/sim/ebaz4205_c_addsub_0_0.vhd" \
  "../../../bd/ebaz4205/ip/ebaz4205_mult_gen_1_0/sim/ebaz4205_mult_gen_1_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/ebaz4205/ip/ebaz4205_I2S_Transmitter_0_2/sim/ebaz4205_I2S_Transmitter_0_2.v" \
  "../../../bd/ebaz4205/ip/ebaz4205_xlconcat_0_2/sim/ebaz4205_xlconcat_0_2.v" \
  "../../../bd/ebaz4205/ip/ebaz4205_DivideBy10_0/sim/ebaz4205_DivideBy10_0.v" \
  "../../../bd/ebaz4205/ip/ebaz4205_xlconstant_1_1/sim/ebaz4205_xlconstant_1_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/ebaz4205/ip/ebaz4205_rst_ps7_0_64M_0/sim/ebaz4205_rst_ps7_0_64M_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/ebaz4205/ip/ebaz4205_xlconstant_2_1/sim/ebaz4205_xlconstant_2_1.v" \
  "../../../bd/ebaz4205/sim/ebaz4205.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/ebaz4205/ip/ebaz4205_mult_gen_0_3/sim/ebaz4205_mult_gen_0_3.vhd" \
  "../../../bd/ebaz4205/ip/ebaz4205_mult_by_4_0/sim/ebaz4205_mult_by_4_0.vhd" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_25 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/8fe4/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/ebaz4205/ip/ebaz4205_auto_pc_0/sim/ebaz4205_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/axi_clock_converter_v2_1_24 \
  "../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/23c0/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/ebaz4205/ip/ebaz4205_auto_cc_0/sim/ebaz4205_auto_cc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

