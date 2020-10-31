
// Fredy Godoy - 19260
// Ejercicio No.4 - Buffer Triestado de 4 Bits

//Buffer Triestado de 1 Bit
module Buffer_Triestado_4Bit(A, E, Y);
input [3:0]A; 
input E;
output [3:0]Y; 
reg [3:0]Y;

always @(*) 
if (E) begin
    Y<=A;
end else begin
    Y<=4'bzzzz;
end

endmodule 

