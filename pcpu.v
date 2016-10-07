`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:07:39 01/08/2015 
// Design Name: 
// Module Name:    pcpu 
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

`define IDLE	1'b0
`define EXEC	1'b1

module pcpu(
	input		clk, rst, cpu_enable, start,
	input  [3:0]  select_y,
	output reg [15:0] y,
	input  [15:0] i_datain, d_datain,
	output reg d_we, 
	output reg [7:0]d_addr,// pc,
	output reg [15:0]d_dataout,
	output [7:0]i_addr
    );

/***************************		 中间变量     ******************************/

reg state; 
reg next_state = 1'b0;
reg [15:0] gr[7:0];
reg [15:0] id_ir, wb_ir, mem_ir, ex_ir;
reg [15:0] reg_A, reg_B, reg_C, reg_C1, smdr, smdr1;
reg [15:0] ALUo = 16'b0;
reg dw, zf, nf, cf, cin;

/**************************		CPU control ******************************/

always @ (posedge clk or negedge rst)
begin
	if(!rst)
		state <= `IDLE;
	else
		state <= next_state;
end
always @ (*)
begin
	case(state)
		`IDLE: begin
					if((cpu_enable == 1'b1)&&(start == 1'b1))	next_state <= `EXEC;
					else	next_state <= `IDLE;
				 end
		`EXEC: begin
					if((cpu_enable == 1'b0)||(wb_ir[15:11] == `HALT))	next_state <= `IDLE;
					else	next_state <= `EXEC;
				 end
		default:	next_state <= `IDLE;
	endcase
end

/*******************************************************************************/

/************************ 		Instruction Fetch 	************************/
reg [7:0] pc;
assign i_addr = pc;

always @ (posedge clk or negedge rst)
begin
	if(!rst)
		begin
			id_ir <= 16'b0;
			pc <= 8'b0;
		end
	else if(state == `EXEC)
		begin
			id_ir <= i_datain;
			//pc
			if(((mem_ir[15:11] == `BZ)&&(zf==1'b1))||((mem_ir[15:11] ==`BN)&&(nf==1'b1))||
					((mem_ir[15:11] == `BC)&&(cf==1'b1))||((mem_ir[15:11] ==`BNZ)&&(zf == 1'b0))||
					((mem_ir[15:11] == `BNN)&&(nf == 1'b0))||((mem_ir[15:11] == `BNC )&&(cf == 1'b0))||
					 (mem_ir[15:11] == `JUMP)||(mem_ir[15:11] == `JMPR))
					 pc <= reg_C[7:0];
			else
					 pc <= pc + 1'b1;
		end
	else//IDLE
		begin
			id_ir <= id_ir; 
			pc <= pc;
		end
end

/*******************************************************************************/

/************************ 		Instruction Decoder 	*************************/

always@(posedge clk or negedge rst)
begin
	if(!rst)
		begin
			reg_A <= 16'b0000_0000_0000_0000;
			reg_B <= 16'b0000_0000_0000_0000;
			smdr <= 16'b0000_0000_0000_0000;
			ex_ir <= 16'b0000_0000_0000_0000;
		end
	else
		begin
			if(state == `EXEC)
				begin
// 处理ex_ir
					ex_ir <= id_ir;
//处理 smdr
					if(id_ir[15:11] == `STORE)
						smdr <= gr[id_ir[10:8]];
					else
						smdr <= smdr;
					
//处理reg_A, reg_B
					
					//R type r2 r3
					if((id_ir[15:11]==`ADD)||(id_ir[15:11]==`ADDC)||(id_ir[15:11]==`SUB)||
							(id_ir[15:11]==`SUBC)||(id_ir[15:11]==`AND)||(id_ir[15:11]==`OR)||
							(id_ir[15:11]==`CMP)||(id_ir[15:11] == `XOR))
						begin
							// reg_A r2
							reg_A <= gr[id_ir[6:4]];
							// reg_B  r3
							reg_B <= gr[id_ir[2:0]];
						end
					
					// RI type	r2 val3
					else if((id_ir[15:11]==`SLL)||(id_ir[15:11]==`SLA)||(id_ir[15:11]==`SRL)||
							(id_ir[15:11]==`SRA)||(id_ir[15:11]==`LOAD)||(id_ir[15:11]==`STORE))
						begin
							// reg_A r2
							reg_A <= gr[id_ir[6:4]];
							// reg_B val3
							reg_B <= {12'b0000_0000_0000, id_ir[3:0]}; 
						end
						
					//LDIH
					else if(id_ir[15:11] == `LDIH)
						begin
							// reg_A r1
							reg_A <= gr[id_ir[10:8]];
							// reg_B {val2, val3,0000_0000}
							reg_B <= {id_ir[7:0], 8'b0000_0000};
						end							
						
						// I type r1, {val2 val3}
					else if((id_ir[15:11]==`ADDI)||(id_ir[15:11]==`SUBI)||(id_ir[15:11]==`BZ)
							||(id_ir[15:11]==`BNZ)||(id_ir[15:11]==`BN)||(id_ir[15:11]==`BNN)
							||(id_ir[15:11]==`BC)||(id_ir[15:11]==`BNC)||(id_ir[15:11]==`JMPR))
						begin
							// reg_A r1
							reg_A <= gr[id_ir[10:8]];
							// reg_B {val2, val3}
							reg_B <= {8'b0000_0000_0000, id_ir[7:0]}; 
						end
					else if(id_ir[15:11] == `JUMP)
						begin
							// reg_A val2
							reg_A <= 16'b0000_0000_0000;
							// reg_B val3
							reg_B <= {8'b0000_0000_0000, id_ir[7:0]};
						end
					else
						begin
							reg_A <= reg_A;
							reg_B <= reg_B;
						end
				end	
//IDLE状态
			else
				begin
					ex_ir <= ex_ir;
					smdr <= smdr;
					reg_A <= reg_A;
					reg_B <= reg_B;
				end
		end
end

/*******************************************************************************/

/**************************** 		Execute 		****************************/

always @ (posedge clk or negedge rst)
begin
	if(!rst)
		begin
			dw <= 1'b0;
			zf <= 1'b0;
			nf <= 1'b0;
			mem_ir <= 16'b0;
			reg_C <= 16'b0;
			smdr1 <= 16'b0;
		end
	else if(state == `EXEC)
		begin
			mem_ir <= ex_ir;
			reg_C <= ALUo;
			if((ex_ir[15:11]==`LDIH)||(ex_ir[15:11]==`ADD)||(ex_ir[15:11]==`ADDI)
				||(ex_ir[15:11]==`ADDC)	||(ex_ir[15:11]==`SUB)||(ex_ir[15:11]==`SUBI)
				||(ex_ir[15:11]==`SUBC)||(ex_ir[15:11]==`CMP)||(ex_ir[15:11]==`AND)
				||(ex_ir[15:11]==`OR)||(ex_ir[15:11]==`XOR)||(ex_ir[15:11]==`SLL)
				||(ex_ir[15:11]==`SRL)||(ex_ir[15:11]==`SLA)||(ex_ir[15:11]==`SRA))
				begin
					//zf
					if(ALUo==16'b0)	zf <= 1'b1;
					else					zf <= 1'b0;
					//nf
					if(ALUo[15]==1'b1)	nf <= 1'b1;
					else						nf <= 1'b0;
				end
			else		
				begin	
					zf <= zf;
					nf <= nf;	
				end
			
			if(ex_ir[15:11] == `STORE)
				begin
					dw <= 1'b1;
					smdr1 <= smdr;
				end
			else		
				dw <= 1'b0;
				
		end
end

/****************************		ALUo 		*************************/

/********   add addi  ***********/
wire [16:0]sum;
CLA_16bit ADD(.sub(1'b0), .cin(1'b0), .a(reg_A), .b(reg_B), .sum(sum));

/********** sub subi *************/
wire [16:0]sub;
CLA_16bit SUB(.sub(1'b1), .cin(1'b0), .a(reg_A), .b(reg_B), .sum(sub));

/************** addc  ***********/
wire [16:0]sumc;
CLA_16bit ADDC(.sub(1'b0),.cin(cin), .a(reg_A), .b(reg_B), .sum(sumc));

/***********   subc ***************/
wire [16:0]subc;
CLA_16bit SUBC(.sub(1'b1),.cin(cin), .a(reg_A), .b(reg_B), .sum(subc));

always @ (*)
begin
	if(!rst)	{cf, ALUo} <= 17'b0;
	else
	case(ex_ir[15:11])
		`LOAD:	{cf, ALUo} <= sum;
		`STORE:	{cf, ALUo} <= sum;
		`LDIH:	{cf, ALUo} <= sum;
		`ADD:		{cf, ALUo} <= sum;
		`ADDI:	{cf, ALUo} <= sum;		
		
		`JMPR:	{cf, ALUo} <= sum;
		`BZ:		{cf, ALUo} <= sum;
		`BNZ:		{cf, ALUo} <= sum;
		`BN:		{cf, ALUo} <= sum;
		`BNN:		{cf, ALUo} <= sum;
		`BC:		{cf, ALUo} <= sum;
		`BNC:		{cf, ALUo} <= sum;
		
		`SUB:		{cf, ALUo} <= sub;
		`SUBI:	{cf, ALUo} <= sub;		
		`CMP:		{cf, ALUo} <= sub;
		
		`AND:		ALUo <= (reg_A & reg_B);
		`OR:		ALUo <= (reg_A | reg_B);
		`XOR:		ALUo <= (reg_A ^ reg_B);
		`SLL:		ALUo <= (reg_A << reg_B[3:0]);
		`SRL:		ALUo <= (reg_A >> reg_B[3:0]);
		`SLA:		ALUo <= ($signed(reg_A) <<< reg_B[3:0]);
		`SRA:		ALUo <= ($signed(reg_A) >>> reg_B[3:0]);	
		`ADDC:	{cf, ALUo} <= sumc;		
		`SUBC:	{cf, ALUo} <= subc;
		default:	begin cf <= cf; ALUo <= ALUo;	end
	endcase
end

/*******************************************************************************/


/***************************		Memory Access			*************************/

always @ (posedge clk or negedge rst)
begin
	if(!rst)
		begin
			cin <= 1'b0;
			wb_ir <= 16'b0;
			reg_C1 <= 16'b0;
			d_we <= 1'b0;
			d_addr <= 8'b0;
			d_dataout <= 16'b0;
		end
	else if(state == `EXEC)
		begin
			cin <= cf;
			wb_ir <= mem_ir;
			d_we <= dw;
			d_addr <= reg_C[7:0];
			d_dataout <= smdr1;
			if(mem_ir[15:11]==`LOAD)	
				reg_C1 <= d_datain;
			else							
				reg_C1 <= reg_C;
		end
end

/*******************************************************************************/

/***************************		Write Back 			*************************/

always @ (posedge clk or negedge rst)
begin
	if(!rst)
		begin
			gr[0] <= 16'b0;
			gr[1] <= 16'b0;
			gr[2] <= 16'b0;
			gr[3] <= 16'b0;
			gr[4] <= 16'b0;
			gr[5] <= 16'b0;
			gr[6] <= 16'b0;
			gr[7] <= 16'b0;
		end
	else if(state == `EXEC)
		begin
			if((wb_ir[15:11]==`LOAD)||(wb_ir[15:11]==`LDIH)||(wb_ir[15:11]==`ADD)
				||(wb_ir[15:11]==`ADDI)||(wb_ir[15:11]==`ADDC)||(wb_ir[15:11]==`SUB)
				||(wb_ir[15:11]==`SUBI)||(wb_ir[15:11]==`SUBC)||(wb_ir[15:11]==`AND)
				||(wb_ir[15:11]==`OR)||(wb_ir[15:11]==`XOR)||(wb_ir[15:11]==`SLL)
				||(wb_ir[15:11]==`SRL)||(wb_ir[15:11]==`SLA)||(wb_ir[15:11]==`SRA))
				gr[wb_ir[10:8]] <= reg_C1;
		end
end

/************************    selecet  **********************************/

always@(*)
begin
	case(select_y)
	4'b0000:	y <= {15'b000_0000_0000_0000, cf};
	4'b0001: y <= {15'b000_0000_0000_0000, dw};
	4'b0010: y <= {8'b0000_0000, pc};
	4'b0011: y <= {8'b0000_0000, d_addr};
	4'b0100:	y <= id_ir;
	4'b0101:	y <= reg_B;
	4'b0110:	y <= reg_A;
	4'b0111:	y <= reg_C;
	4'b1000:	y <= smdr1;
	4'b1001:	y <= reg_C1;
	4'b1010:	y <= wb_ir;
	4'b1011:	y <= d_dataout;
	4'b1100:	y <= gr[0];
	4'b1101:	y <= gr[1];
	4'b1110:	y <= gr[2];
	4'b1111:	y <= gr[3];
	default: y <= 16'b0000_0000_0000_0000;
	endcase
end

/*********************************************************************/

endmodule
