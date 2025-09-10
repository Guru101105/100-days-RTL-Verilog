module  booth4x4_tb();
  reg signed [3:0]M;
  reg signed [3:0]Q;
  wire signed [7:0]pro;
  booth4x4 dut(M,Q,pro);
  initial begin
    $monitor("M=%d, Q=%d, pro=%d", M, Q, pro);
    M=5;
    Q=-4;
    #10;
    M=-7;
    Q=-3;
    #10;
    M=-2;
    Q=6;
    #10;
  end
endmodule
