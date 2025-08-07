module halfsubtractor_tb;
  reg x,y;
  wire diff,borrow;
  halfsubtractor uut(.x(x),.y(y),.diff(diff),.borrow(borrow));
  initial begin
  int i;
    for(i=0;i<4;i=i+1)begin
      {x,y}=i;
      #10;
      $display("The result of diff and borrow when x= %b and y=%b is %b and %b",x,y,diff,borrow);
    end
    $finish;
  end
endmodule
    
