`timescale 1ns / 1ps

module alu_tb;

reg [7:0] a,b;
reg [2:0] op;
wire [7:0] y;
wire zero;

alu dut(.a(a), .b(b), .op(op), .y(y), .zero(zero));

initial begin

$monitor("Time = %0t, A = %h, B = %h, Op = %b, Y = %h, zero = %b",$time, a,b,op,y,zero);

a = 8'h0f; b = 8'h03;
op = 3'b000; #10
op = 3'b001; #10
op = 3'b010; #10
op = 3'b011; #10
op = 3'b100; #10
op = 3'b101; #10
op = 3'b110; #10
op = 3'b111; #10
a = 8'h03; op = 3'b001; #10;

$finish;

end

endmodule
