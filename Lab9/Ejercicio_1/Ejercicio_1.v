
// Fredy Godoy - 19260
// Ejercicio No.1 - Flip Flop tipo D
// FLip Flop de 1 bit

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

// FlipFlopD_2Bit
module FlipFlopD_2Bit(Dato_1, Dato_2, Clk, Reset,Enable, Q_1, Q_2);
input Dato_1, Dato_2, Clk, Reset, Enable; 
output Q_1,Q_2;
FlipFlopD_1Bit Q1(Dato_1, Clk, Reset, Enable, Q_1);
FlipFlopD_1Bit Q2(Dato_2, Clk, Reset, Enable, Q_2);
endmodule 

// FlipFlopD_4Bit
module FlipFlopD_4Bit(Dato_1, Dato_2, Dato_3, Dato_4, Clk, Reset, Enable, Q_1, Q_2, Q_3, Q_4);
input Dato_1, Dato_2,Dato_3, Dato_4, Clk, Reset, Enable; 
output Q_1,Q_2,Q_3,Q_4;
FlipFlopD_2Bit Q3(Dato_1,Dato_2, Clk, Reset,Enable, Q_1, Q_2);
FlipFlopD_2Bit Q4(Dato_3,Dato_4, Clk, Reset,Enable, Q_3, Q_4);
endmodule

