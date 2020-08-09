module Tabla1SOP ();
	wire wAn, wBn, wCn, wa1, wa2, wa3, wa4, wa5, out; //w=wire "A" "B" "C" n=not a=and 
	reg A,B,C;
	
	
	not not1(wAn, A);
	not not2(wBn, B);
	not not3(wCn, C);
	and and1(wa1,wAn,wBn,wCn);
	and and2(wa2,wAn,B,wCn);
	and and3(wa3,A,wBn,wCn);
	and and4(wa4,A,wBn,C);
	and and5(wa5,A,B,C);
	or or1(out,wa1,wa2,wa3,wa4,wa5);
	
	initial begin 
		$display("A B C | Y");
		$display("------|--");
		$monitor("%b %b %b | %b", A, B, C, out);
		A=0; B=0; C=0;
		#1 C=1;
		#1 B=1; C=0;
		#1 B=1; C=1;
		#1 A=1; B=0; C=0;
		#1 A=1; B=0; C=1;
		#1 A=1; B=1; C=0;
		#1 A=1; B=1; C=1;
		#1 $finish;
	end
	
initial 
	begin 
		$dumpfile("Tabla1SOP_tb.vcd");
		$dumpvars(0, Tabla1SOP);
	end 
endmodule