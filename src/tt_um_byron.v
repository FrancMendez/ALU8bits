module tt_um_byron (
    input  [7:0] ui_in,
    output [7:0] uo_out,
    output [7:0] uio_out,
    input  [7:0] uio_in,
    output [7:0] uio_oe,
    input clk,
    input ena,
    input rst_n
);

    // Mapeo sin solapamiento:
    wire [2:0] sel = ui_in[7:5];  // selección de operación
    wire [2:0] A   = ui_in[4:2];  // A reducido a 3 bits
    wire [1:0] B   = ui_in[1:0];  // B reducido a 2 bits

    wire [7:0] result;
    wire cout;
    wire [7:0] d;


    // Expandir A y B a 8 bits para la ALU
    alu_8bit alu_inst (
        .A({5'b00000, A}),
        .B({6'b000000, B}),
        .sel(sel),
        .Result(result),
        .Cout(cout)
    );

    assign uo_out = result;
    assign uio_out = 8'b00000000; // o alguna lógica válida
    assign uio_oe = 8'b00000000;        // habilita todas las salidas
    assign d = uio_in;

endmodule
