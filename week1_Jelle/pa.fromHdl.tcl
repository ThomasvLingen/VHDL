
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name week1 -dir "D:/Docu_Jelle/School/Avans/TI/Blok7/VHDL/wekelijks/week1/planAhead_run_2" -part xc3s100ecp132-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "week1schema.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {XOR.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {OR_module.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {AND_module.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {week1schema.vf}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top week1schema $srcset
add_files [list {week1schema.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s100ecp132-4
