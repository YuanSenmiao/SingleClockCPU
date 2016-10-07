`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:57:47 05/05/2015 
// Design Name: 
// Module Name:    signext 
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
module signext( input [7:0] a,
						output [15:0] y );
	
	assign y = {{8{a[7]}},a};
endmodule
