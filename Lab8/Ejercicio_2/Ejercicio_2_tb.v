
// Fredy Godoy - 19260
// Testbench ejercicio 2 - Memoria Rom

module testbench();

reg [11:0]localidad;
wire [7:0]datos;

M_Rom memoria(localidad,datos);

initial begin
$display("----------Memoria Rom-------");
$display("Localidad       |    Lectura ");
$monitor("    %b    |   %b    ", localidad, datos);
   localidad=12'b0;
#1 localidad=12'b1;
#1 localidad=12'b10;
#1 localidad=12'b11;
#1 localidad=12'b100;
#1 localidad=12'b101;
#1 localidad=12'b110;
#1 localidad=12'b111;
#1 localidad=12'b1000;
#1 localidad=12'b1001;
#1 localidad=12'b1010;
#1 localidad=12'b1011;
#1 localidad=12'b1100;
#1 localidad=12'b1101;
end 

initial 
#100 $finish;


initial begin 
 $dumpfile("Ejercicio_1_tb.vcd");
 $dumpvars(0,testbench);
end
endmodule 