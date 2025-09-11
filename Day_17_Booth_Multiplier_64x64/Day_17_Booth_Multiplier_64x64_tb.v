module  booth64x64_tb();
  reg signed [63:0]M;
  reg signed [63:0]Q;
  wire signed [127:0]pro;
  booth16x16 dut(M,Q,pro);
  initial begin
    $monitor("M=%d, Q=%d, pro=%d", M, Q, pro);
    //input ranges from -9.22337204e+18 to -9.22337204e+18
    M=998358676309;
    Q=875420845462;
    #20;
   	M=235775867403;
    Q=757059960455;
    #20;
    M=7536585909869;
    Q=3657685548749998;
    #20;
    M=0;
    Q=0;
    #50 $finish;
  end
endmodule
