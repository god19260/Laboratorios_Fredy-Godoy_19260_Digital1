
// Fredy Godoy - 19260
// Ejercicio No.5 - Memoria Rom

module M_Rom(input wire [6:0]Localidad, output reg [12:0]Datos);
//reg [7:0] Memoria[0:128];+

always @(*) begin 
    case(Localidad)
    7'bxxxxxx0: Datos<=13'b1000000001000;
    7'b00001x1: Datos<=13'b0100000001000;
    7'b00000x1: Datos<=13'b1000000001000;
    7'b00011x1: Datos<=13'b1000000001000;
    7'b00010x1: Datos<=13'b0100000001000;
    7'b0010xx1: Datos<=13'b0001001000010;
    7'b0011xx1: Datos<=13'b1001001100000;
    7'b0100xx1: Datos<=13'b0011010000010;
    7'b0101xx1: Datos<=13'b0011010000100;
    7'b0110xx1: Datos<=13'b1011010100000;
    7'b0111xx1: Datos<=13'b1000000111000;
    7'b1000x11: Datos<=13'b0100000001000;
    7'b1000x01: Datos<=13'b1000000001000;
    7'b1001x11: Datos<=13'b1000000001000;
    7'b1001x01: Datos<=13'b0100000001000;
    7'b1010xx1: Datos<=13'b0011011000010;
    7'b1011xx1: Datos<=13'b1011011100000;
    7'b1100xx1: Datos<=13'b0100000001000;
    7'b1101xx1: Datos<=13'b0000000001001;
    7'b1110xx1: Datos<=13'b0011100000010;
    7'b1111xx1: Datos<=13'b1011100100000;

    endcase 
end
endmodule
 