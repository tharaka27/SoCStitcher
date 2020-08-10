// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Aug  9 19:02:20 2020
// Host        : LAPTOP-DR5BCRPM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_2_warp_stream_accel_0_0_stub.v
// Design      : design_2_warp_stream_accel_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "warp_stream_accel,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_AXILiteS_AWADDR, 
  s_axi_AXILiteS_AWVALID, s_axi_AXILiteS_AWREADY, s_axi_AXILiteS_WDATA, 
  s_axi_AXILiteS_WSTRB, s_axi_AXILiteS_WVALID, s_axi_AXILiteS_WREADY, 
  s_axi_AXILiteS_BRESP, s_axi_AXILiteS_BVALID, s_axi_AXILiteS_BREADY, 
  s_axi_AXILiteS_ARADDR, s_axi_AXILiteS_ARVALID, s_axi_AXILiteS_ARREADY, 
  s_axi_AXILiteS_RDATA, s_axi_AXILiteS_RRESP, s_axi_AXILiteS_RVALID, 
  s_axi_AXILiteS_RREADY, ap_clk, ap_rst_n, interrupt, p_src_TVALID, p_src_TREADY, p_src_TDATA, 
  p_src_TKEEP, p_src_TSTRB, p_src_TUSER, p_src_TLAST, p_src_TID, p_src_TDEST, p_dst_TVALID, 
  p_dst_TREADY, p_dst_TDATA, p_dst_TKEEP, p_dst_TSTRB, p_dst_TUSER, p_dst_TLAST, p_dst_TID, 
  p_dst_TDEST, R_Clk_A, R_Rst_A, R_EN_A, R_WEN_A, R_Addr_A, R_Din_A, R_Dout_A)
/* synthesis syn_black_box black_box_pad_pin="s_axi_AXILiteS_AWADDR[3:0],s_axi_AXILiteS_AWVALID,s_axi_AXILiteS_AWREADY,s_axi_AXILiteS_WDATA[31:0],s_axi_AXILiteS_WSTRB[3:0],s_axi_AXILiteS_WVALID,s_axi_AXILiteS_WREADY,s_axi_AXILiteS_BRESP[1:0],s_axi_AXILiteS_BVALID,s_axi_AXILiteS_BREADY,s_axi_AXILiteS_ARADDR[3:0],s_axi_AXILiteS_ARVALID,s_axi_AXILiteS_ARREADY,s_axi_AXILiteS_RDATA[31:0],s_axi_AXILiteS_RRESP[1:0],s_axi_AXILiteS_RVALID,s_axi_AXILiteS_RREADY,ap_clk,ap_rst_n,interrupt,p_src_TVALID,p_src_TREADY,p_src_TDATA[7:0],p_src_TKEEP[0:0],p_src_TSTRB[0:0],p_src_TUSER[0:0],p_src_TLAST[0:0],p_src_TID[0:0],p_src_TDEST[0:0],p_dst_TVALID,p_dst_TREADY,p_dst_TDATA[7:0],p_dst_TKEEP[0:0],p_dst_TSTRB[0:0],p_dst_TUSER[0:0],p_dst_TLAST[0:0],p_dst_TID[0:0],p_dst_TDEST[0:0],R_Clk_A,R_Rst_A,R_EN_A,R_WEN_A[3:0],R_Addr_A[31:0],R_Din_A[31:0],R_Dout_A[31:0]" */;
  input [3:0]s_axi_AXILiteS_AWADDR;
  input s_axi_AXILiteS_AWVALID;
  output s_axi_AXILiteS_AWREADY;
  input [31:0]s_axi_AXILiteS_WDATA;
  input [3:0]s_axi_AXILiteS_WSTRB;
  input s_axi_AXILiteS_WVALID;
  output s_axi_AXILiteS_WREADY;
  output [1:0]s_axi_AXILiteS_BRESP;
  output s_axi_AXILiteS_BVALID;
  input s_axi_AXILiteS_BREADY;
  input [3:0]s_axi_AXILiteS_ARADDR;
  input s_axi_AXILiteS_ARVALID;
  output s_axi_AXILiteS_ARREADY;
  output [31:0]s_axi_AXILiteS_RDATA;
  output [1:0]s_axi_AXILiteS_RRESP;
  output s_axi_AXILiteS_RVALID;
  input s_axi_AXILiteS_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input p_src_TVALID;
  output p_src_TREADY;
  input [7:0]p_src_TDATA;
  input [0:0]p_src_TKEEP;
  input [0:0]p_src_TSTRB;
  input [0:0]p_src_TUSER;
  input [0:0]p_src_TLAST;
  input [0:0]p_src_TID;
  input [0:0]p_src_TDEST;
  output p_dst_TVALID;
  input p_dst_TREADY;
  output [7:0]p_dst_TDATA;
  output [0:0]p_dst_TKEEP;
  output [0:0]p_dst_TSTRB;
  output [0:0]p_dst_TUSER;
  output [0:0]p_dst_TLAST;
  output [0:0]p_dst_TID;
  output [0:0]p_dst_TDEST;
  output R_Clk_A;
  output R_Rst_A;
  output R_EN_A;
  output [3:0]R_WEN_A;
  output [31:0]R_Addr_A;
  output [31:0]R_Din_A;
  input [31:0]R_Dout_A;
endmodule
