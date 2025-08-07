module halfsubtractor(
  input x,y,
  output diff,borrow);
  xor g1(diff,x,y);
  and g2(borrow,(!x),y);
endmodule
