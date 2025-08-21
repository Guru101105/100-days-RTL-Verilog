module n_bit_comparator_tb();
  reg [15:0]a,b;
  wire G,L,E;
  n_bit_comparator dut(.a(a),.b(b),.G(G),.L(L),.E(E));
  initial begin
    a=30000;
    b=33000;
    #10;
    a=10000;
    b=65;
    #10;
    a=45;
    b=45;
    #10;
    a=65535;
    b=65535;
    #10;
    a=65500;
    b=65535;
    #10;
  end
  initial begin
  $monitor("a=%d,b=%d,G=%b,l=%b,E=%b",a,b,G,L,E);
  end
endmodule
