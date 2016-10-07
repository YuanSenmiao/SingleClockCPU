`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:14:03 01/08/2015 
// Design Name: 
// Module Name:    data_mem 
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
module data_mem(
	input wire wea, clka,
	input wire [7:0] addra,
	input wire [15:0] dina,
	output wire [15:0] douta
    );
reg [15:0] d_mem[255:0];
assign douta = d_mem[addra];
always @ (posedge clka)
begin
	if(wea)	d_mem[addra] = dina;
end
endmodule
