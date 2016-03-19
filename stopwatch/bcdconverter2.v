module decode_7segment (decimal, display);
  input [3:0] decimal;
  output [6:0] display;

/*
The binary encoded decimal digit is contained in decimal[0] to decimal[3].
Each element of display drives one segment of the output.


Boolean operation symbols:
   & = AND   e.g. (A & B)
   | = OR    e.g. (A | B)
   ~ = NOT   e.g. ( ~A)
*/

/* These are not correct...*/
assign display[0] = ~(decimal[3] | decimal[1] | (decimal[2] & decimal[0]) | (~decimal[2] & ~decimal[0])); //display[0] is a
assign display[1] = ~(~decimal[2] | (~decimal[1] & ~decimal[0]) | (decimal[1] & decimal[0])); //display[1] is b
assign display[2] = ~(decimal[2] | ~decimal[1] | decimal[0]); //display[2] is c
assign display[3] = ~((~decimal[2] & ~decimal[0]) | (decimal[1] & ~decimal[0]) | (decimal[2] & ~decimal[1] & decimal[0]) | (~decimal[2] & decimal[1]) | decimal[3]); //display[3] is d
assign display[4] = ~((~decimal[2] & ~decimal[0]) | (decimal[1] & ~decimal[0])); //display[4] is e
assign display[5] = ~(decimal[3] | (~decimal[1] & ~decimal[0]) | (decimal[2] & ~decimal[1]) | (decimal[2] & ~decimal[0])); //display[5] is f
assign display[6] = ~((~decimal[2] & decimal[1]) | (decimal[1] & ~decimal[0]) | (decimal[2] & ~decimal[1]) | decimal[3])






















; // display[6] is g

endmodule
