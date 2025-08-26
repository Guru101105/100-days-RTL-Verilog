module gatesmux_tb();
  reg a1,b1;
  wire out1,out2,out3,out4,out5,out6,out7;
   gatesmux dut(.a1(a1),.b1(b1),.out1(out1),.out2(out2),.out3(out3),.out4(out4),.out5(out5),.out6(out6),.out7(out7));
  initial begin
    $monitor("a1=%b,b1=%b\nNOT OUTPUT:%b\nOR OUTPUT:%b\nAND OUTPUT:%b\nNAND OUTPUT:%b\nNOR OUTPUT:%b\nXOR OUTPUT:%b\nXNOR OUTPUT:%b",a1,b1,out1,out2,out3,out4,out5,out6,out7);
    a1=1'b0;//higher bit
    b1=1'b0;//lower bit
    #10;
    a1=1'b0;//higher bit
    b1=1'b1;//lower bit
    #10;
    a1=1'b1;//higher bit
    b1=1'b0;//lower bit
    #10; 
    a1=1'b1;//higher bit
    b1=1'b1;//lower bit
    #10;
  end
endmodule
