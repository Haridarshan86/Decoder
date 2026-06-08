`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 19:29:28
// Design Name: 
// Module Name: Decoder_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module Decoder_testbench;

reg [1:0]in;
wire [3:0]out;

decoder_2to4 d1(in,out);

initial begin
    $display("Time\tInput\tOutput");
    $monitor("%0t\t%b\t%b", $time, in, out);

    for(integer i = 0; i < 4; i = i + 1) begin
        in = i;
        #10;
    end 
 $finish;
end

endmodule