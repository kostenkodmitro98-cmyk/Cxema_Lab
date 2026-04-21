module Dknf(x3,x2,x1,f);
  input x3,x2,x1;
  output f;
  assign f = ~(~(x1) | ~(~x3 | ~x2));
endmodule
