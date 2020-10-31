
// Fredy Godoy - 19260
// Ejercicio No.1 - Flip Flop tipo D

module testbench();
reg dato, clk, reset, enable;
wire q;

 FlipFlopD_1Bit Bit_1(dato, clk, reset,enable ,q);

 initial begin
 $display("Flip Flop tipo D de un Bit - Ejercicio No.1");
 $display("Dato  |  Q");
 $display("------|----");
 $monitor("%b    | %b", dato, q);

   dato=0; reset=0; enable=0;
#2 dato=1; reset=0; enable=0;
#2 dato=1; reset=0; enable=0;
#2 dato=0; reset=0; enable=1;
#2 dato=1; reset=0; enable=1;
#2 dato=1; reset=1; enable=1;
#2 dato=1; reset=0; enable=0;

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