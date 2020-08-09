module Tabla2POS();
	wire wAn, wBn, wCn, wo1, wo2, wo3, wo4,wo5, out; //w=wire "A" "B" "C" n=not a=and o=or 
	reg A,B,C;
	
	not not1(wAn,A);
	not not2(wBn,B);
	not not3(wCn,C);
	or or1(wo1,A,B,C);
	or or2(wo2,A,wBn,C);
	or or3(wo3,A,wBn,wCn);
	or or4(wo4,wAn,B,C);
	or or5(wo5,wAn,B,wCn);
	and and1(out, wo1, wo2, wo3, wo4,wo5);

	
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
		$dumpfile("Tabla2POS_tb.vcd");
		$dumpvars(0, Tabla2POS);
	end 
endmodule