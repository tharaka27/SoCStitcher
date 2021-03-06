// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module warpTransform_Loop_4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        p_dst_mat_rows_dout,
        p_dst_mat_rows_empty_n,
        p_dst_mat_rows_read,
        p_dst_mat_cols_dout,
        p_dst_mat_cols_empty_n,
        p_dst_mat_cols_read,
        out_stream_V_V_dout,
        out_stream_V_V_empty_n,
        out_stream_V_V_read,
        p_dst_mat_data_V_din,
        p_dst_mat_data_V_full_n,
        p_dst_mat_data_V_write
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state5 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [11:0] p_dst_mat_rows_dout;
input   p_dst_mat_rows_empty_n;
output   p_dst_mat_rows_read;
input  [11:0] p_dst_mat_cols_dout;
input   p_dst_mat_cols_empty_n;
output   p_dst_mat_cols_read;
input  [7:0] out_stream_V_V_dout;
input   out_stream_V_V_empty_n;
output   out_stream_V_V_read;
output  [7:0] p_dst_mat_data_V_din;
input   p_dst_mat_data_V_full_n;
output   p_dst_mat_data_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg p_dst_mat_rows_read;
reg p_dst_mat_cols_read;
reg out_stream_V_V_read;
reg p_dst_mat_data_V_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    p_dst_mat_rows_blk_n;
reg    p_dst_mat_cols_blk_n;
reg    out_stream_V_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] exitcond_flatten_reg_171;
reg    p_dst_mat_data_V_blk_n;
reg   [23:0] indvar_flatten_reg_122;
reg   [11:0] p_dst_mat_rows_read_reg_156;
reg    ap_block_state1;
reg   [11:0] p_dst_mat_cols_read_reg_161;
wire   [23:0] bound_fu_150_p2;
reg   [23:0] bound_reg_166;
wire    ap_CS_fsm_state2;
wire   [0:0] exitcond_flatten_fu_139_p2;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [23:0] indvar_flatten_next_fu_144_p2;
reg    ap_enable_reg_pp0_iter0;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_block_pp0_stage0_01001;
wire   [11:0] bound_fu_150_p0;
wire   [11:0] bound_fu_150_p1;
wire    ap_CS_fsm_state5;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [23:0] bound_fu_150_p00;
wire   [23:0] bound_fu_150_p10;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

warp_stream_accelbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 12 ),
    .din1_WIDTH( 12 ),
    .dout_WIDTH( 24 ))
warp_stream_accelbkb_U94(
    .din0(bound_fu_150_p0),
    .din1(bound_fu_150_p1),
    .dout(bound_fu_150_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state5)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state2)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((1'b1 == ap_CS_fsm_state2)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_fu_139_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        indvar_flatten_reg_122 <= indvar_flatten_next_fu_144_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        indvar_flatten_reg_122 <= 24'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        bound_reg_166 <= bound_fu_150_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        exitcond_flatten_reg_171 <= exitcond_flatten_fu_139_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (p_dst_mat_cols_empty_n == 1'b0) | (p_dst_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_dst_mat_cols_read_reg_161 <= p_dst_mat_cols_dout;
        p_dst_mat_rows_read_reg_156 <= p_dst_mat_rows_dout;
    end
end

always @ (*) begin
    if ((exitcond_flatten_fu_139_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_171 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_stream_V_V_blk_n = out_stream_V_V_empty_n;
    end else begin
        out_stream_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_reg_171 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_stream_V_V_read = 1'b1;
    end else begin
        out_stream_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_dst_mat_cols_blk_n = p_dst_mat_cols_empty_n;
    end else begin
        p_dst_mat_cols_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (p_dst_mat_cols_empty_n == 1'b0) | (p_dst_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_dst_mat_cols_read = 1'b1;
    end else begin
        p_dst_mat_cols_read = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_171 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_dst_mat_data_V_blk_n = p_dst_mat_data_V_full_n;
    end else begin
        p_dst_mat_data_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_reg_171 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_dst_mat_data_V_write = 1'b1;
    end else begin
        p_dst_mat_data_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_dst_mat_rows_blk_n = p_dst_mat_rows_empty_n;
    end else begin
        p_dst_mat_rows_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (p_dst_mat_cols_empty_n == 1'b0) | (p_dst_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_dst_mat_rows_read = 1'b1;
    end else begin
        p_dst_mat_rows_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (p_dst_mat_cols_empty_n == 1'b0) | (p_dst_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((exitcond_flatten_fu_139_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((exitcond_flatten_fu_139_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((exitcond_flatten_reg_171 == 1'd0) & (p_dst_mat_data_V_full_n == 1'b0)) | ((exitcond_flatten_reg_171 == 1'd0) & (out_stream_V_V_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((exitcond_flatten_reg_171 == 1'd0) & (p_dst_mat_data_V_full_n == 1'b0)) | ((exitcond_flatten_reg_171 == 1'd0) & (out_stream_V_V_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((exitcond_flatten_reg_171 == 1'd0) & (p_dst_mat_data_V_full_n == 1'b0)) | ((exitcond_flatten_reg_171 == 1'd0) & (out_stream_V_V_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (p_dst_mat_cols_empty_n == 1'b0) | (p_dst_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = (((exitcond_flatten_reg_171 == 1'd0) & (p_dst_mat_data_V_full_n == 1'b0)) | ((exitcond_flatten_reg_171 == 1'd0) & (out_stream_V_V_empty_n == 1'b0)));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign bound_fu_150_p0 = bound_fu_150_p00;

assign bound_fu_150_p00 = p_dst_mat_cols_read_reg_161;

assign bound_fu_150_p1 = bound_fu_150_p10;

assign bound_fu_150_p10 = p_dst_mat_rows_read_reg_156;

assign exitcond_flatten_fu_139_p2 = ((indvar_flatten_reg_122 == bound_reg_166) ? 1'b1 : 1'b0);

assign indvar_flatten_next_fu_144_p2 = (indvar_flatten_reg_122 + 24'd1);

assign p_dst_mat_data_V_din = out_stream_V_V_dout;

endmodule //warpTransform_Loop_4
