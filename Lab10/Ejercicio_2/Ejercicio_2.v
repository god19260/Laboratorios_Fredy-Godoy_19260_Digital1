
// Fredy Godoy - 19260
// Ejercicio No.2 -  Conjunto de Acumulador, Bus driver y Alu

//modulo de bus driver 
module Bus_Driver(Entrada, Enable, Salida);
input [3:0]Entrada; 
input Enable;
output [3:0]Salida; 
reg [3:0]Salida;

always @(*) 
if (Enable) begin
    Salida<=Entrada;
end else begin
    Salida<=4'bzzzz;
end
endmodule 

// Modulo de acumulador
module Acumulador(Dato, Clk, Reset, Enable, Salida);
input [3:0]Dato;
input Clk, Reset, Enable; 
output [3:0]Salida;
reg [3:0]Salida;
always @(posedge Clk, Reset, Enable)

if (Reset) begin 
     Salida<=0;
end else if(Enable) begin 
     Salida<=Dato;
end 
endmodule 

// Modulo de la Alu 
module ALU(input logic [2:0]Seleccion,input [3:0]A,B,output [4:0]Output, output reg Zero);
reg[4:0]Output;
always @(*) begin
case(Seleccion)
3'b000:  Output <= ~(A & B);
3'b001:  Output <= A;
3'b010:  Output <= B;
3'b011:  Output <= A + B;
3'b100:  Output <= A - B;

default: Output = 4'bxxxx;
endcase
if (Output) 
     assign Zero=0;
 else 
    assign Zero=1;
end

endmodule

// Implementación de todos los modulos
module Acumulador_BusDriver_Alu(Clk, Reset,Seleccion_alu,Entrada_Bus1, Enable_Bus1,Enable_Bus2, Salida_Bus2,Carry,Zero, B,A);
input [3:0]Entrada_Bus1;
input [2:0] Seleccion_alu;
input Clk, Reset,Enable_Bus1,Enable_Bus2, Enable_Acumulador;
output  [3:0]Salida_Bus2;
wire [3:0]Salida_Alu;
output wire[3:0]B,A;
output Carry,Zero;
wire Carry;



Bus_Driver Bus1(Entrada_Bus1, Enable_Bus1, B);
Acumulador Acu(Salida_Alu, Clk, Reset, Enable, A);
ALU alu(Seleccion_alu,A,B,{Carry,Salida_Alu},Zero);
Bus_Driver Bus2(Salida_Alu, Enable_Bus2,Salida_Bus2);


 
endmodule