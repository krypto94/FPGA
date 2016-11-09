`timescale 1ns / 1ps

module logicBlock(input [3:0] lutIn,
						input [15:0] sramConfig,
						input clk,
						input reset,
						input sel,
						output reg Lout);
			wire [15:0] out;
			wire a;	
			sram S(.clk(clk),
					 .reset(reset),
					 .in(sramConfig),
					 .out(out));
			wire [1:0] mux16to1OutDffOut;		 
			mux16to1 m1(.in(out),
							.sel(lutIn),
							.out(mux16to1OutDffOut[0])	);	
							
			dff d1(.clk(clk),
					 .reset(reset),
					 .d(mux16to1OutDffOut[0]),
					 .q(mux16to1OutDffOut[1]));		 
			mux2to1 m2(.in(mux16to1OutDffOut),
						  .sel(sel),
						  .out(a));	
						  
			always@(clk or reset or sramConfig or lutIn or sel)			  
			Lout = a;	 


endmodule
