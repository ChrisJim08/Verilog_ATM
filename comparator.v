module comparator(Amt, CurAmt, LTEQ);
	input [7:0] Amt, CurAmt;
	output reg LTEQ;
	
	always @(*) begin
		if (Amt <= CurAmt) begin
			LTEQ = 1'b1;
		end
		else begin
			LTEQ = 1'b0;
		end
	end
endmodule
			