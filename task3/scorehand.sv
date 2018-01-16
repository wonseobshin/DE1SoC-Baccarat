module scorehand(input [3:0] card1, input [3:0] card2, input [3:0] card3, output [3:0] total);

// The code describing scorehand will go here.  Remember this is a combinational
// block. The function is described in the handout.  Be sure to review the section
// on representing numbers in the lecture notes.

logic [3:0] value1,value2,value3;

always_comb
begin
//evaluate value of card
	if (card1<0'b1010)
		value1 = card1;
	else
		value1 = 0'b0000;
	if (card2<0'b1010)
		value2 = card2;
	else
		value2 = 0'b0000;
	if (card3<0'b1010)
		value3 = card3;
	else
		value3 = 0'b0000;
end
//calculate total
assign total = ((value1+value2+value3)%0'b1010);

endmodule
