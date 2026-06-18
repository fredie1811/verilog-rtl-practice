`timescale 1ns / 1ps

module priority_encoder_tb;

reg [7:0] d;
wire [2:0] y;
wire valid;

priority_encoder dut (.d(d), .y(y), .valid(valid));

initial begin

$monitor("Time = %t, d = %b, y = %b, valid = %b", $time, d, y, valid);

d = 8'b00000000; #10;
d = 8'b00000001; #10;
d = 8'b00000010; #10;
d = 8'b00000100; #10;
d = 8'b00001000; #10;
d = 8'b00010000; #10;
d = 8'b00100000; #10;
d = 8'b01000000; #10;
d = 8'b10000000; #10;
d = 8'b10000001; #10;
d = 8'b00101010; #10;
d = 8'b11111111; #10;

$finish;

end



endmodule
