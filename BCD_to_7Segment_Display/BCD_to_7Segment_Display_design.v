module bcd_2_7seg(
  input [3:0]A,
  output a,b,c,d,e,f,g);
  assign a=A[2]|A[3]|(!A[0])&(!A[1]);
  assign b=A[1]|A[3]|(A[0]&A[2])|(!A[2]&!A[0]);
  assign c=(!A[2])|(!A[1]&!A[0])|(A[1]&A[0]);
  assign d=(!A[1])|A[0]|A[2];
  assign e=(!A[0]&!A[2])|(A[1]&!A[2])|(A[1]&!A[0])|(!A[1]&A[0]&A[2]);
  assign f=(!A[2]&!A[0])|(A[1]&!A[0]);
  assign g=A[3]|(A[1]&!A[0])|(!A[1]&A[2])|(A[1]&!A[2]);
endmodule
