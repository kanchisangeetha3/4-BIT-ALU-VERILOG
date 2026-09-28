module alu_testbench;

reg [3:0] A;
reg [3:0] B;
reg [1:0] ALU_Sel;

wire [3:0] Result;

alu uut (
    .A(A),
    .B(B),
    .ALU_Sel(ALU_Sel),
    .Result(Result)
);

initial begin

    // Addition
    A = 4'b0101;
    B = 4'b0011;
    ALU_Sel = 2'b00;
    #10;

    // Subtraction
    A = 4'b0101;
    B = 4'b0011;
    ALU_Sel = 2'b01;
    #10;

    // AND
    A = 4'b0101;
    B = 4'b0011;
    ALU_Sel = 2'b10;
    #10;

    // OR
    A = 4'b0101;
    B = 4'b0011;
    ALU_Sel = 2'b11;
    #10;

    $finish;

end

initial begin

    $monitor("Time=%0t A=%b B=%b Sel=%b Result=%b",
             $time, A, B, ALU_Sel, Result);

end

endmodule
