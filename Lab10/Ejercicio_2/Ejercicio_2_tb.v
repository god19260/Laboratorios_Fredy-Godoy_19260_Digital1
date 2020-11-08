
// Fredy Godoy - 19260
// Ejercicio No.2 -  Conjunto de Acumulador, Bus driver y Alu

module testbench();
reg Clk, Reset,Enable_Bus1,Enable_Bus2;
reg [2:0]Seleccion_alu;
reg [3:0]Entrada_Bus1; 
wire [3:0]Salida_Bus2;
wire Carry,Zero;
wire [3:0]B,A;

Acumulador_BusDriver_Alu modulo1(Clk, Reset,Seleccion_alu,Entrada_Bus1, Enable_Bus1,Enable_Bus2, Salida_Bus2,Carry,Zero,B,A);

initial begin
$display("-----------------------------------------------------------");
$display("Seleccion alu |   A  |   B  | Carry | Zero | Salida bus 2 ");
$monitor("   %b           | %b | %b |   %b   |   %b   | %b |  ", Seleccion_alu,A,B ,Carry, Zero,Salida_Bus2);
Reset=1;
#1 Reset=0;Seleccion_alu=4'b100;Entrada_Bus1=4'b0; Enable_Bus1=1;Enable_Bus2=1;
#1 Reset=0;Seleccion_alu=4'b100;Entrada_Bus1=4'b1000; Enable_Bus1=1;Enable_Bus2=1;
#1 Reset=0;Seleccion_alu=4'b0;Entrada_Bus1=4'b0; Enable_Bus1=1;Enable_Bus2=1;
#1 Reset=0;Seleccion_alu=4'b1;Entrada_Bus1=4'b1100; Enable_Bus1=1;Enable_Bus2=1;
#1 Reset=0;Seleccion_alu=4'b10;Entrada_Bus1=4'b1010; Enable_Bus1=1;Enable_Bus2=1;
#1 Reset=0;Seleccion_alu=4'b11;Entrada_Bus1=4'b1111; Enable_Bus1=1;Enable_Bus2=1;
#1 Reset=0;Seleccion_alu=4'b100;Entrada_Bus1=4'b1000; Enable_Bus1=1;Enable_Bus2=1;

end 
initial begin
Clk=0;
forever #1 Clk= ~Clk;
end
initial 
#100 $finish;


initial begin 
 $dumpfile("Ejercicio_2_tb.vcd");
 $dumpvars(0,testbench);
end
endmodule 