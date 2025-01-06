module Demux1to4_4b(S, F, Y0, Y1, Y2, Y3);
	input [1:0] S;
	input [3:0] F;
	output reg [3:0] Y0, Y1, Y2, Y3;
	
	
	always @(*) begin
		case(S)
			2'b00: Y0 = F;
			2'b01: Y1 = F;
			2'b10: Y2 = F;
			2'b11: Y3 = F;
		endcase
	end
endmodule