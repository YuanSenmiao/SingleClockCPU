`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:13:39 01/08/2015 
// Design Name: 
// Module Name:    instruction_mem 
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
`define NOP		5'b00000
`define HALT	5'b00001
`define LOAD	5'b00010
`define STORE	5'b00011
`define LDIH	5'b10000
`define ADD		5'b01000
`define ADDI	5'b01001
`define ADDC	5'b10001
`define SUB		5'b01010
`define SUBI	5'b01011
`define SUBC	5'b10010
`define CMP		5'b01100
//Logical
`define AND		5'b01101
`define OR		5'b01110
`define XOR		5'b01111
`define SLL		5'b00100
`define SRL		5'b00111
`define SLA		5'b00101
`define SRA		5'b00110
//Control
`define JUMP	5'b11000
`define JMPR	5'b11001
`define BZ		5'b11010
`define BNZ		5'b11011
`define BN		5'b11100
`define BNN		5'b11101
`define BC		5'b11110
`define BNC		5'b11111
`define idle	1'b0
`define exec	1'b1
//gr
`define gr0 3'b000
`define gr1 3'b001
`define gr2 3'b010
`define gr3 3'b011
`define gr4 3'b100
`define gr5 3'b101
`define gr6 3'b110
`define gr7 3'b111

module instruction_mem(
	input wire clka,
	input wire [7:0] addra,
	output wire [15:0]douta
    );

reg [15:0] i_mem[255:0];
assign douta = i_mem[addra];
always @ (posedge clka)
begin
	case(addra)
		0: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		1: i_mem[addra] <= {`LOAD, `gr1, 1'b0, `gr0, 4'b0000};
		2: i_mem[addra] <= {`LOAD, `gr2, 1'b0, `gr0, 4'b0001};
		3: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		4: i_mem[addra] <= {`NOP, 11'b000_0000_0000}; 
		5: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		6: i_mem[addra] <= {`ADDI, `gr2, 4'b1010, 4'b1011};
		7: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		8: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		9: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		10: i_mem[addra] <= {`LDIH, `gr1, 4'b0011, 4'b1100};
		11: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		12: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		13: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		14: i_mem[addra] <= {`ADD, `gr3, 1'b0, `gr1, 1'b0, `gr2};
		15: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		16: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		17: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		18: i_mem[addra] <= {`STORE, `gr3, 1'b0, `gr0, 4'b0010};
		19: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		20: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		21: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		
		22: i_mem[addra] <= {`SUBI, `gr3, 4'b1010, 4'b1011};
		23: i_mem[addra] <= {`LOAD, `gr4, 1'b0, `gr0, 4'b0011};		
		24: i_mem[addra] <= {`LOAD, `gr5, 1'b0, `gr0, 4'b0100};
		25: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		26: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		27: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		28: i_mem[addra] <= {`ADDI, `gr4, 4'b1100, 4'b1101};
		29: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		30: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		31: i_mem[addra] <= {`LDIH, `gr5, 4'b1010, 4'b1011};
		32: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		33: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		34: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		35: i_mem[addra] <= {`ADD, `gr4, 1'b0, `gr5, 1'b0, `gr4};
		36: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		37: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		38: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		39: i_mem[addra] <= {`SUB, `gr6, 1'b0, `gr4, 1'b0, `gr5};
		40: i_mem[addra] <= {`LDIH, `gr2, 4'b1111, 4'b1111};
		41: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		42: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		43: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		44: i_mem[addra] <= {`ADD, `gr5, 1'b0, `gr2, 1'b0, `gr3};
		45: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		46: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		47: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		48: i_mem[addra] <= {`ADDC, `gr5, 1'b0, `gr2, 1'b0, `gr3};
		49: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		50: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		51: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		52: i_mem[addra] <= {`ADDC, `gr7, 1'b0, `gr5, 1'b0, `gr6};
		53: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		54: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		55: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		56: i_mem[addra] <= {`ADDI, `gr7, 4'b0000, 4'b0010};
		57: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		58: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		59: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		60: i_mem[addra] <= {`CMP, 4'b0000, `gr1, 1'b0, `gr7};
		61: i_mem[addra] <= {`NOP, 11'b000_0000_0000};		
		
		62: i_mem[addra]	<= {`LOAD, `gr1, 1'b0, `gr0, 4'b1000};
		63: i_mem[addra] <= {`LOAD, `gr2, 1'b0, `gr0, 4'b1001};
		64: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		65: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		66: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		67: i_mem[addra] <= {`ADDI, `gr1, 4'b1000, 4'b1000};
		68: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		69: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		70: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		71: i_mem[addra] <= {`LDIH, `gr1, 4'b1000, 4'b1000};
		72: i_mem[addra] <= {`ADDI, `gr2, 4'b1111, 4'b1111};
		73: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		74: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		75: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		76: i_mem[addra] <= {`LDIH, `gr2, 4'b1111, 4'b1111};
		77: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		78: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		79: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		//AND
		80: i_mem[addra]	<= {`AND, `gr3, 1'b0, `gr1, 1'b0, `gr2};
		81: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		82: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		83: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		84: i_mem[addra]	<= {`STORE, `gr3, 1'b0, `gr0, 4'b0010};
		// XOR
		85: i_mem[addra] <= {`XOR, `gr3, 1'b0, `gr1, 1'b0, `gr2};
		86: i_mem[addra]<= {`NOP, 11'b000_0000_0000};
		87: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		88: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		89: i_mem[addra]	<= {`STORE, `gr3, 1'b0, `gr0, 4'b0010};
		//OR
		90: i_mem[addra] <= {`OR, `gr3, 1'b0, `gr1, 1'b0, `gr2};
		91: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		92: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		93: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		94: i_mem[addra]	<= {`STORE, `gr3, 1'b0, `gr0, 4'b0010};
		//SRL
		95: i_mem[addra] <= {`SRL, `gr3, 1'b0, `gr1, 4'b0010};
		96: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		97: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		98: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		99: i_mem[addra]	<= {`STORE, `gr3, 1'b0, `gr0, 4'b0010};
		//SLL
		100: i_mem[addra] <= {`SLL, `gr3, 1'b0, `gr3, 4'b0010};
		101: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		102: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		103: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		104: i_mem[addra]	<= {`STORE, `gr3, 1'b0, `gr0, 4'b0010};
		
		//SRA
		105: i_mem[addra] <= {`SRA, `gr3, 1'b0, `gr1, 4'b0010};
		106: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		107: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		108: i_mem[addra]<= {`NOP, 11'b000_0000_0000};
		109: i_mem[addra]<= {`STORE, `gr3, 1'b0, `gr0, 4'b0010};
		//SLA
		110: i_mem[addra] <= {`SLA, `gr3, 1'b0, `gr1, 4'b0010};
		111: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		112: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		113: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		114: i_mem[addra]	<= {`STORE, `gr3, 1'b0, `gr0, 4'b0010};
		
		115: i_mem[addra]	<= {`NOP, 11'b000_0000_0000};		
		116: i_mem[addra]<= {`NOP, 11'b000_0000_0000};		
		117: i_mem[addra]<= {`NOP, 11'b000_0000_0000};	
		
		118: i_mem[addra]<= {`LOAD, `gr1, 1'b0, `gr0, 4'b1100};
		119: i_mem[addra] <= {`LOAD, `gr2, 1'b0, `gr0, 4'b1101};
		120: i_mem[addra] <= {`NOP, 11'b000_0000_0000}; 
		121: i_mem[addra] <= {`NOP, 11'b000_0000_0000}; 
		
		122: i_mem[addra] <= {`LDIH, `gr1, 4'b0011, 4'b1100};
		123: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		124: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		125: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		126: i_mem[addra] <= {`ADDI, `gr2, 4'b1011, 4'b0010};
		127: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		128: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		129: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		130: i_mem[addra]	<= {`ADD, `gr3, 1'b0, `gr1, 1'b0, `gr2};
		131: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		132: i_mem[addra]<= {`NOP, 11'b000_0000_0000};
		133: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		134: i_mem[addra] <= {`STORE, `gr3, 1'b0, `gr0, 4'b0010};
		135: i_mem[addra]	<= {`BNC, `gr3, 4'b0000, 4'b1000 };
		
		136: i_mem[addra]	<= {`LDIH, `gr4, 4'b1111, 4'b1111};
		137: i_mem[addra]	<= {`NOP, 11'b000_0000_0000};
		138: i_mem[addra]	<= {`NOP, 11'b000_0000_0000};
		139: i_mem[addra]	<= {`NOP, 11'b000_0000_0000};
		
		140: i_mem[addra]	<= {`ADDI, `gr4, 4'b1111, 4'b1111};
		141: i_mem[addra]	<= {`NOP, 11'b000_0000_0000};
		142: i_mem[addra]<= {`NOP, 11'b000_0000_0000};
		143: i_mem[addra]	<= {`NOP, 11'b000_0000_0000};
		
		144: i_mem[addra]	<= {`ADDI, `gr4, 4'b0000, 4'b0001};
		
		145: i_mem[addra]	<= {`BZ, `gr3, 4'b0000, 4'b0100 };
		146: i_mem[addra]	<= {`NOP, 11'b000_0000_0000};
		147: i_mem[addra]	<= {`NOP, 11'b000_0000_0000};
		148: i_mem[addra]<= {`NOP, 11'b000_0000_0000};
		
		149: i_mem[addra] <= {`CMP, 4'b0000, `gr1, 1'b0, `gr2};
		150: i_mem[addra]	<= {`NOP, 11'b000_0000_0000};
		151: i_mem[addra]	<= {`NOP, 11'b000_0000_0000};
		152: i_mem[addra]<= {`NOP, 11'b000_0000_0000};
		
		153: i_mem[addra]<= {`BNN, `gr3, 4'b0000, 4'b1111};
		154: i_mem[addra]	<= {`NOP, 11'b000_0000_0000};
		155: i_mem[addra]<= {`NOP, 11'b000_0000_0000};
		156: i_mem[addra]	<= {`NOP, 11'b000_0000_0000};
		
		157: i_mem[addra] <= {`JUMP, 3'b000, 4'b0001, 4'b0000};
		158: i_mem[addra]	<= {`NOP, 11'b000_0000_0000};
		159: i_mem[addra]	<= {`NOP, 11'b000_0000_0000};
		160: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		161: i_mem[addra]	<= {`HALT, 11'b000_0000_0000};		
		
		default:	i_mem[addra] <= {`NOP, 11'b000_0000_0000};
	endcase
end
	/*	1: i_mem[addra] <= {`ADDI, `gr1, 4'b1010, 4'b1011};
		2: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		3: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		4: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		5: i_mem[addra] <= {`LDIH, `gr2, 4'b0011, 4'b1100};
		6: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		7: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		8: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
      9: i_mem[addra] <= {`ADD, `gr3, 1'b0, `gr1, 1'b0, `gr2};
		10: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		11: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		12: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		13: i_mem[addra] <= {`STORE, `gr3, 1'b0, `gr0, 4'b0010};
		14: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		15: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		16: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		17: i_mem[addra] <= {`HALT, 11'b000_0000_0000};	
		
	  	18: i_mem[addra] <= {`LOAD, `gr1, 1'b0, `gr0, 4'b0000};
		19: i_mem[addra] <= {`LOAD, `gr2, 1'b0, `gr0, 4'b0001};
		20: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		21: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		22: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		23: i_mem[addra] <= {`SUB, `gr4, 1'b0, `gr2, 1'b0, `gr1};
		24: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		25: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		26: i_mem[addra] <= {`NOP, 11'b000_0000_0000};
		27: i_mem[addra] <= {`STORE, `gr4, 1'b0, `gr0, 4'b0011}; 
		28: i_mem[addra] <= {`NOP, 11'b000_0000_0000};			
		29: i_mem[addra] <= {`NOP, 11'b000_0000_0000};			
		30: i_mem[addra] <= {`NOP, 11'b000_0000_0000};			
		31: i_mem[addra] <= {`JUMP, `gr3, 4'b0010,4'b0110};
	
     */
		




endmodule
