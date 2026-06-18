`timescale 1ns / 1ps

module sync_counter(clk, rst, en, count);

input clk, rst, en;
output reg [3:0] count;

always @(posedge clk or posedge rst) begin

if(rst)
count <= 0;
else if (en)
count <= count + 1;

end

endmodule
