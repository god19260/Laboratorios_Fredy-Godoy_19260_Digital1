module Tabla4POS();
	wire wAn, wBn, wCn, wDn, wo1, wo2, wo3, wo4, wo5, wo6,wo7, wo8, wo9, out; //w=wire "A" "B" "C" "D" n=not a=and o=or 
	reg A,B,C,D;
	
	not not1(wAn,A);
	not not2(wBn,B);
	not not3(wCn,C);
	not not4(wDn,D);
	or or1(wo1,A,B,C,wDn);
	or or2(wo2,A,wBn,C,D);
	or or3(wo3,A,wBn,C,wDn);
	or or4(wo4,wAn,B,C,wDn);
	or or5(wo5,wAn,B,wCn,wDn);
	or or6(wo6,wAn,wBn,C,D);
	or or7(wo7,wAn,wBn,C,wDn);
	or or8(wo8,wAn,wBn,wCn,D);
	or or9(wo9,wAn,wBn,wCn,wDn);
	and and1(out,wo1, wo2, wo3, wo4, wo5, wo6, wo7, wo8, wo9);

	
	initial begin 
		$display("A B C D| Y");
		$display("-------|--");
		$monitor("%b %b %b %b| %b", A, B, C,D, out);
		A=0; B=0; C=0; D=0;
		#1 D=1; 
		#1 D=0; C=1;
		#1 D=1; 
		#1 D=0; C=0; B=1;
		#1 D=1; 
		#1 D=0; C=1;
		#1 D=1; 
		#1 D=0; C=0; B=0; A=1;
		#1 D=1; 
		#1 D=0; C=1;
		#1 D=1; 
		#1 D=0; C=0; B=1;
		#1 D=1; 
		#1 D=0; C=1;
		#1 D=1; 
		#1 $finish;
	end
	
initial 
	begin 
		$dumpfile("Tabla4POS_tb.vcd");
		$dumpvars(0, Tabla4POS);
	end 
endmodule