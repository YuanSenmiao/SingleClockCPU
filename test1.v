`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:52:46 05/08/2015
// Design Name:   mips
// Module Name:   E:/Xilinx/workspace/pcpu/single_clk_cpu/test2.v
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


module test1;

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
		clk = 0;	reset = 0; instr = 0; readdata = 0;	#5
		// $s1 = 23; $s1 += 5; $s2 = 11; $s3 = $s1 + $s2; $s1 -= $s2; 
		$display("\n\t$s1 = 23; $s1 += 5; $s2 = 11; $s3 = $s1 + $s2; $s1 -= $s2;\n");
		$display("pc :      instr       : controls : srca : srcb :aluout:result:  wd  :  rd  : rf1  : rf2  : rf3  : wa3 :zf :cf :nf :jump :pcsrc:pcnext:pcnextbr");
		$monitor("%h : %b : %b : %h : %h : %h : %h : %h : %h : %h : %h : %h : %b : %b : %b : %b :  %b  :  %b  :  %h  :   %h", 
			uut.pc, uut.instr, uut.c.md.controls, uut.dp.srca, uut.dp.srcb, uut.dp.aluout, uut.dp.result,
			uut.dp.writedata,uut.dp.readdata, uut.dp.rf.rf[1], uut.dp.rf.rf[2], 
			uut.dp.rf.rf[3], uut.dp.rf.wa3,
			uut.dp.flag[2], uut.dp.flag[1], uut.dp.flag[0], uut.jump, uut.pcsrc, uut.dp.pcnext, uut.dp.pcnextbr);
		instr <= 0;
		#10 reset  <= 1;
		#10 reset  <= 0;	// 手动输入基地址为$s0（ = 0）偏移量为0所装载的数据内容readdata，将数据16'h0023写入寄存器$s1
			 instr <= {`LOAD, `s1, 1'h0, `s0, 4'h0};		readdata <= 16'h0023; // $s1 = 23;
		#10 instr <= {`NOP, 11'h0}; // 由于下一指令对r1进行 ADDI， 与前面的 LOAD r1 相关，故写回过程执行一个NOP
		#10 instr <= {`ADDI, `s1, 8'h5};		// $s1 += 5;
		#10 instr <= {`LOAD, `s2, 1'h0, `s0, 4'h1};		readdata <= 16'h0011; //$s2 = 11;
		#10 instr <= {`NOP, 11'h0};
		#10 instr <= {`ADD, `s3, 1'h0, `s1, 1'h0, `s2};		// $s3 = $s1 + $s2;
		#10 instr <= {`SUB, `s1, 1'h0, `s1, 1'h0, `s2};		// $s1 -= $s2;
		#10 instr <= {`NOP, 11'h0};	// 这个NOP不是必要的，只是为了方便在下一段测试前先看一下结果。
		
		// swap s1 s2
		$display("\n\tSwap $s1 and $s2\n");
		$display("pc :      instr       : controls : srca : srcb :aluout:result:  wd  :  rd  : rf1  : rf2  : rf3  : wa3 :zf :cf :nf :jump :pcsrc:pcnext:pcnextbr");
		// 已知$s0 = 0;
		#10 instr <= {`ADD, `s3, 1'h0, `s0, 1'h0, `s2};		//#10 instr <= {`NOP, 11'h0}; 	// $s3 = $s2;
		#10 instr <= {`ADD, `s2, 1'h0, `s0, 1'h0, `s1};		//#10 instr <= {`NOP, 11'h0};	// $s2 = $s1;
		#10 instr <= {`ADD, `s1, 1'h0, `s0, 1'h0, `s3};		// $s1 = $s3;
		#10 instr <= {`NOP, 11'h0};	// 这个NOP不是必要的，只是为了方便在下一段测试前先看一下结果。
		
		// STORE 
		#10 instr <= {`STORE, `s2, 1'h0, `s0, 4'h1};			#10 instr <= {`NOP, 11'h0};
		
		#10 instr <= {`HALT, 11'h0};
	end
     always #5 clk = ~clk;
endmodule

