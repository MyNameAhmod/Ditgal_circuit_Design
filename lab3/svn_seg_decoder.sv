`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module svn_seg_decoder(
	output logic [6:0] seg_out,
	input logic [3:0] bcd_in,
	input logic display_on
	);

	// add the design code here
	always_comb begin 
		if (display_on ==0) begin
			seg_out = 7'b1111111;
		end else begin
			case(bcd_in)
				4'b0000: seg_out = 7'b1000000;
				4'b0001: seg_out = 7'b1111001;
				4'b0010: seg_out = 7'b0100100;
				4'b0011: seg_out = 7'b0110000;
				4'b0100: seg_out = 7'b0011001;
				4'b0101: seg_out = 7'b0010010;
				4'b0110: seg_out = 7'b0000010;
				4'b0111: seg_out = 7'b1111000;
				4'b1000: seg_out = 7'b0000000;
				4'b1001: seg_out = 7'b0010000;
				4'b1010: seg_out = 7'b0100000;
				4'b1011: seg_out = 7'b0000011;
				4'b1100: seg_out = 7'b1000110;
				4'b1101: seg_out = 7'b0100001;
				4'b1110: seg_out = 7'b0000110;
				4'b1111: seg_out = 7'b0001110;

			endcase	
		end
	end

endmodule 
