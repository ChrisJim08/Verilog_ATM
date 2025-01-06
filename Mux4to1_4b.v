module Mux4to1_4b(S, W0, W1, W2, W3, F);
	input [1:0] S;
	input [3:0] W0, W1, W2, W3;
	output reg [3:0] F;
	
	always @(*) begin
		case(S)
			2'b00: F = W0;
			2'b01: F = W1;
			2'b10: F = W2;
			2'b11: F = W3;
		endcase
	end
endmodule