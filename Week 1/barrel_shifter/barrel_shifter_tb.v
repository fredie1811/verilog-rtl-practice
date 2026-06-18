`timescale 1ns / 1ps

module barrel_shifter_tb;

reg [7:0] d;
reg [2:0] shamt;
reg dir;
wire [7:0] y;

barrel_shifter dut(.d(d), .shamt(shamt), .dir(dir), .y(y));

initial begin

$monitor("Time = %0t, Data = %b, Dir = %b, Shamt = %b, y = %b",$time, d, dir, shamt, y);

d = 8'b10110010;
dir = 1'b0;
shamt = 3'b000; #10;
shamt = 3'b001; #10;
shamt = 3'b010; #10;
shamt = 3'b011; #10;
dir = 1'b1;
shamt = 3'b000; #10;
shamt = 3'b001; #10;
shamt = 3'b010; #10;
shamt = 3'b011; #10;
$finish;

end

endmodule
