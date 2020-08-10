// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _warp_stream_accel_HH_
#define _warp_stream_accel_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Block_proc.h"
#include "AXIvideo2xfMat.h"
#include "warpTransform.h"
#include "xfMat2AXIvideo.h"
#include "fifo_w12_d2_A_x.h"
#include "fifo_w12_d3_A.h"
#include "fifo_w8_d1_A.h"
#include "start_for_xfMat2Ab3s.h"

namespace ap_rtl {

struct warp_stream_accel : public sc_module {
    // Port declarations 34
    sc_in< sc_lv<8> > p_src_TDATA;
    sc_in< sc_lv<1> > p_src_TKEEP;
    sc_in< sc_lv<1> > p_src_TSTRB;
    sc_in< sc_lv<1> > p_src_TUSER;
    sc_in< sc_lv<1> > p_src_TLAST;
    sc_in< sc_lv<1> > p_src_TID;
    sc_in< sc_lv<1> > p_src_TDEST;
    sc_out< sc_lv<8> > p_dst_TDATA;
    sc_out< sc_lv<1> > p_dst_TKEEP;
    sc_out< sc_lv<1> > p_dst_TSTRB;
    sc_out< sc_lv<1> > p_dst_TUSER;
    sc_out< sc_lv<1> > p_dst_TLAST;
    sc_out< sc_lv<1> > p_dst_TID;
    sc_out< sc_lv<1> > p_dst_TDEST;
    sc_out< sc_lv<4> > R_address0;
    sc_out< sc_logic > R_ce0;
    sc_out< sc_lv<32> > R_d0;
    sc_in< sc_lv<32> > R_q0;
    sc_out< sc_logic > R_we0;
    sc_out< sc_lv<4> > R_address1;
    sc_out< sc_logic > R_ce1;
    sc_out< sc_lv<32> > R_d1;
    sc_in< sc_lv<32> > R_q1;
    sc_out< sc_logic > R_we1;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > p_src_TVALID;
    sc_out< sc_logic > p_src_TREADY;
    sc_out< sc_logic > p_dst_TVALID;
    sc_in< sc_logic > p_dst_TREADY;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > ap_idle;
    sc_signal< sc_lv<32> > ap_var_for_const0;
    sc_signal< sc_logic > ap_var_for_const1;


    // Module declarations
    warp_stream_accel(sc_module_name name);
    SC_HAS_PROCESS(warp_stream_accel);

    ~warp_stream_accel();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    Block_proc* Block_proc_U0;
    AXIvideo2xfMat* AXIvideo2xfMat_U0;
    warpTransform* warpTransform_U0;
    xfMat2AXIvideo* xfMat2AXIvideo_U0;
    fifo_w12_d2_A_x* imgInput1_rows_c_U;
    fifo_w12_d2_A_x* imgInput1_cols_c_U;
    fifo_w12_d3_A* imgOutput1_rows_c_U;
    fifo_w12_d3_A* imgOutput1_cols_c_U;
    fifo_w8_d1_A* imgInput1_data_V_U;
    fifo_w12_d2_A_x* imgInput1_rows_c4_U;
    fifo_w12_d2_A_x* imgInput1_cols_c5_U;
    fifo_w8_d1_A* imgOutput1_data_V_U;
    fifo_w12_d2_A_x* imgOutput1_rows_c6_U;
    fifo_w12_d2_A_x* imgOutput1_cols_c7_U;
    start_for_xfMat2Ab3s* start_for_xfMat2Ab3s_U;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > Block_proc_U0_ap_start;
    sc_signal< sc_logic > Block_proc_U0_ap_done;
    sc_signal< sc_logic > Block_proc_U0_ap_continue;
    sc_signal< sc_logic > Block_proc_U0_ap_idle;
    sc_signal< sc_logic > Block_proc_U0_ap_ready;
    sc_signal< sc_lv<12> > Block_proc_U0_imgInput1_rows_out_din;
    sc_signal< sc_logic > Block_proc_U0_imgInput1_rows_out_write;
    sc_signal< sc_lv<12> > Block_proc_U0_imgInput1_cols_out_din;
    sc_signal< sc_logic > Block_proc_U0_imgInput1_cols_out_write;
    sc_signal< sc_lv<12> > Block_proc_U0_imgOutput1_rows_out_din;
    sc_signal< sc_logic > Block_proc_U0_imgOutput1_rows_out_write;
    sc_signal< sc_lv<12> > Block_proc_U0_imgOutput1_cols_out_din;
    sc_signal< sc_logic > Block_proc_U0_imgOutput1_cols_out_write;
    sc_signal< sc_logic > AXIvideo2xfMat_U0_ap_start;
    sc_signal< sc_logic > AXIvideo2xfMat_U0_ap_done;
    sc_signal< sc_logic > AXIvideo2xfMat_U0_ap_continue;
    sc_signal< sc_logic > AXIvideo2xfMat_U0_ap_idle;
    sc_signal< sc_logic > AXIvideo2xfMat_U0_ap_ready;
    sc_signal< sc_logic > AXIvideo2xfMat_U0_p_src_TREADY;
    sc_signal< sc_logic > AXIvideo2xfMat_U0_img_rows_read;
    sc_signal< sc_logic > AXIvideo2xfMat_U0_img_cols_read;
    sc_signal< sc_lv<8> > AXIvideo2xfMat_U0_img_data_V_din;
    sc_signal< sc_logic > AXIvideo2xfMat_U0_img_data_V_write;
    sc_signal< sc_lv<12> > AXIvideo2xfMat_U0_img_rows_out_din;
    sc_signal< sc_logic > AXIvideo2xfMat_U0_img_rows_out_write;
    sc_signal< sc_lv<12> > AXIvideo2xfMat_U0_img_cols_out_din;
    sc_signal< sc_logic > AXIvideo2xfMat_U0_img_cols_out_write;
    sc_signal< sc_logic > warpTransform_U0_ap_start;
    sc_signal< sc_logic > warpTransform_U0_start_out;
    sc_signal< sc_logic > warpTransform_U0_start_write;
    sc_signal< sc_logic > warpTransform_U0_p_src_mat_rows_read;
    sc_signal< sc_logic > warpTransform_U0_p_src_mat_cols_read;
    sc_signal< sc_logic > warpTransform_U0_p_src_mat_data_V_read;
    sc_signal< sc_logic > warpTransform_U0_p_dst_mat_rows_read;
    sc_signal< sc_logic > warpTransform_U0_p_dst_mat_cols_read;
    sc_signal< sc_lv<8> > warpTransform_U0_p_dst_mat_data_V_din;
    sc_signal< sc_logic > warpTransform_U0_p_dst_mat_data_V_write;
    sc_signal< sc_lv<4> > warpTransform_U0_P_matrix_address0;
    sc_signal< sc_logic > warpTransform_U0_P_matrix_ce0;
    sc_signal< sc_lv<32> > warpTransform_U0_P_matrix_d0;
    sc_signal< sc_logic > warpTransform_U0_P_matrix_we0;
    sc_signal< sc_lv<4> > warpTransform_U0_P_matrix_address1;
    sc_signal< sc_logic > warpTransform_U0_P_matrix_ce1;
    sc_signal< sc_lv<32> > warpTransform_U0_P_matrix_d1;
    sc_signal< sc_logic > warpTransform_U0_P_matrix_we1;
    sc_signal< sc_lv<12> > warpTransform_U0_p_dst_mat_rows_out_din;
    sc_signal< sc_logic > warpTransform_U0_p_dst_mat_rows_out_write;
    sc_signal< sc_lv<12> > warpTransform_U0_p_dst_mat_cols_out_din;
    sc_signal< sc_logic > warpTransform_U0_p_dst_mat_cols_out_write;
    sc_signal< sc_logic > warpTransform_U0_ap_done;
    sc_signal< sc_logic > warpTransform_U0_ap_ready;
    sc_signal< sc_logic > warpTransform_U0_ap_idle;
    sc_signal< sc_logic > warpTransform_U0_ap_continue;
    sc_signal< sc_logic > xfMat2AXIvideo_U0_ap_start;
    sc_signal< sc_logic > xfMat2AXIvideo_U0_ap_done;
    sc_signal< sc_logic > xfMat2AXIvideo_U0_ap_continue;
    sc_signal< sc_logic > xfMat2AXIvideo_U0_ap_idle;
    sc_signal< sc_logic > xfMat2AXIvideo_U0_ap_ready;
    sc_signal< sc_logic > xfMat2AXIvideo_U0_img_rows_read;
    sc_signal< sc_logic > xfMat2AXIvideo_U0_img_cols_read;
    sc_signal< sc_logic > xfMat2AXIvideo_U0_img_data_V_read;
    sc_signal< sc_lv<8> > xfMat2AXIvideo_U0_p_dst_TDATA;
    sc_signal< sc_logic > xfMat2AXIvideo_U0_p_dst_TVALID;
    sc_signal< sc_lv<1> > xfMat2AXIvideo_U0_p_dst_TKEEP;
    sc_signal< sc_lv<1> > xfMat2AXIvideo_U0_p_dst_TSTRB;
    sc_signal< sc_lv<1> > xfMat2AXIvideo_U0_p_dst_TUSER;
    sc_signal< sc_lv<1> > xfMat2AXIvideo_U0_p_dst_TLAST;
    sc_signal< sc_lv<1> > xfMat2AXIvideo_U0_p_dst_TID;
    sc_signal< sc_lv<1> > xfMat2AXIvideo_U0_p_dst_TDEST;
    sc_signal< sc_logic > ap_sync_continue;
    sc_signal< sc_logic > imgInput1_rows_c_full_n;
    sc_signal< sc_lv<12> > imgInput1_rows_c_dout;
    sc_signal< sc_logic > imgInput1_rows_c_empty_n;
    sc_signal< sc_logic > imgInput1_cols_c_full_n;
    sc_signal< sc_lv<12> > imgInput1_cols_c_dout;
    sc_signal< sc_logic > imgInput1_cols_c_empty_n;
    sc_signal< sc_logic > imgOutput1_rows_c_full_n;
    sc_signal< sc_lv<12> > imgOutput1_rows_c_dout;
    sc_signal< sc_logic > imgOutput1_rows_c_empty_n;
    sc_signal< sc_logic > imgOutput1_cols_c_full_n;
    sc_signal< sc_lv<12> > imgOutput1_cols_c_dout;
    sc_signal< sc_logic > imgOutput1_cols_c_empty_n;
    sc_signal< sc_logic > imgInput1_data_V_full_n;
    sc_signal< sc_lv<8> > imgInput1_data_V_dout;
    sc_signal< sc_logic > imgInput1_data_V_empty_n;
    sc_signal< sc_logic > imgInput1_rows_c4_full_n;
    sc_signal< sc_lv<12> > imgInput1_rows_c4_dout;
    sc_signal< sc_logic > imgInput1_rows_c4_empty_n;
    sc_signal< sc_logic > imgInput1_cols_c5_full_n;
    sc_signal< sc_lv<12> > imgInput1_cols_c5_dout;
    sc_signal< sc_logic > imgInput1_cols_c5_empty_n;
    sc_signal< sc_logic > imgOutput1_data_V_full_n;
    sc_signal< sc_lv<8> > imgOutput1_data_V_dout;
    sc_signal< sc_logic > imgOutput1_data_V_empty_n;
    sc_signal< sc_logic > imgOutput1_rows_c6_full_n;
    sc_signal< sc_lv<12> > imgOutput1_rows_c6_dout;
    sc_signal< sc_logic > imgOutput1_rows_c6_empty_n;
    sc_signal< sc_logic > imgOutput1_cols_c7_full_n;
    sc_signal< sc_lv<12> > imgOutput1_cols_c7_dout;
    sc_signal< sc_logic > imgOutput1_cols_c7_empty_n;
    sc_signal< sc_logic > ap_sync_done;
    sc_signal< sc_logic > ap_sync_ready;
    sc_signal< sc_logic > ap_sync_reg_Block_proc_U0_ap_ready;
    sc_signal< sc_logic > ap_sync_Block_proc_U0_ap_ready;
    sc_signal< sc_lv<2> > Block_proc_U0_ap_ready_count;
    sc_signal< sc_logic > ap_sync_reg_AXIvideo2xfMat_U0_ap_ready;
    sc_signal< sc_logic > ap_sync_AXIvideo2xfMat_U0_ap_ready;
    sc_signal< sc_lv<2> > AXIvideo2xfMat_U0_ap_ready_count;
    sc_signal< sc_logic > ap_sync_reg_warpTransform_U0_ap_ready;
    sc_signal< sc_logic > ap_sync_warpTransform_U0_ap_ready;
    sc_signal< sc_lv<2> > warpTransform_U0_ap_ready_count;
    sc_signal< sc_logic > Block_proc_U0_start_full_n;
    sc_signal< sc_logic > Block_proc_U0_start_write;
    sc_signal< sc_logic > AXIvideo2xfMat_U0_start_full_n;
    sc_signal< sc_logic > AXIvideo2xfMat_U0_start_write;
    sc_signal< sc_lv<1> > start_for_xfMat2AXIvideo_U0_din;
    sc_signal< sc_logic > start_for_xfMat2AXIvideo_U0_full_n;
    sc_signal< sc_lv<1> > start_for_xfMat2AXIvideo_U0_dout;
    sc_signal< sc_logic > start_for_xfMat2AXIvideo_U0_empty_n;
    sc_signal< sc_logic > xfMat2AXIvideo_U0_start_full_n;
    sc_signal< sc_logic > xfMat2AXIvideo_U0_start_write;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_logic ap_const_logic_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_clk_no_reset_();
    void thread_AXIvideo2xfMat_U0_ap_continue();
    void thread_AXIvideo2xfMat_U0_ap_start();
    void thread_AXIvideo2xfMat_U0_start_full_n();
    void thread_AXIvideo2xfMat_U0_start_write();
    void thread_Block_proc_U0_ap_continue();
    void thread_Block_proc_U0_ap_start();
    void thread_Block_proc_U0_start_full_n();
    void thread_Block_proc_U0_start_write();
    void thread_R_address0();
    void thread_R_address1();
    void thread_R_ce0();
    void thread_R_ce1();
    void thread_R_d0();
    void thread_R_d1();
    void thread_R_we0();
    void thread_R_we1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_ap_sync_AXIvideo2xfMat_U0_ap_ready();
    void thread_ap_sync_Block_proc_U0_ap_ready();
    void thread_ap_sync_continue();
    void thread_ap_sync_done();
    void thread_ap_sync_ready();
    void thread_ap_sync_warpTransform_U0_ap_ready();
    void thread_p_dst_TDATA();
    void thread_p_dst_TDEST();
    void thread_p_dst_TID();
    void thread_p_dst_TKEEP();
    void thread_p_dst_TLAST();
    void thread_p_dst_TSTRB();
    void thread_p_dst_TUSER();
    void thread_p_dst_TVALID();
    void thread_p_src_TREADY();
    void thread_start_for_xfMat2AXIvideo_U0_din();
    void thread_warpTransform_U0_ap_continue();
    void thread_warpTransform_U0_ap_start();
    void thread_xfMat2AXIvideo_U0_ap_continue();
    void thread_xfMat2AXIvideo_U0_ap_start();
    void thread_xfMat2AXIvideo_U0_start_full_n();
    void thread_xfMat2AXIvideo_U0_start_write();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif