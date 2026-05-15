module full_adder(
    input a, b, cin,
    output s, cout
);
    assign s = a ^ b ^ cin;
    assign cout = (a & b) | (cin & (a ^ b));
endmodule

module sumator_7_bit_struct(
    input [6:0] A, B,
    input Cin,
    output [6:0] S,
    output Cout
);
    wire [5:0] C_int; 

    full_adder FA0(A[0], B[0], Cin,      S[0], C_int[0]);
    full_adder FA1(A[1], B[1], C_int[0], S[1], C_int[1]);
    full_adder FA2(A[2], B[2], C_int[1], S[2], C_int[2]);
    full_adder FA3(A[3], B[3], C_int[2], S[3], C_int[3]);
    full_adder FA4(A[4], B[4], C_int[3], S[4], C_int[4]);
    full_adder FA5(A[5], B[5], C_int[4], S[5], C_int[5]);
    full_adder FA6(A[6], B[6], C_int[5], S[6], Cout);

endmodule