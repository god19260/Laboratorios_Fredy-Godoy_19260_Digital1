
// Fredy Godoy - 19260
// Ejercicio 1 - Contador de bits 

module Contador(Enable, Load,Clk, Reset,V_Load,Salida);
input Enable, Load,Clk, Reset;
input [11:0]V_Load;
output [11:0]Salida;
reg [11:0]Salida;
always @(posedge Clk,Load,Reset, posedge Enable)
if(Reset) 
Salida <= 12'b0;

else if (Load)
Salida <= V_Load;

else if (Enable) 
Salida <= Salida + 1;

endmodule
