vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xlslice_v1_0_2
vlib activehdl/xil_defaultlib
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_11
vlib activehdl/processing_system7_vip_v1_0_13
vlib activehdl/xlconcat_v2_1_4
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_25
vlib activehdl/fifo_generator_v13_2_6
vlib activehdl/axi_data_fifo_v2_1_24
vlib activehdl/axi_crossbar_v2_1_26
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_27
vlib activehdl/xbip_utils_v3_0_10
vlib activehdl/axi_utils_v2_0_6
vlib activehdl/xbip_pipe_v3_0_6
vlib activehdl/xbip_bram18k_v3_0_6
vlib activehdl/mult_gen_v12_0_17
vlib activehdl/xbip_dsp48_wrapper_v3_0_4
vlib activehdl/xbip_dsp48_addsub_v3_0_6
vlib activehdl/xbip_dsp48_multadd_v3_0_6
vlib activehdl/dds_compiler_v6_0_21
vlib activehdl/xlconstant_v1_1_7
vlib activehdl/axi_protocol_converter_v2_1_25

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xlslice_v1_0_2 activehdl/xlslice_v1_0_2
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_11 activehdl/axi_vip_v1_1_11
vmap processing_system7_vip_v1_0_13 activehdl/processing_system7_vip_v1_0_13
vmap xlconcat_v2_1_4 activehdl/xlconcat_v2_1_4
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_25 activehdl/axi_register_slice_v2_1_25
vmap fifo_generator_v13_2_6 activehdl/fifo_generator_v13_2_6
vmap axi_data_fifo_v2_1_24 activehdl/axi_data_fifo_v2_1_24
vmap axi_crossbar_v2_1_26 activehdl/axi_crossbar_v2_1_26
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_27 activehdl/axi_gpio_v2_0_27
vmap xbip_utils_v3_0_10 activehdl/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 activehdl/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 activehdl/xbip_pipe_v3_0_6
vmap xbip_bram18k_v3_0_6 activehdl/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_17 activehdl/mult_gen_v12_0_17
vmap xbip_dsp48_wrapper_v3_0_4 activehdl/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 activehdl/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 activehdl/xbip_dsp48_multadd_v3_0_6
vmap dds_compiler_v6_0_21 activehdl/dds_compiler_v6_0_21
vmap xlconstant_v1_1_7 activehdl/xlconstant_v1_1_7
vmap axi_protocol_converter_v2_1_25 activehdl/axi_protocol_converter_v2_1_25

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ec67/hdl" "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/3007/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xlslice_v1_0_2  -v2k5 "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ec67/hdl" "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/3007/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ec67/hdl" "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/3007/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/ebaz4205/ip/ebaz4205_xlslice_0_0/sim/ebaz4205_xlslice_0_0.v" \
"../../../bd/ebaz4205/ip/ebaz4205_xlslice_1_0/sim/ebaz4205_xlslice_1_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/ebaz4205/ip/ebaz4205_proc_sys_reset_0_0/sim/ebaz4205_proc_sys_reset_0_0.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ec67/hdl" "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/3007/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_11  -sv2k12 "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ec67/hdl" "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/3007/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/63b7/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_13  -sv2k12 "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ec67/hdl" "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/3007/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/3007/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ec67/hdl" "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/3007/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/ebaz4205/ip/ebaz4205_processing_system7_0_0/sim/ebaz4205_processing_system7_0_0.v" \

vlog -work xlconcat_v2_1_4  -v2k5 "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ec67/hdl" "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/3007/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ec67/hdl" "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/3007/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/ebaz4205/ip/ebaz4205_xlconcat_0_0/sim/ebaz4205_xlconcat_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ec67/hdl" "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/3007/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_25  -v2k5 "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ec67/hdl" "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/3007/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/e1e6/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_6  -v2k5 "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ec67/hdl" "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/3007/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_6 -93 \
"../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_6  -v2k5 "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ec67/hdl" "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/3007/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_24  -v2k5 "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ec67/hdl" "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/3007/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/fa53/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_26  -v2k5 "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ec67/hdl" "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/3007/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ac57/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ec67/hdl" "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/3007/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/ebaz4205/ip/ebaz4205_xbar_0/sim/ebaz4205_xbar_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_27 -93 \
"../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/a5bb/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/ebaz4205/ip/ebaz4205_axi_gpio_0_0/sim/ebaz4205_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ec67/hdl" "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/3007/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/ebaz4205/ip/ebaz4205_xlconcat_0_1/sim/ebaz4205_xlconcat_0_1.v" \

vcom -work xbip_utils_v3_0_10 -93 \
"../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93 \
"../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93 \
"../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_17 -93 \
"../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/dd36/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93 \
"../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -93 \
"../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work dds_compiler_v6_0_21 -93 \
"../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/7e37/hdl/dds_compiler_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/ebaz4205/ip/ebaz4205_dds_compiler_0_0/sim/ebaz4205_dds_compiler_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ec67/hdl" "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/3007/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/ebaz4205/ip/ebaz4205_xlconcat_1_0/sim/ebaz4205_xlconcat_1_0.v" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ec67/hdl" "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/3007/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ec67/hdl" "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/3007/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/ebaz4205/ip/ebaz4205_xlconstant_0_0/sim/ebaz4205_xlconstant_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/ebaz4205/ip/ebaz4205_axi_gpio_1_0/sim/ebaz4205_axi_gpio_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ec67/hdl" "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/3007/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/ebaz4205/ip/ebaz4205_xlconstant_1_0/sim/ebaz4205_xlconstant_1_0.v" \
"../../../bd/ebaz4205/ip/ebaz4205_axis_mux_0_0/sim/ebaz4205_axis_mux_0_0.v" \
"../../../bd/ebaz4205/ip/ebaz4205_xlconcat_2_0/sim/ebaz4205_xlconcat_2_0.v" \
"../../../bd/ebaz4205/ip/ebaz4205_xlconstant_2_0/sim/ebaz4205_xlconstant_2_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/ebaz4205/ip/ebaz4205_rst_ENET0_GMII_RX_CLK_0_100M_0/sim/ebaz4205_rst_ENET0_GMII_RX_CLK_0_100M_0.vhd" \
"../../../bd/ebaz4205/ipshared/2c69/dp_ram_1r_1w_2clk.vhd" \
"../../../bd/ebaz4205/ipshared/2c69/axis_capture_logic.vhd" \
"../../../bd/ebaz4205/ipshared/2c69/axis_capture.vhd" \
"../../../bd/ebaz4205/ip/ebaz4205_axis_capture_0_4/sim/ebaz4205_axis_capture_0_4.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ec67/hdl" "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/3007/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/ebaz4205/sim/ebaz4205.v" \

vlog -work axi_protocol_converter_v2_1_25  -v2k5 "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ec67/hdl" "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/3007/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/8fe4/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/ec67/hdl" "+incdir+../../../../capture-test.gen/sources_1/bd/ebaz4205/ipshared/3007/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/ebaz4205/ip/ebaz4205_auto_pc_0/sim/ebaz4205_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

