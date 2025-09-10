module bcd_2_7seg_tb();
  reg [3:0]A;
  wire a,b,c,d,e,f,g,h;
  bcd_2_7seg dut(.A(A),.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g));
  initial begin
    int i;
    $monitor("input=%b\ta=%b\tb=%b\tc=%b\td=%b\te=%b\tf=%b\tg=%b",A,a,b,c,d,e,f,g);
    for (i=0;i<10;i=i+1)begin
      A={i};
     #10 ;
    end
    $display("7segment dipslay Referal:\n  b  \na   c\n  g  \nf   d\n  e  \n");
  end
endmodule
