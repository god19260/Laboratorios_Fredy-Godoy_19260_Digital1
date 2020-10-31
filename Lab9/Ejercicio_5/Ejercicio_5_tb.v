
// Fredy Godoy - 19260
// Ejercicio No.5 - Memoria Rom
module testbench();

reg [6:0]localidad;
wire [12:0]datos;

M_Rom memoria(localidad,datos);

initial begin
$display("----------Memoria Rom-------");
$display("Localidad       |    Lectura ");
$monitor("    %b    |   %b    ", localidad, datos);
   localidad=7'bxxxxxx0;
#1 localidad=7'b0000000;
#1 localidad=7'b1111110;

   
#1 localidad=7'b00001x1;
#1 localidad=7'b00000x1;
#1 localidad=7'b00011x1;
#1 localidad=7'b00010x1;
#1 localidad=7'b0010xx1;
#1 localidad=7'b0011xx1;

#1 localidad=7'b0100111;
#1 localidad=7'b0100001;
#1 localidad=7'b0100101;

#1 localidad=7'b0101xx1;
#1 localidad=7'b0110xx1;
#1 localidad=7'b0111xx1;
#1 localidad=7'b1000x11;
#1 localidad=7'b1000x01;

#1 localidad=7'b1001011;
#1 localidad=7'b1001111;


#1 localidad=7'b1001x01;
#1 localidad=7'b1010xx1;
#1 localidad=7'b1011xx1;

#1 localidad=7'b1100111;
#1 localidad=7'b1100011;
#1 localidad=7'b1100101;


#1 localidad=7'b1101xx1;
#1 localidad=7'b1110xx1;
#1 localidad=7'b1111xx1;

end 

initial 
#100 $finish;


initial begin 
 $dumpfile("Ejercicio_5_tb.vcd");
 $dumpvars(0,testbench);
end
endmodule 