module Tabla3SOP();
	wire wAn, wBn, wCn, wDn, wa1, wa2, wa3, wa4,wa5,wa6,wa7, out; //w=wire "A" "B" "C" "D" n=not a=and o=or 
	reg A,B,C,D;
	
	not not1(wAn,A);
	not not2(wBn,B);
	not not3(wCn,C);
	not not4(wDn,D);
	and and1(wa1, wAn, wBn, wCn, wDn);
	and and2(wa2, wAn, wBn, wCn, D);
	and and3(wa3, wAn, wBn, C, wDn);
	and and4(wa4, wAn, wBn, C, D);
	and and5(wa5, A, wBn, wCn, wDn);
	and and6(wa6, A, wBn, C, wDn);
	and and7(wa7, A, B, C, wDn);
	or or1(out,wa1, wa2, wa3, wa4,wa5,wa6,wa7);
	

	
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
		$dumpfile("Tabla3SOP_tb.vcd");
		$dumpvars(0, Tabla3SOP);
	end 
endmodule