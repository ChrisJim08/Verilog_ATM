module Mux2to1_11b(S, W1, F);
	input S;
	input [11:0] W1;
	output reg [11:0] F;
	
	always @(*) begin
		case(S)
			1'b0: F = 12'b101010101010;
			1'b1: F = W1;
		endcase
	end
endmodule