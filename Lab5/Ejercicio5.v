//Fredy Godoy 19260 
//Laboratorio 05 - Digital I

//Ejercicio 05

// Mux 2:1 
module mux2_1(input wire d0, d1, s,output wire y);
	assign y=s ? d1:d0;
endmodule
//--------------------------------------------------------------------------------------------- 
// Mux 4:1 
module mux4_1(input wire d0, d1, d2, d3, s1, s2, output wire ymux4);
	wire w1, w2;
	mux2_1 bus1(d0,d1, s1, w1);
	mux2_1 bus2(d2, d3, s1, w2);
	mux2_1 bus3(w1, w2, s2, ymux4);
endmodule 
//--------------------------------------------------------------------------------------------- 
// Mux 8:1
module mux8_1(input wire d0, d1, d2, d3,d4, d5, d6, d7, s1, s2, s3, output wire ymux8);
	wire w1, w2;
	mux4_1 bus1(d0,d1,d2,d3, s1,s2, w1);
	mux4_1 bus2(d4,d5,d6,d7, s1,s2, w2); 
	mux2_1 bus3(w1,w2, s3, ymux8);
endmodule
//---------------------------------------------------------------------------------------------
//Tabla 1 mux 8:1
module T1M8_1 (input wire A,B,C,output wire YT1M8_1);
wire u,c; //u=1  c=0 
assign u=1;
assign c=0;
mux8_1 T1M8_1(c,u,u,c,u,c,c,u,A,B,C,YT1M8_1);
endmodule
//---------------------------------------------------------------------------------------------
//Tabla 2 mux 8:1
module T2M8_1 (input wire C,A,B,output wire YT2M8_1);
wire u,c; //u=1  c=0 
assign u=1;
assign c=0;
mux8_1 T2M8_1(u,c,c,c,c,u,u,c,A,B,C,YT2M8_1);
endmodule
//---------------------------------------------------------------------------------------------
//Tabla 1 mux 4:1
module T1M4_1(input wire A,B,C, output wire YT1M4_1);
not (CN,C);
mux4_1 T1M4_1(C,CN,CN,C,A,B,YT1M4_1);
endmodule
//---------------------------------------------------------------------------------------------
//Tabla 2 mux 4:1
module T2M4_1(input wire B,A,C, output wire YT2M4_1);
wire c;
assign c=0;
not (CN,C);
mux4_1 T2M4_1(CN,c,C,CN,A,B,YT2M4_1);
endmodule
//---------------------------------------------------------------------------------------------
//Tabla 1 mux 2:1
module T1M2_1(input wire A,B,C, output wire YT1M2_1);
xor(xBC, B,C);
not (nxBC,xBC);
mux2_1 T1M2_1(xBC,nxBC,A,YT1M2_1);
endmodule
//---------------------------------------------------------------------------------------------
//Tabla 2 mux 2:1
module T2M2_1(input wire A,B,C, output wire YT2M2_1);
nor(norBC, B,C);
nand(nandBC, B,C);
mux2_1 T2M2_1(norBC,nandBC,A,YT2M2_1);
endmodule

