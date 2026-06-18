`timescale 1ns / 1ps

module barrel_shifter(d, shamt, dir, y);

input [7:0] d;
input [2:0] shamt;
input dir;
output reg [7:0] y;

always @(*) begin

if(dir) y = d >> shamt;
else y = d << shamt;

end

endmodule
