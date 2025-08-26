module mux2x1(
  input x,y,
  input sel,
  output y1);
  assign y1=(!sel&x)|(sel)&y;
endmodule
module gatesmux(
  input a1,b1,
  output out1,out2,out3,out4,out5,out6,out7);

  mux2x1 g1(.x(1'b0),.y(!(b1)),.sel(1'b1),.y1(out1));//not
  mux2x1 g2(.x(b1),.y(1'b1),.sel(a1),.y1(out2));//or
  mux2x1 g3(.x(1'b0),.y((b1)),.sel(a1),.y1(out3));//and
  mux2x1 g4(.x(1'b1),.y(!(b1)),.sel(a1),.y1(out4));//nand
  mux2x1 g5(.x(!(b1)),.y(1'b0),.sel(a1),.y1(out5));//nor
  mux2x1 g6(.x((b1)),.y(!(b1)),.sel(a1),.y1(out6));//xor
  mux2x1 g7(.x(!(b1)),.y((b1)),.sel(a1),.y1(out7));//xnor
endmodule
