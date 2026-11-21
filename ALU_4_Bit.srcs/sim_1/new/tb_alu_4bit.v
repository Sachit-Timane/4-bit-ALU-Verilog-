`timescale 1ns/1ps

module tb_alu_4bit;

    reg [3:0] A;
    reg [3:0] B;
    reg [3:0] F;
    reg CS;
    reg rst;

    wire [3:0] Y;
    wire ZF;
    wire C_B;
    wire CD;

    alu_4bit uut (
        .A(A),
        .B(B),
        .F(F),
        .CS(CS),
        .rst(rst),
        .Y(Y),
        .C_B(C_B),
        .ZF(ZF),
        .CD(CD)
    );

    initial begin

        rst = 0;
        CS = 0;
        A = 0;
        B = 0;
        F = 0;

        #10;

        rst = 1;

        // ADD
        A = 4'd10;
        B = 4'd5;
        F = 4'b0000;
        #10;

        // SUB
        A = 4'd10;
        B = 4'd5;
        F = 4'b0001;
        #10;

        // AND
        A = 4'b1010;
        B = 4'b1100;
        F = 4'b0010;
        #10;

        // OR
        F = 4'b0011;
        #10;

        // XOR
        F = 4'b0100;
        #10;

        // NOT
        F = 4'b0101;
        #10;

        // Increment
        A = 4'd10;
        F = 4'b0110;
        #10;

        // Decrement
        A = 4'd10;
        F = 4'b0111;
        #10;

        // Zero flag
        A = 4'd5;
        B = 4'd5;
        F = 4'b0001;
        #10;

        // Carry test
        A = 4'd15;
        B = 4'd1;
        F = 4'b0000;
        #10;

        // Chip disabled
        CS = 1;
        #10;

        // Chip enabled
        CS = 0;
        #10;

        $finish;

    end

endmodule