`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:03:17 05/05/2015 
// Design Name: 
// Module Name:    mux2 
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
module mux2 #(parameter WIDTH = 8)
				( input [WIDTH-1:0] d0, d1,
					input					s,
					output[WIDTH-1:0] y);
	
	assign y = s?d1:d0;
endmodule
