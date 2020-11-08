// Fredy Godoy - 19260
// Ejercicio No.1 -  Conjunto de Program Counter, Rom, Fetch

module Program_Counter(Enable_PCounter, Load_PCounter,Clk, 
Reset,Activacion_PCounter_Load,Salida_PCounter);

input Enable_PCounter,Activacion_PCounter_Load,Clk, Reset;
input [11:0]Load_PCounter;
output [11:0]Salida_PCounter;
reg [11:0]Salida_PCounter;
always @(posedge Clk,Activacion_PCounter_Load,Reset, posedge Enable_PCounter)
if(Reset) 
Salida_PCounter <= 12'b0; //000000000000

else if (Activacion_PCounter_Load)
Salida_PCounter <= Load_PCounter;

else if (Enable_PCounter) 
Salida_PCounter <= Salida_PCounter + 1;

endmodule


module M_Rom(input wire [11:0]Localidad, output wire [7:0]Datos_Rom);
reg [7:0] Memoria[0:4096];
initial begin
$readmemb("Datos_Mem_Rom.F", Memoria);
end 
assign Datos_Rom =  Memoria[Localidad];
endmodule
 

module Fetch_8Bits(Salida_Rom, Clk, Reset, Enable_Fetch, Instr, Oprnd);
input [7:0]Salida_Rom;
input Clk, Reset, Enable_Fetch; 
output reg [3:0]Instr, Oprnd;

always @(posedge Clk, Reset, Enable_Fetch)

if (Reset) begin
     {Instr, Oprnd}<=8'b0; 
     
end else if(Enable_Fetch) begin 
     {Instr, Oprnd}<=Salida_Rom;
end 
endmodule 


// Union de los modulos 
module PC_ROM_Fetch(
//Entradas comunes
Reset, Clk, 
//Entradas de Program counter
Load_PCounter, Enable_PCounter,Activacion_PCounter_Load,
// Entradas de Fetch
Enable_Fetch, Instr, Oprnd 
 );

input Reset, Clk;
input [11:0]Load_PCounter;
wire [11:0]Salida_PCounter;
//output [11:0]Salida_PCounter;
wire [7:0]Datos_Rom;
input Enable_PCounter,Activacion_PCounter_Load, Enable_Fetch;
output [3:0]Instr, Oprnd;


Program_Counter PC(Enable_PCounter, Load_PCounter,Clk, 
Reset,Activacion_PCounter_Load,Salida_PCounter);

M_Rom rom(Salida_PCounter, Datos_Rom);

Fetch_8Bits Fetch (Datos_Rom, Clk, Reset, Enable_Fetch, Instr, Oprnd);

endmodule 