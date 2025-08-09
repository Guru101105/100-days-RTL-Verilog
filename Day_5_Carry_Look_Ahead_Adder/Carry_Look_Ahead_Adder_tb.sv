module claa_tb();
  reg [3:0]a;
  reg [3:0]b;
  reg cin;
  wire [3:0]s;
  wire [3:0]c;
  
  claa uut(.a(a),.b(b),.cin(cin),.s(s),.c(c));
  initial begin
  a=4'b1101;
  b=4'b0101;
  cin=0;
  #10;
    $display("%b+%b+%b=%b with %b",a,b,cin,s,c[3]);
  a=4'b1101;
  b=4'b0011;
  cin=1;
  #10;
    $display("%b+%b+%b=%b with %b",a,b,cin,s,c[3]);
  end
endmodule
  
    
