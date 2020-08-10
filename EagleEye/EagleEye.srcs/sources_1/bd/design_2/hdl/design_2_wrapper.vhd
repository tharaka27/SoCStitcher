--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Sun Aug  9 18:51:59 2020
--Host        : LAPTOP-DR5BCRPM running 64-bit major release  (build 9200)
--Command     : generate_target design_2_wrapper.bd
--Design      : design_2_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    p_dst_1_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_dst_1_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_dst_1_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_dst_1_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_dst_1_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_dst_1_tready : in STD_LOGIC;
    p_dst_1_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_dst_1_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_dst_1_tvalid : out STD_LOGIC;
    p_src_1_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_src_1_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_src_1_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_src_1_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_src_1_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_src_1_tready : out STD_LOGIC;
    p_src_1_tstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_src_1_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_src_1_tvalid : in STD_LOGIC
  );
end design_2_wrapper;

architecture STRUCTURE of design_2_wrapper is
  component design_2 is
  port (
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    p_src_1_tvalid : in STD_LOGIC;
    p_src_1_tready : out STD_LOGIC;
    p_src_1_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_src_1_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_src_1_tstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_src_1_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_src_1_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_src_1_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_src_1_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_dst_1_tvalid : out STD_LOGIC;
    p_dst_1_tready : in STD_LOGIC;
    p_dst_1_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_dst_1_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_dst_1_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_dst_1_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_dst_1_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_dst_1_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_dst_1_tdest : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_2;
begin
design_2_i: component design_2
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      p_dst_1_tdata(7 downto 0) => p_dst_1_tdata(7 downto 0),
      p_dst_1_tdest(0) => p_dst_1_tdest(0),
      p_dst_1_tid(0) => p_dst_1_tid(0),
      p_dst_1_tkeep(0) => p_dst_1_tkeep(0),
      p_dst_1_tlast(0) => p_dst_1_tlast(0),
      p_dst_1_tready => p_dst_1_tready,
      p_dst_1_tstrb(0) => p_dst_1_tstrb(0),
      p_dst_1_tuser(0) => p_dst_1_tuser(0),
      p_dst_1_tvalid => p_dst_1_tvalid,
      p_src_1_tdata(7 downto 0) => p_src_1_tdata(7 downto 0),
      p_src_1_tdest(0) => p_src_1_tdest(0),
      p_src_1_tid(0) => p_src_1_tid(0),
      p_src_1_tkeep(0) => p_src_1_tkeep(0),
      p_src_1_tlast(0) => p_src_1_tlast(0),
      p_src_1_tready => p_src_1_tready,
      p_src_1_tstrb(0) => p_src_1_tstrb(0),
      p_src_1_tuser(0) => p_src_1_tuser(0),
      p_src_1_tvalid => p_src_1_tvalid
    );
end STRUCTURE;
