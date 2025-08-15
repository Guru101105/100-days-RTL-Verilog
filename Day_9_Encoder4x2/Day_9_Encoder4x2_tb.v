module encoder4x2_tb();
  reg [3:0]x;
  wire [1:0]y;
  encoder4x2 dut(.x(x),.y(y));
  initial begin
    $monitor("For Input x=%b ,output is y=%b",x,y);
    x=4'b1000;
    #10;
    x=4'b0001;
    #10;
  end
endmodule
    
