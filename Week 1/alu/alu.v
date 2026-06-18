`timescale 1ns / 1ps

module alu(a, b, op, y, zero);

input [7:0] a,b;
input [2:0] op;
output reg [7:0] y;
output zero;

assign zero = (y == 8'b0);

always @(*) begin

case(op)

3'b000 : y = a + b;
3'b001 : y = a - b;
3'b010 : y = a & b;
3'b011 : y = a | b;
3'b100 : y = a ^ b;
3'b101 : y = ~a;
3'b110 : y = a << 1'b1;
3'b111 : y = a >> 1'b1;
default : y = 8'b0;

endcase
end

endmodule
