`timescale 1ns / 1ps

module fpga(input clk,
				input reset,
				input [143:0] sramConfig,//399:0
				input [419:0] cbconfig,//1399:0
				input [239:0]sconfig,
				input [4:0] t01,
				output[4:0] t02,
            input [4:0] h01,
            input [4:0] h02,
				input [4:0] r01,
				input [4:0] r02,
				input [4:0] b01,
				input [4:0] b02	);//479:0
	wire [8:0] Lout;
	wire [35:0] lutIn;
	//wire [4:0] t01,t02,h01,h02,b01,b02,r01,r02;
	logicBlock L00(.clk(clk),//1
						.reset(reset),
						.sramConfig(sramConfig[143:128]),
						.lutIn(lutIn[35:32]),
						.Lout(Lout[0]),
						.sel(1'b1)	);//add this to all LB
	connectionBlock c0001(.clk(clk),//1
								 .reset(reset),
								 .cbconfig(cbconfig[419:385]),
								 .ble1(lutIn[35:32]),
								 .ble2(lutIn[31:28]),
								 .Lbout1(Lout[0]),
								 .Lbout2(Lout[1]),
								 .mat(t01)	);					
	logicBlock L01(.clk(clk),//2
						.reset(reset),
						.sramConfig(sramConfig[127:112]),
						.lutIn(lutIn[31:28]),
						.Lout(Lout[1]),
						.sel(1'b1)	);
	connectionBlock c0102(.clk(clk),//2
								 .reset(reset),
								 .cbconfig(cbconfig[384:350]),
								 .ble1(lutIn[31:28]),
								 .ble2(lutIn[27:24]),
								 .Lbout1(Lout[1]),
								 .Lbout2(Lout[2]),
								 .mat(t02)	);					
   logicBlock L02(.clk(clk),//3
						.reset(reset),
						.sramConfig(sramConfig[111:96]),
						.lutIn(lutIn[27:24]),
						.Lout(Lout[2]),
						.sel(1'b1)	);
	//*******************************************************
   connectionBlock c0010(.clk(clk),//3
								 .reset(reset),
								 .cbconfig(cbconfig[349:315]),
								 .ble1(lutIn[35:32]),
								 .ble2(lutIn[23:20]),
								 .Lbout1(Lout[0]),
								 .Lbout2(Lout[3]),
								 .mat(h01)	);
	wire [4:0] s1_c0111,s1_c1011,s2_c1112,s3_c1121;							 
	switchBox s1(.clk(clk),
					 .reset(reset),
					 .in(sconfig[239:180]),
                .inwireL(h01),
					 .inwireT(t01),
					 .inwireR(s1_c0111),
					 .inwireB(s1_c1011)	);							 
   connectionBlock c0111(.clk(clk),//4
								 .reset(reset),
								 .cbconfig(cbconfig[314:280]),
								 .ble1(lutIn[31:28]),
								 .ble2(lutIn[19:16]),
								 .Lbout1(Lout[1]),
								 .Lbout2(Lout[4]),
								 .mat(s1_c0111)	);
	switchBox s2(.clk(clk),
					 .reset(reset),
					 .in(sconfig[179:120]),
                .inwireL(s1_c0111),
					 .inwireT(t02),
					 .inwireR(r01),
					 .inwireB(s2_c1112)	);							 
   connectionBlock c0212(.clk(clk),//5
								 .reset(reset),
								 .cbconfig(cbconfig[279:245]),
								 .ble1(lutIn[27:24]),
								 .ble2(lutIn[15:12]),
								 .Lbout1(Lout[2]),
								 .Lbout2(Lout[5]),
								 .mat(r01));
//*********************************************************								 
	
   logicBlock L10(.clk(clk),//4
						.reset(reset),
						.sramConfig(sramConfig[95:80]),
						.lutIn(lutIn[23:20]),
						.Lout(Lout[3]),
						.sel(1'b1)	);
	connectionBlock c1011(.clk(clk),//6
								 .reset(reset),
								 .cbconfig(cbconfig[244:210]),
								 .ble1(lutIn[23:20]),
								 .ble2(lutIn[19:16]),
								 .Lbout1(Lout[3]),
								 .Lbout2(Lout[4]),
								 .mat(s1_c1011)	);					
   logicBlock L11(.clk(clk),//5
						.reset(reset),
						.sramConfig(sramConfig[79:64]),
						.lutIn(lutIn[19:16]),
						.Lout(Lout[4]),
						.sel(1'b1)	);
	connectionBlock c1112(.clk(clk),//7
								 .reset(reset),
								 .cbconfig(cbconfig[209:175]),
								 .ble1(lutIn[19:16]),
								 .ble2(lutIn[15:12]),
								 .Lbout1(Lout[4]),
								 .Lbout2(Lout[5]),
								 .mat(s2_c1112)	);					
   logicBlock L12(.clk(clk),//6
						.reset(reset),
						.sramConfig(sramConfig[63:48]),
						.lutIn(lutIn[15:12]),
						.Lout(Lout[5]),
						.sel(1'b1)	);
	//************************************************
   connectionBlock c1020(.clk(clk),//8
								 .reset(reset),
								 .cbconfig(cbconfig[174:140]),
								 .ble1(lutIn[23:20]),
								 .ble2(lutIn[11:8]),
								 .Lbout1(Lout[3]),
								 .Lbout2(Lout[6]),
								 .mat(h02)	);
	switchBox s3(.clk(clk),
					 .reset(reset),
					 .in(sconfig[119:60]),
                .inwireL(h02),
					 .inwireT(s1_c1011),
					 .inwireR(s3_c1121),
					 .inwireB(b01)	);								 
   connectionBlock c1121(.clk(clk),//9
								 .reset(reset),
								 .cbconfig(cbconfig[139:105]),
								 .ble1(lutIn[19:16]),
								 .ble2(lutIn[7:4]),
								 .Lbout1(Lout[4]),
								 .Lbout2(Lout[7]),
								 .mat(s3_c1121)	);
	switchBox s4(.clk(clk),
					 .reset(reset),
					 .in(sconfig[59:0]),
                .inwireL(s3_c1121),
					 .inwireT(s2_c1112),
					 .inwireR(r02),
					 .inwireB(b02)	);								 
   connectionBlock c1222(.clk(clk),//10
								 .reset(reset),
								 .cbconfig(cbconfig[104:70]),
								 .ble1(lutIn[15:12]),
								 .ble2(lutIn[3:0]),
								 .Lbout1(Lout[5]),
								 .Lbout2(Lout[8]),
								 .mat(r02)	);
//********************************************************								 
   logicBlock L20(.clk(clk),//7
						.reset(reset),
						.sramConfig(sramConfig[47:32]),
						.lutIn(lutIn[11:8]),
						.Lout(Lout[6]),
						.sel(1'b1)	);
	connectionBlock c2021(.clk(clk),//11
								 .reset(reset),
								 .cbconfig(cbconfig[69:35]),
								 .ble1(lutIn[11:8]),
								 .ble2(lutIn[7:4]),
								 .Lbout1(Lout[6]),
								 .Lbout2(Lout[7]),
								 .mat(b01)	);					
   logicBlock L21(.clk(clk),//8
						.reset(reset),
						.sramConfig(sramConfig[31:16]),
						.lutIn(lutIn[7:4]),
						.Lout(Lout[7]),
						.sel(1'b1)	);
	connectionBlock c2122(.clk(clk),//12
								 .reset(reset),
								 .cbconfig(cbconfig[34:0]),
								 .ble1(lutIn[7:4]),
								 .ble2(lutIn[3:0]),
								 .Lbout1(Lout[7]),
								 .Lbout2(Lout[8]),
								 .mat(b02)	);					
   logicBlock L22(.clk(clk),//9
						.reset(reset),
						.sramConfig(sramConfig[15:0]),
						.lutIn(lutIn[3:0]),
						.Lout(Lout[8]),
						.sel(1'b1)	);

endmodule				