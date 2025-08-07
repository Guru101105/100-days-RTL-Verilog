module fulladder_tb();
  reg a,b,c;
  wire sum,carry;
  fulladder uut(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
  initial begin
  int i;
    $display("a b c sum carry");
    for(i=0;i<8;i=i+1)begin
      {a,b,c}=i;
      #10;
      $display("%b %b %b %b %b",a,b,c,sum,carry);
    end
  end
endmodule

  
