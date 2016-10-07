`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:52:46 05/08/2015
// Design Name:   mips
// Module Name:   E:/Xilinx/workspace/pcpu/single_clk_cpu/test1.v
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


module test2;

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
		 
		$display("pc :      instr       : controls : srca : srcb :aluout:result:  wd  :  rd  : rf1  : rf2  : rf3  : rf4  : wa3 :zf :cf :nf :jump :pcsrc:pcnext:pcnextbr");
		$monitor("%h : %b : %b : %h : %h : %h : %h : %h : %h : %h : %h : %h : %h : %b : %b : %b : %b :  %b  :  %b  :  %h  :   %h", 
			uut.pc, uut.instr, uut.c.md.controls, uut.dp.srca, uut.dp.srcb, uut.dp.aluout, uut.dp.result,
			uut.dp.writedata,uut.dp.readdata, uut.dp.rf.rf[1], uut.dp.rf.rf[2], uut.dp.rf.rf[3], uut.dp.rf.rf[4],uut.dp.rf.wa3,
			uut.dp.flag[2], uut.dp.flag[1], uut.dp.flag[0], uut.jump, uut.pcsrc, uut.dp.pcnext, uut.dp.pcnextbr);
		instr <= 0;
		#10 reset  <= 1;
		#10 reset  <= 0;		
			 instr <= {`ADDI, `s1, 8'ha};						// 00, $s1 = a
		#10 instr <= {`ADDI, `s2, 8'hb}; 					// 01, $s2 = b
		#10 instr <= {`ADDI, `s3, 8'hc};						// 02, $s3 = c
		#10 instr <= {`OR, `s5, 1'h0, `s1, 1'h0, `s0};	//	03, 保存 s1的值
		#10 instr <= {`CMP, 4'h0, `s2, 1'h0, `s3};		// 04, 比较 s2和s3的值
		
		// s1 = s1 + 8'hf7 + max {s2, s3}
		
		#10 instr <= {`BN, `s0, 8'h10 }; 					// 05, if  s2 - s3 < 0, 跳转至 pc = 10
		#10 instr <= {`ADD, `s4, 1'h0, `s3, 1'h0, `s0};	//	10, s4赋值为 s2 s3中最大值，这里 s4 = s3
		#10 instr <= {`ADDI, `s1, 8'hf7};					// 11， s1 += 8'hf7
		#10 instr <= {`NOP, 11'h0};							//	12
		#10 instr <= {`ADDC, `s1, 1'h0, `s1, 1'h0, `s4};//	13, s1 = s1 + s4
		
		#10 instr <= {`ADD, `s1, 1'h0, `s5, 1'h0, `s0};	//	14
		
		#10 instr <= {`JMPR, `s0, 8'h30};					//	15， 跳转至 pc = 30
		#10 instr <= {`ADD, `s4, 1'h0, `s2, 1'h0, `s0};	//	30， 
		#10 instr <= {`ADDI, `s1, 8'hf7};					// 31
		#10 instr <= {`NOP, 11'h0};							//	32
		#10 instr <= {`ADDC, `s1, 1'h0, `s1, 1'h0, `s4};//	33
		#10 instr <= {`NOP, 11'h0};							//	34
		
		#10 instr <= {`JMPR, `s1, 8'hff};					// 35, next pc: 16'h0c + (00)ff = 0b
		#10 instr <= {`NOP, 11'h0};							// 0b
		#10 instr <= {`JUMP, 11'h1};							// 0c, next pc: 01
		#10 instr <= {`NOP, 11'h0};							// 01
		#10 instr <= {`HALT, 11'h0};							// 02, next pc: 02
		
	end
     always #5 clk = ~clk;
endmodule
