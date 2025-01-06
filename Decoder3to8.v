module Decoder3to8 (W2, W1, W0, Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7);
	input W2, W1, W0;
	output reg Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7;
	
	always @(*) begin
		case({W2, W1, W0})
			3'b000: begin
					  Y0 = 1'b1;
					  Y1 = 1'b0;
					  Y2 = 1'b0;
					  Y3 = 1'b0;
					  Y4 = 1'b0;
					  Y5 = 1'b0;
					  Y6 = 1'b0;
					  Y7 = 1'b0;
					  end
			3'b001: begin
					  Y0 = 1'b0;
					  Y1 = 1'b1;
					  Y2 = 1'b0;
					  Y3 = 1'b0;
					  Y4 = 1'b0;
					  Y5 = 1'b0;
					  Y6 = 1'b0;
					  Y7 = 1'b0;
					  end
			3'b010: begin
					  Y0 = 1'b0;
					  Y1 = 1'b0;
					  Y2 = 1'b1;
					  Y3 = 1'b0;
					  Y4 = 1'b0;
					  Y5 = 1'b0;
					  Y6 = 1'b0;
					  Y7 = 1'b0;
					  end
			3'b011: begin
					  Y0 = 1'b0;
					  Y1 = 1'b0;
					  Y2 = 1'b0;
					  Y3 = 1'b1;
					  Y4 = 1'b0;
					  Y5 = 1'b0;
					  Y6 = 1'b0;
					  Y7 = 1'b0;
					  end
			3'b100: begin
					  Y0 = 1'b0;
					  Y1 = 1'b0;
					  Y2 = 1'b0;
					  Y3 = 1'b0;
					  Y4 = 1'b1;
					  Y5 = 1'b0;
					  Y6 = 1'b0;
					  Y7 = 1'b0;
					  end
			3'b101: begin
					  Y0 = 1'b0;
					  Y1 = 1'b0;
					  Y2 = 1'b0;
					  Y3 = 1'b0;
					  Y4 = 1'b0;
					  Y5 = 1'b1;
					  Y6 = 1'b0;
					  Y7 = 1'b0;
					  end
			3'b110: begin
					  Y0 = 1'b0;
					  Y1 = 1'b0;
					  Y2 = 1'b0;
					  Y3 = 1'b0;
					  Y4 = 1'b0;
					  Y5 = 1'b0;
					  Y6 = 1'b1;
					  Y7 = 1'b0;
					  end
			3'b111: begin
					  Y0 = 1'b0;
					  Y1 = 1'b0;
					  Y2 = 1'b0;
					  Y3 = 1'b0;
					  Y4 = 1'b0;
					  Y5 = 1'b0;
					  Y6 = 1'b0;
					  Y7 = 1'b1;
					  end
		endcase
	end
	
endmodule