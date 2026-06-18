`timescale 1ns / 1ps

module async_counter_tb;

reg clk, rst;
wire [3:0] count;

async_counter dut(.clk(clk), .rst(rst), .count(count));

initial clk = 0;
always #5 clk = ~clk;

initial begin 

$monitor("Time = %0t, Count = %d", $time, count);

rst = 1;
#12; rst = 0;
end

initial #330 $finish;

endmodule
