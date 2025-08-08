module fa(
  input a,b,c,
  output sum,carry);
  assign sum=(a^b^c);
assign carry=(a&b)|(b&c)|(a&c);
endmodule
module ripplecarry(
  input [3:0]a,
  input [3:0]b,
  input cin,
  output [3:0]s,
  output cout);
  wire c1,c2,c3;
  fa f1(a[0],b[0],cin,s[0],c1);
  fa f2(a[1],b[1],c1,s[1],c2);
  fa f3(a[2],b[2],c2,s[2],c3);
  fa f4(a[3],b[3],c3,s[3],cout);
endmodule
