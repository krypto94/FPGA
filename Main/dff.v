`timescale 1ns / 1ps
module dff( input clk,
				  input reset,
				  input d, 
				  output reg q);
	always @ (negedge clk) // Negative Edge Triggered
	begin
		if(reset==1)
			q=0;
		else
			q=d;
	end
endmodule

