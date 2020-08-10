// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:hls:findHomography_accel:1.0
// IP Revision: 2007162116

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
findHomography_accel_0 your_instance_name (
  .s_axi_AXILiteS_AWADDR(s_axi_AXILiteS_AWADDR),    // input wire [3 : 0] s_axi_AXILiteS_AWADDR
  .s_axi_AXILiteS_AWVALID(s_axi_AXILiteS_AWVALID),  // input wire s_axi_AXILiteS_AWVALID
  .s_axi_AXILiteS_AWREADY(s_axi_AXILiteS_AWREADY),  // output wire s_axi_AXILiteS_AWREADY
  .s_axi_AXILiteS_WDATA(s_axi_AXILiteS_WDATA),      // input wire [31 : 0] s_axi_AXILiteS_WDATA
  .s_axi_AXILiteS_WSTRB(s_axi_AXILiteS_WSTRB),      // input wire [3 : 0] s_axi_AXILiteS_WSTRB
  .s_axi_AXILiteS_WVALID(s_axi_AXILiteS_WVALID),    // input wire s_axi_AXILiteS_WVALID
  .s_axi_AXILiteS_WREADY(s_axi_AXILiteS_WREADY),    // output wire s_axi_AXILiteS_WREADY
  .s_axi_AXILiteS_BRESP(s_axi_AXILiteS_BRESP),      // output wire [1 : 0] s_axi_AXILiteS_BRESP
  .s_axi_AXILiteS_BVALID(s_axi_AXILiteS_BVALID),    // output wire s_axi_AXILiteS_BVALID
  .s_axi_AXILiteS_BREADY(s_axi_AXILiteS_BREADY),    // input wire s_axi_AXILiteS_BREADY
  .s_axi_AXILiteS_ARADDR(s_axi_AXILiteS_ARADDR),    // input wire [3 : 0] s_axi_AXILiteS_ARADDR
  .s_axi_AXILiteS_ARVALID(s_axi_AXILiteS_ARVALID),  // input wire s_axi_AXILiteS_ARVALID
  .s_axi_AXILiteS_ARREADY(s_axi_AXILiteS_ARREADY),  // output wire s_axi_AXILiteS_ARREADY
  .s_axi_AXILiteS_RDATA(s_axi_AXILiteS_RDATA),      // output wire [31 : 0] s_axi_AXILiteS_RDATA
  .s_axi_AXILiteS_RRESP(s_axi_AXILiteS_RRESP),      // output wire [1 : 0] s_axi_AXILiteS_RRESP
  .s_axi_AXILiteS_RVALID(s_axi_AXILiteS_RVALID),    // output wire s_axi_AXILiteS_RVALID
  .s_axi_AXILiteS_RREADY(s_axi_AXILiteS_RREADY),    // input wire s_axi_AXILiteS_RREADY
  .ap_clk(ap_clk),                                  // input wire ap_clk
  .ap_rst_n(ap_rst_n),                              // input wire ap_rst_n
  .interrupt(interrupt),                            // output wire interrupt
  .src_x_dout(src_x_dout),                          // input wire [31 : 0] src_x_dout
  .src_x_empty_n(src_x_empty_n),                    // input wire src_x_empty_n
  .src_x_read(src_x_read),                          // output wire src_x_read
  .src_y_dout(src_y_dout),                          // input wire [31 : 0] src_y_dout
  .src_y_empty_n(src_y_empty_n),                    // input wire src_y_empty_n
  .src_y_read(src_y_read),                          // output wire src_y_read
  .dst_x_dout(dst_x_dout),                          // input wire [31 : 0] dst_x_dout
  .dst_x_empty_n(dst_x_empty_n),                    // input wire dst_x_empty_n
  .dst_x_read(dst_x_read),                          // output wire dst_x_read
  .dst_y_dout(dst_y_dout),                          // input wire [31 : 0] dst_y_dout
  .dst_y_empty_n(dst_y_empty_n),                    // input wire dst_y_empty_n
  .dst_y_read(dst_y_read),                          // output wire dst_y_read
  .homo_mat_din(homo_mat_din),                      // output wire [31 : 0] homo_mat_din
  .homo_mat_full_n(homo_mat_full_n),                // input wire homo_mat_full_n
  .homo_mat_write(homo_mat_write)                  // output wire homo_mat_write
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file findHomography_accel_0.v when simulating
// the core, findHomography_accel_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

