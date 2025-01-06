module RegisterFile16_4b(DATA, RA3, RA2, RA1, RA0, WA3, WA2, WA1, WA0, LD_DATA, WR, CLRN, CLK);
	
	//Address and control inputs
	input RA3, RA2, RA1, RA0, WA3, WA2, WA1, WA0, WR, CLRN, CLK;
	
	//4 bit input 
	input [3:0] LD_DATA;
	
	//4 Bit output 
	output [3:0] DATA;
	
	//All registers data 
	wire [3:0] VALUE0, VALUE1, VALUE2, VALUE3, VALUE4, VALUE5, VALUE6, VALUE7, VALUE8, VALUE9, VALUE10, VALUE11, VALUE12, VALUE13, VALUE14, VALUE15;
	
	//Write Enable Decoder
	Decoder4to16 decoder(.EN(WR), .W3(WA3), .W2(WA2), .W1(WA1), .W0(WA0), .Y0(Y0), .Y1(Y1), .Y2(Y2), .Y3(Y3), .Y4(Y4), .Y5(Y5), .Y6(Y6), .Y7(Y7), .Y8(Y8), .Y9(Y9), .Y10(Y10), .Y11(Y11), .Y12(Y12), .Y13(Y13), .Y14(Y14), .Y15(Y15));
	
	//16 4-bit Registers
	reg4b reg0(.IN(LD_DATA), .LD(Y0), .CLK(CLK), .OUT(VALUE0), .CLRN(CLRN));
	reg4b reg1(.IN(LD_DATA), .LD(Y1), .CLK(CLK), .OUT(VALUE1), .CLRN(CLRN));
	reg4b reg2(.IN(LD_DATA), .LD(Y2), .CLK(CLK), .OUT(VALUE2), .CLRN(CLRN));
	reg4b reg3(.IN(LD_DATA), .LD(Y3), .CLK(CLK), .OUT(VALUE3), .CLRN(CLRN));
	reg4b reg4(.IN(LD_DATA), .LD(Y4), .CLK(CLK), .OUT(VALUE4), .CLRN(CLRN));
	reg4b reg5(.IN(LD_DATA), .LD(Y5), .CLK(CLK), .OUT(VALUE5), .CLRN(CLRN));
	reg4b reg6(.IN(LD_DATA), .LD(Y6), .CLK(CLK), .OUT(VALUE6), .CLRN(CLRN));
	reg4b reg7(.IN(LD_DATA), .LD(Y7), .CLK(CLK), .OUT(VALUE7), .CLRN(CLRN));
	reg4b reg8(.IN(LD_DATA), .LD(Y8), .CLK(CLK), .OUT(VALUE8), .CLRN(CLRN));
	reg4b reg9(.IN(LD_DATA), .LD(Y9), .CLK(CLK), .OUT(VALUE9), .CLRN(CLRN));
	reg4b reg10(.IN(LD_DATA), .LD(Y10), .CLK(CLK), .OUT(VALUE10), .CLRN(CLRN));
	reg4b reg11(.IN(LD_DATA), .LD(Y11), .CLK(CLK), .OUT(VALUE11), .CLRN(CLRN));
	reg4b reg12(.IN(LD_DATA), .LD(Y12), .CLK(CLK), .OUT(VALUE12), .CLRN(CLRN));
	reg4b reg13(.IN(LD_DATA), .LD(Y13), .CLK(CLK), .OUT(VALUE13), .CLRN(CLRN));
	reg4b reg14(.IN(LD_DATA), .LD(Y14), .CLK(CLK), .OUT(VALUE14), .CLRN(CLRN));
	reg4b reg15(.IN(LD_DATA), .LD(Y15), .CLK(CLK), .OUT(VALUE15), .CLRN(CLRN));
	
	//4 bit MUX
	Mux16to1_4b mux(.S3(RA3), .S2(RA2), .S1(RA1), .S0(RA0), .W0(VALUE0), .W1(VALUE1), .W2(VALUE2), .W3(VALUE3), .W4(VALUE4), .W5(VALUE5), .W6(VALUE6), .W7(VALUE7), .W8(VALUE8), .W9(VALUE9), .W10(VALUE10), .W11(VALUE11), .W12(VALUE13), .W13(VALUE13), .W14(VALUE14), .W15(VALUE15), .F(DATA));
	
	
	
endmodule