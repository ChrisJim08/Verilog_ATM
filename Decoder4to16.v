module Decoder4to16 (EN, W3, W2, W1, W0, Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8, Y9, Y10, Y11, Y12, Y13, Y14, Y15);
	input EN, W3, W2, W1, W0;
	output reg Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8, Y9, Y10, Y11, Y12, Y13, Y14, Y15;
	
	always @(*) begin
		case({W3, W2, W1, W0})
			4'b0000: begin
					  Y0 = EN;
					  Y1 = 1'b0;
					  Y2 = 1'b0;
					  Y3 = 1'b0;
					  Y4 = 1'b0;
					  Y5 = 1'b0;
					  Y6 = 1'b0;
					  Y7 = 1'b0;
					  Y8 = 1'b0;
					  Y9 = 1'b0;
					  Y10 = 1'b0;
					  Y11 = 1'b0;
					  Y12 = 1'b0;
					  Y13 = 1'b0;
					  Y14 = 1'b0;
					  Y15 = 1'b0;
					  end
			4'b0001: begin
					  Y0 = 1'b0;
					  Y1 = EN;
					  Y2 = 1'b0;
					  Y3 = 1'b0;
					  Y4 = 1'b0;
					  Y5 = 1'b0;
					  Y6 = 1'b0;
					  Y7 = 1'b0;
					  Y8 = 1'b0;
					  Y9 = 1'b0;
					  Y10 = 1'b0;
					  Y11 = 1'b0;
					  Y12 = 1'b0;
					  Y13 = 1'b0;
					  Y14 = 1'b0;
					  Y15 = 1'b0;
					  end
			4'b0010: begin
					  Y0 = 1'b0;
					  Y1 = 1'b0;
					  Y2 = EN;
					  Y3 = 1'b0;
					  Y4 = 1'b0;
					  Y5 = 1'b0;
					  Y6 = 1'b0;
					  Y7 = 1'b0;
					  Y8 = 1'b0;
					  Y9 = 1'b0;
					  Y10 = 1'b0;
					  Y11 = 1'b0;
					  Y12 = 1'b0;
					  Y13 = 1'b0;
					  Y14 = 1'b0;
					  Y15 = 1'b0;
					  end
			4'b0011: begin
					  Y0 = 1'b0;
					  Y1 = 1'b0;
					  Y2 = 1'b0;
					  Y3 = EN;
					  Y4 = 1'b0;
					  Y5 = 1'b0;
					  Y6 = 1'b0;
					  Y7 = 1'b0;
					  Y8 = 1'b0;
					  Y9 = 1'b0;
					  Y10 = 1'b0;
					  Y11 = 1'b0;
					  Y12 = 1'b0;
					  Y13 = 1'b0;
					  Y14 = 1'b0;
					  Y15 = 1'b0;
					  end
			4'b0100: begin
					  Y0 = 1'b0;
					  Y1 = 1'b0;
					  Y2 = 1'b0;
					  Y3 = 1'b0;
					  Y4 = EN;
					  Y5 = 1'b0;
					  Y6 = 1'b0;
					  Y7 = 1'b0;
					  Y8 = 1'b0;
					  Y9 = 1'b0;
					  Y10 = 1'b0;
					  Y11 = 1'b0;
					  Y12 = 1'b0;
					  Y13 = 1'b0;
					  Y14 = 1'b0;
					  Y15 = 1'b0;
					  end
			4'b0101: begin
					  Y0 = 1'b0;
					  Y1 = 1'b0;
					  Y2 = 1'b0;
					  Y3 = 1'b0;
					  Y4 = 1'b0;
					  Y5 = EN;
					  Y6 = 1'b0;
					  Y7 = 1'b0;
					  Y8 = 1'b0;
					  Y9 = 1'b0;
					  Y10 = 1'b0;
					  Y11 = 1'b0;
					  Y12 = 1'b0;
					  Y13 = 1'b0;
					  Y14 = 1'b0;
					  Y15 = 1'b0;
					  end
			4'b0110: begin
					  Y0 = 1'b0;
					  Y1 = 1'b0;
					  Y2 = 1'b0;
					  Y3 = 1'b0;
					  Y4 = 1'b0;
					  Y5 = 1'b0;
					  Y6 = EN;
					  Y7 = 1'b0;
					  Y8 = 1'b0;
					  Y9 = 1'b0;
					  Y10 = 1'b0;
					  Y11 = 1'b0;
					  Y12 = 1'b0;
					  Y13 = 1'b0;
					  Y14 = 1'b0;
					  Y15 = 1'b0;
					  end
			4'b0111: begin
					  Y0 = 1'b0;
					  Y1 = 1'b0;
					  Y2 = 1'b0;
					  Y3 = 1'b0;
					  Y4 = 1'b0;
					  Y5 = 1'b0;
					  Y6 = 1'b0;
					  Y7 = EN;
					  Y8 = 1'b0;
					  Y9 = 1'b0;
					  Y10 = 1'b0;
					  Y11 = 1'b0;
					  Y12 = 1'b0;
					  Y13 = 1'b0;
					  Y14 = 1'b0;
					  Y15 = 1'b0;
					  end
			4'b1000: begin
					  Y0 = 1'b0;
					  Y1 = 1'b0;
					  Y2 = 1'b0;
					  Y3 = 1'b0;
					  Y4 = 1'b0;
					  Y5 = 1'b0;
					  Y6 = 1'b0;
					  Y7 = 1'b0;
					  Y8 = EN;
					  Y9 = 1'b0;
					  Y10 = 1'b0;
					  Y11 = 1'b0;
					  Y12 = 1'b0;
					  Y13 = 1'b0;
					  Y14 = 1'b0;
					  Y15 = 1'b0;
					  end
			4'b1001: begin
					  Y0 = 1'b0;
					  Y1 = 1'b0;
					  Y2 = 1'b0;
					  Y3 = 1'b0;
					  Y4 = 1'b0;
					  Y5 = 1'b0;
					  Y6 = 1'b0;
					  Y7 = 1'b0;
					  Y8 = 1'b0;
					  Y9 = EN;
					  Y10 = 1'b0;
					  Y11 = 1'b0;
					  Y12 = 1'b0;
					  Y13 = 1'b0;
					  Y14 = 1'b0;
					  Y15 = 1'b0;
					  end
			4'b1010: begin
					  Y0 = 1'b0;
					  Y1 = 1'b0;
					  Y2 = 1'b0;
					  Y3 = 1'b0;
					  Y4 = 1'b0;
					  Y5 = 1'b0;
					  Y6 = 1'b0;
					  Y7 = 1'b0;
					  Y8 = 1'b0;
					  Y9 = 1'b0;
					  Y10 = EN;
					  Y11 = 1'b0;
					  Y12 = 1'b0;
					  Y13 = 1'b0;
					  Y14 = 1'b0;
					  Y15 = 1'b0;
					  end
			4'b1011: begin
					  Y0 = 1'b0;
					  Y1 = 1'b0;
					  Y2 = 1'b0;
					  Y3 = 1'b0;
					  Y4 = 1'b0;
					  Y5 = 1'b0;
					  Y6 = 1'b0;
					  Y7 = 1'b0;
					  Y8 = 1'b0;
					  Y9 = 1'b0;
					  Y10 = 1'b0;
					  Y11 = EN;
					  Y12 = 1'b0;
					  Y13 = 1'b0;
					  Y14 = 1'b0;
					  Y15 = 1'b0;
					  end
			4'b1100: begin
					  Y0 = 1'b0;
					  Y1 = 1'b0;
					  Y2 = 1'b0;
					  Y3 = 1'b0;
					  Y4 = 1'b0;
					  Y5 = 1'b0;
					  Y6 = 1'b0;
					  Y7 = 1'b0;
					  Y8 = 1'b0;
					  Y9 = 1'b0;
					  Y10 = 1'b0;
					  Y11 = 1'b0;
					  Y12 = EN;
					  Y13 = 1'b0;
					  Y14 = 1'b0;
					  Y15 = 1'b0;
					  end
			4'b1101: begin
					  Y0 = 1'b0;
					  Y1 = 1'b0;
					  Y2 = 1'b0;
					  Y3 = 1'b0;
					  Y4 = 1'b0;
					  Y5 = 1'b0;
					  Y6 = 1'b0;
					  Y7 = 1'b0;
					  Y8 = 1'b0;
					  Y9 = 1'b0;
					  Y10 = 1'b0;
					  Y11 = 1'b0;
					  Y12 = 1'b0;
					  Y13 = EN;
					  Y14 = 1'b0;
					  Y15 = 1'b0;
					  end
			4'b1110: begin
					  Y0 = 1'b0;
					  Y1 = 1'b0;
					  Y2 = 1'b0;
					  Y3 = 1'b0;
					  Y4 = 1'b0;
					  Y5 = 1'b0;
					  Y6 = 1'b0;
					  Y7 = 1'b0;
					  Y8 = 1'b0;
					  Y9 = 1'b0;
					  Y10 = 1'b0;
					  Y11 = 1'b0;
					  Y12 = 1'b0;
					  Y13 = 1'b0;
					  Y14 = EN;
					  Y15 = 1'b0;
					  end
			4'b1111: begin
					  Y0 = 1'b0;
					  Y1 = 1'b0;
					  Y2 = 1'b0;
					  Y3 = 1'b0;
					  Y4 = 1'b0;
					  Y5 = 1'b0;
					  Y6 = 1'b0;
					  Y7 = 1'b0;
					  Y8 = 1'b0;
					  Y9 = 1'b0;
					  Y10 = 1'b0;
					  Y11 = 1'b0;
					  Y12 = 1'b0;
					  Y13 = 1'b0;
					  Y14 = 1'b0;
					  Y15 = EN;
					  end
		endcase
	end
endmodule