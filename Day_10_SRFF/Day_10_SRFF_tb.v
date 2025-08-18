module srff_tb();
  reg s,r;
  wire q,qbar;
  srff dut(.s(s),.r(r),.q(q),.qbar(qbar));
  initial begin
    $monitor("s=%b ,r=%b,q=%b,qbar=%b",s,r,q,qbar);
    s=1;
    r=0;
    #10;
    s=0;
    r=0;
    #10;
    s=1;
    r=1;
    #10;
    s=0;
    r=1;
    #10;
    s=1;
    r=0;
    #10;
    s=1;
    r=1;
  end
endmodule

  
