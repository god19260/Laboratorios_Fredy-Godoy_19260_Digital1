module Tabla1POS();
	wire wAn, wBn, wCn, wo1, wo2, wo3, out; //w=wire "A" "B" "C" n=not a=and 
	reg A,B,C;
	
	not not1(wAn,A);
	not not2(wBn,B);
	not not3(wCn,C);
	or or1(wo1,A,B,wCn);
	or or2(wo2,A,wBn,wCn);
	or or3(wo3,wAn,wBn,C);
	and and1(out, wo1,wo2,wo3);

	
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
		$dumpfile("Tabla1POS_tb.vcd");
		$dumpvars(0, Tabla1POS);
	end 
endmodule