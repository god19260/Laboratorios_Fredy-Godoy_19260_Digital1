
// Fredy Godoy - 19260
// Ejercicio No.3 - Flip Flop tipo JK

// FF D 1bit 
module FlipFlopD_1Bit(Dato, Clk, Reset, Enable, Q);
input Dato, Clk, Reset, Enable; 
output Q;
reg Q;
always @(posedge Clk, Reset, Enable)

if (Reset) begin 
     Q<=0;
end else if(Enable) begin 
     Q<=Dato;
end 
endmodule 

// FF JK 
module FF_JK(J,K,Enable,Reset,Clk,Q);
input J,K,Enable,Reset, Clk;
output Q;
wire Salida_And_1, Salida_And_2, Salida_or, Salida_not_1, Salida_not_2;

always @(posedge Clk,J,K,Enable,Reset,Q );
not (Salida_not_1, K);
not (Salida_not_2, Q);
and (Salida_And_1, Salida_not_1,Q);
and (Salida_And_2,J,Salida_not_2);
or (Salida_or, Salida_And_1,Salida_And_2);

FlipFlopD_1Bit FFD_1(Salida_or, Clk, Reset, Enable, Q);

endmodule

