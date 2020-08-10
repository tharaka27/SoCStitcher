-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Aug  9 19:02:20 2020
-- Host        : LAPTOP-DR5BCRPM running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_2_warp_stream_accel_0_0_stub.vhdl
-- Design      : design_2_warp_stream_accel_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_AXILiteS_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXILiteS_AWVALID : in STD_LOGIC;
    s_axi_AXILiteS_AWREADY : out STD_LOGIC;
    s_axi_AXILiteS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXILiteS_WVALID : in STD_LOGIC;
    s_axi_AXILiteS_WREADY : out STD_LOGIC;
    s_axi_AXILiteS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_BVALID : out STD_LOGIC;
    s_axi_AXILiteS_BREADY : in STD_LOGIC;
    s_axi_AXILiteS_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXILiteS_ARVALID : in STD_LOGIC;
    s_axi_AXILiteS_ARREADY : out STD_LOGIC;
    s_axi_AXILiteS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_RVALID : out STD_LOGIC;
    s_axi_AXILiteS_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    p_src_TVALID : in STD_LOGIC;
    p_src_TREADY : out STD_LOGIC;
    p_src_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_src_TKEEP : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_src_TSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_src_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_src_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_src_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_src_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_dst_TVALID : out STD_LOGIC;
    p_dst_TREADY : in STD_LOGIC;
    p_dst_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_dst_TKEEP : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_dst_TSTRB : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_dst_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_dst_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_dst_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_dst_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 );
    R_Clk_A : out STD_LOGIC;
    R_Rst_A : out STD_LOGIC;
    R_EN_A : out STD_LOGIC;
    R_WEN_A : out STD_LOGIC_VECTOR ( 3 downto 0 );
    R_Addr_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    R_Din_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    R_Dout_A : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_AXILiteS_AWADDR[3:0],s_axi_AXILiteS_AWVALID,s_axi_AXILiteS_AWREADY,s_axi_AXILiteS_WDATA[31:0],s_axi_AXILiteS_WSTRB[3:0],s_axi_AXILiteS_WVALID,s_axi_AXILiteS_WREADY,s_axi_AXILiteS_BRESP[1:0],s_axi_AXILiteS_BVALID,s_axi_AXILiteS_BREADY,s_axi_AXILiteS_ARADDR[3:0],s_axi_AXILiteS_ARVALID,s_axi_AXILiteS_ARREADY,s_axi_AXILiteS_RDATA[31:0],s_axi_AXILiteS_RRESP[1:0],s_axi_AXILiteS_RVALID,s_axi_AXILiteS_RREADY,ap_clk,ap_rst_n,interrupt,p_src_TVALID,p_src_TREADY,p_src_TDATA[7:0],p_src_TKEEP[0:0],p_src_TSTRB[0:0],p_src_TUSER[0:0],p_src_TLAST[0:0],p_src_TID[0:0],p_src_TDEST[0:0],p_dst_TVALID,p_dst_TREADY,p_dst_TDATA[7:0],p_dst_TKEEP[0:0],p_dst_TSTRB[0:0],p_dst_TUSER[0:0],p_dst_TLAST[0:0],p_dst_TID[0:0],p_dst_TDEST[0:0],R_Clk_A,R_Rst_A,R_EN_A,R_WEN_A[3:0],R_Addr_A[31:0],R_Din_A[31:0],R_Dout_A[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "warp_stream_accel,Vivado 2018.3";
begin
end;
