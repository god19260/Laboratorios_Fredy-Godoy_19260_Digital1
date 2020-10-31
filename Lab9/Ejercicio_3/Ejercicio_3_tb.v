
// Fredy Godoy - 19260
// Ejercicio No.3 - Flip Flop tipo JK


module testbench();
reg j,k,enable, reset, clk;
wire q;

FF_JK ff_jk(j,k,enable, reset, clk,q);

 initial begin
 $display("Flip Flop tipo JK - Ejercicio No.3");
 $display("J  |  K  |  Q");
 $display("---|-----|----");
 $monitor(" %b    %b    %b ",j,k, q);

   j=0;k=0; enable=1; reset=1;
#5 j=1;k=0; enable=1; reset=0;
#5 j=0;k=1; enable=1; reset=0;
#5 j=1;k=1; enable=1; reset=0;
 end

initial begin
clk=0;
forever #1 clk= ~clk;
end
 initial 
 #100 $finish;
initial begin 
 $dumpfile("Ejercicio_3_tb.vcd");
 $dumpvars(0,testbench);
 end
 endmodule