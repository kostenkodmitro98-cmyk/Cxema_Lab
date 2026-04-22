module demux_1_to_5_4bit_assign (
    input  wire [3:0] D, 
    input  wire [2:0] A, 
    output wire [3:0] Q0,
    output wire [3:0] Q1,
    output wire [3:0] Q2,
    output wire [3:0] Q3,
    output wire [3:0] Q4
);

  
    assign Q0 = (A == 3'b000) ? D : 4'b0000;
    assign Q1 = (A == 3'b001) ? D : 4'b0000;
    assign Q2 = (A == 3'b010) ? D : 4'b0000;
    assign Q3 = (A == 3'b011) ? D : 4'b0000;
    assign Q4 = (A == 3'b100) ? D : 4'b0000;

endmodule
