module _8x1using4x1_tb();
  reg [7:0]x;
  reg [2:0]sel;
  wire out;
  _8x1using4x1 dut(.x(x),.sel(sel),.out(out));
  initial begin 
    $monitor("x=%b,s=%b,output is out=%b",x,sel,out); 
    x=8'b11010100; 
    sel=3'b010;
    #10; 
    x=8'b11010100; 
    sel=3'b011; 
    #10; 
    x=8'b11010010; 
    sel=3'b010; 
    #10; 
    x=8'b11110000;
    sel=3'b111;
    #10;
    x=8'b11001100;
    sel=3'b101;
    #10;
    x=8'b11101100;
    sel=3'b101;
    #10;
  end 
endmodule
