module decoder3x8_tb();
  reg  [2:0]x;
  wire [7:0]y;
  decoder3x8 dut(.x(x),.y(y));
  initial begin
    int i;
    $monitor("x=%b and y=%b",x,y);
   for(i=0;i<8;i=i+1)begin
      {x}=i;
      #10;
   end
  end
endmodule
