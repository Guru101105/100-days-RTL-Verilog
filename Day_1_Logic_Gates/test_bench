module gates_tb;
  reg x,y;
  wire and_out,or_out,not_out,xor_out,xnor_out,nand_out,nor_out;
  gates uut(.x(x),.y(y),.and_out(and_out),.or_out(or_out),.not_out(not_out),.xor_out(xor_out),.xnor_out(xnor_out),.nand_out(nand_out),.nor_out(nor_out));
   initial begin
   int i;
   for(i=0;i<4;i=i+1)begin
     {x,y} =i;
   #10;
   $display (" and_out= %b \t or_out=%b \t not_out=%b \t xor_out=%b \t xnor_out=%b \t nand_out=%b \t nor_out =%b",and_out,or_out,not_out,xor_out,xnor_out,nand_out,nor_out);
   end
   $finish;
   $stop;
   end
   endmodule
             
