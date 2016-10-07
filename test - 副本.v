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
`define HALT		5'b00000
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
/*
op[0] = "HALT";
op[1] = "NOP";
op[2] = "JUMP";
op[3] = "SUB";
op[4] = "ADDC";
op[5] = "SUBC";
op[6] = "OR";
op[7] = "AND";
op[8] = "XOR";
op[9] = "CMP";
op[10] = "SLL";
op[11] = "SRL";
op[12] = "SLA";
op[13] = "SRA";
op[14] = "SUBI";
op[15] = "LDIH";
op[16] = "ADD";
op[17] = "LOAD";
op[18] = "STORE";
op[19] = "ADDI";
op[20] = "BZ";
op[21] = "BNZ";
op[22] = "BC";
op[23] = "BNC";
op[24] = "BN";
op[25] = "BNN";
op[26] = "JMPR";
*/

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
		clk <= 0;
		forever #10 clk <= ~clk;
	end		
	initial begin
	uut.dp.rf.rf[0] <= 16'b0;
	uut.dp.rf.rf[1] <= 16'b0;
	uut.dp.rf.rf[2] <= 16'b0;
	uut.dp.rf.rf[3] <= 16'b0;
	uut.dp.rf.rf[4] <= 16'b0;
	uut.dp.rf.rf[5] <= 16'b0;
	uut.dp.rf.rf[6] <= 16'b0;
	uut.dp.rf.rf[7] <= 16'b0;
	end
		
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		instr = 0;
		readdata = 0;

		// Wait 100 ns for global reset to finish
		#10;
        
		// Add stimulus here
		
		$display("LOAD,ADD,HALT,SUB,STORE");
		$display("pc :      instr       : op : controls  : srca : srcb :aluout:result:  wd  :  rd  : rf1  : rf2  : rf3  :zf :cf :nf :jump :branch:pcsrc:signimm :pcnext:pcnextbr:pcplus1:pcbranch");
		$monitor("%h : %b : %d : %b : %h : %h : %h : %h : %h : %h : %h : %h : %h : %b : %b : %b :  %b  :  %b   :  %b  :  %h  :  %h  :   %h   :  %h   :  %h", 
			uut.pc, uut.instr, uut.instr[15:11], uut.c.md.controls, uut.dp.srca, uut.dp.srcb, uut.dp.aluout, uut.dp.result,
			uut.dp.writedata,uut.dp.readdata, uut.dp.rf.rf[1], uut.dp.rf.rf[2],
			uut.dp.rf.rf[3], uut.dp.flag[2], uut.dp.flag[1], uut.dp.flag[0], uut.jump, uut.c.branch, uut.pcsrc, uut.dp.signimm, uut.dp.pcnext, uut.dp.pcnextbr, uut.dp.pcplus1, uut.dp.pcbranch);

		#20 reset  <= 1;
		#20 reset  <= 0;
			 instr <= {`ADDI, `gr1, 4'b1010, 4'b1011 };
	  		 instr <= {`LOAD, `gr1, 1'b0, `gr0, 4'b0000};
			 readdata <= 16'h00ab;
		#20 instr <= {`NOP, 11'b000_0000_0000};
		#20 instr <= {`ADDI, `gr1, 4'b0001, 4'b0001};
		$display("pc :      instr       : op : controls  : srca : srcb :aluout:result:  wd  :  rd  : rf1  : rf2  : rf3  :zf :cf :nf :jump :branch:pcsrc:signimm :pcnext:pcnextbr:pcplus1:pcbranch");
		#20 instr <= {`JUMP, 3'b000, 4'b0000, 4'b0111};
		#20 instr <= {`NOP, 11'b000_0000_0000};
		$display("pc :      instr       : op : controls  : srca : srcb :aluout:result:  wd  :  rd  : rf1  : rf2  : rf3  :zf :cf :nf :jump :branch:pcsrc:signimm :pcnext:pcnextbr:pcplus1:pcbranch");
		#20 instr <= {`ADDI, `gr2, 4'b0001, 4'b0001 };		
      #20 instr <= {`ADD, `gr3, 1'b0, `gr1, 1'b0, `gr2};
      #20 instr <= {`ADD, `gr3, 1'b0, `gr1, 1'b0, `gr2};
		#20 instr <= {`ADDI, `gr1, 4'b1111, 4'b1111 };
		#20 instr <= {`ADDC, `gr3, 1'b0, `gr2, 1'b0, `gr1};
		#20 instr <= {`SUB, `gr3, 1'b0, `gr2, 1'b0, `gr1};
		#20 instr <= {`SUBC, `gr3, 1'b0, `gr2, 1'b0, `gr1};
		#20 instr <= {`SUBI, `gr1, 4'b1111, 4'b1111 };
      #20 instr <= {`STORE, `gr3, 1'b0, `gr0, 4'b0010};
		#20 instr <= {`NOP, 11'b000_0000_0000};
		$display("pc :      instr       : op : controls  : srca : srcb :aluout:result:  wd  :  rd  : rf1  : rf2  : rf3  :zf :cf :nf :jump :branch:pcsrc:signimm :pcnext:pcnextbr:pcplus1:pcbranch");
		#20 instr <= {`SLL, `gr3, 1'b0, `gr1, 4'b0010};
		#20 instr <= {`SRA, `gr3, 1'b0, `gr3, 4'b0010};
		#20 instr <= {`SLA, `gr3, 1'b0, `gr2, 4'b0011};
		#20 instr <= {`SRL, `gr3, 1'b0, `gr2, 4'b0001};
		#20 instr <= {`NOP, 11'b000_0000_0000};
		$display("pc :      instr       : op : controls  : srca : srcb :aluout:result:  wd  :  rd  : rf1  : rf2  : rf3  :zf :cf :nf :jump :branch:pcsrc:signimm :pcnext:pcnextbr:pcplus1:pcbranch");
		#20 instr <= {`LDIH, `gr1, 8'b0000_0100 };
		#20 instr <= {`BNZ, `gr1, 4'b0000, 4'b0001 };
		#20 instr <= {`ADDI, `gr1, 4'b1111, 4'b1111 };
		#20 instr <= {`AND, `gr3, 1'b0,`gr1, 1'b0,`gr2 };
		#20 instr <= {`SUBI, `gr1, 4'b1100, 4'b1111 };
		#20 instr <= {`OR, `gr3,1'b0, `gr1,1'b0, `gr2 };
		#20 instr <= {`XOR, `gr3, 1'b0,`gr1, 1'b0,`gr2 };
		#20 instr <= {`NOP, 11'b000_0000_0000};
	end
      
endmodule

