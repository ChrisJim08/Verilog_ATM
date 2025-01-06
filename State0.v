module State0(S2, S1, S0, B, E, V, O2, O1, NS0);
	input S2, S1, S0, B, E, V, O2, O1;
	output reg NS0;
	
	always @(*) begin
		case({S2, S1, S0})
		
			3'b000: NS0 = 1'b1;
			
			3'b001: begin
				case({B, E})
					2'b00: begin
						NS0 = 1'b1;
							 end
					default: NS0 = 1'b0;			
				endcase
						end
						
			3'b010: begin
				case({B, O2, O1})
					3'b000: begin
						NS0 = 1'b1;
								end
					3'b010: begin
						NS0 = 1'b1;
								end
					default: NS0 = 1'b0;			
				endcase
				case(B)
					1'b1: NS0 = 1'b1;					
				endcase
						end
						
			3'b011: NS0 = 1'b0;
						
			3'b100: begin
				case({B, E, V})
					3'b001: begin
						NS0 = 1'b1;
								end
					3'b011: begin
						NS0 = 1'b1;
								end
					default: NS0 = 1'b0;			
				endcase
					  end
					  
			3'b101: begin
				case(B)
					1'b0: NS0 = 1'b1;
					1'b1: NS0 = 1'b0;
				endcase
					  end
					  
			3'b110: begin
				case(B)
					1'b0: NS0 = 1'b1;
					1'b1: NS0 = 1'b0;
				endcase
					  end
					  
			default: NS0 = 1'b0;
			
		endcase
	end
endmodule