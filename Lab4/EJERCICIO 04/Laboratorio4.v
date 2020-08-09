
//Fredy Godoy - 19260 - Digital1 
//Ejercicios del 1 al 4

//Ejercicio 01 - Tabla 1 - Ecuacion1 Y=A'C'+AB'+AC
module Ecuacion1(input wire A,B,C, output wire out1 );
	wire wAn, wBn, wCn, wa1, wa2, wa3, wa4, wa5; //w=wire "A" "B" "C" n=not a=and 
	
	
	
	not (wAn, A);
	not (wBn, B);
	not (wCn, C);
	and (wa1,wAn,wCn);
	and (wa2,A,wBn);
	and (wa3,A,C);
	or  (out1,wa1,wa2,wa3);
	
endmodule
//--------------------------------------------------------------------------------------------------------------------------
//Ejercicio 01 - Tabla 2 - Ecuacion2 Y=B'
module Ecuacion2(input wire B, output wire out2);
	wire  wBn; //w=wire "A" "B" "C" n=not a=and 
	

	not (out2, B);
	
endmodule
//--------------------------------------------------------------------------------------------------------------------------
//Ejercicio 01 - Tabla 3 - Ecuacion3 Y=A'B'C'D'+ABC'D'+A'BC'D+AB'C'D+A'B'CD+ABCD+A'BCD'+AB'CD'
module Ecuacion3(input wire A,B,C,D, output wire out3);
	wire wAn, wBn, wCn,wDn, wa1, wa2, wa3, wa4, wa5, wa6, wa7, wa8; //w=wire "A" "B" "C" n=not a=and 
		

	not (wAn, A);
	not (wBn, B);
	not (wCn, C);
	not (wDn, D);
	and (wa1,wAn,wBn,wCn,wDn);
	and (wa2,A,B,wCn,wDn);
	and (wa3,wAn,B,wCn,D);
	and (wa4,A,wBn,wCn,D);
	and (wa5,wAn,wBn,C,D);
	and (wa6,A,B,C,D);
	and (wa7,wAn,B,C,wDn);
	and (wa8,A,wBn,C,wDn);
	or  (out3,wa1,wa2,wa3,wa4, wa5, wa6, wa7, wa8);
	
endmodule
//--------------------------------------------------------------------------------------------------------------------------
//Ejercicio 01 - Tabla 4 - Ecuacion4 Y=B'D'+ABD'+BD
module Ecuacion4(input wire A,B,C,D, output wire out4);
	wire wAn, wBn, wCn,wDn, wa1, wa2, wa3,wa4; //w=wire "A" "B" "C" n=not a=and 
	
	

	not (wAn, A);
	not (wBn, B);
	not (wCn, C);
	not (wDn, D);
	and (wa1,wBn,wDn);
	and (wa2,A,B,wDn);
	and (wa3,B,D);
	and (wa4,A,C);
	or  (out4,wa1,wa2,wa3,wa4);
	
endmodule

//--------------------------------------------------------------------------------------------------------------------------
//Ejercicio 02 - Tabla 1 - Ecuacion5 Y=A´B´C´D´+AC´+AB´C+ABCD'
module Ecuacion5(input wire A,B,C,D, output wire out5);
assign out5=(~A&~B&~C&~D)|(A&~C)|(A&~B&C)|(A&B&C&~D);
endmodule
//--------------------------------------------------------------------------------------------------------------------------
//Ejercicio 02 - Tabla 2 - Ecuacion6 Y=C+B'C'
module Ecuacion6(input wire B,C, output wire out6);
assign out6=C|(~B&~C);
endmodule
//--------------------------------------------------------------------------------------------------------------------------
//Ejercicio 02 - Tabla 3 - Ecuacion7 Y=BC'+BC+B'C'D
module Ecuacion7(input wire B,C,D, output wire out7);
assign out7=(B&~C)|(B&C)|(~B&~C&D);
endmodule
//--------------------------------------------------------------------------------------------------------------------------
//Ejercicio 02 - Tabla 4 - Ecuacion8 Y=
module Ecuacion8(input wire A,B,C, output wire out8);
assign out8=B|(~A&~B&~C);
endmodule










