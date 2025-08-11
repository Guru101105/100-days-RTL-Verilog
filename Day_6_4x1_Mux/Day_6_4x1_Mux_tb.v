module mux4x1_tb();
  reg [1:0]sel;
  reg [3:0]ips;
  wire y;
  mux4x1 uut(.sel(sel),.ips(ips),.y(y));
  initial begin
  sel=2'b00;
  ips=4'b1100;
  #10;
  $display("result is %b",y);
  sel=2'b01;
  ips=4'b1101;
  #10;
  $display("result is %b",y);
  sel=2'b10;
  ips=4'b1010;
  #10;
  $display("result is %b",y);
  sel=2'b11;
  ips=4'b1100;
  #10;
    $display("result is %b",y);
  end
endmodule
    
