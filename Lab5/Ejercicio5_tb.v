//Fredy Godoy 19260 
//Laboratorio 05 - Digital I

//Ejercicio 05
//testbench

module testbench();

 reg A,B,C;
 wire out1,out2,out3,out4,out5,out6;
 T1M8_1 m1(A,B,C, out1);
 T2M8_1 m2(A,B,C, out2);
 T1M4_1 m3(A,B,C, out3);
 T2M4_1 m4(A,B,C, out4);
 T1M2_1 m5(A,B,C, out5);
 T2M2_1 m6(A,B,C, out6);

initial begin
 $display("Tabla 1 y 2 mux 8:1");
 $display("A B C | Y1 Y2");
 $display("------|------");
 $monitor("%b %b %b | %b  %b ", A,B,C,out1,out2); 
	A=0;B=0;C=0;
 #1 A=0;B=0;C=1;
 #1 A=0;B=1;C=0; 	
 #1 A=0;B=1;C=1;
 #1 A=1;B=0;C=0;
 #1 A=1;B=0;C=1;
 #1 A=1;B=1;C=0;
 #1 A=1;B=1;C=1;
end
initial begin
 #9
 $display("Tabla 1 y 2 mux 4:1");
 $display("A B C | Y1 Y2");
 $display("------|------");
 $monitor("%b %b %b | %b  %b ", A,B,C,out3,out4); 
	A=0;B=0;C=0;
 #1 A=0;B=0;C=1;
 #1 A=0;B=1;C=0; 	
 #1 A=0;B=1;C=1;
 #1 A=1;B=0;C=0;
 #1 A=1;B=0;C=1;
 #1 A=1;B=1;C=0;
 #1 A=1;B=1;C=1;
end
initial begin
 #17
 $display("Tabla 1 y 2 mux 2:1");
 $display("A B C | Y1 Y2");
 $display("------|------");
 $monitor("%b %b %b | %b  %b ", A,B,C,out5,out6); 
	A=0;B=0;C=0;
 #1 A=0;B=0;C=1;
 #1 A=0;B=1;C=0; 	
 #1 A=0;B=1;C=1;
 #1 A=1;B=0;C=0;
 #1 A=1;B=0;C=1;
 #1 A=1;B=1;C=0;
 #1 A=1;B=1;C=1;
end
   initial 
 #100 $finish;
 
 initial begin 
 $dumpfile("Ejercicio5_tb.vcd");
 $dumpvars(0,testbench);
 end
 
 
 endmodule