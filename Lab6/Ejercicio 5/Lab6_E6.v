
//Fredy Godoy 19260 
// Ejercicio no.5 - Práctica no.6

//Modulo de ff D

module FFD(input clk, reset, D, output reg Q);
	always @(posedge clk or posedge reset) 
	begin
		if (reset)
			Q <= 1'b0;
		else
			Q <= D;
	end 
endmodule

module FFD_2(input clk, reset, input [1:0] D, output reg [1:0] Q);

FFD U1(clk, reset , D[1], Q[1]);
FFD U2(clk, reset , D[0], Q[0]);		
	
endmodule

module 	Ejercicio1(input A,B, clk, reset, output wire Y, output wire [1:0] SP, SF);
wire SP0, SF0, SP1, SF1;
assign SF0= (~SP1 & ~SP0 & A);
assign SF1= (SP0 & B)| (SP1 & A & B);
assign Y=(SP1  & ~SP0 & A & B);
FFD S1(.clk(clk), .reset(reset), .D(SF1), .Q(SP1));
FFD S2(clk, reset, SP0, SF0);
assign SP={SP1,SP0};
assign SF={SF1,SP1};
endmodule
