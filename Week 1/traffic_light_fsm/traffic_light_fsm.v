`timescale 1ns / 1ps

module traffic_light_fsm(clk, rst, hwy_red, hwy_yellow, hwy_green, side_red, side_yellow, side_green);
input clk, rst;
output reg hwy_red, hwy_yellow, hwy_green, side_red, side_yellow, side_green;

parameter s0 = 2'b00, s1 = 2'b01, s2 = 2'b10, s3 = 2'b11;
reg [1:0] current_state, next_state;

always @(posedge clk or posedge rst) begin

if(rst)
current_state <= s0;
else
current_state <= next_state;

end

always @(*) begin

case(current_state)
s0 : next_state = s1;
s1 : next_state = s2;
s2 : next_state = s3;
s3 : next_state = s0;
default: next_state = s0;
endcase

end

always @(*) begin

case(current_state)

s0 : begin hwy_green = 1; hwy_yellow = 0; hwy_red = 0;
           side_green = 0; side_yellow = 0; side_red = 1; end
s1 : begin hwy_green = 0; hwy_yellow = 1; hwy_red = 0;
           side_green = 0; side_yellow = 0; side_red = 1; end
s2 : begin hwy_green = 0; hwy_yellow = 0; hwy_red = 1;
           side_green = 1; side_yellow = 0; side_red= 0; end
s3 : begin hwy_green = 0; hwy_yellow = 0; hwy_red = 1;
           side_green = 0; side_yellow = 1; side_red = 0; end
default: begin hwy_green = 1; hwy_yellow = 0; hwy_red = 0;
           side_green = 0; side_yellow = 0; side_red = 1; end

endcase
end
endmodule
