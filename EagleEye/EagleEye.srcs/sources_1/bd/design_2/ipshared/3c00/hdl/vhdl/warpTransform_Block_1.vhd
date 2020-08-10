-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity warpTransform_Block_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    scalar_dst_mat_cols_dout : IN STD_LOGIC_VECTOR (11 downto 0);
    scalar_dst_mat_cols_empty_n : IN STD_LOGIC;
    scalar_dst_mat_cols_read : OUT STD_LOGIC;
    p_dst_mat_cols_out_din : OUT STD_LOGIC_VECTOR (11 downto 0);
    p_dst_mat_cols_out_full_n : IN STD_LOGIC;
    p_dst_mat_cols_out_write : OUT STD_LOGIC;
    scalar_dst_mat_rows_dout : IN STD_LOGIC_VECTOR (11 downto 0);
    scalar_dst_mat_rows_empty_n : IN STD_LOGIC;
    scalar_dst_mat_rows_read : OUT STD_LOGIC;
    p_dst_mat_rows_out_din : OUT STD_LOGIC_VECTOR (11 downto 0);
    p_dst_mat_rows_out_full_n : IN STD_LOGIC;
    p_dst_mat_rows_out_write : OUT STD_LOGIC;
    p_src_mat_cols_dout : IN STD_LOGIC_VECTOR (11 downto 0);
    p_src_mat_cols_empty_n : IN STD_LOGIC;
    p_src_mat_cols_read : OUT STD_LOGIC;
    p_src_mat_rows_dout : IN STD_LOGIC_VECTOR (11 downto 0);
    p_src_mat_rows_empty_n : IN STD_LOGIC;
    p_src_mat_rows_read : OUT STD_LOGIC;
    p_src_mat_cols_load337_loc_c_i_din : OUT STD_LOGIC_VECTOR (11 downto 0);
    p_src_mat_cols_load337_loc_c_i_full_n : IN STD_LOGIC;
    p_src_mat_cols_load337_loc_c_i_write : OUT STD_LOGIC;
    p_src_mat_rows_c_i_din : OUT STD_LOGIC_VECTOR (11 downto 0);
    p_src_mat_rows_c_i_full_n : IN STD_LOGIC;
    p_src_mat_rows_c_i_write : OUT STD_LOGIC;
    p_dst_mat_rows_c_i_din : OUT STD_LOGIC_VECTOR (11 downto 0);
    p_dst_mat_rows_c_i_full_n : IN STD_LOGIC;
    p_dst_mat_rows_c_i_write : OUT STD_LOGIC;
    p_dst_mat_cols_c_i_din : OUT STD_LOGIC_VECTOR (11 downto 0);
    p_dst_mat_cols_c_i_full_n : IN STD_LOGIC;
    p_dst_mat_cols_c_i_write : OUT STD_LOGIC );
end;


architecture behav of warpTransform_Block_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal scalar_dst_mat_cols_blk_n : STD_LOGIC;
    signal p_dst_mat_cols_out_blk_n : STD_LOGIC;
    signal scalar_dst_mat_rows_blk_n : STD_LOGIC;
    signal p_dst_mat_rows_out_blk_n : STD_LOGIC;
    signal p_src_mat_cols_blk_n : STD_LOGIC;
    signal p_src_mat_rows_blk_n : STD_LOGIC;
    signal p_src_mat_cols_load337_loc_c_i_blk_n : STD_LOGIC;
    signal p_src_mat_rows_c_i_blk_n : STD_LOGIC;
    signal p_dst_mat_rows_c_i_blk_n : STD_LOGIC;
    signal p_dst_mat_cols_c_i_blk_n : STD_LOGIC;
    signal ap_block_state1 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((not(((p_dst_mat_cols_c_i_full_n = ap_const_logic_0) or (p_dst_mat_rows_c_i_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (p_src_mat_rows_c_i_full_n = ap_const_logic_0) or (p_src_mat_cols_load337_loc_c_i_full_n = ap_const_logic_0) or (p_src_mat_rows_empty_n = ap_const_logic_0) or (p_src_mat_cols_empty_n = ap_const_logic_0) or (p_dst_mat_rows_out_full_n = ap_const_logic_0) or (scalar_dst_mat_rows_empty_n = ap_const_logic_0) or (p_dst_mat_cols_out_full_n = ap_const_logic_0) or (scalar_dst_mat_cols_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((internal_ap_ready = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, scalar_dst_mat_cols_empty_n, p_dst_mat_cols_out_full_n, scalar_dst_mat_rows_empty_n, p_dst_mat_rows_out_full_n, p_src_mat_cols_empty_n, p_src_mat_rows_empty_n, p_src_mat_cols_load337_loc_c_i_full_n, p_src_mat_rows_c_i_full_n, p_dst_mat_rows_c_i_full_n, p_dst_mat_cols_c_i_full_n)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_block_state1_assign_proc : process(real_start, ap_done_reg, scalar_dst_mat_cols_empty_n, p_dst_mat_cols_out_full_n, scalar_dst_mat_rows_empty_n, p_dst_mat_rows_out_full_n, p_src_mat_cols_empty_n, p_src_mat_rows_empty_n, p_src_mat_cols_load337_loc_c_i_full_n, p_src_mat_rows_c_i_full_n, p_dst_mat_rows_c_i_full_n, p_dst_mat_cols_c_i_full_n)
    begin
                ap_block_state1 <= ((p_dst_mat_cols_c_i_full_n = ap_const_logic_0) or (p_dst_mat_rows_c_i_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (p_src_mat_rows_c_i_full_n = ap_const_logic_0) or (p_src_mat_cols_load337_loc_c_i_full_n = ap_const_logic_0) or (p_src_mat_rows_empty_n = ap_const_logic_0) or (p_src_mat_cols_empty_n = ap_const_logic_0) or (p_dst_mat_rows_out_full_n = ap_const_logic_0) or (scalar_dst_mat_rows_empty_n = ap_const_logic_0) or (p_dst_mat_cols_out_full_n = ap_const_logic_0) or (scalar_dst_mat_cols_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_done_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, scalar_dst_mat_cols_empty_n, p_dst_mat_cols_out_full_n, scalar_dst_mat_rows_empty_n, p_dst_mat_rows_out_full_n, p_src_mat_cols_empty_n, p_src_mat_rows_empty_n, p_src_mat_cols_load337_loc_c_i_full_n, p_src_mat_rows_c_i_full_n, p_dst_mat_rows_c_i_full_n, p_dst_mat_cols_c_i_full_n)
    begin
        if ((not(((p_dst_mat_cols_c_i_full_n = ap_const_logic_0) or (p_dst_mat_rows_c_i_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (p_src_mat_rows_c_i_full_n = ap_const_logic_0) or (p_src_mat_cols_load337_loc_c_i_full_n = ap_const_logic_0) or (p_src_mat_rows_empty_n = ap_const_logic_0) or (p_src_mat_cols_empty_n = ap_const_logic_0) or (p_dst_mat_rows_out_full_n = ap_const_logic_0) or (scalar_dst_mat_rows_empty_n = ap_const_logic_0) or (p_dst_mat_cols_out_full_n = ap_const_logic_0) or (scalar_dst_mat_cols_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((real_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;

    internal_ap_ready_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, scalar_dst_mat_cols_empty_n, p_dst_mat_cols_out_full_n, scalar_dst_mat_rows_empty_n, p_dst_mat_rows_out_full_n, p_src_mat_cols_empty_n, p_src_mat_rows_empty_n, p_src_mat_cols_load337_loc_c_i_full_n, p_src_mat_rows_c_i_full_n, p_dst_mat_rows_c_i_full_n, p_dst_mat_cols_c_i_full_n)
    begin
        if ((not(((p_dst_mat_cols_c_i_full_n = ap_const_logic_0) or (p_dst_mat_rows_c_i_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (p_src_mat_rows_c_i_full_n = ap_const_logic_0) or (p_src_mat_cols_load337_loc_c_i_full_n = ap_const_logic_0) or (p_src_mat_rows_empty_n = ap_const_logic_0) or (p_src_mat_cols_empty_n = ap_const_logic_0) or (p_dst_mat_rows_out_full_n = ap_const_logic_0) or (scalar_dst_mat_rows_empty_n = ap_const_logic_0) or (p_dst_mat_cols_out_full_n = ap_const_logic_0) or (scalar_dst_mat_cols_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    p_dst_mat_cols_c_i_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, p_dst_mat_cols_c_i_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_dst_mat_cols_c_i_blk_n <= p_dst_mat_cols_c_i_full_n;
        else 
            p_dst_mat_cols_c_i_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    p_dst_mat_cols_c_i_din <= scalar_dst_mat_cols_dout;

    p_dst_mat_cols_c_i_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, scalar_dst_mat_cols_empty_n, p_dst_mat_cols_out_full_n, scalar_dst_mat_rows_empty_n, p_dst_mat_rows_out_full_n, p_src_mat_cols_empty_n, p_src_mat_rows_empty_n, p_src_mat_cols_load337_loc_c_i_full_n, p_src_mat_rows_c_i_full_n, p_dst_mat_rows_c_i_full_n, p_dst_mat_cols_c_i_full_n)
    begin
        if ((not(((p_dst_mat_cols_c_i_full_n = ap_const_logic_0) or (p_dst_mat_rows_c_i_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (p_src_mat_rows_c_i_full_n = ap_const_logic_0) or (p_src_mat_cols_load337_loc_c_i_full_n = ap_const_logic_0) or (p_src_mat_rows_empty_n = ap_const_logic_0) or (p_src_mat_cols_empty_n = ap_const_logic_0) or (p_dst_mat_rows_out_full_n = ap_const_logic_0) or (scalar_dst_mat_rows_empty_n = ap_const_logic_0) or (p_dst_mat_cols_out_full_n = ap_const_logic_0) or (scalar_dst_mat_cols_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_dst_mat_cols_c_i_write <= ap_const_logic_1;
        else 
            p_dst_mat_cols_c_i_write <= ap_const_logic_0;
        end if; 
    end process;


    p_dst_mat_cols_out_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, p_dst_mat_cols_out_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_dst_mat_cols_out_blk_n <= p_dst_mat_cols_out_full_n;
        else 
            p_dst_mat_cols_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    p_dst_mat_cols_out_din <= scalar_dst_mat_cols_dout;

    p_dst_mat_cols_out_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, scalar_dst_mat_cols_empty_n, p_dst_mat_cols_out_full_n, scalar_dst_mat_rows_empty_n, p_dst_mat_rows_out_full_n, p_src_mat_cols_empty_n, p_src_mat_rows_empty_n, p_src_mat_cols_load337_loc_c_i_full_n, p_src_mat_rows_c_i_full_n, p_dst_mat_rows_c_i_full_n, p_dst_mat_cols_c_i_full_n)
    begin
        if ((not(((p_dst_mat_cols_c_i_full_n = ap_const_logic_0) or (p_dst_mat_rows_c_i_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (p_src_mat_rows_c_i_full_n = ap_const_logic_0) or (p_src_mat_cols_load337_loc_c_i_full_n = ap_const_logic_0) or (p_src_mat_rows_empty_n = ap_const_logic_0) or (p_src_mat_cols_empty_n = ap_const_logic_0) or (p_dst_mat_rows_out_full_n = ap_const_logic_0) or (scalar_dst_mat_rows_empty_n = ap_const_logic_0) or (p_dst_mat_cols_out_full_n = ap_const_logic_0) or (scalar_dst_mat_cols_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_dst_mat_cols_out_write <= ap_const_logic_1;
        else 
            p_dst_mat_cols_out_write <= ap_const_logic_0;
        end if; 
    end process;


    p_dst_mat_rows_c_i_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, p_dst_mat_rows_c_i_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_dst_mat_rows_c_i_blk_n <= p_dst_mat_rows_c_i_full_n;
        else 
            p_dst_mat_rows_c_i_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    p_dst_mat_rows_c_i_din <= scalar_dst_mat_rows_dout;

    p_dst_mat_rows_c_i_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, scalar_dst_mat_cols_empty_n, p_dst_mat_cols_out_full_n, scalar_dst_mat_rows_empty_n, p_dst_mat_rows_out_full_n, p_src_mat_cols_empty_n, p_src_mat_rows_empty_n, p_src_mat_cols_load337_loc_c_i_full_n, p_src_mat_rows_c_i_full_n, p_dst_mat_rows_c_i_full_n, p_dst_mat_cols_c_i_full_n)
    begin
        if ((not(((p_dst_mat_cols_c_i_full_n = ap_const_logic_0) or (p_dst_mat_rows_c_i_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (p_src_mat_rows_c_i_full_n = ap_const_logic_0) or (p_src_mat_cols_load337_loc_c_i_full_n = ap_const_logic_0) or (p_src_mat_rows_empty_n = ap_const_logic_0) or (p_src_mat_cols_empty_n = ap_const_logic_0) or (p_dst_mat_rows_out_full_n = ap_const_logic_0) or (scalar_dst_mat_rows_empty_n = ap_const_logic_0) or (p_dst_mat_cols_out_full_n = ap_const_logic_0) or (scalar_dst_mat_cols_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_dst_mat_rows_c_i_write <= ap_const_logic_1;
        else 
            p_dst_mat_rows_c_i_write <= ap_const_logic_0;
        end if; 
    end process;


    p_dst_mat_rows_out_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, p_dst_mat_rows_out_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_dst_mat_rows_out_blk_n <= p_dst_mat_rows_out_full_n;
        else 
            p_dst_mat_rows_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    p_dst_mat_rows_out_din <= scalar_dst_mat_rows_dout;

    p_dst_mat_rows_out_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, scalar_dst_mat_cols_empty_n, p_dst_mat_cols_out_full_n, scalar_dst_mat_rows_empty_n, p_dst_mat_rows_out_full_n, p_src_mat_cols_empty_n, p_src_mat_rows_empty_n, p_src_mat_cols_load337_loc_c_i_full_n, p_src_mat_rows_c_i_full_n, p_dst_mat_rows_c_i_full_n, p_dst_mat_cols_c_i_full_n)
    begin
        if ((not(((p_dst_mat_cols_c_i_full_n = ap_const_logic_0) or (p_dst_mat_rows_c_i_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (p_src_mat_rows_c_i_full_n = ap_const_logic_0) or (p_src_mat_cols_load337_loc_c_i_full_n = ap_const_logic_0) or (p_src_mat_rows_empty_n = ap_const_logic_0) or (p_src_mat_cols_empty_n = ap_const_logic_0) or (p_dst_mat_rows_out_full_n = ap_const_logic_0) or (scalar_dst_mat_rows_empty_n = ap_const_logic_0) or (p_dst_mat_cols_out_full_n = ap_const_logic_0) or (scalar_dst_mat_cols_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_dst_mat_rows_out_write <= ap_const_logic_1;
        else 
            p_dst_mat_rows_out_write <= ap_const_logic_0;
        end if; 
    end process;


    p_src_mat_cols_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, p_src_mat_cols_empty_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_src_mat_cols_blk_n <= p_src_mat_cols_empty_n;
        else 
            p_src_mat_cols_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_src_mat_cols_load337_loc_c_i_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, p_src_mat_cols_load337_loc_c_i_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_src_mat_cols_load337_loc_c_i_blk_n <= p_src_mat_cols_load337_loc_c_i_full_n;
        else 
            p_src_mat_cols_load337_loc_c_i_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    p_src_mat_cols_load337_loc_c_i_din <= p_src_mat_cols_dout;

    p_src_mat_cols_load337_loc_c_i_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, scalar_dst_mat_cols_empty_n, p_dst_mat_cols_out_full_n, scalar_dst_mat_rows_empty_n, p_dst_mat_rows_out_full_n, p_src_mat_cols_empty_n, p_src_mat_rows_empty_n, p_src_mat_cols_load337_loc_c_i_full_n, p_src_mat_rows_c_i_full_n, p_dst_mat_rows_c_i_full_n, p_dst_mat_cols_c_i_full_n)
    begin
        if ((not(((p_dst_mat_cols_c_i_full_n = ap_const_logic_0) or (p_dst_mat_rows_c_i_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (p_src_mat_rows_c_i_full_n = ap_const_logic_0) or (p_src_mat_cols_load337_loc_c_i_full_n = ap_const_logic_0) or (p_src_mat_rows_empty_n = ap_const_logic_0) or (p_src_mat_cols_empty_n = ap_const_logic_0) or (p_dst_mat_rows_out_full_n = ap_const_logic_0) or (scalar_dst_mat_rows_empty_n = ap_const_logic_0) or (p_dst_mat_cols_out_full_n = ap_const_logic_0) or (scalar_dst_mat_cols_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_src_mat_cols_load337_loc_c_i_write <= ap_const_logic_1;
        else 
            p_src_mat_cols_load337_loc_c_i_write <= ap_const_logic_0;
        end if; 
    end process;


    p_src_mat_cols_read_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, scalar_dst_mat_cols_empty_n, p_dst_mat_cols_out_full_n, scalar_dst_mat_rows_empty_n, p_dst_mat_rows_out_full_n, p_src_mat_cols_empty_n, p_src_mat_rows_empty_n, p_src_mat_cols_load337_loc_c_i_full_n, p_src_mat_rows_c_i_full_n, p_dst_mat_rows_c_i_full_n, p_dst_mat_cols_c_i_full_n)
    begin
        if ((not(((p_dst_mat_cols_c_i_full_n = ap_const_logic_0) or (p_dst_mat_rows_c_i_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (p_src_mat_rows_c_i_full_n = ap_const_logic_0) or (p_src_mat_cols_load337_loc_c_i_full_n = ap_const_logic_0) or (p_src_mat_rows_empty_n = ap_const_logic_0) or (p_src_mat_cols_empty_n = ap_const_logic_0) or (p_dst_mat_rows_out_full_n = ap_const_logic_0) or (scalar_dst_mat_rows_empty_n = ap_const_logic_0) or (p_dst_mat_cols_out_full_n = ap_const_logic_0) or (scalar_dst_mat_cols_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_src_mat_cols_read <= ap_const_logic_1;
        else 
            p_src_mat_cols_read <= ap_const_logic_0;
        end if; 
    end process;


    p_src_mat_rows_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, p_src_mat_rows_empty_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_src_mat_rows_blk_n <= p_src_mat_rows_empty_n;
        else 
            p_src_mat_rows_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_src_mat_rows_c_i_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, p_src_mat_rows_c_i_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_src_mat_rows_c_i_blk_n <= p_src_mat_rows_c_i_full_n;
        else 
            p_src_mat_rows_c_i_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    p_src_mat_rows_c_i_din <= p_src_mat_rows_dout;

    p_src_mat_rows_c_i_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, scalar_dst_mat_cols_empty_n, p_dst_mat_cols_out_full_n, scalar_dst_mat_rows_empty_n, p_dst_mat_rows_out_full_n, p_src_mat_cols_empty_n, p_src_mat_rows_empty_n, p_src_mat_cols_load337_loc_c_i_full_n, p_src_mat_rows_c_i_full_n, p_dst_mat_rows_c_i_full_n, p_dst_mat_cols_c_i_full_n)
    begin
        if ((not(((p_dst_mat_cols_c_i_full_n = ap_const_logic_0) or (p_dst_mat_rows_c_i_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (p_src_mat_rows_c_i_full_n = ap_const_logic_0) or (p_src_mat_cols_load337_loc_c_i_full_n = ap_const_logic_0) or (p_src_mat_rows_empty_n = ap_const_logic_0) or (p_src_mat_cols_empty_n = ap_const_logic_0) or (p_dst_mat_rows_out_full_n = ap_const_logic_0) or (scalar_dst_mat_rows_empty_n = ap_const_logic_0) or (p_dst_mat_cols_out_full_n = ap_const_logic_0) or (scalar_dst_mat_cols_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_src_mat_rows_c_i_write <= ap_const_logic_1;
        else 
            p_src_mat_rows_c_i_write <= ap_const_logic_0;
        end if; 
    end process;


    p_src_mat_rows_read_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, scalar_dst_mat_cols_empty_n, p_dst_mat_cols_out_full_n, scalar_dst_mat_rows_empty_n, p_dst_mat_rows_out_full_n, p_src_mat_cols_empty_n, p_src_mat_rows_empty_n, p_src_mat_cols_load337_loc_c_i_full_n, p_src_mat_rows_c_i_full_n, p_dst_mat_rows_c_i_full_n, p_dst_mat_cols_c_i_full_n)
    begin
        if ((not(((p_dst_mat_cols_c_i_full_n = ap_const_logic_0) or (p_dst_mat_rows_c_i_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (p_src_mat_rows_c_i_full_n = ap_const_logic_0) or (p_src_mat_cols_load337_loc_c_i_full_n = ap_const_logic_0) or (p_src_mat_rows_empty_n = ap_const_logic_0) or (p_src_mat_cols_empty_n = ap_const_logic_0) or (p_dst_mat_rows_out_full_n = ap_const_logic_0) or (scalar_dst_mat_rows_empty_n = ap_const_logic_0) or (p_dst_mat_cols_out_full_n = ap_const_logic_0) or (scalar_dst_mat_cols_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_src_mat_rows_read <= ap_const_logic_1;
        else 
            p_src_mat_rows_read <= ap_const_logic_0;
        end if; 
    end process;


    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_full_n = ap_const_logic_0) and (start_once_reg = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;


    scalar_dst_mat_cols_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, scalar_dst_mat_cols_empty_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            scalar_dst_mat_cols_blk_n <= scalar_dst_mat_cols_empty_n;
        else 
            scalar_dst_mat_cols_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    scalar_dst_mat_cols_read_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, scalar_dst_mat_cols_empty_n, p_dst_mat_cols_out_full_n, scalar_dst_mat_rows_empty_n, p_dst_mat_rows_out_full_n, p_src_mat_cols_empty_n, p_src_mat_rows_empty_n, p_src_mat_cols_load337_loc_c_i_full_n, p_src_mat_rows_c_i_full_n, p_dst_mat_rows_c_i_full_n, p_dst_mat_cols_c_i_full_n)
    begin
        if ((not(((p_dst_mat_cols_c_i_full_n = ap_const_logic_0) or (p_dst_mat_rows_c_i_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (p_src_mat_rows_c_i_full_n = ap_const_logic_0) or (p_src_mat_cols_load337_loc_c_i_full_n = ap_const_logic_0) or (p_src_mat_rows_empty_n = ap_const_logic_0) or (p_src_mat_cols_empty_n = ap_const_logic_0) or (p_dst_mat_rows_out_full_n = ap_const_logic_0) or (scalar_dst_mat_rows_empty_n = ap_const_logic_0) or (p_dst_mat_cols_out_full_n = ap_const_logic_0) or (scalar_dst_mat_cols_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            scalar_dst_mat_cols_read <= ap_const_logic_1;
        else 
            scalar_dst_mat_cols_read <= ap_const_logic_0;
        end if; 
    end process;


    scalar_dst_mat_rows_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, scalar_dst_mat_rows_empty_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            scalar_dst_mat_rows_blk_n <= scalar_dst_mat_rows_empty_n;
        else 
            scalar_dst_mat_rows_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    scalar_dst_mat_rows_read_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, scalar_dst_mat_cols_empty_n, p_dst_mat_cols_out_full_n, scalar_dst_mat_rows_empty_n, p_dst_mat_rows_out_full_n, p_src_mat_cols_empty_n, p_src_mat_rows_empty_n, p_src_mat_cols_load337_loc_c_i_full_n, p_src_mat_rows_c_i_full_n, p_dst_mat_rows_c_i_full_n, p_dst_mat_cols_c_i_full_n)
    begin
        if ((not(((p_dst_mat_cols_c_i_full_n = ap_const_logic_0) or (p_dst_mat_rows_c_i_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (p_src_mat_rows_c_i_full_n = ap_const_logic_0) or (p_src_mat_cols_load337_loc_c_i_full_n = ap_const_logic_0) or (p_src_mat_rows_empty_n = ap_const_logic_0) or (p_src_mat_cols_empty_n = ap_const_logic_0) or (p_dst_mat_rows_out_full_n = ap_const_logic_0) or (scalar_dst_mat_rows_empty_n = ap_const_logic_0) or (p_dst_mat_cols_out_full_n = ap_const_logic_0) or (scalar_dst_mat_cols_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            scalar_dst_mat_rows_read <= ap_const_logic_1;
        else 
            scalar_dst_mat_rows_read <= ap_const_logic_0;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

end behav;
