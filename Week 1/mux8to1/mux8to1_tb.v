`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2026 16:45:33
// Design Name: 
// Module Name: mux8to1_tb
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
module mux8to1_tb;

reg [7:0] d;
reg [2:0] sel;
wire y;

mux8to1 uut (
    .d(d),
    .sel(sel),
    .y(y)
);

initial begin
    $dumpfile("mux.vcd");
    $dumpvars(0, mux8to1_tb);

    $monitor("Time=%0t d=%b sel=%b y=%b",
             $time, d, sel, y);

    d = 8'b10110010;

    sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;
    sel = 3'b101; #10;
    sel = 3'b110; #10;
    sel = 3'b111; #10;

    $finish;
end

endmodule
