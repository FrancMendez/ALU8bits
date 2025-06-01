module alu_8bit (
    input [7:0] A,
    input [7:0] B,
    input [10:8] sel,
    output reg [7:0] Result,
    output reg Cout
);
    wire [7:0] Sum;
    wire Carry;

    carry_lookahead_adder_8bit adder (
        .A(A),
        .B(B),
        .Cin(1'b0),
        .Sum(Sum),
        .Cout(Carry)
    );

    always @(*) begin
        case (sel)
            3'b000: begin Result = Sum; Cout = Carry; end
            3'b001: begin Result = A - B; Cout = 0; end
            3'b010: begin Result = A & B; Cout = 0; end
            3'b011: begin Result = A | B; Cout = 0; end
            default: begin Result = 8'b00000000; Cout = 0; end
        endcase
    end
endmodule
