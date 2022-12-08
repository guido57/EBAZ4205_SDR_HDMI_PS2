# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\EBAZ4205_Spectrum\Vitis\ws_capture_test\EBAZ4205_Spectrum\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\EBAZ4205_Spectrum\Vitis\ws_capture_test\EBAZ4205_Spectrum\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {EBAZ4205_Spectrum}\
-hw {D:\EBAZ4205_Spectrum\Zynq\capture-test\ebaz4205_wrapper.xsa}\
-proc {ps7_cortexa9} -os {linux} -out {D:/EBAZ4205_Spectrum/Vitis/ws_capture_test}

platform write
platform active {EBAZ4205_Spectrum}
platform generate
platform clean
platform generate
platform clean
platform generate
