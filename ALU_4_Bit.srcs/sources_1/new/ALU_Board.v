module alu_board(
    input  [15:0] sw,
    output [6:0] led
);

    alu_4bit uut (
        .A(sw[3:0]),
        .B(sw[7:4]),
        .F(sw[11:8]),
        .CS(1'b0),
        .rst(1'b1),
        .Y(led[3:0]),
        .C_B(led[4]),
        .ZF(led[5]),
        .CD(led[6])
    );

endmodule