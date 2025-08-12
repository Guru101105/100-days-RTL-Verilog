module subcomp_tb();
  reg [3:0]a;
  reg [3:0]b;
  wire [3:0]sum;
  wire carry;
  subcomp uut(.a(a),.b(b),.sum(sum),.carry(carry));
  
  initial begin
    $monitor("a=%b,b=%b,sum=%b,carry=%b\n In decimal:a=%d,b=%d,sum=%d,carry=%d",a,b,sum,carry,a,b,sum,carry);
  a=4'b0100;
  b=4'b0110;
   
  #10;
   
  a=4'b0110;
  b=4'b1101;
  #10;
    
  a=4'b1101;
  b=4'b0010;
    #10;
    
  end
endmodule
  
