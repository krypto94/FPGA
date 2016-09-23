`timescale 1ns / 1ps

module switchBox(input clk,
					  input reset,
					  input [59:0] in,//Config BitSTREAM
					  inout [4:0] inwireL,
					  inout [4:0] inwireR,
					  inout [4:0] inwireT,
					  inout [4:0] inwireB
					 );
			wire [59:0] out;
			register30bit R1(.clk(clk),
								 .reset(reset),
								 .in(in[59:30]),
								 .out(out[59:30])	);
			register30bit R2(.clk(clk),
								 .reset(reset),
								 .in(in[29:0]),
								 .out(out[29:0])	);					 
assign inwireT[0] = (out[0])? inwireL[0]:1'bz;
assign inwireL[0] = (out[1])? inwireT[0]:1'bz;	
assign inwireL[0] = (out[2])? inwireR[0]:1'bz;
assign inwireR[0] = (out[3])? inwireL[0]:1'bz;
assign inwireL[0] = (out[4])? inwireB[0]:1'bz;
assign inwireB[0] = (out[5])? inwireL[0]:1'bz;

assign inwireT[1] = (out[6])? inwireL[1]:1'bz;
assign inwireL[1] = (out[7])? inwireT[1]:1'bz;	
assign inwireL[1] = (out[8])? inwireR[1]:1'bz;
assign inwireR[1] = (out[9])? inwireL[1]:1'bz;
assign inwireL[1] = (out[10])? inwireB[1]:1'bz;
assign inwireB[1] = (out[11])? inwireL[1]:1'bz;

assign inwireT[2] = (out[12])? inwireL[2]:1'bz;
assign inwireL[2] = (out[13])? inwireT[2]:1'bz;	
assign inwireL[2] = (out[14])? inwireR[2]:1'bz;
assign inwireR[2] = (out[15])? inwireL[2]:1'bz;
assign inwireL[2] = (out[16])? inwireB[2]:1'bz;
assign inwireB[2] = (out[17])? inwireL[2]:1'bz;

assign inwireT[3] = (out[18])?  inwireL[3]:1'bz;
assign inwireL[3] = (out[19])?  inwireT[3]:1'bz;	
assign inwireL[3] = (out[20])? inwireR[3]:1'bz;
assign inwireR[3] = (out[21])? inwireL[3]:1'bz;
assign inwireL[3] = (out[22])? inwireB[3]:1'bz;
assign inwireB[3] = (out[23])? inwireL[3]:1'bz;

assign inwireT[4] = (out[24])? inwireL[4]:1'bz;
assign inwireL[4] = (out[25])? inwireT[4]:1'bz;	
assign inwireL[4] = (out[26])? inwireR[4]:1'bz;
assign inwireR[4] = (out[27])? inwireL[4]:1'bz;
assign inwireL[4] = (out[28])? inwireB[4]:1'bz;
assign inwireB[4] = (out[29])? inwireL[4]:1'bz;

assign inwireT[0] = (out[30])? inwireR[0]:1'bz;
assign inwireR[0] = (out[31])? inwireT[0]:1'bz;	
assign inwireT[0] = (out[32])? inwireB[0]:1'bz;
assign inwireB[0] = (out[33])? inwireT[0]:1'bz;

assign inwireT[1] = (out[34])? inwireR[1]:1'bz;
assign inwireR[1] = (out[35])? inwireT[1]:1'bz;	
assign inwireT[1] = (out[36])? inwireB[1]:1'bz;
assign inwireB[1] = (out[37])? inwireT[1]:1'bz;

assign inwireT[2] = (out[38])? inwireR[2]:1'bz;
assign inwireR[2] = (out[39])? inwireT[2]:1'bz;	
assign inwireT[2] = (out[40])? inwireB[2]:1'bz;
assign inwireB[2] = (out[41])? inwireT[2]:1'bz;

assign inwireT[3] = (out[42])? inwireR[3]:1'bz;
assign inwireR[3] = (out[43])? inwireT[3]:1'bz;	
assign inwireT[3] = (out[44])? inwireB[3]:1'bz;
assign inwireB[3] = (out[45])? inwireT[3]:1'bz;

assign inwireT[4] = (out[46])? inwireR[4]:1'bz;
assign inwireR[4] = (out[47])? inwireT[4]:1'bz;	
assign inwireT[4] = (out[48])? inwireB[4]:1'bz;
assign inwireB[4] = (out[49])? inwireT[4]:1'bz;

assign inwireR[0] = (out[50])? inwireB[0]:1'bz;
assign inwireB[0] = (out[51])? inwireR[0]:1'bz;	

assign inwireR[1] = (out[52])? inwireB[1]:1'bz;
assign inwireB[1] = (out[53])? inwireR[1]:1'bz;	

assign inwireR[2] = (out[54])? inwireB[2]:1'bz;
assign inwireB[2] = (out[55])? inwireR[2]:1'bz;	

assign inwireR[3] = (out[56])? inwireB[3]:1'bz;
assign inwireB[3] = (out[57])? inwireR[3]:1'bz;	

assign inwireR[4] = (out[58])? inwireB[4]:1'bz;
assign inwireB[4] = (out[59])? inwireR[4]:1'bz;	





		 								 
endmodule


