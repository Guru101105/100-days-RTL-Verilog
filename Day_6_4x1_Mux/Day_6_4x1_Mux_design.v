module mux4x1(
  input [1:0]sel,
  input [3:0]ips,
  output  reg y
  ); 
  always@(*) begin
    case(sel)
    2'b00:y=ips[0];
    2'b01:y=ips[1];
    2'b10:y=ips[2];
    2'b11:y=ips[3];
    endcase
  end
endmodule
