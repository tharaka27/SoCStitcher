# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name scalar_dst_mat_cols \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_scalar_dst_mat_cols \
    op interface \
    ports { scalar_dst_mat_cols_dout { I 12 vector } scalar_dst_mat_cols_empty_n { I 1 bit } scalar_dst_mat_cols_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name p_dst_mat_cols_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_dst_mat_cols_out \
    op interface \
    ports { p_dst_mat_cols_out_din { O 12 vector } p_dst_mat_cols_out_full_n { I 1 bit } p_dst_mat_cols_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name scalar_dst_mat_rows \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_scalar_dst_mat_rows \
    op interface \
    ports { scalar_dst_mat_rows_dout { I 12 vector } scalar_dst_mat_rows_empty_n { I 1 bit } scalar_dst_mat_rows_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name p_dst_mat_rows_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_dst_mat_rows_out \
    op interface \
    ports { p_dst_mat_rows_out_din { O 12 vector } p_dst_mat_rows_out_full_n { I 1 bit } p_dst_mat_rows_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name p_src_mat_cols \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_src_mat_cols \
    op interface \
    ports { p_src_mat_cols_dout { I 12 vector } p_src_mat_cols_empty_n { I 1 bit } p_src_mat_cols_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name p_src_mat_rows \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_src_mat_rows \
    op interface \
    ports { p_src_mat_rows_dout { I 12 vector } p_src_mat_rows_empty_n { I 1 bit } p_src_mat_rows_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name p_src_mat_cols_load337_loc_c_i \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_src_mat_cols_load337_loc_c_i \
    op interface \
    ports { p_src_mat_cols_load337_loc_c_i_din { O 12 vector } p_src_mat_cols_load337_loc_c_i_full_n { I 1 bit } p_src_mat_cols_load337_loc_c_i_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name p_src_mat_rows_c_i \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_src_mat_rows_c_i \
    op interface \
    ports { p_src_mat_rows_c_i_din { O 12 vector } p_src_mat_rows_c_i_full_n { I 1 bit } p_src_mat_rows_c_i_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name p_dst_mat_rows_c_i \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_dst_mat_rows_c_i \
    op interface \
    ports { p_dst_mat_rows_c_i_din { O 12 vector } p_dst_mat_rows_c_i_full_n { I 1 bit } p_dst_mat_rows_c_i_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name p_dst_mat_cols_c_i \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_dst_mat_cols_c_i \
    op interface \
    ports { p_dst_mat_cols_c_i_din { O 12 vector } p_dst_mat_cols_c_i_full_n { I 1 bit } p_dst_mat_cols_c_i_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


