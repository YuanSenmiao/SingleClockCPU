`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:09:25 01/08/2015 
// Design Name: 
// Module Name:    div_clk2 
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
module div_clk2(
	input clk, rst, 
	output mclk
);
reg [25:0]count;
assign mclk = count[25];
always@(posedge clk or negedge rst)
begin
	if(!rst)	count <= 26'b0;
	else	count <= count + 1'b1;
end

endmodule
