`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:06:17 05/05/2015 
// Design Name: 
// Module Name:    alu 
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
module alu( input [15:0]	srca,	srcb,
				input	[3:0]		alucontrol,
				output reg[15:0]	aluout,
				output reg[2:0]flag);	
	always@(*)
		begin
		case(alucontrol)
			4'b0001:	{flag[1], aluout} <= srca + srcb; // add
			4'b0010:	{flag[1], aluout} <= srca - srcb; // sub
			4'b0011:	aluout <= srca & srcb; 				 // AND
			4'b0100:	aluout <= srca | srcb;				// OR
			4'b0101:	aluout <= srca ^ srcb;				// XOR
			4'b0110:	aluout <= srca << srcb[3:0];		//SLL
			4'b0111:	aluout <= srca >> srcb[3:0];		//SRL
			4'b1000:	aluout <= ($signed(srca)) <<< srcb[3:0]; // SLA
			4'b1001:	aluout <= ($signed(srca)) >>> srcb[3:0];	//SLA
			4'b1010:	{flag[1], aluout} <= srca + srcb + flag[1];//ADDC
			4'b1011:	{flag[1], aluout} <= srca - srcb - flag[1];//SUBC
			4'b1101: {flag[1], aluout} <= srca + {srcb[7:0],8'b0};// LDIH	
			4'b1100:	//CMP
						begin 
							aluout <= srca - srcb;
							flag[0] <=  aluout[15]; 
							flag[1] <= flag[1];							
							flag[2] <= (aluout == 16'b0);
						end
			//4'b1110: aluout <= srca + srcb;	// branch instr, JMPR 
			4'b1110: {flag[1], aluout, flag[0], flag[2]} <= {flag[1], srca + srcb, flag[0], flag[2]};			
			default:{flag, aluout} <= {flag, aluout}; // HALT  NOP  JUMP  IDLE
		endcase
		end
endmodule
