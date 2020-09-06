
module testbench();
reg clk, reset, A, B;
wire Y;
Ejercicio1 U1(A,B,clk,reset,Y);
initial begin 
$display("clk reset A B | Y");
$monitor("%b %b %b %b | %b", clk, reset, A, B, Y);
end
initial begin 
clk = 0;
reset=0;
A=0
B=0;
#1 reset=1;
#1 reset=0;
#10
A=1;
B=0;
#20
A=0;
B=0;
end
 initial begin 
 $dumpfile("Lab6_E5_tb.vcd");
 $dumpvars(0,testbench);
 end
 
 
 endmodule