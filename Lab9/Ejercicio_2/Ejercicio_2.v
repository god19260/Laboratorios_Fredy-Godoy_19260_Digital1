
// Fredy Godoy - 19260
// Ejercicio No.2 - Flip Flop tipo D

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

module FlipFlop_T(Clk,Reset,Enable,Q);
input Clk,Reset,Enable;
output Dato,Q;
reg Dato;
always @(posedge Clk, Reset, Enable)
if (Reset)begin
    Dato<=1;
end else if(Enable) begin
    Dato<=Q;
end

FlipFlopD_1Bit FFD(~Dato,Clk, Reset, Enable, Q);

endmodule 



