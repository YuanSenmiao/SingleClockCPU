`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:52:46 05/08/2015
// Design Name:   mips
// Module Name:   E:/Xilinx/workspace/pcpu/single_clk_cpu/test3.v
// Project Name:  single_clk_cpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mips
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
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
//gr
//gr
`define s0 3'b000
`define s1 3'b001
`define s2 3'b010
`define s3 3'b011
`define s4 3'b100
`define s5 3'b101
`define s6 3'b110
`define s7 3'b111


module test3;

	// Inputs
	reg clk;
	reg reset;
	reg [15:0] instr;
	reg [15:0] readdata;

	// Outputs
	wire [7:0] pc;
	wire memwrite;
	wire [15:0] writedata;
	wire [15:0] aluout;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.clk(clk), 
		.reset(reset), 
		.pc(pc), 
		.instr(instr), 
		.memwrite(memwrite), 
		.writedata(writedata), 
		.aluout(aluout), 
		.readdata(readdata)
	);
		
		
	initial begin        
		clk = 0;
		reset = 0;
		instr = 0;
		readdata = 0;
		#5
		
		$display("pc :      instr       :      aluout      :     result       :      rf1         :         rf2      :pcnext");
		$monitor("%h : %b : %b : %b : %b : %b :  %h", 
			uut.pc, uut.instr, uut.dp.aluout, uut.dp.result, uut.dp.rf.rf[1], uut.dp.rf.rf[2], uut.dp.pcnext);
		instr <= 0;
		#10 reset  <= 1;
		#10 reset  <= 0;		
			 instr <= {`ADDI, `s1, 8'b1100_0011};			// 00
		#10 instr <= {`NOP, 11'h0};							// 01	
		#10 instr <= {`ADD, `s0, 1'h0, `s1, 1'h0, `s0};  // 02
		#10 instr <= {`LDIH, `s1, 8'b1001_0110};			//	03
		#10 instr <= {`NOP, 11'h0};							// 04		
		
		#10 instr <= {`SLL, `s2, 1'h0, `s1, 4'h2 }; 					// 05
		#10 instr <= {`NOP, 11'h0};							// 06
		#10 instr <= {`SRL, `s2, 1'h0, `s1, 4'h2 }; 					// 07
		#10 instr <= {`NOP, 11'h0};							// 08
		
		#10 instr <= {`ADD, `s1, 1'h0, `s0, 1'h0, `s0};  // 09
		
		#10 instr <= {`SLA, `s2, 1'h0, `s1, 4'h2 }; 					// 10
		#10 instr <= {`NOP, 11'h0};							// 11
		#10 instr <= {`SRA, `s2, 1'h0, `s1, 4'h2 }; 					// 12
		#10 instr <= {`NOP, 11'h0};							// 13
		
		#10 instr <= {`HALT, 11'h0};							// 14
		
	end
     always #5 clk = ~clk;
endmodule
