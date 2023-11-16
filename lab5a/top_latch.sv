`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module top_latch (output logic qa, output logic qb, output logic q_lvl,
	output logic q_latch, output logic q_ff,
	input logic s, input logic r, input logic d, input logic ck);

	// add init code here
	sr_latch u_sr(.s,.r,.qa,.qb);
	lvl_sen_sr_latch u_lvl_sen(.r,.c(ck),.s,.q(q_lvl));
	transparent_d_latch u_tra(.d,.c(ck),.q(q_latch));
	d_flip_flop u_diff(.clk(ck),.d,.q(q_ff));
endmodule
