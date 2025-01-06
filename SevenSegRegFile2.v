module SevenSegRegFile2(DATA, RA3, RA2, RA1, RA0, CLRN, CLK);
	
	//Address and control inputs
	input RA3, RA2, RA1, RA0, CLRN, CLK;
	
	//always load
	wire ld;
	assign ld = 1'b1;
	
	//7 seg codes
	wire [6:0] LD_DATA0;
	wire [6:0] LD_DATA1;
	wire [6:0] LD_DATA2;
	wire [6:0] LD_DATA3;
	wire [6:0] LD_DATA4;
	wire [6:0] LD_DATA5;
	wire [6:0] LD_DATA6;
	wire [6:0] LD_DATA7;
	wire [6:0] LD_DATA8;
	wire [6:0] LD_DATA9;
	wire [6:0] LD_DATA10;
	wire [6:0] LD_DATA11;
	wire [6:0] LD_DATA12;
	wire [6:0] LD_DATA13;
	wire [6:0] LD_DATA14;
	wire [6:0] LD_DATA15;
	
	assign LD_DATA0 = 7'b0000000;
	assign LD_DATA1 = 7'b0000000;
	assign LD_DATA2 = 7'b0000000;
	assign LD_DATA3 = 7'b0000000;
	assign LD_DATA4 = 7'b0000000;
	assign LD_DATA5 = 7'b0000000;
	assign LD_DATA6 = 7'b0000000;
	assign LD_DATA7 = 7'b0000000;
	assign LD_DATA8 = 7'b0000000;
	assign LD_DATA9 = 7'b0000000;
	assign LD_DATA10 = 7'b0000000;
	assign LD_DATA11 = 7'b0000000;
	assign LD_DATA12 = 7'b0000000;
	assign LD_DATA13 = 7'b0000000;
	assign LD_DATA14 = 7'b0000000;
	assign LD_DATA15 = 7'b0000000;
	
	
	//7 Bit output 
	output [6:0] DATA;
	
	//All registers data 
	wire [6:0] VALUE0, VALUE1, VALUE2, VALUE3, VALUE4, VALUE5, VALUE6, VALUE7, VALUE8, VALUE9, VALUE10, VALUE11, VALUE12, VALUE13, VALUE14, VALUE15;
	
	//16 7-bit Registers
	reg7b reg0(.IN(LD_DATA0), .LD(ld), .CLK(CLK), .OUT(VALUE0), .CLRN(CLRN));
	reg7b reg1(.IN(LD_DATA1), .LD(ld), .CLK(CLK), .OUT(VALUE1), .CLRN(CLRN));
	reg7b reg2(.IN(LD_DATA2), .LD(ld), .CLK(CLK), .OUT(VALUE2), .CLRN(CLRN));
	reg7b reg3(.IN(LD_DATA3), .LD(ld), .CLK(CLK), .OUT(VALUE3), .CLRN(CLRN));
	reg7b reg4(.IN(LD_DATA4), .LD(ld), .CLK(CLK), .OUT(VALUE4), .CLRN(CLRN));
	reg7b reg5(.IN(LD_DATA5), .LD(ld), .CLK(CLK), .OUT(VALUE5), .CLRN(CLRN));
	reg7b reg6(.IN(LD_DATA6), .LD(ld), .CLK(CLK), .OUT(VALUE6), .CLRN(CLRN));
	reg7b reg7(.IN(LD_DATA7), .LD(ld), .CLK(CLK), .OUT(VALUE7), .CLRN(CLRN));
	reg7b reg8(.IN(LD_DATA8), .LD(ld), .CLK(CLK), .OUT(VALUE8), .CLRN(CLRN));
	reg7b reg9(.IN(LD_DATA9), .LD(ld), .CLK(CLK), .OUT(VALUE9), .CLRN(CLRN));
	reg7b reg10(.IN(LD_DATA10), .LD(ld), .CLK(CLK), .OUT(VALUE10), .CLRN(CLRN));
	reg7b reg11(.IN(LD_DATA11), .LD(ld), .CLK(CLK), .OUT(VALUE11), .CLRN(CLRN));
	reg7b reg12(.IN(LD_DATA12), .LD(ld), .CLK(CLK), .OUT(VALUE12), .CLRN(CLRN));
	reg7b reg13(.IN(LD_DATA13), .LD(ld), .CLK(CLK), .OUT(VALUE13), .CLRN(CLRN));
	reg7b reg14(.IN(LD_DATA14), .LD(ld), .CLK(CLK), .OUT(VALUE14), .CLRN(CLRN));
	reg7b reg15(.IN(LD_DATA15), .LD(ld), .CLK(CLK), .OUT(VALUE15), .CLRN(CLRN));
	
	//7 bit MUX
	Mux16to1_7b mux(.S3(RA3), .S2(RA2), .S1(RA1), .S0(RA0), .W0(VALUE0), .W1(VALUE1), .W2(VALUE2), .W3(VALUE3), .W4(VALUE4), .W5(VALUE5), .W6(VALUE6), .W7(VALUE7), .W8(VALUE8), .W9(VALUE9), .W10(VALUE10), .W11(VALUE11), .W12(VALUE13), .W13(VALUE13), .W14(VALUE14), .W15(VALUE15), .F(DATA));
	
	
	
endmodule
	