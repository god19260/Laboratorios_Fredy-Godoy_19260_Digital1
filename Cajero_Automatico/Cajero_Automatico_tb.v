module testbench();
reg s1_1, s0_1,ACCESO_2_1,B4,B3,B2,B1,A4,A3,A2,A1,ATRAS; 
wire sf1_1,sf0_1, ACCESO_1, Solicitar_Tarjeta,Solicitar_Pin;

reg s2_2,s1_2,s0_2,CONSULTA,RETIRO,NEXT,SI,NO,MENU_1,MENU_0,ACCESO_1_2;
wire sf2_2,sf1_2,sf0_2,SEL_MENU, RECIBO,OTRA_OPE,TARJETA, RETIRO_M, CONSULT_,ACCESO_2;

reg s3_3,s2_3,s1_3,s0_3,CANT_1,CANT_2,CANT_3,CANT_4,CANT_5,VALIDO,INVALIDO,OTRO_MON;
wire sf3_3,sf2_3,sf1_3,sf0_3,OPCION_1,OPCION_2,OPCION_3,OPCION_4,OPCION_5,VALIDA_,INVALID_,EFECTIVO,MENU_0SA,MENU_1SA;
 
 FSM_1 maquina_1(s1_1, s0_1,ACCESO_2_1,B4,B3,B2,B1,A4,A3,A2,A1,ATRAS, sf1_1,sf0_1, ACCESO_1, Solicitar_Tarjeta,Solicitar_Pin);
 FSM_2 maquina_2(s2_2,s1_2,s0_2,ACCESO_1_2, CONSULTA, RETIRO, NEXT, SI, NO, MENU_1, MENU_0,sf2_2,sf1_2,sf0_2,SEL_MENU, RECIBO, ACCESO_2,OTRA_OPE,TARJETA, RETIRO_M, CONSULT_);
 FSM_3 maquina_3(s3_3,s2_3,s1_3,s0_3,CANT_1,CANT_2,CANT_3,CANT_4,CANT_5,ACCESO_1_2,VALIDO,INVALIDO,NEXT,SI,NO,OTRO_MON, sf3_3,sf2_3,sf1_3,sf0_3,RETIRO_M,OPCION_1,OPCION_2,OPCION_3,OPCION_4,OPCION_5,VALIDA_,INVALID_,EFECTIVO,OTRA_OPE,MENU_0SA,MENU_1SA);
 
  initial begin
/* $display("Tabla 1 y 2 - Ejercicio 01");
 $display("S1 S0 A4 A3 A2 A1 B4 B3 B2 B1 ACCESO_2 ATRAS | S1' S0' ACCESO_1 SOLICITAR_TARJETA SOLICITAR_PIN");
 $display("---------------------------------------------|-------------------------------------------------");
 $monitor("%b  %b  %b  %b  %b  %b  %b  %b  %b  %b     %b        %b  | %b  %b      %b          %b              %b", s1_1, s0_1,A4,A3,A2,A1,B4,B3,B2,B1,ACCESO_2,ATRAS,sf1_1,sf0_1, ACCESO_1, Solicitar_Tarjeta,Solicitar_Pin); 
 */
 
 //MSF:1
    s1_1=0; s0_1=0;A4=0;A3=0;A2=0;A1=0;B4=0;B3=0;B2=0;B1=0;ACCESO_2_1=0;ATRAS=0;
 #1 s1_1=0; s0_1=0;A4=0;A3=0;A2=0;A1=1;B4=0;B3=0;B2=0;B1=0;ACCESO_2_1=0;ATRAS=0;
 #1 s1_1=0; s0_1=0;A4=0;A3=0;A2=0;A1=1;B4=0;B3=0;B2=0;B1=1;ACCESO_2_1=0;ATRAS=0;
 #1 s1_1=0; s0_1=1;A4=0;A3=0;A2=0;A1=1;B4=0;B3=0;B2=0;B1=0;ACCESO_2_1=0;ATRAS=1;
 #1 s1_1=0; s0_1=1;A4=0;A3=0;A2=0;A1=1;B4=0;B3=0;B2=0;B1=1;ACCESO_2_1=0;ATRAS=0;
 #1 s1_1=0; s0_1=1;A4=0;A3=0;A2=0;A1=1;B4=0;B3=0;B2=0;B1=1;ACCESO_2_1=0;ATRAS=0;
 #1 s1_1=1; s0_1=0;A4=0;A3=0;A2=0;A1=1;B4=0;B3=0;B2=0;B1=1;ACCESO_2_1=0;ATRAS=0;
 #1 s1_1=1; s0_1=0;A4=0;A3=0;A2=0;A1=1;B4=0;B3=0;B2=0;B1=1;ACCESO_2_1=1;ATRAS=0;
 
 //MSF:2
 #1 s2_2=0;s1_2=0;s0_2=0;ACCESO_1_2=0;CONSULTA=0;RETIRO=0;NEXT=0;SI=0;NO=0;MENU_1=0;MENU_0=0;
 #1 s2_2=0;s1_2=0;s0_2=0;ACCESO_1_2=1;CONSULTA=1;RETIRO=0;NEXT=0;SI=0;NO=0;MENU_1=0;MENU_0=0;
 #1 s2_2=0;s1_2=0;s0_2=1;ACCESO_1_2=1;CONSULTA=0;RETIRO=0;NEXT=1;SI=0;NO=0;MENU_1=0;MENU_0=0;
 #1 s2_2=0;s1_2=1;s0_2=0;ACCESO_1_2=0;CONSULTA=0;RETIRO=0;NEXT=0;SI=0;NO=0;MENU_1=0;MENU_0=0;
 #1 s2_2=0;s1_2=1;s0_2=0;ACCESO_1_2=0;CONSULTA=0;RETIRO=0;NEXT=0;SI=1;NO=0;MENU_1=0;MENU_0=0;
 #1 s2_2=0;s1_2=1;s0_2=0;ACCESO_1_2=0;CONSULTA=0;RETIRO=0;NEXT=0;SI=0;NO=1;MENU_1=0;MENU_0=0;
 #1 s2_2=1;s1_2=0;s0_2=0;ACCESO_1_2=0;CONSULTA=0;RETIRO=0;NEXT=1;SI=0;NO=0;MENU_1=0;MENU_0=0;
 #1 s2_2=1;s1_2=0;s0_2=0;ACCESO_1_2=0;CONSULTA=0;RETIRO=0;NEXT=0;SI=0;NO=0;MENU_1=0;MENU_0=0;
 #1 s2_2=0;s1_2=0;s0_2=0;ACCESO_1_2=1;CONSULTA=0;RETIRO=1;NEXT=0;SI=0;NO=0;MENU_1=0;MENU_0=0;
 #1 s2_2=0;s1_2=1;s0_2=1;ACCESO_1_2=0;CONSULTA=0;RETIRO=0;NEXT=0;SI=0;NO=0;MENU_1=0;MENU_0=0;
 #1 s2_2=0;s1_2=1;s0_2=1;ACCESO_1_2=0;CONSULTA=0;RETIRO=0;NEXT=0;SI=0;NO=0;MENU_1=0;MENU_0=1;
 #1 s2_2=0;s1_2=1;s0_2=1;ACCESO_1_2=0;CONSULTA=0;RETIRO=0;NEXT=0;SI=0;NO=0;MENU_1=1;MENU_0=0;
 
 //MSF:3
 #1 s3_3=0;s2_3=0;s1_3=0;s0_3=0;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=0;VALIDO=0;INVALIDO=0;NEXT=0;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=0;s2_3=0;s1_3=0;s0_3=0;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=1;VALIDO=0;INVALIDO=0;NEXT=0;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=0;s2_3=0;s1_3=0;s0_3=0;CANT_1=1;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=1;VALIDO=0;INVALIDO=0;NEXT=0;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=0;s2_3=0;s1_3=0;s0_3=0;CANT_1=0;CANT_2=1;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=1;VALIDO=0;INVALIDO=0;NEXT=0;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=0;s2_3=0;s1_3=0;s0_3=0;CANT_1=0;CANT_2=0;CANT_3=1;CANT_4=0;CANT_5=0;ACCESO_1_2=1;VALIDO=0;INVALIDO=0;NEXT=0;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=0;s2_3=0;s1_3=0;s0_3=0;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=1;CANT_5=0;ACCESO_1_2=1;VALIDO=0;INVALIDO=0;NEXT=0;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=0;s2_3=0;s1_3=0;s0_3=0;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=1;ACCESO_1_2=1;VALIDO=0;INVALIDO=0;NEXT=0;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=0;s2_3=0;s1_3=0;s0_3=1;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=0;VALIDO=0;INVALIDO=0;NEXT=0;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=0;s2_3=0;s1_3=1;s0_3=0;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=0;VALIDO=0;INVALIDO=0;NEXT=0;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=0;s2_3=0;s1_3=1;s0_3=1;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=0;VALIDO=0;INVALIDO=0;NEXT=0;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=0;s2_3=1;s1_3=0;s0_3=0;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=0;VALIDO=0;INVALIDO=0;NEXT=0;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=0;s2_3=1;s1_3=0;s0_3=1;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=0;VALIDO=0;INVALIDO=0;NEXT=0;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=0;s2_3=0;s1_3=0;s0_3=1;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=0;VALIDO=1;INVALIDO=0;NEXT=0;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=0;s2_3=0;s1_3=0;s0_3=1;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=0;VALIDO=0;INVALIDO=1;NEXT=0;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=0;s2_3=0;s1_3=1;s0_3=0;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=0;VALIDO=1;INVALIDO=0;NEXT=0;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=0;s2_3=0;s1_3=1;s0_3=0;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=0;VALIDO=0;INVALIDO=1;NEXT=0;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=0;s2_3=0;s1_3=1;s0_3=1;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=0;VALIDO=1;INVALIDO=0;NEXT=0;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=0;s2_3=0;s1_3=1;s0_3=1;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=0;VALIDO=0;INVALIDO=1;NEXT=0;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=0;s2_3=1;s1_3=0;s0_3=0;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=0;VALIDO=1;INVALIDO=0;NEXT=0;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=0;s2_3=1;s1_3=0;s0_3=0;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=0;VALIDO=0;INVALIDO=1;NEXT=0;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=0;s2_3=1;s1_3=0;s0_3=1;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=0;VALIDO=1;INVALIDO=0;NEXT=0;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=0;s2_3=1;s1_3=0;s0_3=1;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=0;VALIDO=0;INVALIDO=1;NEXT=0;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=0;s2_3=1;s1_3=1;s0_3=0;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=0;VALIDO=0;INVALIDO=0;NEXT=0;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=0;s2_3=1;s1_3=1;s0_3=0;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=0;VALIDO=0;INVALIDO=0;NEXT=1;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=0;s2_3=1;s1_3=1;s0_3=1;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=0;VALIDO=0;INVALIDO=0;NEXT=0;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=0;s2_3=1;s1_3=1;s0_3=1;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=0;VALIDO=0;INVALIDO=0;NEXT=1;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=0;s2_3=1;s1_3=1;s0_3=1;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=0;VALIDO=0;INVALIDO=0;NEXT=0;SI=0;NO=0;OTRO_MON=1;
 #1 s3_3=1;s2_3=0;s1_3=0;s0_3=0;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=0;VALIDO=0;INVALIDO=0;NEXT=0;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=1;s2_3=0;s1_3=0;s0_3=0;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=0;VALIDO=0;INVALIDO=0;NEXT=0;SI=1;NO=0;OTRO_MON=0;
 #1 s3_3=1;s2_3=0;s1_3=0;s0_3=0;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=0;VALIDO=0;INVALIDO=0;NEXT=0;SI=0;NO=1;OTRO_MON=0;
 #1 s3_3=1;s2_3=0;s1_3=0;s0_3=1;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=1;VALIDO=0;INVALIDO=0;NEXT=0;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=1;s2_3=0;s1_3=0;s0_3=1;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=0;VALIDO=0;INVALIDO=0;NEXT=0;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=1;s2_3=0;s1_3=1;s0_3=0;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=0;VALIDO=0;INVALIDO=0;NEXT=0;SI=0;NO=0;OTRO_MON=0;
 #1 s3_3=1;s2_3=0;s1_3=1;s0_3=0;CANT_1=0;CANT_2=0;CANT_3=0;CANT_4=0;CANT_5=0;ACCESO_1_2=1;VALIDO=0;INVALIDO=0;NEXT=0;SI=0;NO=0;OTRO_MON=0;
 
end 
 initial begin 
 $dumpfile("Cajero_Automatico_tb.vcd");
 $dumpvars(0,testbench);
 end 
 endmodule