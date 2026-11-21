module alu_4bit(
    input  [3:0] A,
    input  [3:0] B,
    input  [3:0] F,
    input        CS,
    input        rst,

    output reg [3:0] Y,
    output reg       C_B,
    output reg       ZF,
    output reg       CD
);

reg [4:0] temp;

always @(*) begin

    if (CS || !rst) begin
        Y = 4'b0000;
        C_B = 1'b0;
        ZF = 1'b0;
        CD = 1'b1;
    end

    else begin

        CD = 1'b0;
        C_B = 1'b0;
        temp = 5'b00000;

        case (F)

            4'b0000: begin
                temp = A + B;
                Y = temp[3:0];
                C_B = temp[4];
            end

            4'b0001: begin
                temp = A - B;
                Y = temp[3:0];
                C_B = temp[4];
            end

            4'b0010: begin
                Y = A & B;
            end

            4'b0011: begin
                Y = A | B;
            end

            4'b0100: begin
                Y = A ^ B;
            end

            4'b0101: begin
                Y = ~A;
            end

            4'b0110: begin
                Y = A + 1;
            end

            4'b0111: begin
                Y = A - 1;
            end

            default: begin
                Y = 4'b0000;
            end

        endcase

        if (Y == 4'b0000)
            ZF = 1'b1;
        else
            ZF = 1'b0;

    end

end

endmodule