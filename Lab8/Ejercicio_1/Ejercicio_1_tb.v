
// Fredy Godoy - 19260
// Testbench ejercicio 1 - Contador
module testbench();
reg enable,load,clk,reset;
reg [11:0]v_load;
wire [11:0]salida;

Contador cont(enable,load,clk,reset,v_load,salida);


 initial begin
 $display("Contador de 12 bits");
 $display("  Enable Load | Salida");
 $display("------------|------");
 $monitor("    %b       %b     %b",enable,load, salida); 
   v_load=12'b111111111111;
    enable=0;load=0;reset=1;		
#1  enable=0;load=0;reset=0;
#5  enable=1;load=0;reset=0;	
#10 enable=1;load=1;reset=0;
#20 enable=1;load=0;reset=0;
#30 enable=1;load=0;reset=1;
#31 enable=1;load=0;reset=0; 
end 
initial begin
clk=0;
forever #1 clk= ~clk;
end

 initial 
 #100 $finish;
initial begin 
 $dumpfile("Ejercicio_1_tb.vcd");
 $dumpvars(0,testbench);
 end
 
 
 endmodule

