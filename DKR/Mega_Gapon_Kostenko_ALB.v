module Mega_Gapon_Kostenko_ALB (
    input [3:0] R,
    input [3:0] S,
    input CI,
    input [2:0] H,  // h3 h2 h1
    input [1:0] I,  // I4 I3
    output reg [3:0] Y,
    output reg [3:0] Y_norm,
    output reg CO,
    output reg VO,
    output reg NO,
    output reg ZO
);

    //  H=110
    wire [3:0] or_res  = R | S;
    wire [3:0] xor_res = R ^ S;
    wire [4:0] sub_res = S - R - 1 + CI;
    wire [4:0] add_res = R + S + CI;

    always @(*) begin
        //  variant: H = 110
        if (H == 3'b110) begin
            case (I)
                2'b00: begin // Logical OR
                    Y = or_res;
                    CO = 0;
                    VO = 0;
                end
                2'b01: begin // XOR
                    Y = xor_res;
                    CO = 0;
                    VO = 0;
                end
                2'b10: begin // Subtraction S - R
                    Y = sub_res[3:0];
                    CO = sub_res[4];
                    VO = (S[3] != R[3]) && (Y[3] != S[3]); // Overflow for S - R
                end
                2'b11: begin // Addition R + S
                    Y = add_res[3:0];
                    CO = add_res[4];
                    VO = (R[3] == S[3]) && (Y[3] != R[3]); // Overflow for R + S
                end
                default: begin
                    Y = 4'b0000;
                    CO = 0;
                    VO = 0;
                end
            endcase
        end else begin
            Y = 4'b0000;
            CO = 0;
            VO = 0;
        end

        // Status flags generation
        NO = Y[3];
        ZO = (Y == 4'b0000);

        // ADDITIONAL TASK (+5 points): Normalization by right shift
        if (Y[3] !== Y[2]) begin
            Y_norm = {1'b0, Y[3:1]};
        end else begin
            Y_norm = Y;
        end
    end
endmodule
