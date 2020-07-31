############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project warpPerpective
set_top warp_stream_accel
add_files warpPerpective/warpPerspective_accel.cpp -cflags "-D__XFCV_HLS_MODE__ -IarrayFAST/.lib/include --std=c++0x -Wno-unknown-pragmas"
add_files warpPerpective/warpPerspective_accel.h
add_files -tb warpPerpective/warpPerspective_tb.cpp -cflags "-D__XFCV_HLS_MODE__ -IarrayFAST/.lib/include --std=c++0x -Wno-unknown-pragmas"
open_solution "FullHD_solution"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./warpPerpective/FullHD_solution/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
