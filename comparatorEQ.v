module comparatorEQ(Pin, CurPin, EQ);
	input [3:0] Pin, CurPin;
	output reg EQ;
	
	always @(*) begin
		if (Pin == CurPin) begin
			EQ = 1'b1;
		end
		else begin
			EQ = 1'b0;
		end
	end
endmodule
			