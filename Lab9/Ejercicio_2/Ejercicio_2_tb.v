
// Fredy Godoy - 19260
// Ejercicio No.2 - Flip Flop tipo D

module testbench();
reg clk, reset, enable;
wire q;

 FlipFlop_T FFT(clk, reset, enable ,q);

 initial begin
 $display("Flip Flop tipo T - Ejercicio No.2");
 $display("  Q");
 $display("----");
 $monitor(" %b", q);

#1 reset=0; enable=1;
#1 reset=0; enable=1;
#1 reset=1; enable=1;
#1 reset=0; enable=1;


 end
initial begin
clk=0;
forever #1 clk= ~clk;
end
 initial 
 #100 $finish;
initial begin 
 $dumpfile("Ejercicio_2_tb.vcd");
 $dumpvars(0,testbench);
 end
 endmodule