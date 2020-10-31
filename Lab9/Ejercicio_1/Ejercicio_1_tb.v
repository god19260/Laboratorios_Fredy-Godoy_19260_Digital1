
// Fredy Godoy - 19260
// Ejercicio No.1 - Flip Flop tipo D

module testbench();
reg Dato_1, Dato_2, Dato_3, Dato_4, Clk, Reset, Enable;
wire Q_1, Q_2, Q_3, Q_4;

 FlipFlopD_4Bit FFD(Dato_1, Dato_2, Dato_3, Dato_4, Clk, Reset, Enable, Q_1, Q_2, Q_3, Q_4);

 initial begin
 $display("Flip Flop tipo D de 4Bits - Ejercicio No.1");
 $display("Dato  |  Q");
 $display("------|----");
 $monitor("%b%b%b%b    | %b%b%b%b", Dato_1, Dato_2, Dato_3, Dato_4, Q_1, Q_2, Q_3, Q_4);

   Dato_1=0; Dato_2=0; Dato_3=0; Dato_4=0; Reset=0; Enable=0;
#2 Dato_1=1; Dato_2=0; Dato_3=0; Dato_4=0; Reset=0; Enable=0;
#2 Dato_1=1; Dato_2=0; Dato_3=1; Dato_4=0; Reset=0; Enable=0;
#2 Dato_1=0; Dato_2=0; Dato_3=1; Dato_4=0; Reset=0; Enable=1;
#2 Dato_1=0; Dato_2=0; Dato_3=0; Dato_4=1; Reset=0; Enable=1;
#2 Dato_1=0; Dato_2=0; Dato_3=0; Dato_4=1; Reset=1; Enable=0;
#2 Dato_1=1; Dato_2=1; Dato_3=0; Dato_4=0; Reset=0; Enable=0;

 end  


initial begin
Clk=0;
forever #1 Clk= ~Clk;
end
 initial 
 #100 $finish;
initial begin 
 $dumpfile("Ejercicio_1_tb.vcd");
 $dumpvars(0,testbench);
 end
 
 
 endmodule