# ==============================================================
# File generated on Fri Jul 31 10:42:48 +0530 2020
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../warpPerspective_tb.cpp -cflags { -I../../arrayFAST/.lib/include -D__XFCV_HLS_MODE__ --std=c++0x -Wno-unknown-pragmas}
add_files warpPerpective/warpPerspective_accel.h
add_files warpPerpective/warpPerspective_accel.cpp -cflags {-D__XFCV_HLS_MODE__ -IarrayFAST/.lib/include --std=c++0x -Wno-unknown-pragmas}
set_part xc7z020clg484-1
create_clock -name default -period 10
config_export -format=ip_catalog
config_export -rtl=verilog
