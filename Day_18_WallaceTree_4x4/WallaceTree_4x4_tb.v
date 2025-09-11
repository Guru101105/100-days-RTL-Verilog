module wallace4x4_tb();
  reg [3:0]a,b;
  wire [7:0]result;
  wallace4x4 dut(.a(a),.b(b),.result(result));
  initial begin
    $monitor("a=%d,b=%d,result=%d",a,b,result);
    a=4'b1111;
    b=4'b1111;
    #10;
    a=1010;
    b=0101;
    #10;
    a=1000;
    b=0111;
    #10 $stop;
    #30 $finish;
  end
endmodule
