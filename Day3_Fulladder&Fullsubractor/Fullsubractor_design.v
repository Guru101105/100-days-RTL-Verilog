module fullsub(
  input a,b,c,
  output diff,borrow);
  assign diff=a^b^c;
  assign borrow=((!a)&c)|(b&c)|((!a)&b);
endmodule
  
