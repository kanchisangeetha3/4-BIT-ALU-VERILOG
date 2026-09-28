module alu (
    input [3:0] A,
    input [3:0] B,
    input [1:0] ALU_Sel,
    output reg [3:0] Result
);

always @(*) begin

    case (ALU_Sel)

        2'b00: Result = A + B;  // Addition

        2'b01: Result = A - B;  // Subtraction

        2'b10: Result = A & B;  // AND

        2'b11: Result = A | B;  // OR

        default: Result = 4'b0000;

    endcase

end

endmodule
