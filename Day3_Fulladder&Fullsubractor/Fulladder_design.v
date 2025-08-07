module fulladder(
  input a,b,c,
  output sum,carry);
  wire y1,y2,y3;
  xor g1(sum,a,b,c);
  and g2(y1,a,b);
  and g3(y2,b,c);
  and g4(y3,a,c);
  or g5(carry,y1,y2,y3);
endmodule
  
