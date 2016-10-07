`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:56:14 05/05/2015 
// Design Name: 
// Module Name:    sl2 
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
module sl2( input [15:0] a,
				output [15:0] y );
	
	// shift left by 2
	assign y = { a[29:01],2'b00};

endmodule
