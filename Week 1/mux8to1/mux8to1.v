`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2026 12:20:18
// Design Name: 
// Module Name: mux8to1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux8to1(d, sel, y);
input [7:0] d;
input [2:0] sel;
output reg y;

always @(*) begin
case(sel)
3'b000 : y = d[0];
3'b001 : y = d[1];
3'b010 : y = d[2];
3'b011 : y = d[3];
3'b100 : y = d[4];
3'b101 : y = d[5];
3'b110 : y = d[6];
3'b111 : y = d[7];
endcase
end
endmodule
