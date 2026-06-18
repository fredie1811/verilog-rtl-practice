`timescale 1ns / 1ps

module async_counter(clk, rst, count);

input clk, rst;
output reg [3:0] count;

always @(negedge clk or posedge rst) begin
if(rst)
count[0] <= 1'b0;
else
count[0] <= ~count[0];
end

always @(negedge count[0] or posedge rst) begin
if(rst)
count[1] <= 1'b0;
else
count[1] <= ~count[1];
end

always @(negedge count[1] or posedge rst) begin
if(rst)
count[2] <= 1'b0;
else
count[2] <= ~count[2];
end

always @(negedge count[2] or posedge rst) begin
if(rst)
count[3] <= 1'b0;
else
count[3] <= ~count[3];
end

endmodule
