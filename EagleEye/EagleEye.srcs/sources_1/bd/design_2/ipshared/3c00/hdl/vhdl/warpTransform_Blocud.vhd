-- ==============================================================
-- File generated on Sun Aug 09 18:32:48 +0530 2020
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity warpTransform_Blocud_rom is 
    generic(
             DWIDTH     : integer := 52; 
             AWIDTH     : integer := 6; 
             MEM_SIZE    : integer := 64
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          addr1      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce1       : in std_logic; 
          q1         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of warpTransform_Blocud_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr1_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0111111111111111111111111111111111111111111111111111", 
    1 => "0011111111111111111111111111111111111111111111111111", 
    2 => "0001111111111111111111111111111111111111111111111111", 
    3 => "0000111111111111111111111111111111111111111111111111", 
    4 => "0000011111111111111111111111111111111111111111111111", 
    5 => "0000001111111111111111111111111111111111111111111111", 
    6 => "0000000111111111111111111111111111111111111111111111", 
    7 => "0000000011111111111111111111111111111111111111111111", 
    8 => "0000000001111111111111111111111111111111111111111111", 
    9 => "0000000000111111111111111111111111111111111111111111", 
    10 => "0000000000011111111111111111111111111111111111111111", 
    11 => "0000000000001111111111111111111111111111111111111111", 
    12 => "0000000000000111111111111111111111111111111111111111", 
    13 => "0000000000000011111111111111111111111111111111111111", 
    14 => "0000000000000001111111111111111111111111111111111111", 
    15 => "0000000000000000111111111111111111111111111111111111", 
    16 => "0000000000000000011111111111111111111111111111111111", 
    17 => "0000000000000000001111111111111111111111111111111111", 
    18 => "0000000000000000000111111111111111111111111111111111", 
    19 => "0000000000000000000011111111111111111111111111111111", 
    20 => "0000000000000000000001111111111111111111111111111111", 
    21 => "0000000000000000000000111111111111111111111111111111", 
    22 => "0000000000000000000000011111111111111111111111111111", 
    23 => "0000000000000000000000001111111111111111111111111111", 
    24 => "0000000000000000000000000111111111111111111111111111", 
    25 => "0000000000000000000000000011111111111111111111111111", 
    26 => "0000000000000000000000000001111111111111111111111111", 
    27 => "0000000000000000000000000000111111111111111111111111", 
    28 => "0000000000000000000000000000011111111111111111111111", 
    29 => "0000000000000000000000000000001111111111111111111111", 
    30 => "0000000000000000000000000000000111111111111111111111", 
    31 => "0000000000000000000000000000000011111111111111111111", 
    32 => "0000000000000000000000000000000001111111111111111111", 
    33 => "0000000000000000000000000000000000111111111111111111", 
    34 => "0000000000000000000000000000000000011111111111111111", 
    35 => "0000000000000000000000000000000000001111111111111111", 
    36 => "0000000000000000000000000000000000000111111111111111", 
    37 => "0000000000000000000000000000000000000011111111111111", 
    38 => "0000000000000000000000000000000000000001111111111111", 
    39 => "0000000000000000000000000000000000000000111111111111", 
    40 => "0000000000000000000000000000000000000000011111111111", 
    41 => "0000000000000000000000000000000000000000001111111111", 
    42 => "0000000000000000000000000000000000000000000111111111", 
    43 => "0000000000000000000000000000000000000000000011111111", 
    44 => "0000000000000000000000000000000000000000000001111111", 
    45 => "0000000000000000000000000000000000000000000000111111", 
    46 => "0000000000000000000000000000000000000000000000011111", 
    47 => "0000000000000000000000000000000000000000000000001111", 
    48 => "0000000000000000000000000000000000000000000000000111", 
    49 => "0000000000000000000000000000000000000000000000000011", 
    50 => "0000000000000000000000000000000000000000000000000001", 
    51 to 61=> "0000000000000000000000000000000000000000000000000000", 
    62 to 63=> "1111111111111111111111111111111111111111111111111111" );


begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

memory_access_guard_1: process (addr1) 
begin
      addr1_tmp <= addr1;
--synthesis translate_off
      if (CONV_INTEGER(addr1) > mem_size-1) then
           addr1_tmp <= (others => '0');
      else 
           addr1_tmp <= addr1;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
        if (ce1 = '1') then 
            q1 <= mem(CONV_INTEGER(addr1_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity warpTransform_Blocud is
    generic (
        DataWidth : INTEGER := 52;
        AddressRange : INTEGER := 64;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address1 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce1 : IN STD_LOGIC;
        q1 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of warpTransform_Blocud is
    component warpTransform_Blocud_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR;
            addr1 : IN STD_LOGIC_VECTOR;
            ce1 : IN STD_LOGIC;
            q1 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    warpTransform_Blocud_rom_U :  component warpTransform_Blocud_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0,
        addr1 => address1,
        ce1 => ce1,
        q1 => q1);

end architecture;


