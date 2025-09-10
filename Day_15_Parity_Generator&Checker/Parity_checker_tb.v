module bit4evenparitycheckertb();
  reg [4:0]a;
  wire c;
  bit4evenparitychecker dut(.a(a),.c(c));
  initial begin
    int i;
    $monitor("a=%b\t\t Error=%b",a,c);
    $display("Error=1=>Number of 1's is odd \nError=0=>Number of 1's is even \n");
    for(i=0;i<32;i=i+1) begin
      {a}=i;
      #10;
    end
  end
endmodule
