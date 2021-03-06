`timescale 1ns / 1ps

module fpga_4bitadder;

	// Inputs
	reg clk;
	reg reset;
	reg [143:0] sramConfig;
	reg [419:0] cbconfig;
	reg [239:0] sconfig;
	wire [4:0] t01;
	wire [4:0] h01;
	wire [4:0] h02;
	wire [4:0] r01;
	wire [4:0] r02;
	wire [4:0] b01;
	wire [4:0] b02;
	wire [4:0] t02;
	reg [4:0] A;
	reg [4:0] B;
	
	
	
	assign t01[4:1] ={{A[0]},{B[0]},{1'b0},{1'b0}};
	assign t02[3:0] = {{1'b0},{1'b0},{A[1]},{B[1]}};//outc100x1y1
	assign r01[3:0] = {{1'b0},{1'b0},{A[0]},{B[0]}}; //outc100x0y0
	assign b02[1:0] = {{A[1]},{B[1]}};//outc10outc4x1y1;
	assign b02[3] = 1'b0;
	assign r02[3:0] ={{A[3]},{B[3]},{A[2]},{B[2]}};//outc2x3y3x2y2
	assign b01[3:0] = {{1'b0},{1'b0},{A[2]},{B[2]}};//outc200x2y2
	assign h02[3:0] = {{1'b0},{1'b0},{A[3]},{B[3]}};//outc300x3y3;

	initial
	begin
	sramConfig = 144'b1001011010010110_1001011010010110_1110100011101000_1001011010010110_1001011010010110_0000000000000000_1110100011101000_1110100011101000_1110100011101000;
	cbconfig   = 420'b1100000_1001001_1001000_1000100_1000010_____0000000_0000000_1000010_1010000_1100000____0000101_0000000_0000000_0000000_0000000_____1010000_0000000_0000000_0000000_0000000_____1000010_1001000_1001000_1010000_1100000____0000000_0000000_0000000_0000000_0000000___1001000_0000000_0000000_0000000_0000000____0000011_1000100_1000010_1010000_1100000____0000011_1000100_1000010_1010000_1100000____0000000_0000101_0000011_0001001_0000101____0000000_1000100_1000010_1010000_1100000____0001001_1000100_1000010_1010000_1100000;
	sconfig    = 240'b00000_00000_00000_00000_00000_00000_00000_00001_00000_10000_01000_00010___10010_00000_00010_00000_00000_00000_00000_00000_00010_00000_00000_00000____10000_00000_00000_00000_00000_00000_00000_00000_00000_00000_00000_00000_____00000_00000_10000_00000_00000_00000_00100_00001_00000_10000_01000_00100;
	end
	// Instantiate the Unit Under Test (UUT)
	fpga uut (
		.clk(clk), 
		.reset(reset), 
		.sramConfig(sramConfig), 
		.cbconfig(cbconfig), 
		.sconfig(sconfig), 
		.t01(t01), 
		.t02(t02), 
		.h01(h01), 
		.h02(h02), 
		.r01(r01), 
		.r02(r02), 
		.b01(b01), 
		.b02(b02)
	);
	assign h01[4] = b02[2];//to show output on h01
	always
	#100 clk=~clk;
	initial begin
		clk = 0;
		reset = 1;
		#101 reset = 0;
		#5 A=4'b0111;
		#5 B=4'b0111;
	end
      
endmodule

