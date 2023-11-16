`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module lvl_sen_sr_latch (output logic q, input logic s, input logic r,
	input logic c);

	logic s1, r1;
	// add output from and gates
	assign s1 = ( s & c);
	assign r1 = (r & c);
	// add init code here
	sr_latch u_sr (.s(s1), .r(r1), .qb(q),.qa());
endmodulee
