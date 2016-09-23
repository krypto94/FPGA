`timescale 1ns / 1ps

module IOBlock(input clk,
					input reset,
					input configIO,
					input [4:0] in,
					output reg [4:0] outIO );
	 wire out;
	 dff in0(.clk(clk),
					 .reset(reset),
					 .d(configIO),
					 .q(out));
	always@(clk or reset or configIO or in)
	begin
		case(out)
			1'b0 : outIO = 5'bzzzzz; 
			1'b1 : outIO = in;
		endcase	
	end	

endmodule
