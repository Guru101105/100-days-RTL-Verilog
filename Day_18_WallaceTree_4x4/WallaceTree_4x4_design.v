module fa(
  input x,y,z,
  output sum,carry);
  assign sum=(x^y^z);
  assign carry=(x&y)|(y&z)|(x&z);
endmodule
module wallace4x4(
  input [3:0]a,
  input [3:0]b,
  output [7:0]result);
  wire [11:0]s,c;
  fa f1((a[1]&b[0]),(a[0]&b[1]),1'b0,s[0],c[0]);
  fa f2((a[2]&b[0]),(a[1]&b[1]),(a[0]&b[2]),s[1],c[1]);
  fa f3((a[3]&b[0]),(a[2]&b[1]),(a[1]&b[2]),s[2],c[2]);//
  fa f4((a[3]&b[1]),(a[2]&b[2]),1'b0,s[3],c[3]);
  fa f5(s[1],c[0],1'b0,s[4],c[4]);
  fa f6(s[2],c[1],(a[0]&b[3]),s[5],c[5]);
  fa f7(s[3],c[2],(a[1]&b[3]),s[6],c[6]);
  fa f8((a[3]&b[2]),c[3],(a[2]&b[3]),s[7],c[7]);
  fa f9(s[5],c[4],1'b0,s[8],c[8]);
  fa f10(s[6],c[5],c[8],s[9],c[9]);
  fa f11(s[7],c[6],c[9],s[10],c[10]);
  fa f12((a[3]&b[3]),c[7],c[10],s[11],c[11]);
  assign result={c[11],s[11],s[10],s[9],s[8],s[4],s[0],(a[0]&b[0])};
endmodule
  
  
  
