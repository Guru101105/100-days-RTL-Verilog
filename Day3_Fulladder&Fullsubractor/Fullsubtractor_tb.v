module fullsub_tb();
  reg a,b,c;
  wire diff,borrow;
  fullsub uut(.a(a),.b(b),.c(c),.diff(diff),.borrow(borrow));
  initial begin
    int i;
    $display("a b c diff borrow ");
    for(i=0;i<8;i=i+1)begin
      {a,b,c}=i;
      #10;
      $display("%d %d %d  %d   %d",a,b,c,diff,borrow);
    end
    $finish;
    end
endmodule
