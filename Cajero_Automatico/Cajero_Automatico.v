 // Fredy Godoy 19260
 // Proyecto I Digital I - Cajero Automático
 
 
 module Dff(data,clk, reset,q);
 input data,clk,reset;
 output q;
 reg q;
 always @(posedge clk or negedge reset)
 if(~reset)begin
 q<=data;
 end
 endmodule
 
 
 
 //-----------------------------------------------------------
 // FSM:1 - Ingresar al menú del cajero
module FSM_1(input wire s1_1, s0_1,ACCESO_2,B4,B3,B2,B1,A4,A3,A2,A1,ATRAS, output wire sf1_1,sf0_1, ACCESO_1, Solicitar_Tarjeta,Solicitar_Pin); // Estado Futuro 1 de la FSM:1   -acceso_1=acceso generado por FSM:1 - acceso_2=acceso proveniente de FSM:2
assign sf1_1 = (s1_1& ~s0_1 & ACCESO_2) |( ~s1_1& s0_1& ~B4& ~B3& ~B2& B1& ~ATRAS);
assign sf0_1 = (~s1_1& s0_1 &~B1& ~ATRAS) |( ~s1_1& ~s0_1& ~A4& ~A3& ~A2 & A1& ~ACCESO_2) ;
assign ACCESOO_1 = (s1_1& ~s0_1& ACCESO_2 ) |( ~s1_1& s0_1& ~B4& ~B3 &~B2 &B1& ~ATRAS);
assign Solicitar_Tarjeta = (s1_1& ~s0_1 & ~ACCESO_2)  |( ~s0_1& ~A1& ~ACCESO_2)  | ( ~s1_1& s0_1& ATRAS);
assign Solicitar_Pin = (~s1_1& s0_1&~ B1& ~ATRAS) | (~s1_1& ~s0_1& ~A4& ~A3& ~A2& A1 &~ACCESO_2);
endmodule

 //-----------------------------------------------------------
 // FSM:2 - Menú
module FSM_2(input wire s2_2,s1_2,s0_2,ACCESO_1, CONSULTA, RETIRO, NEXT, SI, NO, MENU_1, MENU_0, output wire sf2_2,sf1_2,sf0_2,SEL_MENU, RECIBO, ACCESO_2,OTRA_OPE,TARJETA, RETIRO_M, CONSULT_);
assign sf2_2 = (s2_2 &~s1_2& ~s0_2& ~NEXT)  |( ~s2_2& s1_2& ~s0_2& ~SI& NO)  |( ~s2_2& s1_2& s0_2& ~MENU_1& MENU_0);
assign sf1_2 =(~s2_2& ~s1_2& s0_2& NEXT)  | (~s2_2& s1_2& ~s0_2& ~SI &~NO)  |( ~s2_2& s1_2& s0_2& ~MENU_1 & ~MENU_0) |( ~s2_2& ~s1_2& ~s0_2& ACCESO_1& ~CONSULTA &RETIRO) ;
assign sf0_2 =( ~s2_2& s1_2& s0_2& ~MENU_1& ~MENU_0) |(~s2_2& ~s1_2& ~s0_2& ACCESO_1& ~CONSULTA &RETIRO) |( ~s2_2& ~s1_2& ~s0_2& ACCESO_1 &CONSULTA& ~RETIRO) ;
assign SEL_MENU =( s2_2 & ~s1_2& ~s0_2& NEXT)  |( ~s2_2& ~s1_2& ~s0_2& ~CONSULTA& ~RETIRO)  |( ~s2_2& s1_2 &~s0_2& SI & ~NO)|( ~s2_2& s1_2& s0_2& MENU_1& ~MENU_0);
assign RECIBO  = (~s2_2 &~s1_2 & ~s0_2& ACCESO_1& CONSULTA& ~RETIRO) ;
assign ACCESO_2 = (~s2_2 &~s1_2& s0_2& NEXT)  |( s2_2& ~s1_2& ~s0_2& NEXT)|  ( ~s2_2& s1_2 &~s0_2& ~NO)  |( ~s2_2& s1_2& s0_2& ~MENU_0) |(~s2_2& ~s1_2& ~s0_2& ACCESO_1 & ~CONSULTA) |( ~s2_2& ~s1_2& ~s0_2& ACCESO_1& ~RETIRO)  | (~s2_2& ~s1_2& ~s0_2& ~CONSULTA& ~RETIRO) ;
assign OTRA_OPE = (~s2_2& ~s1_2 &s0_2 &NEXT)  |( ~s2_2 &s1_2& ~s0_2& ~SI & ~NO) ;
assign TARJETA = (s2_2 &~s1_2& ~s0_2 & ~NEXT) |( ~s2_2& s1_2 &~s0_2 &~SI & NO ) |(~s2_2& s1_2 &s0_2 &~MENU_1& MENU_0);
assign RETIRO_M = (~s2_2 &s1_2& s0_2& ~MENU_1& ~MENU_0) |( ~s2_2& ~s1_2 &~s0_2 &ACCESO_1& ~CONSULTA& RETIRO) ;
assign CONSULT_ = (~s2_2& ~s1_2& ~s0_2& ACCESO_1& CONSULTA& ~RETIRO) ;

endmodule

 //-----------------------------------------------------------
 // FSM:3 - Menú
 module FSM_3(input wire s3_3,s2_3,s1_3,s0_3,CANT_1,CANT_2,CANT_3,CANT_4,CANT_5,ACCESO_1,VALIDO,INVALIDO,NEXT,SI,NO,OTRO_MON, output wire sf3_3,sf2_3,sf1_3,sf0_3,RETIRO_M,OPCION_1,OPCION_2,OPCION_3,OPCION_4,OPCION_5,VALIDA_,INVALID_,EFECTIVO,OTRA_OPE,MENU_0,MENU_1);
assign sf3_3 = (~s3_3& s2_3& s1_3& ~s0_3 &NEXT) |( s3_3 &~s2_3& ~s1_3& ~s0_3 &~SI)|( s3_3& ~s2_3& ~s1_3 &~s0_3& ~NO)  |( ~s3_3& s2_3& s1_3 &NEXT& ~OTRO_MON);
assign sf2_3 = (~s3_3& s2_3& ~s1_3& ~VALIDO )|( ~s3_3& s2_3& ~s1_3 &~INVALIDO)|(~ s3_3& ~s2_3& s1_3 &~VALIDO  &INVALIDO)  |( ~s3_3 &~s2_3& s1_3 &VALIDO&  ~INVALIDO)|( ~s3_3& s2_3 &s1_3 &~s0_3& ~NEXT)|( ~s3_3&s2_3 &s1_3& ~NEXT& ~OTRO_MON)|( ~s3_3& ~s2_3& ~s1_3 &~s0_3 &~CANT_1 &~CANT_2 &~CANT_3 &~CANT_4 &CANT_5 &ACCESO_1 )| ( ~s3_3&~s2_3& ~s1_3& ~s0_3& ~CANT_1 &~CANT_2& ~CANT_3 &CANT_4& ~CANT_5& ACCESO_1)  |( ~s3_3& ~s1_3& s0_3& ~VALIDO  &INVALIDO)|( ~s3_3& ~s1_3& s0_3 &VALIDO & ~INVALIDO) ;
assign sf1_3 = (~s3_3 & ~s2_3 & s1_3 & ~VALIDO)|( ~s3_3 & ~s2_3 & s1_3& ~INVALIDO)|(~s3_3 & s2_3 & ~s1_3 & ~VALIDO & INVALIDO)|( ~s3_3 & s2_3 & ~s1_3 & VALIDO & ~INVALIDO)|(~s3_3 & s2_3 & s1_3 & ~s0_3 & ~NEXT)|( ~s3_3 & s2_3 & s1_3 & ~NEXT & ~OTRO_MON)|( s3_3 & ~s2_3 & ~s1_3 & ~s0_3 & ~SI & NO)|(~s3_3 & ~s3_3 & ~s1_3 & ~s0_3 & ~CANT_1 & ~CANT_2 & CANT_3 & ~CANT_4 & ~CANT_5 & ACCESO_1)|( ~s3_3 & ~s2_3 & ~s1_3 & ~s0_3 & ~CANT_1 & CANT_2 & ~CANT_3 & ~CANT_4 & ~CANT_5 & ACCESO_1 )|( ~s3_3 & ~s1_3 & s0_3 & ~VALIDO & INVALIDO )|( ~s3_3&  ~s1_3 & s0_3 & VALIDO & ~INVALIDO) ;
assign sf0_3 = (~s3_3 & ~s2_3& s0_3& ~VALIDO)|( ~s3_3& ~s1_3& s0_3& ~VALIDO)|(~s3_3 & ~s2_3& s1_3 & ~VALIDO& INVALIDO)|(~s3_3& s2_3& ~s1_3 & ~VALIDO& INVALIDO)|(s3_3 & ~s2_3& ~s1_3 & ~s0_3 & SI & ~NO)|(~s3_3& s2_3& s1_3& s0_3 & ~NEXT & ~OTRO_MON)|(~s3_3& ~s2_3 & ~s1_3 & ~s0_3& ~CANT_1 & ~CANT_2 & ~CANT_3 & ~CANT_4 & CANT_5 &ACCESO_1)|(~s3_3& ~s2_3& ~s1_3 & ~s0_3& ~CANT_1& ~CANT_2& CANT_3& ~CANT_4 & ~CANT_5 & ACCESO_1 )|( ~s3_3 & ~s2_3 & ~s1_3 & ~s0_3 & CANT_1 & ~CANT_2 & ~CANT_3 & ~CANT_4 & ~CANT_5 &ACCESO_1) ;
assign RETIRO_M = (~s3_3& s2_3& s1_3 & s0_3& ~NEXT& OTRO_MON)|( ~s3_3& ~s2_3& ~s1_3& ~s0_3& ~CANT_1& ~CANT_2 & ~CANT_3 & ~CANT_4 & ~CANT_5 & ACCESO_1 & ~VALIDO & ~INVALIDO & ~NEXT& ~SI & ~NO) ;
assign OPCION_1 = (~s3_3 & ~s2_3 & ~s1_3 & s0_3 & ~VALIDO & ~INVALIDO)|(~s3_3 & ~s2_3 & ~s1_3 & ~s0_3 & CANT_1 & ~CANT_2 & ~CANT_3 & ~CANT_4 & ~CANT_5 & ACCESO_1) ;
assign OPCION_2 = (~s3_3 & ~s2_3 & s1_3 & ~s0_3 & ~VALIDO & ~INVALIDO)|(~s3_3 & ~s2_3 & ~s1_3 & ~s0_3 & ~CANT_1 & CANT_2 & ~CANT_3 & ~CANT_4 & ~CANT_5 & ACCESO_1) ;
assign OPCION_3 = (~s3_3 & ~s2_3 & s1_3 & s0_3 & ~VALIDO  & ~INVALIDO)|(~s3_3 & ~s2_3 & ~s1_3 & ~s0_3 & ~CANT_1 & ~CANT_2 & CANT_3 & ~CANT_4 & ~CANT_5 & ACCESO_1) ;
assign OPCION_4 = (~s3_3& s2_3& ~s1_3 & ~s0_3 & ~VALIDO & ~INVALIDO)|(~s3_3 & ~s2_3& ~s1_3& ~s0_3& ~CANT_1& ~CANT_2 & ~CANT_3 & CANT_4 & ~CANT_5 & ACCESO_1) ;
assign OPCION_5 = (~s3_3 &s2_3& ~s1_3& s0_3 & ~VALIDO & ~INVALIDO)|(~s3_3& ~s2_3& ~s1_3& ~s0_3& ~CANT_1 & ~CANT_2 & ~CANT_3 & ~CANT_4 & CANT_5 & ACCESO_1) ;
assign VALIDA_ = (~s3_3 & ~s2_3 & s1_3 & VALIDO & ~INVALIDO)|(~s3_3 & s2_3& ~s1_3 & VALIDO & ~INVALIDO)|( ~s3_3& s2_3 & s1_3 & ~s0_3 & ~NEXT)|(~s3_3 & ~s1_3 & s0_3 & VALIDO & ~INVALIDO) ;
assign INVALID_ =(~s3_3 & ~s2_3& s1_3 & ~VALIDO & INVALIDO)|(~s3_3 & s2_3 & ~s1_3& ~VALIDO & INVALIDO)|(~s3_3 & s2_3& s1_3 & s0_3 & ~NEXT & ~OTRO_MON)|(~s3_3& ~s1_3& s0_3 & ~VALIDO & INVALIDO) ;
assign EFECTIVO = (~s3_3& ~s2_3& s1_3& VALIDO &  ~INVALIDO)|(~s3_3 & s2_3 & ~s1_3 & VALIDO & ~INVALIDO)|(~s3_3 & s3_3 & s1_3& ~s0_3& ~NEXT)|(~s3_3 & ~s1_3 & s0_3 & VALIDO&  ~INVALIDO) ;
assign OTRA_OPE = (~s3_3 & s2_3 & s1_3 & ~s0_3 & NEXT) |( ~s3_3& s2_3 & s1_3 & NEXT & ~OTRO_MON)|(s3_3 & ~s2_3 & ~s1_3 & ~s0_3 & ~SI & ~NO);
assign MENU_0 = (s3_3 & ~s2_3 & ~s1_3 & ~s0_3& ~SI& NO) ;
assign MENU_1 = (s3_3 & ~s2_3 & ~s1_3 & ~s0_3& SI& ~NO) ;

 endmodule