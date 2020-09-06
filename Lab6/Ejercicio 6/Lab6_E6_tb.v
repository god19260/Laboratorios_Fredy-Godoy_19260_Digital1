

module testbench();

reg clk,reset, A, B, set;
wire Y;
//reg [1:0]E;

ejercicio1 U1(A,B,clk, reset, set, Y);
initial begin
clk=0;
forever #1 clk=~clk;
end

initial begin 
#3 
$display("\n");
$display("clk reset A B SF SP | Y)");
$monitor("%b %b %b | %b", clk, A , B, Y);


reset=1; A=0; B=0; set=0;
#1 reset=0; A=0; B=0; 
#1 reset=0; A=0; B=0; 
#1 reset=0; A=1; B=0; 
#1 reset=0; A=1; B=1; 
#1 reset=0; A=1; B=0; 
#1 reset=0; A=1; B=0; 
#1 reset=0; A=1; B=0; 
#50 $finish;
end

 initial begin 
 $dumpfile("Lab6_E6_tb.vcd");
 $dumpvars(0,testbench);
 end
 endmodule
 