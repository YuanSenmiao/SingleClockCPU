`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:32:56 05/02/2015 
// Design Name: 
// Module Name:    datapath 
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
//	datapath dp(clk,	reset,	memtoreg,	pcsrc, 
//					alusrc, regA1src, regwrite, jump, 
//					alucontrol,
//					flag, pc,	instr,
//					aluout,	writedata,	readdata);
//////////////////////////////////////////////////////////////////////////////////

module datapath(	input			clk, reset,
						input			memtoreg, pcsrc,memwrite,
						input			alusrc,	regsrc,
						input			regwrite, jump,halt,
						input	[3:0]	alucontrol,
						output[2:0]flag,
						output[7:0]pc,
						input	[15:0]instr,
						output[15:0]aluout, writedata,
						input	[15:0]readdata  );
						
	wire	[7:0]	pcnext,	pcnextbr,	pcplus1;
	//wire	[7:0]	pcbranch;
	wire	[15:0]	signimm;
	wire	[15:0]	srca,	srcb;
	wire	[15:0]	result;	
	wire [2:0]ra1; // 这里没声明导致ra1的值没有赋值
	//////////// next PC logic
	wire [7:0]ad;
	assign ad = (halt == 1)?8'b0:8'b1;
	flopr #(8)	pcreg (clk, reset, pcnext, pc);
	adder			pcadd1(pc, ad,	pcplus1);
	mux2	#(8)	pcbrmux(pcplus1, aluout[7:0], pcsrc,
								pcnextbr);
	mux2 	#(8)	pcmux(pcnextbr, instr[7:0],
							jump, pcnext);	
	//////////////////////////////////////////////
	
	mux2	#(3)	ra1mux(instr[6:4], instr[10:8],
							regsrc, ra1);
	// register file logic
	regfile	rf(clk, regwrite, memwrite, ra1,
					instr[2:0], instr[10:8],
					result, srca, writedata);		
														
	mux2	#(16)	resmux(aluout, readdata, 
							memtoreg, result);
	signext		se(instr[7:0], signimm);
	
	// ALU logic
	mux2	#(16)	srcbmux(writedata, signimm, alusrc,
								srcb);	
	
	alu			alu(srca, srcb, alucontrol,
							aluout, flag);					
endmodule
