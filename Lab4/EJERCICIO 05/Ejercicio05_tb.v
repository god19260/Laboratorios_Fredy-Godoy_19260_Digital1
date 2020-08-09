//Fredy Godoy - 19260 - Digital1 
//Ejercicio 05

module testbench();

 reg A1,B1,C1;
 wire out1,out2,out3;

simplificada s1(A1,B1,C1,out1);
SOP sop1(A1,B1,C1,out2);
POS pos1(A1,B1,C1,out3);

//----------------------------------------------------------------
 //TABLA de ecuacion simplificada
 initial begin
 $display("Tabla de ecuacion simplificada - Ejercicio 05");
 $display("Armado | Ventana/Puerta | Movimiento || Alarma/Luces");
 $display("-------|----------------|------------||-------------");
 $monitor("    %b      |       %b        |    %b       ||     %b ", A1,B1,C1,out1); 
	A1=0;B1=0;C1=0;
 #1 A1=0;B1=0;C1=1;
 #1 A1=0;B1=1;C1=0; 	
 #1 A1=0;B1=1;C1=1;
 #1 A1=1;B1=0;C1=0;
 #1 A1=1;B1=0;C1=1;
 #1 A1=1;B1=1;C1=0;
 #1 A1=1;B1=1;C1=1;
 end
 //----------------------------------------------------------------
 //TABLA de ecuacion SOP
 initial begin
 #9
 $display("\n");
 $display("Tabla de ecuacion SOP - Ejercicio 05");
 $display("Armado | Ventana/Puerta | Movimiento || Alarma/Luces");
 $display("-------|----------------|------------||-------------");
 $monitor("  %b      |       %b        |    %b       ||     %b ", A1,B1,C1,out2); 
	A1=0;B1=0;C1=0;
 #1 A1=0;B1=0;C1=1;
 #1 A1=0;B1=1;C1=0; 	
 #1 A1=0;B1=1;C1=1;
 #1 A1=1;B1=0;C1=0;
 #1 A1=1;B1=0;C1=1;
 #1 A1=1;B1=1;C1=0;
 #1 A1=1;B1=1;C1=1;
 end
 //----------------------------------------------------------------
 //TABLA de ecuacion POS
 initial begin
 #17
 $display("\n");
 $display("Tabla de ecuacion POS - Ejercicio 05");
 $display("Armado | Ventana/Puerta | Movimiento || Alarma/Luces");
 $display("-------|----------------|------------||-------------");
 $monitor("    %b      |       %b        |    %b       ||     %b ", A1,B1,C1,out3); 
	A1=0;B1=0;C1=0;
 #1 A1=0;B1=0;C1=1;
 #1 A1=0;B1=1;C1=0; 	
 #1 A1=0;B1=1;C1=1;
 #1 A1=1;B1=0;C1=0;
 #1 A1=1;B1=0;C1=1;
 #1 A1=1;B1=1;C1=0;
 #1 A1=1;B1=1;C1=1;
 end
  
  initial 
 #100 $finish;
 
 initial begin 
 $dumpfile("Ejercicio05_tb.vcd");
 $dumpvars(0,testbench);
 end
 
 
 endmodule