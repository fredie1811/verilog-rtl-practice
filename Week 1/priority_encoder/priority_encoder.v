`timescale 1ns / 1ps

module priority_encoder(d, y, valid);
input [7:0] d;
output reg [2:0] y;
output reg valid;

always @(*) begin

casez(d)

8'b1??????? : begin y = 3'b111; valid = 1; end
8'b01?????? : begin y = 3'b110; valid = 1; end
8'b001????? : begin y = 3'b101; valid = 1; end
8'b0001???? : begin y = 3'b100; valid = 1; end
8'b00001??? : begin y = 3'b011; valid = 1; end
8'b000001?? : begin y = 3'b010; valid = 1; end
8'b0000001? : begin y = 3'b001; valid = 1; end
8'b00000001 : begin y = 3'b000; valid = 1; end
8'b00000000 : begin y = 3'b000; valid = 0; end
default: y = 3'b000;

endcase

end
endmodule
