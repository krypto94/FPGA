`timescale 1ns / 1ps

module connectionBlock(input clk,
							  input reset,
							  input [34:0] cbconfig,
							  output reg [3:0] ble1,
							  output reg [3:0] ble2,
							  input Lbout1,
							  input Lbout2,
							  inout [4:0] mat
    );
	 wire [34:0] out;
	 register35bit R(.clk(clk),
						  .reset(reset),
						  .in(cbconfig),
						  .out(out)); 
	always@(clk or reset or cbconfig or Lbout1 or Lbout2)
	begin
	case(out[6:0])
	7'b0000000 : 
	begin
	 ble1[0] = 1'bz;
	 ble2[0] = 1'bz;
	end	//0(LB 1 GATE)00000(LB 2 GATE)
	7'b1100000 :
	begin	
	 ble1[0] = mat[0];
	 ble2[0] = 1'bz;
	end
	7'b1010000 :
	begin	
	 ble1[0] = mat[1];
	 ble2[0] = 1'bz;
	end
	7'b1001000 :
	begin	
	 ble1[0] = mat[2];
	 ble2[0] = 1'bz;
	end
	7'b1000100 :
	begin	
	 ble1[0] = mat[3];
	 ble2[0] = 1'bz;
	end
	7'b1000010 :
	begin	
	 ble1[0] = mat[4];
	 ble2[0] = 1'bz;
	end
	
	7'b0100001 :
	begin	
	 ble2[0] = mat[0];
	 ble1[0] = 1'bz;
	end
	7'b0010001 :
	begin	
	 ble2[0] = mat[1];
	 ble1[0] = 1'bz;
	end
	7'b0001001 :
	begin	
	 ble2[0] = mat[2];
	 ble1[0] = 1'bz;
	end
	7'b0000101 :
	begin	
	 ble2[0] = mat[3];
	 ble1[0] = 1'bz;
	end
	7'b0000011 :
	begin	
	 ble2[0] = mat[4];
	 ble1[0] = 1'bz;
	end
	
	7'b1100001 :
	begin	
	 ble1[0] = mat[0];
	 ble2[0] = mat[0];
	end
	7'b1010001 :
	begin	
	 ble1[0] = mat[1];
	 ble2[0] = mat[1];
	end
	7'b1001001 :
	begin	
	 ble1[0] = mat[2];
	 ble2[0] = mat[2];
	end
	7'b1000101 :
	begin	
	 ble1[0] = mat[3];
	 ble2[0] = mat[3];
	end
	7'b1000011 :
	begin	
	 ble1[0] = mat[4];
	 ble2[0] = mat[4];
	end
	endcase
	
	// ***********************
	
	case(out[13:7])
	7'b0000000 : 
	begin
	 ble1[1] = 1'bz;
	 ble2[1] = 1'bz;
	end	//0(LB 1 GATE)00000(LB 2 GATE)
	7'b1100000 :
	begin	
	 ble1[1] = mat[0];
	 ble2[1] = 1'bz;
	end
	7'b1010000 :
	begin	
	 ble1[1] = mat[1];
	 ble2[1] = 1'bz;
	end
	7'b1001000 :
	begin	
	 ble1[1] = mat[2];
    ble2[1] = 1'bz;
	end
	7'b1000100 :
	begin	
	 ble1[1] = mat[3];
	 ble2[1] = 1'bz;
	end
	7'b1000010 :
	begin	
	 ble1[1] = mat[4];
	 ble2[1] = 1'bz;
	end
	
	7'b0100001 :
	begin	
	 ble2[1] = mat[0];
	 ble1[1] = 1'bz;
	end
	7'b0010001 :
	begin	
	 ble2[1] = mat[1];
	 ble1[1] = 1'bz;
	end
	7'b0001001 :
	begin	
	 ble2[1] = mat[2];
	 ble1[1] = 1'bz;
	end
	7'b0000101 :
	begin	
	 ble2[1] = mat[3];
    ble1[1] = 1'bz;
	end
	7'b0000011 :
	begin	
	 ble2[1] = mat[4];
	 ble1[1] = 1'bz;
	end
	
	7'b1100001 :
	begin	
	 ble1[1] = mat[0];
	 ble2[1] = mat[0];
	end
	7'b1010001 :
	begin	
	 ble1[1] = mat[1];
	 ble2[1] = mat[1];
	end
	7'b1001001 :
	begin	
    ble1[1] = mat[2];
	 ble2[1] = mat[2];
	end
	7'b1000101 :
	begin	
	 ble1[1] = mat[3];
	 ble2[1] = mat[3];
	end
	7'b1000011 :
	begin	
	 ble1[1] = mat[4];
	 ble2[1] = mat[4];
	end
	endcase
	//**************************
	case(out[20:14])
	7'b0000000 : 
	begin
	 ble1[2] = 1'bz;
	 ble2[2] = 1'bz;
	end	//0(LB 1 GATE)00000(LB 2 GATE)
	7'b1100000 :
	begin	
	 ble1[2] = mat[0];
	 ble2[2] = 1'bz;
	end
	7'b1010000 :
	begin	
	 ble1[2] = mat[1];
	 ble2[2] = 1'bz;
	end
	7'b1001000 :
	begin	
	 ble1[2] = mat[2];
	 ble2[2] = 1'bz;
	end
	7'b1000100 :
	begin	
	 ble1[2] = mat[3];
	 ble2[2] = 1'bz;
	end
	7'b1000010 :
	begin	
	 ble1[2] = mat[4];
	 ble2[2] = 1'bz;
	end
	
	7'b0100001 :
	begin	
	 ble2[2] = mat[0];
	 ble1[2] = 1'bz;
	end
	7'b0010001 :
	begin	
	 ble2[2] = mat[1];
	 ble1[2] = 1'bz;
	end
	7'b0001001 :
	begin	
	 ble2[2] = mat[2];
	 ble1[2] = 1'bz;
	end
	7'b0000101 :
	begin	
	 ble2[2] = mat[3];
	 ble1[2] = 1'bz;
	end
	7'b0000011 :
	begin	
	 ble2[2] = mat[4];
	 ble1[2] = 1'bz;
	end
	
	7'b1100001 :
	begin	
	 ble1[2] = mat[0];
	 ble2[2] = mat[0];
	end
	7'b1010001 :
	begin	
	 ble1[2] = mat[1];
	 ble2[2] = mat[1];
	end
	7'b1001001 :
	begin	
	 ble1[2] = mat[2];
	 ble2[2] = mat[2];
	end
	7'b1000101 :
	begin	
	 ble1[2] = mat[3];
	 ble2[2] = mat[3];
	end
	7'b1000011 :
	begin	
	 ble1[2] = mat[4];
	 ble2[2] = mat[4];
	end
	endcase
	//*****************************
	case(out[27:21])
	7'b0000000 : 
	begin
	 ble1[3] = 1'bz;
	 ble2[3] = 1'bz;
	end	//0(LB 1 GATE)00000(LB 2 GATE)
	7'b1100000 :
	begin	
	 ble1[3] = mat[0];
	 ble2[3] = 1'bz;
	end
	7'b1010000 :
	begin	
	 ble1[3] = mat[1];
	 ble2[3] = 1'bz;
	end
	7'b1001000 :
	begin	
	 ble1[3] = mat[2];
	 ble2[3] = 1'bz;
	end
	7'b1000100 :
	begin	
	 ble1[3] = mat[3];
	 ble2[3] = 1'bz;
	end
	7'b1000010 :
	begin	
	 ble1[3] = mat[4];
	 ble2[3] = 1'bz;
	end
	
	7'b0100001 :
	begin	
	 ble2[3] = mat[0];
	 ble1[3] = 1'bz;
	end
	7'b0010001 :
	begin	
	 ble2[3] = mat[1];
	 ble1[3] = 1'bz;
	end
	7'b0001001 :
	begin	
	 ble2[3] = mat[2];
	 ble1[3] = 1'bz;
	end
	7'b0000101 :
	begin	
	 ble2[3] = mat[3];
	 ble1[3] = 1'bz;
	end
	7'b0000011 :
	begin	
	 ble2[3] = mat[4];
	 ble1[3] = 1'bz;
	end
	
	7'b1100001 :
	begin	
	 ble1[3] = mat[0];
	 ble2[3] = mat[0];
	end
	7'b1010001 :
	begin	
	 ble1[3] = mat[1];
	 ble2[3] = mat[1];
	end
	7'b1001001 :
	begin	
	 ble1[3] = mat[2];
	 ble2[3] = mat[2];
	end
	7'b1000101 :
	begin	
	 ble1[3] = mat[3];
	 ble2[3] = mat[3];
	end
	7'b1000011 :
	begin	
	 ble1[3] = mat[4];
	 ble2[3] = mat[4];
	end
	endcase
	end
	//*****************************
	
	assign mat[0] = (out[34:28] == 7'b1100000)? Lbout1 : 1'bz;
	assign mat[1] = (out[34:28] == 7'b1010000)? Lbout1 : 1'bz;
	assign mat[2] = (out[34:28] == 7'b1001000)? Lbout1 : 1'bz;
	assign mat[3] = (out[34:28] == 7'b1000100)? Lbout1 : 1'bz;
	assign mat[4] = (out[34:28] == 7'b1000010)? Lbout1 : 1'bz;
	
	
	assign mat[0] = (out[34:28] == 7'b0100001)? Lbout2 : 1'bz;
	assign mat[1] = (out[34:28] == 7'b0010001)? Lbout2 : 1'bz;
	assign mat[2] = (out[34:28] == 7'b0001001)? Lbout2 : 1'bz;
	assign mat[3] = (out[34:28] == 7'b0000101)? Lbout2 : 1'bz;
	assign mat[4] = (out[34:28] == 7'b0000011)? Lbout2 : 1'bz;
	
	assign mat[0] = (out[34:28] == 7'b0000000)? 1'bz : 1'bz;
	assign mat[1] = (out[34:28] == 7'b0000000)? 1'bz : 1'bz;
	assign mat[2] = (out[34:28] == 7'b0000000)? 1'bz : 1'bz;
	assign mat[3] = (out[34:28] == 7'b0000000)? 1'bz : 1'bz;
	assign mat[4] = (out[34:28] == 7'b0000000)? 1'bz : 1'bz;
   endmodule
	
