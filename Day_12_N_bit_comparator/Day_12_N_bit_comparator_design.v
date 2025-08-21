module n_bit_comparator #(parameter N=16) (
  input [N-1:0] a, b,
  output reg G, L, E
);
  always@(*) begin
    if(a>b)begin
      L=1'b0;
      G=1'b1;
      E=1'b0;
    end
    else if(a==b)begin
      L=1'b0;
      G=1'b0;
      E=1'b1;
    end
    else begin
      L=1'b1;
      G=1'b0;
      E=1'b0;
    end
  end
endmodule
  
  
