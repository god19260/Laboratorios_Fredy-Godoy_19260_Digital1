
//--------------------------------------------------------------------------------------------------------------------------
//Ecuacion simplificada 
module simplificada(input wire A,B,C, output wire out1 );
	wire wBn, wa1, wa2, wa3, wa4, wa5; //w=wire "A" "B" "C" n=not a=and 
	
	not (wBn, B);
	and (wa1,A,wBn);
	and (wa2,A,C);
	or  (out1,wa1,wa2);
	
endmodule
//--------------------------------------------------------------------------------------------------------------------------
//Ecuacion SOP
module SOP(input wire A,B,C, output wire out2);
assign out2=(A&~B&~C)|(A&~B&C)|(A&B&C);
endmodule
//--------------------------------------------------------------------------------------------------------------------------
//Ecuacion POS
module POS(input wire A,B,C, output wire out3);
assign out3=(A|B|C)&(A|B|~C)&(A|~B|C)&(A|~B|~C)&(~A|~B|C);
endmodule