module adder(input [7:0] SW, output [3:0] LEDR);
    assign LEDR = SW[7:4] + SW[3:0];
endmodule
