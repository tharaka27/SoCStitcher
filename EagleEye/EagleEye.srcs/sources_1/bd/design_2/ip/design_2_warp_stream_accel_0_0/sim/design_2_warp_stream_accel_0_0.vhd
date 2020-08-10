-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:warp_stream_accel:1.0
-- IP Revision: 2008091833

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_2_warp_stream_accel_0_0 IS
  PORT (
    s_axi_AXILiteS_AWADDR : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_AXILiteS_AWVALID : IN STD_LOGIC;
    s_axi_AXILiteS_AWREADY : OUT STD_LOGIC;
    s_axi_AXILiteS_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_AXILiteS_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_AXILiteS_WVALID : IN STD_LOGIC;
    s_axi_AXILiteS_WREADY : OUT STD_LOGIC;
    s_axi_AXILiteS_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_AXILiteS_BVALID : OUT STD_LOGIC;
    s_axi_AXILiteS_BREADY : IN STD_LOGIC;
    s_axi_AXILiteS_ARADDR : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_AXILiteS_ARVALID : IN STD_LOGIC;
    s_axi_AXILiteS_ARREADY : OUT STD_LOGIC;
    s_axi_AXILiteS_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_AXILiteS_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_AXILiteS_RVALID : OUT STD_LOGIC;
    s_axi_AXILiteS_RREADY : IN STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    interrupt : OUT STD_LOGIC;
    p_src_TVALID : IN STD_LOGIC;
    p_src_TREADY : OUT STD_LOGIC;
    p_src_TDATA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    p_src_TKEEP : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    p_src_TSTRB : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    p_src_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    p_src_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    p_src_TID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    p_src_TDEST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    p_dst_TVALID : OUT STD_LOGIC;
    p_dst_TREADY : IN STD_LOGIC;
    p_dst_TDATA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    p_dst_TKEEP : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    p_dst_TSTRB : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    p_dst_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    p_dst_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    p_dst_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    p_dst_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    R_Clk_A : OUT STD_LOGIC;
    R_Rst_A : OUT STD_LOGIC;
    R_EN_A : OUT STD_LOGIC;
    R_WEN_A : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    R_Addr_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    R_Din_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    R_Dout_A : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END design_2_warp_stream_accel_0_0;

ARCHITECTURE design_2_warp_stream_accel_0_0_arch OF design_2_warp_stream_accel_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_2_warp_stream_accel_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT warp_stream_accel IS
    GENERIC (
      C_S_AXI_AXILITES_ADDR_WIDTH : INTEGER;
      C_S_AXI_AXILITES_DATA_WIDTH : INTEGER
    );
    PORT (
      s_axi_AXILiteS_AWADDR : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_AXILiteS_AWVALID : IN STD_LOGIC;
      s_axi_AXILiteS_AWREADY : OUT STD_LOGIC;
      s_axi_AXILiteS_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_AXILiteS_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_AXILiteS_WVALID : IN STD_LOGIC;
      s_axi_AXILiteS_WREADY : OUT STD_LOGIC;
      s_axi_AXILiteS_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_AXILiteS_BVALID : OUT STD_LOGIC;
      s_axi_AXILiteS_BREADY : IN STD_LOGIC;
      s_axi_AXILiteS_ARADDR : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_AXILiteS_ARVALID : IN STD_LOGIC;
      s_axi_AXILiteS_ARREADY : OUT STD_LOGIC;
      s_axi_AXILiteS_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_AXILiteS_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_AXILiteS_RVALID : OUT STD_LOGIC;
      s_axi_AXILiteS_RREADY : IN STD_LOGIC;
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      interrupt : OUT STD_LOGIC;
      p_src_TVALID : IN STD_LOGIC;
      p_src_TREADY : OUT STD_LOGIC;
      p_src_TDATA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      p_src_TKEEP : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      p_src_TSTRB : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      p_src_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      p_src_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      p_src_TID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      p_src_TDEST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      p_dst_TVALID : OUT STD_LOGIC;
      p_dst_TREADY : IN STD_LOGIC;
      p_dst_TDATA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      p_dst_TKEEP : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      p_dst_TSTRB : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      p_dst_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      p_dst_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      p_dst_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      p_dst_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      R_Clk_A : OUT STD_LOGIC;
      R_Rst_A : OUT STD_LOGIC;
      R_EN_A : OUT STD_LOGIC;
      R_WEN_A : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      R_Addr_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      R_Din_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      R_Dout_A : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT warp_stream_accel;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_2_warp_stream_accel_0_0_arch: ARCHITECTURE IS "HLS";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF R_Dout_A: SIGNAL IS "xilinx.com:interface:bram:1.0 R_PORTA DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF R_Din_A: SIGNAL IS "xilinx.com:interface:bram:1.0 R_PORTA DIN";
  ATTRIBUTE X_INTERFACE_INFO OF R_Addr_A: SIGNAL IS "xilinx.com:interface:bram:1.0 R_PORTA ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF R_WEN_A: SIGNAL IS "xilinx.com:interface:bram:1.0 R_PORTA WE";
  ATTRIBUTE X_INTERFACE_INFO OF R_EN_A: SIGNAL IS "xilinx.com:interface:bram:1.0 R_PORTA EN";
  ATTRIBUTE X_INTERFACE_INFO OF R_Rst_A: SIGNAL IS "xilinx.com:interface:bram:1.0 R_PORTA RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF R_Clk_A: SIGNAL IS "XIL_INTERFACENAME R_PORTA, MEM_WIDTH 32, MEM_SIZE 36, MASTER_TYPE BRAM_CTRL, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} CLK {datatype {name {attribs {resolve_type immediate d" & 
"ependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {res" & 
"olve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ADDR {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value" & 
" false}}}} DIN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}} DOUT {datatype {name {attribs {resolve_type immediate d" & 
"ependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}} WE {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidt" & 
"h {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 4} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, MEM_ECC NONE, READ_LATENCY 1";
  ATTRIBUTE X_INTERFACE_INFO OF R_Clk_A: SIGNAL IS "xilinx.com:interface:bram:1.0 R_PORTA CLK";
  ATTRIBUTE X_INTERFACE_INFO OF p_dst_TDEST: SIGNAL IS "xilinx.com:interface:axis:1.0 p_dst TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF p_dst_TID: SIGNAL IS "xilinx.com:interface:axis:1.0 p_dst TID";
  ATTRIBUTE X_INTERFACE_INFO OF p_dst_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 p_dst TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF p_dst_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 p_dst TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF p_dst_TSTRB: SIGNAL IS "xilinx.com:interface:axis:1.0 p_dst TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF p_dst_TKEEP: SIGNAL IS "xilinx.com:interface:axis:1.0 p_dst TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF p_dst_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 p_dst TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF p_dst_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 p_dst TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF p_dst_TVALID: SIGNAL IS "XIL_INTERFACENAME p_dst, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_typ" & 
"e immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maxi" & 
"mum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 1}, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_2_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF p_dst_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 p_dst TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF p_src_TDEST: SIGNAL IS "xilinx.com:interface:axis:1.0 p_src TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF p_src_TID: SIGNAL IS "xilinx.com:interface:axis:1.0 p_src TID";
  ATTRIBUTE X_INTERFACE_INFO OF p_src_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 p_src TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF p_src_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 p_src TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF p_src_TSTRB: SIGNAL IS "xilinx.com:interface:axis:1.0 p_src TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF p_src_TKEEP: SIGNAL IS "xilinx.com:interface:axis:1.0 p_src TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF p_src_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 p_src TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF p_src_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 p_src TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF p_src_TVALID: SIGNAL IS "XIL_INTERFACENAME p_src, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, H" & 
"AS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_2_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF p_src_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 p_src TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF interrupt: SIGNAL IS "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {INTERRUPT {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF interrupt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst_n: SIGNAL IS "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_AXILiteS:p_src:p_dst, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 50000000, PHASE 0.000," & 
" CLK_DOMAIN design_2_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_AXILiteS_AWADDR: SIGNAL IS "XIL_INTERFACENAME s_axi_AXILiteS, ADDR_WIDTH 4, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 50000000, " & 
"ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_2_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWADDR";
BEGIN
  U0 : warp_stream_accel
    GENERIC MAP (
      C_S_AXI_AXILITES_ADDR_WIDTH => 4,
      C_S_AXI_AXILITES_DATA_WIDTH => 32
    )
    PORT MAP (
      s_axi_AXILiteS_AWADDR => s_axi_AXILiteS_AWADDR,
      s_axi_AXILiteS_AWVALID => s_axi_AXILiteS_AWVALID,
      s_axi_AXILiteS_AWREADY => s_axi_AXILiteS_AWREADY,
      s_axi_AXILiteS_WDATA => s_axi_AXILiteS_WDATA,
      s_axi_AXILiteS_WSTRB => s_axi_AXILiteS_WSTRB,
      s_axi_AXILiteS_WVALID => s_axi_AXILiteS_WVALID,
      s_axi_AXILiteS_WREADY => s_axi_AXILiteS_WREADY,
      s_axi_AXILiteS_BRESP => s_axi_AXILiteS_BRESP,
      s_axi_AXILiteS_BVALID => s_axi_AXILiteS_BVALID,
      s_axi_AXILiteS_BREADY => s_axi_AXILiteS_BREADY,
      s_axi_AXILiteS_ARADDR => s_axi_AXILiteS_ARADDR,
      s_axi_AXILiteS_ARVALID => s_axi_AXILiteS_ARVALID,
      s_axi_AXILiteS_ARREADY => s_axi_AXILiteS_ARREADY,
      s_axi_AXILiteS_RDATA => s_axi_AXILiteS_RDATA,
      s_axi_AXILiteS_RRESP => s_axi_AXILiteS_RRESP,
      s_axi_AXILiteS_RVALID => s_axi_AXILiteS_RVALID,
      s_axi_AXILiteS_RREADY => s_axi_AXILiteS_RREADY,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt,
      p_src_TVALID => p_src_TVALID,
      p_src_TREADY => p_src_TREADY,
      p_src_TDATA => p_src_TDATA,
      p_src_TKEEP => p_src_TKEEP,
      p_src_TSTRB => p_src_TSTRB,
      p_src_TUSER => p_src_TUSER,
      p_src_TLAST => p_src_TLAST,
      p_src_TID => p_src_TID,
      p_src_TDEST => p_src_TDEST,
      p_dst_TVALID => p_dst_TVALID,
      p_dst_TREADY => p_dst_TREADY,
      p_dst_TDATA => p_dst_TDATA,
      p_dst_TKEEP => p_dst_TKEEP,
      p_dst_TSTRB => p_dst_TSTRB,
      p_dst_TUSER => p_dst_TUSER,
      p_dst_TLAST => p_dst_TLAST,
      p_dst_TID => p_dst_TID,
      p_dst_TDEST => p_dst_TDEST,
      R_Clk_A => R_Clk_A,
      R_Rst_A => R_Rst_A,
      R_EN_A => R_EN_A,
      R_WEN_A => R_WEN_A,
      R_Addr_A => R_Addr_A,
      R_Din_A => R_Din_A,
      R_Dout_A => R_Dout_A
    );
END design_2_warp_stream_accel_0_0_arch;
