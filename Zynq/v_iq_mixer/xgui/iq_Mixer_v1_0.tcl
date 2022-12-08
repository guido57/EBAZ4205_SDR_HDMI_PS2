#Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
	set Page0 [ ipgui::add_page $IPINST  -name "Page 0" -layout vertical]
	set Component_Name [ ipgui::add_param  $IPINST  -parent  $Page0  -name Component_Name ]
	set C_M_AXIS_Q_TDATA_ACTUAL_WIDTH [ipgui::add_param $IPINST -parent $Page0 -name C_M_AXIS_Q_TDATA_ACTUAL_WIDTH]
	set C_M_AXIS_Q_TDATA_WIDTH [ipgui::add_param $IPINST -parent $Page0 -name C_M_AXIS_Q_TDATA_WIDTH]
	set C_M_AXIS_I_TDATA_ACTUAL_WIDTH [ipgui::add_param $IPINST -parent $Page0 -name C_M_AXIS_I_TDATA_ACTUAL_WIDTH]
	set C_M_AXIS_I_TDATA_WIDTH [ipgui::add_param $IPINST -parent $Page0 -name C_M_AXIS_I_TDATA_WIDTH]
	set C_S_AXIS_LO_TDATA_ACTUAL_WIDTH [ipgui::add_param $IPINST -parent $Page0 -name C_S_AXIS_LO_TDATA_ACTUAL_WIDTH]
	set C_S_AXIS_LO_TDATA_WIDTH [ipgui::add_param $IPINST -parent $Page0 -name C_S_AXIS_LO_TDATA_WIDTH]
	set C_S_AXIS_RF_TDATA_ACTUAL_WIDTH [ipgui::add_param $IPINST -parent $Page0 -name C_S_AXIS_RF_TDATA_ACTUAL_WIDTH]
	set C_S_AXIS_RF_TDATA_WIDTH [ipgui::add_param $IPINST -parent $Page0 -name C_S_AXIS_RF_TDATA_WIDTH]
}

proc update_PARAM_VALUE.C_M_AXIS_Q_TDATA_ACTUAL_WIDTH { PARAM_VALUE.C_M_AXIS_Q_TDATA_ACTUAL_WIDTH } {
	# Procedure called to update C_M_AXIS_Q_TDATA_ACTUAL_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIS_Q_TDATA_ACTUAL_WIDTH { PARAM_VALUE.C_M_AXIS_Q_TDATA_ACTUAL_WIDTH } {
	# Procedure called to validate C_M_AXIS_Q_TDATA_ACTUAL_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXIS_Q_TDATA_WIDTH { PARAM_VALUE.C_M_AXIS_Q_TDATA_WIDTH } {
	# Procedure called to update C_M_AXIS_Q_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIS_Q_TDATA_WIDTH { PARAM_VALUE.C_M_AXIS_Q_TDATA_WIDTH } {
	# Procedure called to validate C_M_AXIS_Q_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXIS_I_TDATA_ACTUAL_WIDTH { PARAM_VALUE.C_M_AXIS_I_TDATA_ACTUAL_WIDTH } {
	# Procedure called to update C_M_AXIS_I_TDATA_ACTUAL_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIS_I_TDATA_ACTUAL_WIDTH { PARAM_VALUE.C_M_AXIS_I_TDATA_ACTUAL_WIDTH } {
	# Procedure called to validate C_M_AXIS_I_TDATA_ACTUAL_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXIS_I_TDATA_WIDTH { PARAM_VALUE.C_M_AXIS_I_TDATA_WIDTH } {
	# Procedure called to update C_M_AXIS_I_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIS_I_TDATA_WIDTH { PARAM_VALUE.C_M_AXIS_I_TDATA_WIDTH } {
	# Procedure called to validate C_M_AXIS_I_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXIS_LO_TDATA_ACTUAL_WIDTH { PARAM_VALUE.C_S_AXIS_LO_TDATA_ACTUAL_WIDTH } {
	# Procedure called to update C_S_AXIS_LO_TDATA_ACTUAL_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXIS_LO_TDATA_ACTUAL_WIDTH { PARAM_VALUE.C_S_AXIS_LO_TDATA_ACTUAL_WIDTH } {
	# Procedure called to validate C_S_AXIS_LO_TDATA_ACTUAL_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXIS_LO_TDATA_WIDTH { PARAM_VALUE.C_S_AXIS_LO_TDATA_WIDTH } {
	# Procedure called to update C_S_AXIS_LO_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXIS_LO_TDATA_WIDTH { PARAM_VALUE.C_S_AXIS_LO_TDATA_WIDTH } {
	# Procedure called to validate C_S_AXIS_LO_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXIS_RF_TDATA_ACTUAL_WIDTH { PARAM_VALUE.C_S_AXIS_RF_TDATA_ACTUAL_WIDTH } {
	# Procedure called to update C_S_AXIS_RF_TDATA_ACTUAL_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXIS_RF_TDATA_ACTUAL_WIDTH { PARAM_VALUE.C_S_AXIS_RF_TDATA_ACTUAL_WIDTH } {
	# Procedure called to validate C_S_AXIS_RF_TDATA_ACTUAL_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXIS_RF_TDATA_WIDTH { PARAM_VALUE.C_S_AXIS_RF_TDATA_WIDTH } {
	# Procedure called to update C_S_AXIS_RF_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXIS_RF_TDATA_WIDTH { PARAM_VALUE.C_S_AXIS_RF_TDATA_WIDTH } {
	# Procedure called to validate C_S_AXIS_RF_TDATA_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_S_AXIS_RF_TDATA_WIDTH { MODELPARAM_VALUE.C_S_AXIS_RF_TDATA_WIDTH PARAM_VALUE.C_S_AXIS_RF_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXIS_RF_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXIS_RF_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXIS_RF_TDATA_ACTUAL_WIDTH { MODELPARAM_VALUE.C_S_AXIS_RF_TDATA_ACTUAL_WIDTH PARAM_VALUE.C_S_AXIS_RF_TDATA_ACTUAL_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXIS_RF_TDATA_ACTUAL_WIDTH}] ${MODELPARAM_VALUE.C_S_AXIS_RF_TDATA_ACTUAL_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXIS_LO_TDATA_WIDTH { MODELPARAM_VALUE.C_S_AXIS_LO_TDATA_WIDTH PARAM_VALUE.C_S_AXIS_LO_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXIS_LO_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXIS_LO_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXIS_LO_TDATA_ACTUAL_WIDTH { MODELPARAM_VALUE.C_S_AXIS_LO_TDATA_ACTUAL_WIDTH PARAM_VALUE.C_S_AXIS_LO_TDATA_ACTUAL_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXIS_LO_TDATA_ACTUAL_WIDTH}] ${MODELPARAM_VALUE.C_S_AXIS_LO_TDATA_ACTUAL_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIS_I_TDATA_WIDTH { MODELPARAM_VALUE.C_M_AXIS_I_TDATA_WIDTH PARAM_VALUE.C_M_AXIS_I_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIS_I_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIS_I_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIS_I_TDATA_ACTUAL_WIDTH { MODELPARAM_VALUE.C_M_AXIS_I_TDATA_ACTUAL_WIDTH PARAM_VALUE.C_M_AXIS_I_TDATA_ACTUAL_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIS_I_TDATA_ACTUAL_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIS_I_TDATA_ACTUAL_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIS_Q_TDATA_WIDTH { MODELPARAM_VALUE.C_M_AXIS_Q_TDATA_WIDTH PARAM_VALUE.C_M_AXIS_Q_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIS_Q_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIS_Q_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIS_Q_TDATA_ACTUAL_WIDTH { MODELPARAM_VALUE.C_M_AXIS_Q_TDATA_ACTUAL_WIDTH PARAM_VALUE.C_M_AXIS_Q_TDATA_ACTUAL_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIS_Q_TDATA_ACTUAL_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIS_Q_TDATA_ACTUAL_WIDTH}
}

