module Mux16to1_7b(S3, S2, S1, S0, W0, W1, W2, W3, W4, W5, W6, W7, W8, W9, W10, W11, W12, W13, W14, W15, F);
	input S3, S2, S1, S0;
	input [6:0] W0, W1, W2, W3, W4, W5, W6, W7, W8, W9, W10, W11, W12, W13, W14, W15;
	output reg [6:0] F;
	
	always @(*) begin
		case({S3, S2, S1, S0})
			4'b0000: F = W0;
			4'b0001: F = W1;
			4'b0010: F = W2;
			4'b0011: F = W3;
			4'b0100: F = W4;
			4'b0101: F = W5;
			4'b0110: F = W6;
			4'b0111: F = W7;
			4'b1000: F = W8;
			4'b1001: F = W9;
			4'b1010: F = W10;
			4'b1011: F = W11;
			4'b1100: F = W12;
			4'b1101: F = W13;
			4'b1110: F = W14;
			4'b1111: F = W15;
		endcase
	end
endmodule