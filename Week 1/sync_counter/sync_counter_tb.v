`timescale 1ns / 1ps

module sync_counter_tb;

reg clk, en, rst;
wire [3:0] count;

initial clk = 0;
always #5 clk = ~clk;

sync_counter dut(.clk(clk), .en(en), .rst(rst), .count(count));

initial begin 

$monitor("Time = %0t, Count = %d, Enable = %b", $time, count, en);

rst = 1; en = 1;
#12; rst = 0;
 
#50; en = 0;
#10; en = 1;

end

initial #340 $finish;

endmodule
