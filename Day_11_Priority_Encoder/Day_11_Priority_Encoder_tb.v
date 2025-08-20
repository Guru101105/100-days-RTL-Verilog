module pencod_tb();
  reg  [3:0]A;
  reg v;
  wire[1:0]D;
  pencod dut(.A(A),.v(v),.D(D));
  initial begin
    $monitor("A=%b ,v=%b ,D=%b",A,v,D);
    A=4'b1101;
    v=1;
    #10;
     A=4'b0101;
    v=1;
    #10;
     A=4'b1101;
    v=0;
    #10;
     A=4'b0101;
    v=1;
    #10;
     A=4'b0011;
    v=1;
    #10;
  end
endmodule
