`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:56:04 05/06/2015 
// Design Name: 
// Module Name:    top 
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
module top( input 	clk, reset,
				output 	[15:0]writedata, dataadr,
				output 	memwrite );
	wire [15:0] pc, instr, readdata;
	
	// instantiate processor and memories
	mips mips(	clk, reset, pc, instr, memwrite, dataadr,
					writedata, readdata);
	imem imem(pc[7:2], instr);
	dmem dmem(clk, memwrite, dataadr, writedata, readdata);
	
	
endmodule
