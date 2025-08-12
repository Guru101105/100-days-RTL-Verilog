module fa(
  input x,
  input y,
  input c,
  output s,
  output cout);
  assign s=(x^y^c);
  assign cout=(x&y)|(y&c)|(x&c);
endmodule
  module subcomp(
  input [3:0]a,
  input [3:0]b, 
  output [3:0]sum,
  output carry);
  wire [3:0]w1;
  wire c1,c2,c3; 
  wire cin=1'b1;
    assign w1=~b;
    fa f1(a[0],w1[0],cin,sum[0],c1);
    fa f2(a[1],w1[1],c1,sum[1],c2);
    fa f3(a[2],w1[2],c2,sum[2],c3);
    fa f4(a[3],w1[3],c3,sum[3],carry);
    
  endmodule
    
