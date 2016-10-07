`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:20:56 05/02/2015 
// Design Name: 
// Module Name:    mips 
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
//mips mips(	clk, reset, pc, instr, memwrite, dataadr,
	//				writedata, readdata);
module mips(
	input				clk, 		reset,
	output[7:0] 	pc,
	input [15:0] 	instr,
	output 			memwrite,
	output[15:0]	writedata,aluout,
	input [15:0] 	readdata
    );
	wire 			memtoreg, alusrc,	regsrc, regwrite, jump, halt, pcsrc;
	wire[2:0]	flag;
	wire[3:0]	alucontrol;
	
	controller c(instr[15:11], flag,
					 memtoreg, memwrite, pcsrc, 
					 alusrc,	regsrc,	regwrite,	jump,halt,
					 alucontrol);
	datapath dp(clk,	reset,	memtoreg,	pcsrc, memwrite,
					alusrc, regsrc, regwrite, jump,halt,
					alucontrol,
					flag, pc,	instr,
					aluout,	writedata,	readdata);
	
endmodule
