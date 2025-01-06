module Demux1to4(S, F, Y0, Y1, Y2, Y3);
	input [1:0] S;
	input F;
	output reg Y0, Y1, Y2, Y3;
	
	
	always @(*) begin
		case(S)
			2'b00: begin
						Y0 = F;
						Y1 = 1'b0;
						Y2 = 1'b0;
						Y3 = 1'b0;
					 end
			2'b01: begin
						Y0 = 1'b0;
						Y1 = F;
						Y2 = 1'b0;
						Y3 = 1'b0;
					 end
			2'b10: begin
						Y0 = 1'b0;
						Y1 = 1'b0;
						Y2 = F;
						Y3 = 1'b0;
					 end
			2'b11: begin
						Y0 = 1'b0;
						Y1 = 1'b0;
						Y2 = 1'b0;
						Y3 = F;
					 end
		endcase
	end
endmodule