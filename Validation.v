module validation(Amt, CurAmt, LT, GT, EQ);
	parameter MAX_BALANCE = 1'b11111111;
	
	always @(*) begin
 