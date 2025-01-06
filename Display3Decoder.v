module Display3Decoder(W2, W1, W0, F);
	input W2, W1, W0;
	output reg [6:0] F;
	
	always @(*) begin
		case({W2, W1, W0})
			3'b000: F = 7'b0001000;
			3'b001: F = 7'b0011000;
			3'b010: F = 7'b0000001;
			3'b011: F = 7'b0000000;
			3'b100: F = 7'b1110000;
			3'b101: F = 7'b1000010;
			3'b110: F = 7'b0110001;
		endcase
	end
	
endmodule