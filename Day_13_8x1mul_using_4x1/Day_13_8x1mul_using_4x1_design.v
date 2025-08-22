module _4x1(
  input [3:0]a,
  input [1:0]s,
  input E,
  output reg y);
  always@(*)begin
    if (E) begin
      case(s)
        2'b00: y=a[0];
        2'b01: y=a[1];
        2'b10: y=a[2];
        2'b11: y=a[3];
      endcase
    end
    else begin
       y=1'b0;
    end
  end
endmodule
module _8x1using4x1(
  input [7:0]x,
  input [2:0]sel,
  output out);
  wire y1,y2;
  _4x1 g1(.a(x[3:0]),.s(sel[1:0]),.E(~sel[2]),.y(y1));
  _4x1 g2(.a(x[7:4]),.s(sel[1:0]),.E(sel[2]),.y(y2));
  assign out=y1|y2;

endmodule
