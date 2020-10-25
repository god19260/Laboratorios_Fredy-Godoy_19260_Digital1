
// Fredy Godoy - 19260
// Testbench Ejercicio 3 - ALU

module testbench();
reg [2:0]seleccion;
reg [3:0] a,b;
wire [3:0]Output;

ALU alu(seleccion, a, b, Output);

initial begin 
$display ("ALU de 4 bits");
$display (" Seleción  | A  |  B  |  Salida");
$display ("-----------|----|-----|--------");
$monitor ("    %b       %b    %b      %b",seleccion, a, b, Output);


#1 seleccion=3'b000; a=4'b0110; b=4'b0001; 
#1 seleccion=3'b001; a=4'b0110; b=4'b0001;
#1 seleccion=3'b010; a=4'b0110; b=4'b0001;
#1 seleccion=3'b011; a=4'b0110; b=4'b0001;
#1 seleccion=3'b100; a=4'b0110; b=4'b0001;
#1 seleccion=3'b101; a=4'b0110; b=4'b0001;
#1 seleccion=3'b110; a=4'b0110; b=4'b0001;
#1 seleccion=3'b111; a=4'b0110; b=4'b0001;
#1 seleccion=3'b111; a=4'b0110; b=4'b1111;
#1 seleccion=3'b111; a=4'b0001; b=4'b0001;
end
initial
#100 $finish;
initial begin 
$dumpfile ("Ejercicio_3_tb.vcd");
$dumpvars(0,testbench);
end
endmodule
