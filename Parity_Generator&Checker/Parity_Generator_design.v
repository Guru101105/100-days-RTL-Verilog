module bit4paritygen(
  input [3:0]a,
  output cp);
  assign cp=(a[3]^a[2]^a[1]^a[0]);
endmodule
