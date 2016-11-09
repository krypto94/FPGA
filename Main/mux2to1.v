`timescale 1ns / 1ps

module mux2to1(input [1:0] in,
					input sel,
					output reg out);
				always@(in or sel)
				begin
					case(sel)
						1'b0 : out = in[0];
						1'b1 : out = in[1];
					endcase
				end	


endmodule
