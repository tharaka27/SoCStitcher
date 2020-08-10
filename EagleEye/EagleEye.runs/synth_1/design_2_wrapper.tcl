# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_msg_config -id {Common 17-41} -limit 10000000
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir {C:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.cache/wt} [current_project]
set_property parent.project_path {C:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.xpr} [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part xilinx.com:zc702:part0:1.4 [current_project]
set_property ip_repo_paths {
  c:/Users/ASUS/AppData/Roaming/Xilinx/Vivado/Homography/solution2/impl/ip
  c:/Users/ASUS/AppData/Roaming/Xilinx/Vivado/warpPerpective/FullHD_solution/impl/ip
} [current_project]
update_ip_catalog
set_property ip_output_repo {c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {{C:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/hdl/design_2_wrapper.vhd}}
add_files {{C:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/design_2.bd}}
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_processing_system7_0_0/design_2_processing_system7_0_0.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_warp_stream_accel_0_bram_0/design_2_warp_stream_accel_0_bram_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_axi_bram_ctrl_0_1/design_2_axi_bram_ctrl_0_1_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_axi_smc_1/bd_0/ip/ip_1/bd_2b0d_psr_aclk_0_board.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_axi_smc_1/bd_0/ip/ip_1/bd_2b0d_psr_aclk_0.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_axi_smc_1/bd_0/ip/ip_2/bd_2b0d_arsw_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_axi_smc_1/bd_0/ip/ip_3/bd_2b0d_rsw_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_axi_smc_1/bd_0/ip/ip_4/bd_2b0d_awsw_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_axi_smc_1/bd_0/ip/ip_5/bd_2b0d_wsw_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_axi_smc_1/bd_0/ip/ip_6/bd_2b0d_bsw_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_axi_smc_1/bd_0/ip/ip_10/bd_2b0d_s00a2s_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_axi_smc_1/bd_0/ip/ip_11/bd_2b0d_sarn_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_axi_smc_1/bd_0/ip/ip_12/bd_2b0d_srn_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_axi_smc_1/bd_0/ip/ip_13/bd_2b0d_sawn_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_axi_smc_1/bd_0/ip/ip_14/bd_2b0d_swn_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_axi_smc_1/bd_0/ip/ip_15/bd_2b0d_sbn_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_axi_smc_1/bd_0/ip/ip_16/bd_2b0d_m00s2a_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_axi_smc_1/bd_0/ip/ip_17/bd_2b0d_m00arn_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_axi_smc_1/bd_0/ip/ip_18/bd_2b0d_m00rn_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_axi_smc_1/bd_0/ip/ip_19/bd_2b0d_m00awn_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_axi_smc_1/bd_0/ip/ip_20/bd_2b0d_m00wn_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_axi_smc_1/bd_0/ip/ip_21/bd_2b0d_m00bn_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_axi_smc_1/bd_0/ip/ip_23/bd_2b0d_m01s2a_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_axi_smc_1/bd_0/ip/ip_24/bd_2b0d_m01arn_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_axi_smc_1/bd_0/ip/ip_25/bd_2b0d_m01rn_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_axi_smc_1/bd_0/ip/ip_26/bd_2b0d_m01awn_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_axi_smc_1/bd_0/ip/ip_27/bd_2b0d_m01wn_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_axi_smc_1/bd_0/ip/ip_28/bd_2b0d_m01bn_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_axi_smc_1/ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_rst_ps7_0_50M_2/design_2_rst_ps7_0_50M_2_board.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_rst_ps7_0_50M_2/design_2_rst_ps7_0_50M_2.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_rst_ps7_0_50M_2/design_2_rst_ps7_0_50M_2_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/ip/design_2_warp_stream_accel_0_0/constraints/warp_stream_accel_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{C:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/sources_1/bd/design_2/design_2_ooc.xdc}}]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc {{C:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/constrs_1/imports/new/basys3_xdc.xdc}}
set_property used_in_implementation false [get_files {{C:/Users/ASUS/Desktop/sem 5 project/EagleEye/EagleEye.srcs/constrs_1/imports/new/basys3_xdc.xdc}}]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top design_2_wrapper -part xc7z020clg484-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef design_2_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file design_2_wrapper_utilization_synth.rpt -pb design_2_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
