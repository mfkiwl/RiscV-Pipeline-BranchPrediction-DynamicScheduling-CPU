// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed Jul 22 02:43:54 2020
// Host        : RY8KKAV9KZ34APT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/RiscV-Pipeline-BranchPrediction-DynamicScheduling-CPU/cpu/cpu.srcs/sources_1/ip/four_body_bram_0/four_body_bram_0_stub.v
// Design      : four_body_bram_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flvd1517-1L-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2018.1" *)
module four_body_bram_0(clka, ena, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[9:0],dina[7:0],douta[7:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [9:0]addra;
  input [7:0]dina;
  output [7:0]douta;
endmodule
