`timescale 1ns / 1ps

module register30bit(input clk,
							input reset,
							input [29:0] in,
							output  [29:0] out		
    );
			dff in0(.clk(clk),//inwireL[0] - inwireT[0] gate
					 .reset(reset),
					 .d(in[0]),
					 .q(out[0]));
			dff in1(.clk(clk),//inwireL[0] - inwireR[0] gate
					 .reset(reset),
					 .d(in[1]),
					 .q(out[1]));
         dff in2(.clk(clk),//inwireL[0] - inwireB[0] gate
					 .reset(reset),
					 .d(in[2]),
					 .q(out[2]));
			dff in3(.clk(clk),//inwireB[0] - inwireT[0] gate
					 .reset(reset),
					 .d(in[3]),
					 .q(out[3]));
			dff in4(.clk(clk),//inwireT[0] - inwireR[0] gate
					 .reset(reset),
					 .d(in[4]),
					 .q(out[4]));
			dff in5(.clk(clk),//inwireR[0] - inwireB[1] gate
					 .reset(reset),
					 .d(in[5]),
					 .q(out[5]));
			dff in6(.clk(clk),
					 .reset(reset),
					 .d(in[6]),
					 .q(out[6]));
			dff in7(.clk(clk),
					 .reset(reset),
					 .d(in[7]),
					 .q(out[7]));
			dff in8(.clk(clk),
					 .reset(reset),
					 .d(in[8]),
					 .q(out[8]));
			dff in9(.clk(clk),
					 .reset(reset),
					 .d(in[9]),
					 .q(out[9]));
			dff in10(.clk(clk),
					 .reset(reset),
					 .d(in[10]),
					 .q(out[10]));
			dff in11(.clk(clk),
					 .reset(reset),
					 .d(in[11]),
					 .q(out[11]));
			dff in12(.clk(clk),
					 .reset(reset),
					 .d(in[12]),
					 .q(out[12]));			
			dff in13(.clk(clk),
					 .reset(reset),
					 .d(in[13]),
					 .q(out[13]));
			dff in14(.clk(clk),
					 .reset(reset),
					 .d(in[14]),
					 .q(out[14]));
			dff in15(.clk(clk),
					 .reset(reset),
					 .d(in[15]),
					 .q(out[15]));
			dff in16(.clk(clk),
					 .reset(reset),
					 .d(in[16]),
					 .q(out[16]));	
			dff in17(.clk(clk),
					 .reset(reset),
					 .d(in[17]),
					 .q(out[17]));
			dff in18(.clk(clk),
					 .reset(reset),
					 .d(in[18]),
					 .q(out[18]));
			dff in19(.clk(clk),
					 .reset(reset),
					 .d(in[19]),
					 .q(out[19]));
			dff in20(.clk(clk),
					 .reset(reset),
					 .d(in[20]),
					 .q(out[20]));
			dff in21(.clk(clk),
					 .reset(reset),
					 .d(in[21]),
					 .q(out[21]));
			dff in22(.clk(clk),
					 .reset(reset),
					 .d(in[22]),
					 .q(out[22]));
			dff in23(.clk(clk),
					 .reset(reset),
					 .d(in [23]),
					 .q(out[23]));
			dff in24(.clk(clk),
					 .reset(reset),
					 .d(in[24]),
					 .q(out[24]));
			dff in25(.clk(clk),
					 .reset(reset),
					 .d(in[25]),
					 .q(out[25]));
			dff in26(.clk(clk),
					 .reset(reset),
					 .d(in[26]),
					 .q(out[26]));
			dff in27(.clk(clk),
					 .reset(reset),
					 .d(in[27]),
					 .q(out[27]));
			dff in28(.clk(clk),
					 .reset(reset),
					 .d(in[28]),
					 .q(out[28]));	
			dff in29(.clk(clk),
					 .reset(reset),
					 .d(in[29]),
					 .q(out[29]));

endmodule
