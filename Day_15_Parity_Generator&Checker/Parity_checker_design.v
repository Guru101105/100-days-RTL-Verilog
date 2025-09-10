module bit4evenparitychecker(
  input [4:0]a,
  output c);
  assign c=(a[4]^a[3]^a[2]^a[1]^a[0]);
endmodule
