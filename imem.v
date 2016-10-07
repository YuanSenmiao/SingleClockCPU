`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:00:53 05/06/2015 
// Design Name: 
// Module Name:    imem 
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
module imem( input [5:0] a,
					output [31:0] rd );
	reg[31:0] RAM[63:0];
	
	initial
		begin
			$readmemh("memfile.dat",RAM);
		end
	assign rd = RAM[a];	// word aligned
endmodule
