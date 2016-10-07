`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:52:46 05/08/2015
// Design Name:   mips
// Module Name:   E:/Xilinx/workspace/pcpu/single_clk_cpu/test.v
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
`define gr0 3'b000
`define gr1 3'b001
`define gr2 3'b010
`define gr3 3'b011
`define gr4 3'b100
`define gr5 3'b101
`define gr6 3'b110
`define gr7 3'b111

module test;

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
        
		// Add stimulus here
		clk = 0;
		reset = 0;
		instr = 0;
		readdata = 0;
		#5
		$display("pc :      instr       : controls : srca : srcb :aluout:result:  wd  :  rd  : rf1  : rf2  : rf3  : wa3 :zf :cf :nf :jump :pcsrc:pcnext:pcnextbr");
		$monitor("%h : %b : %b : %h : %h : %h : %h : %h : %h : %h : %h : %h : %b : %b : %b : %b :  %b  :  %b  :  %h  :   %h", 
			uut.pc, uut.instr, uut.c.md.controls, uut.dp.srca, uut.dp.srcb, uut.dp.aluout, uut.dp.result,
			uut.dp.writedata,uut.dp.readdata, uut.dp.rf.rf[1], uut.dp.rf.rf[2], 
			uut.dp.rf.rf[3], uut.dp.rf.wa3,
			uut.dp.flag[2], uut.dp.flag[1], uut.dp.flag[0], uut.jump, uut.pcsrc, uut.dp.pcnext, uut.dp.pcnextbr);
		instr <= 0;
		#10 reset  <= 1;
		#10 reset  <= 0;	
			 instr <= {`LOAD, `gr1, 1'b0, `gr0, 4'b0000};
			 readdata <= 16'h00ab;
		#10 instr <= {`NOP, 11'b000_0000_0000};			
		#10 instr <= {`JUMP, 3'b000, 4'b0001, 4'b0011};
		#10 instr <= {`ADDI, `gr1, 4'b0001, 4'b0001};
		#10 instr <= {`NOP, 11'b000_0000_0000};			
		#10 instr <= {`ADDI, `gr2, 4'b0001, 4'b0001 };		
      #10 instr <= {`ADD, `gr3, 1'b0, `gr1, 1'b0, `gr2};
      #10 instr <= {`ADD, `gr3, 1'b0, `gr1, 1'b0, `gr2};
		#10 instr <= {`ADDI, `gr1, 4'b1111, 4'b1111 };
		#10 instr <= {`ADDC, `gr3, 1'b0, `gr2, 1'b0, `gr1};
		#10 instr <= {`SUB, `gr3, 1'b0, `gr2, 1'b0, `gr1};
		#10 instr <= {`SUBC, `gr3, 1'b0, `gr2, 1'b0, `gr1};
		#10 instr <= {`SUBI, `gr1, 4'b1111, 4'b1111 };
      #10 instr <= {`STORE, `gr3, 1'b0, `gr0, 4'b0010};
		#10 instr <= {`NOP, 11'b000_0000_0000};
		#10 instr <= {`SLL, `gr3, 1'b0, `gr1, 4'b0010};
		#10 instr <= {`SRA, `gr3, 1'b0, `gr3, 4'b0010};
		#10 instr <= {`SLA, `gr3, 1'b0, `gr2, 4'b0011};
		#10 instr <= {`SRL, `gr3, 1'b0, `gr2, 4'b0001};		
		#10 instr <= {`NOP, 11'b000_0000_0000};				
		#10 instr <= {`LDIH, `gr1, 8'b1010_1101 };
		#10 instr <= {`CMP, `gr1, 1'b0, `gr2, 1'b0, `gr3};
		#10 instr <= {`BNZ, `gr2, 4'b0000, 4'b0101 };
		#10 instr <= {`NOP, 11'b000_0000_0000};
		#10 instr <= {`ADDI, `gr1, 4'b1111, 4'b1111 };
		#10 instr <= {`AND, `gr3, 1'b0,`gr1, 1'b0,`gr2 };
		#10 instr <= {`SUBI, `gr1, 4'b1100, 4'b1111 };
		#10 instr <= {`OR, `gr3,1'b0, `gr1,1'b0, `gr2 };
		#10 instr <= {`XOR, `gr3, 1'b0,`gr1, 1'b0,`gr2 };		
		#10 instr <= {`NOP, 11'b000_0000_0000};
		#10 instr <= {`HALT, 11'b000_0000_0000};
	end
     always #5 clk = ~clk;
endmodule

