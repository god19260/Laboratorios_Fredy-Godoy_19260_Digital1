// Fredy Godoy - 19260
// Ejercicio No.1 - Flip Flop tipo D

module testbench();

reg Reset, Clk;
reg [11:0]Load_PCounter;
reg Enable_PCounter,Activacion_PCounter_Load, Enable_Fetch;
wire [3:0]Instr, Oprnd;


PC_ROM_Fetch modulo_1(
Reset, Clk, 
//Entradas de Program counter
Load_PCounter, Enable_PCounter,Activacion_PCounter_Load,
// Entradas de Fetch
Enable_Fetch, Instr, Oprnd 
);

 initial begin
 $display("Prueba fetch");
 $display(" Instr Oprnd ");
 $display("--------------");
 $monitor(" %b   %b", Instr, Oprnd);

Reset=1;  
   Enable_PCounter=1; Activacion_PCounter_Load=0; Enable_Fetch=1; 
#1 Reset=0;  
   Enable_PCounter=1; Activacion_PCounter_Load=0; Enable_Fetch=1; 

 end  


initial begin
Clk=0;
forever #1 Clk= ~Clk;
end
 initial 
 #100 $finish;
initial begin 
 $dumpfile("Ejercicio_1_tb.vcd");
 $dumpvars(0,testbench);
 end
 
 
 endmodule