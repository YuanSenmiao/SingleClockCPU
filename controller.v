`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:32:42 05/02/2015 
// Design Name: 
// Module Name:    controller 
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

module controller(
	input [4:0] op, 
	input  [2:0]flag,
	output memtoreg,	memwrite,
	output pcsrc, alusrc, regsrc,
	output regwrite,
	output jump,halt,
	output [3:0] alucontrol
    );
	wire [1:0] aluop;
	maindec 	md(	op, memtoreg, memwrite,
						alusrc, regsrc,regwrite, jump,
						aluop);
	aludec 	ad(	op, aluop, alucontrol);	
	assign halt = (op == `HALT)?1:0;
	assign pcsrc = (op == `BZ && flag[2] || op == `BNZ && (~flag[2])
										||op == `BC && flag[1]||op == `BNC && (~flag[1])
										||op == `BN && flag[0]||op == `BNN && (~flag[0])
										||op == `JMPR)?1:0;
endmodule
