//Fredy Godoy 19260

//Ejercicio no.6 - Laboratorio no.6

module FFD(input logic clk, input logic reset,input logic set, input logic [3:0]D, output [3:0]Q);
reg Q;
always @ (posedge clk or posedge reset)
if (reset) begin
Q<= 4'b0000;
end else if (set)begin
Q<= 4'b1111;
end else begin
Q<= D;
end
endmodule

module ejercicio1(input wire A, B, input logic clk, reset, set, output Y);

output [1:0]D;
output [1:0]Q;
FFD U1(clk, D, reset, set, Q);
assign D[0] = (~Q[1] & ~Q[0] & A);
assign D[1] = (Q[0] & B)|(Q[1] & A & B);
assign Y= (Q[1] & A & B);

endmodule 

