module Mux4to1(S, W0, W1, W2, W3, F);
	input [1:0] S;
	input  W0, W1, W2, W3;
	output reg F;
	
	always @(*) begin
		case(S)
			2'b00: F = W0;
			2'b01: F = W1;
			2'b10: F = W2;
			2'b11: F = W3;
		endcase
	end
endmodule