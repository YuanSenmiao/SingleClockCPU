`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:49:30 05/05/2015 
// Design Name: 
// Module Name:    regfile 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
/*
// register file logic
	regfile	rf(clk, regwrite, memwrite, ra1,
					instr[2:0], instr[10:8],
					result, srca, writedata);
*/
module regfile(input			clk,
					input			we3,storeg,
					input	[2:0]	ra1, ra2, wa3,
					input	[15:0]wd3,
					output[15:0]rd1,rd2);
	reg [15:0] rf[7:0];

	initial begin
	rf[0] <= 16'b0;
	rf[1] <= 16'b0;
	rf[2] <= 16'b0;
	rf[3] <= 16'b0;
	rf[4] <= 16'b0;
	rf[5] <= 16'b0;
	rf[6] <= 16'b0;
	rf[7] <= 16'b0;
	end
	
	// three ported register file
	// read two ports combinationally
	// write third port on rising edge of clock
	// register 0 hadwired to 0
	always@(posedge clk)
		if(we3)	rf[wa3] <= wd3;
		else		rf[wa3] <=rf[wa3];
	
	assign rd1 = rf[ra1];
	assign rd2 = (storeg)?rf[wa3]:rf[ra2];

endmodule
