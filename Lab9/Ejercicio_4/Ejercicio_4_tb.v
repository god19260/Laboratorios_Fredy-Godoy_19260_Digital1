
// Fredy Godoy - 19260
// Ejercicio No.4 - Buffer Triestado de 4 Bits


module testbench();
reg [3:0]a;
reg e;
wire [3:0]y;

Buffer_Triestado_4Bit Buff_1bit(a, e, y);

 initial begin
 $display("Buffer Triestado 4 Bits - Ejercicio No.4");
 $display("Input | enable |  Output");
 $display("------|--------|--------");
 $monitor(" %b       %b       %b ",a,e,y);
   a=4'b0000; e=1;
#1 a=4'b0001; e=1;
#1 a=4'b0010; e=1;
#1 a=4'b0100; e=1;
#1 a=4'b1000; e=0;
 end


 initial 
 #100 $finish;
initial begin 
 $dumpfile("Ejercicio_4_tb.vcd");
 $dumpvars(0,testbench);
 end
 endmodule