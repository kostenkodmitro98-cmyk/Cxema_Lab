module standart_sum_7_bit(
    input [6:0] Ain, Bin,
    input Ci,
    output [6:0] Sout,
    output Co
);
    reg [7:0] temp_S;

    always @(Ain, Bin, Ci) begin
        temp_S = Ain + Bin + Ci;
    end

    assign Sout = temp_S[6:0];
    assign Co   = temp_S[7];

endmodule