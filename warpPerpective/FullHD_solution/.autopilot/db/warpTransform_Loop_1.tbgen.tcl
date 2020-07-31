set moduleName warpTransform_Loop_1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {warpTransform_Loop_1}
set C_modelType { int 12 }
set C_modelArgList {
	{ p_src_mat_rows int 12 regular {fifo 0}  }
	{ p_src_mat_cols_load337_loc int 12 regular {fifo 0}  }
	{ p_src_mat_data_V int 8 regular {fifo 0 volatile }  }
	{ in_stream_V_V int 8 regular {fifo 1 volatile }  }
	{ p_src_mat_cols_load337_loc_out int 12 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_src_mat_rows", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_cols_load337_loc", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_src_mat_cols_load337_loc_out", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 12} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_src_mat_rows_dout sc_in sc_lv 12 signal 0 } 
	{ p_src_mat_rows_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_src_mat_rows_read sc_out sc_logic 1 signal 0 } 
	{ p_src_mat_cols_load337_loc_dout sc_in sc_lv 12 signal 1 } 
	{ p_src_mat_cols_load337_loc_empty_n sc_in sc_logic 1 signal 1 } 
	{ p_src_mat_cols_load337_loc_read sc_out sc_logic 1 signal 1 } 
	{ p_src_mat_data_V_dout sc_in sc_lv 8 signal 2 } 
	{ p_src_mat_data_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ p_src_mat_data_V_read sc_out sc_logic 1 signal 2 } 
	{ in_stream_V_V_din sc_out sc_lv 8 signal 3 } 
	{ in_stream_V_V_full_n sc_in sc_logic 1 signal 3 } 
	{ in_stream_V_V_write sc_out sc_logic 1 signal 3 } 
	{ p_src_mat_cols_load337_loc_out_din sc_out sc_lv 12 signal 4 } 
	{ p_src_mat_cols_load337_loc_out_full_n sc_in sc_logic 1 signal 4 } 
	{ p_src_mat_cols_load337_loc_out_write sc_out sc_logic 1 signal 4 } 
	{ ap_return sc_out sc_lv 12 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_src_mat_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "dout" }} , 
 	{ "name": "p_src_mat_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "read" }} , 
 	{ "name": "p_src_mat_cols_load337_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_src_mat_cols_load337_loc", "role": "dout" }} , 
 	{ "name": "p_src_mat_cols_load337_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols_load337_loc", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_cols_load337_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols_load337_loc", "role": "read" }} , 
 	{ "name": "p_src_mat_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_src_mat_data_V", "role": "dout" }} , 
 	{ "name": "p_src_mat_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_data_V", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_data_V", "role": "read" }} , 
 	{ "name": "in_stream_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_stream_V_V", "role": "din" }} , 
 	{ "name": "in_stream_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_V", "role": "full_n" }} , 
 	{ "name": "in_stream_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_V", "role": "write" }} , 
 	{ "name": "p_src_mat_cols_load337_loc_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_src_mat_cols_load337_loc_out", "role": "din" }} , 
 	{ "name": "p_src_mat_cols_load337_loc_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols_load337_loc_out", "role": "full_n" }} , 
 	{ "name": "p_src_mat_cols_load337_loc_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols_load337_loc_out", "role": "write" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "warpTransform_Loop_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "2073603",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols_load337_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_load337_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_src_mat_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_stream_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "in_stream_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols_load337_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_load337_loc_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.warp_stream_accelbkb_U27", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	warpTransform_Loop_1 {
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols_load337_loc {Type I LastRead 0 FirstWrite -1}
		p_src_mat_data_V {Type I LastRead 3 FirstWrite -1}
		in_stream_V_V {Type O LastRead -1 FirstWrite 3}
		p_src_mat_cols_load337_loc_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "2073603"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "2073603"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_src_mat_rows { ap_fifo {  { p_src_mat_rows_dout fifo_data 0 12 }  { p_src_mat_rows_empty_n fifo_status 0 1 }  { p_src_mat_rows_read fifo_update 1 1 } } }
	p_src_mat_cols_load337_loc { ap_fifo {  { p_src_mat_cols_load337_loc_dout fifo_data 0 12 }  { p_src_mat_cols_load337_loc_empty_n fifo_status 0 1 }  { p_src_mat_cols_load337_loc_read fifo_update 1 1 } } }
	p_src_mat_data_V { ap_fifo {  { p_src_mat_data_V_dout fifo_data 0 8 }  { p_src_mat_data_V_empty_n fifo_status 0 1 }  { p_src_mat_data_V_read fifo_update 1 1 } } }
	in_stream_V_V { ap_fifo {  { in_stream_V_V_din fifo_data 1 8 }  { in_stream_V_V_full_n fifo_status 0 1 }  { in_stream_V_V_write fifo_update 1 1 } } }
	p_src_mat_cols_load337_loc_out { ap_fifo {  { p_src_mat_cols_load337_loc_out_din fifo_data 1 12 }  { p_src_mat_cols_load337_loc_out_full_n fifo_status 0 1 }  { p_src_mat_cols_load337_loc_out_write fifo_update 1 1 } } }
}
