// ==============================================================
// File generated on Fri Jul 31 10:42:38 +0530 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __warp_stream_accelbVr__HH__
#define __warp_stream_accelbVr__HH__
#include "ACMP_sitofp.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int dout_WIDTH>
SC_MODULE(warp_stream_accelbVr) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_sitofp<ID, 6, din0_WIDTH, dout_WIDTH> ACMP_sitofp_U;

    SC_CTOR(warp_stream_accelbVr):  ACMP_sitofp_U ("ACMP_sitofp_U") {
        ACMP_sitofp_U.clk(clk);
        ACMP_sitofp_U.reset(reset);
        ACMP_sitofp_U.ce(ce);
        ACMP_sitofp_U.din0(din0);
        ACMP_sitofp_U.dout(dout);

    }

};

#endif //
