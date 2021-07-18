read_file sta_test.v

source cst.tcl

compile

write_file -format verilog -hierarchy -output netlist/sta_test.vg

source rpt.tcl

exit
