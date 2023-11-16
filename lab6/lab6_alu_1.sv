//
// lab6 : version 06/12/2020
// 
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module lab6_alu_1 (
	output logic c_out,
	output logic [6:0] cathode,
	input logic [11:0] sw
	);
	wire [3:0] result; 
	alu_1 u_alu(.c_in(sw[8]),.sel(sw[11:9]),.a(sw[3:0]),.b(sw[7:4]),.c_out(c_out),.f(result));
	svn_seg_decoder u_svn(.bcd_in(result), .display_on(1'b1),.seg_out(cathode));
	// enter your code here

endmodule
