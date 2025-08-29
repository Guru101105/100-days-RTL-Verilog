module bit4paritygen_tb();
  reg [3:0]a;
  wire cp;
  bit4paritygen dut(.a(a),.cp(cp));
  initial begin
    int i;
    $monitor("a=%b\t\t cp=%b",a,cp);
    for(i=0;i<16;i=i+1)begin
      {a}=i;
      #10;
    end
  end
endmodule
