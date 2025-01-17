module State1(S2, S1, S0, B, E, V, O2, O1, NS1);
	input S2, S1, S0, B, E, V, O2, O1;
	output reg NS1;
	always @(*) begin
		case({S2, S1, S0})
			3'b001: begin
				case({B, E, V})
					3'b010: begin
						NS1 = 1'b1;
								end
					3'b011: begin
						NS1 = 1'b1;
								end
					default: NS1 = 1'b0;			
				endcase  
						end
			3'b010: begin
				case({B, O2, O1})
					3'b000: begin
						NS1 = 1'b1;
								end
					3'b011: begin
						NS1 = 1'b1;
								end
					default: NS1 = 1'b0;			
				endcase	
						end
			3'b011: begin
				case(B)
					1'b1: NS1 = 1'b1;
					1'b0: NS1 = 1'b0;					
				endcase
						end
			3'b100: begin
				case({B, E, V})
					3'b001: begin
						NS1 = 1'b1;
								end
					3'b011: begin
						NS1 = 1'b1;
								end
					default: NS1 = 1'b0;			
				endcase
				case(B)
					1'b1: NS1 = 1'b1;					
				endcase
					  end
			3'b101: begin
				case({B, E, V})
					3'b001: begin
						NS1 = 1'b1;
								end
					3'b011: begin
						NS1 = 1'b1;
								end
					default: NS1 = 1'b0;			
				endcase
				case(B)
					1'b1: NS1 = 1'b1;				
				endcase
					  end
			3'b110: NS1 = 1'b1;
			default: NS1 = 1'b0;
		endcase
	end
endmodule