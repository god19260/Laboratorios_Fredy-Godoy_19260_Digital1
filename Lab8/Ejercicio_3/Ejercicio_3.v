// Fredy Godoy - 19260
// Ejercicio 3 - ALU
module ALU(input logic [2:0]Seleccion,input [3:0]A,B,output [3:0]Output);
reg[3:0]Output;
always @(*) begin
case(Seleccion)
3'b000:  Output <= A & B;
3'b001:  Output <= A | B;
3'b010:  Output <= A + B;
3'b011:  Output <= 4'bxxxx;
3'b100:  Output <= A & ~B;
3'b101:  Output <=  A | ~B;
3'b110:  Output <= A - B;
3'b111:  Output <=  (A<B)? 1:0; 
default: Output = 4'bxxxx;
endcase
end
endmodule
