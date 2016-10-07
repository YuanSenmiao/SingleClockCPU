`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:12:42 05/05/2015 
// Design Name: 
// Module Name:    maindec 
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

module maindec( 	input [4:0] op,
						output		memtoreg, memwrite,
						output		alusrc, regsrc,
						output		regwrite,
						output		jump,
						output [1:0] aluop );
	// P387
	reg [7:0] controls;	
	initial begin
	controls <= 8'b0000_0000;
	end
	
	assign	{	regwrite, alusrc, regsrc,
					memwrite, memtoreg,  jump,	aluop } = controls;	
	always@(*)
		begin
		case(op)
			`IDLE:										controls <= 8'b00000010;
			`ADD:											controls <= 8'b10000000;
			`SUB: 										controls <= 8'b10000001;
			`ADDC,`SUBC,`OR,`AND,`XOR:				controls <= 8'b10000010;		
			`CMP:											controls <= 8'b00000010;			
			`LOAD:										controls <= 8'b11001000;		
			`STORE:										controls <= 8'b0101x000;			
			`SLL,`SRL,`SLA,`SRA:						controls <= 8'b11000010;		
			`LDIH:										controls <= 8'b11100010;		
			`ADDI:										controls <= 8'b11100000;	
			`SUBI:										controls <= 8'b11100001;		
			`BZ,`BNZ,`BC,`BNC,`BN,`BNN,`JMPR:	controls <= 8'b01100011;		
			`JUMP: 										controls <= 8'b0xx00110;		
			`HALT: 										controls <= 8'b0xx00010;	
			`NOP:											controls <= 8'b01000010;
			default:controls <=8'bxxxx_xx10;
		endcase
		end
endmodule
