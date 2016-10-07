`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:13:01 05/05/2015 
// Design Name: 
// Module Name:    aludec 
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
`define HALT		5'b11011
`define IDLE		5'b00000
`define NOP			5'b00001
`define ADD			5'b10000
`define SUB			5'b00011
`define ADDC		5'b00100
`define SUBC		5'b00101
`define OR			5'b00110
`define AND			5'b00111
`define XOR			5'b01000
`define CMP			5'b01001
`define LOAD		5'b10001
`define STORE		5'b10010
`define SLL			5'b01010
`define SRL			5'b01011
`define SLA			5'b01100
`define SRA			5'b01101
`define LDIH		5'b01111
`define ADDI		5'b10011
`define SUBI		5'b01110
`define BZ			5'b10100
`define BNZ			5'b10101
`define BC			5'b10110
`define BNC			5'b10111
`define BN			5'b11000
`define BNN			5'b11001
`define JUMP		5'b00010
`define JMPR		5'b11010

module aludec(	input 		[4:0] op,
					input			[1:0] aluop,
					output reg 	[3:0] alucontrol   );
 always@(*)
	begin
	case(aluop)
		2'b00:	alucontrol <= 4'b0001; // add
		2'b01:	alucontrol <= 4'b0010; // sub
		2'b11:	alucontrol <= 4'b1110; // branch
		default:	case(op)				
						`AND:		alucontrol <= 4'b0011;
						`OR:		alucontrol <= 4'b0100;
						`XOR:		alucontrol <= 4'b0101;
						`SLL:		alucontrol <= 4'b0110; 
						`SRL:		alucontrol <= 4'b0111; 
						`SLA:		alucontrol <= 4'b1000; 
						`SRA:		alucontrol <= 4'b1001; 
						`ADDC:	alucontrol <= 4'b1010; 
						`SUBC:	alucontrol <= 4'b1011; 		
						`CMP:		alucontrol <= 4'b1100; 
						`LDIH:	alucontrol <= 4'b1101;
						`HALT,`JUMP,`NOP:	alucontrol <= 4'b0000; 
						`IDLE:	alucontrol <= 4'b1111;
						default:	alucontrol <= 4'bxxxx;
					endcase
	endcase
	end
endmodule






