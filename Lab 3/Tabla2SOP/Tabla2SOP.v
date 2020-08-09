module Tabla2SOP();
	wire wAn, wBn, wCn, wa1, wa2, wa3, out; //w=wire "A" "B" "C" n=not a=and o=or
	reg A,B,C;
	
	not not1(wAn,A);
	not not2(wBn,B);
	not not3(wCn,C);
	and and1(wa1,wAn,wBn,C);
	and and2(wa2,A,B,wCn);
	and and3(wa3,A,B,C);
	or or1(out, wa1,wa2, wa3);

	
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
		$dumpfile("Tabla2SOP_tb.vcd");
		$dumpvars(0, Tabla2SOP);
	end 
endmodule