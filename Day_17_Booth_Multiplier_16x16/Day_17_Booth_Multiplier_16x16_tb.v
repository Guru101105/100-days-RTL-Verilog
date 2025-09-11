module  booth16x16_tb();
  reg signed [15:0]M;
  reg signed [15:0]Q;
  wire signed [31:0]pro;
  booth16x16 dut(M,Q,pro);
  initial begin
    $monitor("M=%d, Q=%d, pro=%d", M, Q, pro);
    //input ranges from -32768 to 32768
    M=32000;
    Q=31560;
    #10;
   	M=23195;
    Q=435;
    #10;
    M=32767;
    Q=32767;
    #10;
    M=0;
    Q=0;
    #50 $finish;
  end
endmodule
