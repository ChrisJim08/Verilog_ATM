module calculations(Sub, Add, Amt, Valid, NewAmt);
	input Sub, Add;
	input [7:0] Amt, CurAmt;
	output reg [7:0] NewAmt;
	parameter MAX = 1'b11111111;
	wire [
	
	always @(*) begin
		if (Add & ((Amt + CurAmt) > MAX)) begin
			Valid = 1'b0;
			NewAmt = CurAmt;
		end
		else if (add) begin
			Valid = 1'b1;
			NewAmt = Amt + CurAmt;
		end
		else if (