
// Fredy Godoy - 19260
// Ejercicio 2 - Memoria Rom

module M_Rom(input wire [11:0]Localidad, output wire [7:0]Datos);
reg [7:0] Memoria[0:4096];
initial begin
$readmemb("Memoria.F", Memoria);
end 
assign Datos =  Memoria[Localidad];
endmodule
 