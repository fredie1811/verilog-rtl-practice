`timescale 1ns / 1ps

module traffic_light_fsm_tb;

reg clk, rst;
wire hwy_red, hwy_yellow, hwy_green, side_red, side_yellow, side_green;

traffic_light_fsm dut(.clk(clk), .rst(rst), .hwy_red(hwy_red), .hwy_yellow(hwy_yellow), .hwy_green(hwy_green), .side_red(side_red), .side_yellow(side_yellow), .side_green(side_green));

initial clk = 0;
always #5 clk = ~clk;

initial begin

rst = 1;
#12; rst = 0;
end

initial #90 $finish;

endmodule
