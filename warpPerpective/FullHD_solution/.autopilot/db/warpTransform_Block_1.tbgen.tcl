set moduleName warpTransform_Block_1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {warpTransform_Block_.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ scalar_dst_mat_cols int 12 regular {fifo 0}  }
	{ p_dst_mat_cols_out int 12 regular {fifo 1}  }
	{ scalar_dst_mat_rows int 12 regular {fifo 0}  }
	{ p_dst_mat_rows_out int 12 regular {fifo 1}  }
	{ p_src_mat_cols int 12 regular {fifo 0}  }
	{ p_src_mat_rows int 12 regular {fifo 0}  }
	{ p_src_mat_cols_load337_loc_c_i int 12 regular {fifo 1}  }
	{ p_src_mat_rows_c_i int 12 regular {fifo 1}  }
	{ p_dst_mat_rows_c_i int 12 regular {fifo 1}  }
	{ p_dst_mat_cols_c_i int 12 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "scalar_dst_mat_cols", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "p_dst_mat_cols_out", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "scalar_dst_mat_rows", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "p_dst_mat_rows_out", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_src_mat_cols", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_rows", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_cols_load337_loc_c_i", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_src_mat_rows_c_i", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_dst_mat_rows_c_i", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_dst_mat_cols_c_i", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 40
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ scalar_dst_mat_cols_dout sc_in sc_lv 12 signal 0 } 
	{ scalar_dst_mat_cols_empty_n sc_in sc_logic 1 signal 0 } 
	{ scalar_dst_mat_cols_read sc_out sc_logic 1 signal 0 } 
	{ p_dst_mat_cols_out_din sc_out sc_lv 12 signal 1 } 
	{ p_dst_mat_cols_out_full_n sc_in sc_logic 1 signal 1 } 
	{ p_dst_mat_cols_out_write sc_out sc_logic 1 signal 1 } 
	{ scalar_dst_mat_rows_dout sc_in sc_lv 12 signal 2 } 
	{ scalar_dst_mat_rows_empty_n sc_in sc_logic 1 signal 2 } 
	{ scalar_dst_mat_rows_read sc_out sc_logic 1 signal 2 } 
	{ p_dst_mat_rows_out_din sc_out sc_lv 12 signal 3 } 
	{ p_dst_mat_rows_out_full_n sc_in sc_logic 1 signal 3 } 
	{ p_dst_mat_rows_out_write sc_out sc_logic 1 signal 3 } 
	{ p_src_mat_cols_dout sc_in sc_lv 12 signal 4 } 
	{ p_src_mat_cols_empty_n sc_in sc_logic 1 signal 4 } 
	{ p_src_mat_cols_read sc_out sc_logic 1 signal 4 } 
	{ p_src_mat_rows_dout sc_in sc_lv 12 signal 5 } 
	{ p_src_mat_rows_empty_n sc_in sc_logic 1 signal 5 } 
	{ p_src_mat_rows_read sc_out sc_logic 1 signal 5 } 
	{ p_src_mat_cols_load337_loc_c_i_din sc_out sc_lv 12 signal 6 } 
	{ p_src_mat_cols_load337_loc_c_i_full_n sc_in sc_logic 1 signal 6 } 
	{ p_src_mat_cols_load337_loc_c_i_write sc_out sc_logic 1 signal 6 } 
	{ p_src_mat_rows_c_i_din sc_out sc_lv 12 signal 7 } 
	{ p_src_mat_rows_c_i_full_n sc_in sc_logic 1 signal 7 } 
	{ p_src_mat_rows_c_i_write sc_out sc_logic 1 signal 7 } 
	{ p_dst_mat_rows_c_i_din sc_out sc_lv 12 signal 8 } 
	{ p_dst_mat_rows_c_i_full_n sc_in sc_logic 1 signal 8 } 
	{ p_dst_mat_rows_c_i_write sc_out sc_logic 1 signal 8 } 
	{ p_dst_mat_cols_c_i_din sc_out sc_lv 12 signal 9 } 
	{ p_dst_mat_cols_c_i_full_n sc_in sc_logic 1 signal 9 } 
	{ p_dst_mat_cols_c_i_write sc_out sc_logic 1 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "scalar_dst_mat_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "scalar_dst_mat_cols", "role": "dout" }} , 
 	{ "name": "scalar_dst_mat_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_dst_mat_cols", "role": "empty_n" }} , 
 	{ "name": "scalar_dst_mat_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_dst_mat_cols", "role": "read" }} , 
 	{ "name": "p_dst_mat_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_dst_mat_cols_out", "role": "din" }} , 
 	{ "name": "p_dst_mat_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_mat_cols_out", "role": "full_n" }} , 
 	{ "name": "p_dst_mat_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_mat_cols_out", "role": "write" }} , 
 	{ "name": "scalar_dst_mat_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "scalar_dst_mat_rows", "role": "dout" }} , 
 	{ "name": "scalar_dst_mat_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_dst_mat_rows", "role": "empty_n" }} , 
 	{ "name": "scalar_dst_mat_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_dst_mat_rows", "role": "read" }} , 
 	{ "name": "p_dst_mat_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_dst_mat_rows_out", "role": "din" }} , 
 	{ "name": "p_dst_mat_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_mat_rows_out", "role": "full_n" }} , 
 	{ "name": "p_dst_mat_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_mat_rows_out", "role": "write" }} , 
 	{ "name": "p_src_mat_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "dout" }} , 
 	{ "name": "p_src_mat_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "read" }} , 
 	{ "name": "p_src_mat_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "dout" }} , 
 	{ "name": "p_src_mat_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "read" }} , 
 	{ "name": "p_src_mat_cols_load337_loc_c_i_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_src_mat_cols_load337_loc_c_i", "role": "din" }} , 
 	{ "name": "p_src_mat_cols_load337_loc_c_i_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols_load337_loc_c_i", "role": "full_n" }} , 
 	{ "name": "p_src_mat_cols_load337_loc_c_i_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols_load337_loc_c_i", "role": "write" }} , 
 	{ "name": "p_src_mat_rows_c_i_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_src_mat_rows_c_i", "role": "din" }} , 
 	{ "name": "p_src_mat_rows_c_i_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows_c_i", "role": "full_n" }} , 
 	{ "name": "p_src_mat_rows_c_i_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows_c_i", "role": "write" }} , 
 	{ "name": "p_dst_mat_rows_c_i_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_dst_mat_rows_c_i", "role": "din" }} , 
 	{ "name": "p_dst_mat_rows_c_i_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_mat_rows_c_i", "role": "full_n" }} , 
 	{ "name": "p_dst_mat_rows_c_i_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_mat_rows_c_i", "role": "write" }} , 
 	{ "name": "p_dst_mat_cols_c_i_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_dst_mat_cols_c_i", "role": "din" }} , 
 	{ "name": "p_dst_mat_cols_c_i_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_mat_cols_c_i", "role": "full_n" }} , 
 	{ "name": "p_dst_mat_cols_c_i_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_mat_cols_c_i", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "warpTransform_Block_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "scalar_dst_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "scalar_dst_mat_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_mat_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_dst_mat_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "scalar_dst_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "scalar_dst_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_mat_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_dst_mat_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols_load337_loc_c_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_load337_loc_c_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_rows_c_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_c_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_mat_rows_c_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_dst_mat_rows_c_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_mat_cols_c_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_dst_mat_cols_c_i_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	warpTransform_Block_1 {
		scalar_dst_mat_cols {Type I LastRead 0 FirstWrite -1}
		p_dst_mat_cols_out {Type O LastRead -1 FirstWrite 0}
		scalar_dst_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_dst_mat_rows_out {Type O LastRead -1 FirstWrite 0}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols_load337_loc_c_i {Type O LastRead -1 FirstWrite 0}
		p_src_mat_rows_c_i {Type O LastRead -1 FirstWrite 0}
		p_dst_mat_rows_c_i {Type O LastRead -1 FirstWrite 0}
		p_dst_mat_cols_c_i {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	scalar_dst_mat_cols { ap_fifo {  { scalar_dst_mat_cols_dout fifo_data 0 12 }  { scalar_dst_mat_cols_empty_n fifo_status 0 1 }  { scalar_dst_mat_cols_read fifo_update 1 1 } } }
	p_dst_mat_cols_out { ap_fifo {  { p_dst_mat_cols_out_din fifo_data 1 12 }  { p_dst_mat_cols_out_full_n fifo_status 0 1 }  { p_dst_mat_cols_out_write fifo_update 1 1 } } }
	scalar_dst_mat_rows { ap_fifo {  { scalar_dst_mat_rows_dout fifo_data 0 12 }  { scalar_dst_mat_rows_empty_n fifo_status 0 1 }  { scalar_dst_mat_rows_read fifo_update 1 1 } } }
	p_dst_mat_rows_out { ap_fifo {  { p_dst_mat_rows_out_din fifo_data 1 12 }  { p_dst_mat_rows_out_full_n fifo_status 0 1 }  { p_dst_mat_rows_out_write fifo_update 1 1 } } }
	p_src_mat_cols { ap_fifo {  { p_src_mat_cols_dout fifo_data 0 12 }  { p_src_mat_cols_empty_n fifo_status 0 1 }  { p_src_mat_cols_read fifo_update 1 1 } } }
	p_src_mat_rows { ap_fifo {  { p_src_mat_rows_dout fifo_data 0 12 }  { p_src_mat_rows_empty_n fifo_status 0 1 }  { p_src_mat_rows_read fifo_update 1 1 } } }
	p_src_mat_cols_load337_loc_c_i { ap_fifo {  { p_src_mat_cols_load337_loc_c_i_din fifo_data 1 12 }  { p_src_mat_cols_load337_loc_c_i_full_n fifo_status 0 1 }  { p_src_mat_cols_load337_loc_c_i_write fifo_update 1 1 } } }
	p_src_mat_rows_c_i { ap_fifo {  { p_src_mat_rows_c_i_din fifo_data 1 12 }  { p_src_mat_rows_c_i_full_n fifo_status 0 1 }  { p_src_mat_rows_c_i_write fifo_update 1 1 } } }
	p_dst_mat_rows_c_i { ap_fifo {  { p_dst_mat_rows_c_i_din fifo_data 1 12 }  { p_dst_mat_rows_c_i_full_n fifo_status 0 1 }  { p_dst_mat_rows_c_i_write fifo_update 1 1 } } }
	p_dst_mat_cols_c_i { ap_fifo {  { p_dst_mat_cols_c_i_din fifo_data 1 12 }  { p_dst_mat_cols_c_i_full_n fifo_status 0 1 }  { p_dst_mat_cols_c_i_write fifo_update 1 1 } } }
}
