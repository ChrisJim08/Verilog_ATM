module State2(S2, S1, S0, B, E, V, O2, O1, NS2);
	input S2, S1, S0, B, E, V, O2, O1;
	output reg NS2;
	
	always @(*) begin
		case({S2, S1, S0})
		
			3'b010: begin
				case({B, O2, O1})
					3'b001: begin
						NS2 = 1'b1;
								end
					3'b010: begin
						NS2 = 1'b1;
								end
					3'b011: begin
						NS2 = 1'b1;
								end
					default: NS2 = 1'b0;			
				endcase
						end
						
			3'b100: begin
				case({B, E, V})
					3'b000: begin
						NS2 = 1'b1;
								end
					3'b010: begin
						NS2 = 1'b1;
								end
					default: NS2 = 1'b0;			
				endcase	
						end
						
			3'b101: begin
				case({B, E, V})
					3'b000: begin
						NS2 = 1'b1;
								end
					3'b010: begin
						NS2 = 1'b1;
								end
					default: NS2 = 1'b0;					
				endcase
						end
						
			default: NS2 = 1'b0;
			
		endcase
	end
endmodule
						
						
						
						
						
						
						
						
						
						
						
						
						

						
						
						
						
						
			