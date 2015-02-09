
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name week1 -dir "D:/Docu_Jelle/School/Avans/TI/Blok7/VHDL/wekelijks/week1/planAhead_run_1" -part xc3s100ecp132-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Docu_Jelle/School/Avans/TI/Blok7/VHDL/wekelijks/week1/week1schema.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Docu_Jelle/School/Avans/TI/Blok7/VHDL/wekelijks/week1} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "week1schema.ucf" [current_fileset -constrset]
add_files [list {week1schema.ucf}] -fileset [get_property constrset [current_run]]
link_design
