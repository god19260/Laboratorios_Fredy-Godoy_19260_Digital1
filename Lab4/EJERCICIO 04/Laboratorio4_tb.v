
//Fredy Godoy - 19260 - Digital1 
//Ejercicios del 1 al 4

module testbench();
 reg A1,B1,C1,D1,A2,B2,C2,D2;
 wire out1, out2, out3, out4, out5, out6, out7, out8;
 
 Ecuacion1 E1(A1,B1,C1, out1);
 Ecuacion2 E2(B1, out2);
 Ecuacion3 E3(A2,B2,C2,D2, out3);
 Ecuacion4 E4(A2,B2,C2,D2, out4);
 Ecuacion5 E5(A2,B2,C2,D2, out5);
 Ecuacion6 E6(B1,C1, out6);
 Ecuacion7 E7(B2,C2,D2, out7);
 Ecuacion8 E8(A1,B1,C1, out8);
 //----------------------------------------------------------------
 //TABLA 1 Y 2 Ejercicio 01
 initial begin
 $display("Tabla 1 y 2 - Ejercicio 01");
 $display("A B C | Y1 Y2");
 $display("------|------");
 $monitor("%b %b %b | %b %b", A1,B1,C1,out1,out2); 
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
 //TABLA 3 y 4 Ejercicio 01
 initial begin
 #9
 $display("\n");
 $display("Tabla 3 y 4 - Ejercicio 01");
 $display("A B C D | Y1 Y2");
 $display("--------|------");
 $monitor("%b %b %b %b | %b  %b", A2,B2,C2,D2,out3,out4); 
	A2=0;B2=0;C2=0;D2=0;
 #1 A2=0;B2=0;C2=0;D2=1;
 #1 A2=0;B2=0;C2=1;D2=0; 	
 #1 A2=0;B2=0;C2=1;D2=1;
 #1 A2=0;B2=1;C2=0;D2=0;
 #1 A2=0;B2=1;C2=0;D2=1;
 #1 A2=0;B2=1;C2=1;D2=0;
 #1 A2=0;B2=1;C2=1;D2=1;
 #1 A2=1;B2=0;C2=0;D2=0;
 #1 A2=1;B2=0;C2=0;D2=1;
 #1 A2=1;B2=0;C2=1;D2=0; 	
 #1 A2=1;B2=0;C2=1;D2=1;
 #1 A2=1;B2=1;C2=0;D2=0;
 #1 A2=1;B2=1;C2=0;D2=1;
 #1 A2=1;B2=1;C2=1;D2=0;
 #1 A2=1;B2=1;C2=1;D2=1;
 end
 //----------------------------------------------------------------
 //TABLA 1 y 2 Ejercicio 02
 initial begin
 #26
 $display("\n");
 $display("Tabla 1 y 3 - Ejercicio 02");
 $display("A B C D | Y1 Y2");
 $display("--------|------");
 $monitor("%b %b %b %b | %b  %b", A2,B2,C2,D2,out5,out7); 
	A2=0;B2=0;C2=0;D2=0;
 #1 A2=0;B2=0;C2=0;D2=1;
 #1 A2=0;B2=0;C2=1;D2=0; 	
 #1 A2=0;B2=0;C2=1;D2=1;
 #1 A2=0;B2=1;C2=0;D2=0;
 #1 A2=0;B2=1;C2=0;D2=1;
 #1 A2=0;B2=1;C2=1;D2=0;
 #1 A2=0;B2=1;C2=1;D2=1;
 #1 A2=1;B2=0;C2=0;D2=0;
 #1 A2=1;B2=0;C2=0;D2=1;
 #1 A2=1;B2=0;C2=1;D2=0; 	
 #1 A2=1;B2=0;C2=1;D2=1;
 #1 A2=1;B2=1;C2=0;D2=0;
 #1 A2=1;B2=1;C2=0;D2=1;
 #1 A2=1;B2=1;C2=1;D2=0;
 #1 A2=1;B2=1;C2=1;D2=1;
 end

//----------------------------------------------------------------
 //TABLA 2 Y 4 Ejercicio 02
 initial begin
 #42
 $display("\n");
 $display("Tabla 2 y 4 - Ejercicio 02");
 $display("A B C D | Y1 Y2");
 $display("--------|------");
 $monitor("%b %b %b | %b %b", A1,B1,C1,out6,out8); 
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
 $dumpfile("Laboratorio4_tb.vcd");
 $dumpvars(0,testbench);
 end
 
 
 endmodule