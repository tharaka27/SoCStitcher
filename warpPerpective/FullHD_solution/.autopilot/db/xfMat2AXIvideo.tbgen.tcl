set moduleName xfMat2AXIvideo
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
set C_modelName {xfMat2AXIvideo}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_rows int 12 regular {fifo 0}  }
	{ img_cols int 12 regular {fifo 0}  }
	{ img_data_V int 8 regular {fifo 0 volatile }  }
	{ AXI_video_strm_V_data_V int 8 regular {axi_s 1 volatile  { p_dst Data } }  }
	{ AXI_video_strm_V_keep_V int 1 regular {axi_s 1 volatile  { p_dst Keep } }  }
	{ AXI_video_strm_V_strb_V int 1 regular {axi_s 1 volatile  { p_dst Strb } }  }
	{ AXI_video_strm_V_user_V int 1 regular {axi_s 1 volatile  { p_dst User } }  }
	{ AXI_video_strm_V_last_V int 1 regular {axi_s 1 volatile  { p_dst Last } }  }
	{ AXI_video_strm_V_id_V int 1 regular {axi_s 1 volatile  { p_dst ID } }  }
	{ AXI_video_strm_V_dest_V int 1 regular {axi_s 1 volatile  { p_dst Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_rows", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "img_cols", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "img_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "AXI_video_strm_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_rows_dout sc_in sc_lv 12 signal 0 } 
	{ img_rows_empty_n sc_in sc_logic 1 signal 0 } 
	{ img_rows_read sc_out sc_logic 1 signal 0 } 
	{ img_cols_dout sc_in sc_lv 12 signal 1 } 
	{ img_cols_empty_n sc_in sc_logic 1 signal 1 } 
	{ img_cols_read sc_out sc_logic 1 signal 1 } 
	{ img_data_V_dout sc_in sc_lv 8 signal 2 } 
	{ img_data_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ img_data_V_read sc_out sc_logic 1 signal 2 } 
	{ p_dst_TDATA sc_out sc_lv 8 signal 3 } 
	{ p_dst_TVALID sc_out sc_logic 1 outvld 9 } 
	{ p_dst_TREADY sc_in sc_logic 1 outacc 3 } 
	{ p_dst_TKEEP sc_out sc_lv 1 signal 4 } 
	{ p_dst_TSTRB sc_out sc_lv 1 signal 5 } 
	{ p_dst_TUSER sc_out sc_lv 1 signal 6 } 
	{ p_dst_TLAST sc_out sc_lv 1 signal 7 } 
	{ p_dst_TID sc_out sc_lv 1 signal 8 } 
	{ p_dst_TDEST sc_out sc_lv 1 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "img_rows", "role": "dout" }} , 
 	{ "name": "img_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_rows", "role": "empty_n" }} , 
 	{ "name": "img_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_rows", "role": "read" }} , 
 	{ "name": "img_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "img_cols", "role": "dout" }} , 
 	{ "name": "img_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_cols", "role": "empty_n" }} , 
 	{ "name": "img_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_cols", "role": "read" }} , 
 	{ "name": "img_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_data_V", "role": "dout" }} , 
 	{ "name": "img_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_data_V", "role": "empty_n" }} , 
 	{ "name": "img_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_data_V", "role": "read" }} , 
 	{ "name": "p_dst_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AXI_video_strm_V_data_V", "role": "default" }} , 
 	{ "name": "p_dst_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AXI_video_strm_V_dest_V", "role": "default" }} , 
 	{ "name": "p_dst_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "AXI_video_strm_V_data_V", "role": "default" }} , 
 	{ "name": "p_dst_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_keep_V", "role": "default" }} , 
 	{ "name": "p_dst_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_strb_V", "role": "default" }} , 
 	{ "name": "p_dst_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_user_V", "role": "default" }} , 
 	{ "name": "p_dst_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_last_V", "role": "default" }} , 
 	{ "name": "p_dst_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_id_V", "role": "default" }} , 
 	{ "name": "p_dst_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "xfMat2AXIvideo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "2077921",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "img_rows", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_cols", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_dest_V", "Type" : "Axis", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	xfMat2AXIvideo {
		img_rows {Type I LastRead 0 FirstWrite -1}
		img_cols {Type I LastRead 0 FirstWrite -1}
		img_data_V {Type I LastRead 3 FirstWrite -1}
		AXI_video_strm_V_data_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_keep_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_strb_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_user_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_last_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_id_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_dest_V {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "2077921"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "2077921"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	img_rows { ap_fifo {  { img_rows_dout fifo_data 0 12 }  { img_rows_empty_n fifo_status 0 1 }  { img_rows_read fifo_update 1 1 } } }
	img_cols { ap_fifo {  { img_cols_dout fifo_data 0 12 }  { img_cols_empty_n fifo_status 0 1 }  { img_cols_read fifo_update 1 1 } } }
	img_data_V { ap_fifo {  { img_data_V_dout fifo_data 0 8 }  { img_data_V_empty_n fifo_status 0 1 }  { img_data_V_read fifo_update 1 1 } } }
	AXI_video_strm_V_data_V { axis {  { p_dst_TDATA out_data 1 8 }  { p_dst_TREADY out_acc 0 1 } } }
	AXI_video_strm_V_keep_V { axis {  { p_dst_TKEEP out_data 1 1 } } }
	AXI_video_strm_V_strb_V { axis {  { p_dst_TSTRB out_data 1 1 } } }
	AXI_video_strm_V_user_V { axis {  { p_dst_TUSER out_data 1 1 } } }
	AXI_video_strm_V_last_V { axis {  { p_dst_TLAST out_data 1 1 } } }
	AXI_video_strm_V_id_V { axis {  { p_dst_TID out_data 1 1 } } }
	AXI_video_strm_V_dest_V { axis {  { p_dst_TVALID out_vld 1 1 }  { p_dst_TDEST out_data 1 1 } } }
}
