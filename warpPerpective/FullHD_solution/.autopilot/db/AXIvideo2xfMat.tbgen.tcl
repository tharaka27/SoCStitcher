set moduleName AXIvideo2xfMat
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
set C_modelName {AXIvideo2xfMat}
set C_modelType { void 0 }
set C_modelArgList {
	{ AXI_video_strm_V_data_V int 8 regular {axi_s 0 volatile  { p_src Data } }  }
	{ AXI_video_strm_V_keep_V int 1 regular {axi_s 0 volatile  { p_src Keep } }  }
	{ AXI_video_strm_V_strb_V int 1 regular {axi_s 0 volatile  { p_src Strb } }  }
	{ AXI_video_strm_V_user_V int 1 regular {axi_s 0 volatile  { p_src User } }  }
	{ AXI_video_strm_V_last_V int 1 regular {axi_s 0 volatile  { p_src Last } }  }
	{ AXI_video_strm_V_id_V int 1 regular {axi_s 0 volatile  { p_src ID } }  }
	{ AXI_video_strm_V_dest_V int 1 regular {axi_s 0 volatile  { p_src Dest } }  }
	{ img_rows int 12 regular {fifo 0}  }
	{ img_cols int 12 regular {fifo 0}  }
	{ img_data_V int 8 regular {fifo 1 volatile }  }
	{ img_rows_out int 12 regular {fifo 1}  }
	{ img_cols_out int 12 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "AXI_video_strm_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "AXI_video_strm_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "AXI_video_strm_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "AXI_video_strm_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "AXI_video_strm_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "AXI_video_strm_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "AXI_video_strm_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "img_rows", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "img_cols", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "img_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_rows_out", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_cols_out", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_src_TDATA sc_in sc_lv 8 signal 0 } 
	{ p_src_TVALID sc_in sc_logic 1 invld 6 } 
	{ p_src_TREADY sc_out sc_logic 1 inacc 6 } 
	{ p_src_TKEEP sc_in sc_lv 1 signal 1 } 
	{ p_src_TSTRB sc_in sc_lv 1 signal 2 } 
	{ p_src_TUSER sc_in sc_lv 1 signal 3 } 
	{ p_src_TLAST sc_in sc_lv 1 signal 4 } 
	{ p_src_TID sc_in sc_lv 1 signal 5 } 
	{ p_src_TDEST sc_in sc_lv 1 signal 6 } 
	{ img_rows_dout sc_in sc_lv 12 signal 7 } 
	{ img_rows_empty_n sc_in sc_logic 1 signal 7 } 
	{ img_rows_read sc_out sc_logic 1 signal 7 } 
	{ img_cols_dout sc_in sc_lv 12 signal 8 } 
	{ img_cols_empty_n sc_in sc_logic 1 signal 8 } 
	{ img_cols_read sc_out sc_logic 1 signal 8 } 
	{ img_data_V_din sc_out sc_lv 8 signal 9 } 
	{ img_data_V_full_n sc_in sc_logic 1 signal 9 } 
	{ img_data_V_write sc_out sc_logic 1 signal 9 } 
	{ img_rows_out_din sc_out sc_lv 12 signal 10 } 
	{ img_rows_out_full_n sc_in sc_logic 1 signal 10 } 
	{ img_rows_out_write sc_out sc_logic 1 signal 10 } 
	{ img_cols_out_din sc_out sc_lv 12 signal 11 } 
	{ img_cols_out_full_n sc_in sc_logic 1 signal 11 } 
	{ img_cols_out_write sc_out sc_logic 1 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_src_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AXI_video_strm_V_data_V", "role": "default" }} , 
 	{ "name": "p_src_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "AXI_video_strm_V_dest_V", "role": "default" }} , 
 	{ "name": "p_src_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "AXI_video_strm_V_dest_V", "role": "default" }} , 
 	{ "name": "p_src_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_keep_V", "role": "default" }} , 
 	{ "name": "p_src_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_strb_V", "role": "default" }} , 
 	{ "name": "p_src_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_user_V", "role": "default" }} , 
 	{ "name": "p_src_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_last_V", "role": "default" }} , 
 	{ "name": "p_src_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_id_V", "role": "default" }} , 
 	{ "name": "p_src_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_dest_V", "role": "default" }} , 
 	{ "name": "img_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "img_rows", "role": "dout" }} , 
 	{ "name": "img_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_rows", "role": "empty_n" }} , 
 	{ "name": "img_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_rows", "role": "read" }} , 
 	{ "name": "img_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "img_cols", "role": "dout" }} , 
 	{ "name": "img_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_cols", "role": "empty_n" }} , 
 	{ "name": "img_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_cols", "role": "read" }} , 
 	{ "name": "img_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_data_V", "role": "din" }} , 
 	{ "name": "img_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_data_V", "role": "full_n" }} , 
 	{ "name": "img_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_data_V", "role": "write" }} , 
 	{ "name": "img_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "img_rows_out", "role": "din" }} , 
 	{ "name": "img_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_rows_out", "role": "full_n" }} , 
 	{ "name": "img_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_rows_out", "role": "write" }} , 
 	{ "name": "img_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "img_cols_out", "role": "din" }} , 
 	{ "name": "img_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_cols_out", "role": "full_n" }} , 
 	{ "name": "img_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_cols_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "AXIvideo2xfMat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "2079003",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "AXI_video_strm_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_src_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "img_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "img_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "img_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "img_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "img_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "img_cols_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	AXIvideo2xfMat {
		AXI_video_strm_V_data_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_keep_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_strb_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_user_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_last_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_id_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_dest_V {Type I LastRead 6 FirstWrite -1}
		img_rows {Type I LastRead 0 FirstWrite -1}
		img_cols {Type I LastRead 0 FirstWrite -1}
		img_data_V {Type O LastRead -1 FirstWrite 5}
		img_rows_out {Type O LastRead -1 FirstWrite 0}
		img_cols_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "2079003"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "2079003"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	AXI_video_strm_V_data_V { axis {  { p_src_TDATA in_data 0 8 } } }
	AXI_video_strm_V_keep_V { axis {  { p_src_TKEEP in_data 0 1 } } }
	AXI_video_strm_V_strb_V { axis {  { p_src_TSTRB in_data 0 1 } } }
	AXI_video_strm_V_user_V { axis {  { p_src_TUSER in_data 0 1 } } }
	AXI_video_strm_V_last_V { axis {  { p_src_TLAST in_data 0 1 } } }
	AXI_video_strm_V_id_V { axis {  { p_src_TID in_data 0 1 } } }
	AXI_video_strm_V_dest_V { axis {  { p_src_TVALID in_vld 0 1 }  { p_src_TREADY in_acc 1 1 }  { p_src_TDEST in_data 0 1 } } }
	img_rows { ap_fifo {  { img_rows_dout fifo_data 0 12 }  { img_rows_empty_n fifo_status 0 1 }  { img_rows_read fifo_update 1 1 } } }
	img_cols { ap_fifo {  { img_cols_dout fifo_data 0 12 }  { img_cols_empty_n fifo_status 0 1 }  { img_cols_read fifo_update 1 1 } } }
	img_data_V { ap_fifo {  { img_data_V_din fifo_data 1 8 }  { img_data_V_full_n fifo_status 0 1 }  { img_data_V_write fifo_update 1 1 } } }
	img_rows_out { ap_fifo {  { img_rows_out_din fifo_data 1 12 }  { img_rows_out_full_n fifo_status 0 1 }  { img_rows_out_write fifo_update 1 1 } } }
	img_cols_out { ap_fifo {  { img_cols_out_din fifo_data 1 12 }  { img_cols_out_full_n fifo_status 0 1 }  { img_cols_out_write fifo_update 1 1 } } }
}
