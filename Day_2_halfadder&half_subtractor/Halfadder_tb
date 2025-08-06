
module halfadder_tb;
  reg x,y;
  wire sum,carry;
  halfadder uut(.x(x),.y(y),.sum(sum),.carry(carry));
  initial begin
  int i;
    for(i=0;i<4;i=i+1)begin
      {x,y}=i;
      #10;
      $display("The result of sum and carry when x= %b and y=%b is %b and %b",x,y,sum,carry);
    end
    $finish;
  end
endmodule
    
