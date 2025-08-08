module ripplecarry_tb();
  reg [3:0]a;
  reg [3:0]b;
  reg cin;
  wire [3:0]s;
  wire cout;
  ripplecarry uut(.a(a),.b(b),.cin(cin),.s(s),.cout(cout));
  initial begin
    a=4'b1101;
    b=4'b0011;
    cin=0;
    #10;
    $display("Result of %b & %b with cin=%b is %b with carry out as %b",a,b,cin,s,cout);
    $display("Result of %d & %d with cin=%b is %d with carry out as %d",a,b,cin,s,cout);
    a=4'b0101;
    b=4'b0010;
    cin=1;
    #10;
    $display("Result of %b & %b with cin=%b is %b with carry out as %b",a,b,cin,s,cout);
    $display("Result of %d & %d with cin=%b is %d with carry out as %d",a,b,cin,s,cout);
    a=4'b1101;
    b=4'b0010;
    cin=1;
     #10;
    $display("Result of %b & %b with cin=%b is %b with carry out as %b",a,b,cin,s,cout);
    $display("Result of %d & %d with cin=%b is %d with carry out as %d",a,b,cin,s,cout);
  end
endmodule
    
