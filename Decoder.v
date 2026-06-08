        `timescale 1ns / 1ps
        //////////////////////////////////////////////////////////////////////////////////
        // Company: 
        // Engineer: 
        // 
        // Create Date: 02.06.2026 23:01:14
        // Design Name: 
        // Module Name: Decoder
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
        
        
        module Decoder2_4(input a,b,output i0,i1,i2,i3);
        assign a=i2+i3;
        assign b=i0+i1;
        endmodule
        
        
        
        
        
        
        module decoder_2to4(input  [1:0] in,output reg [3:0] out);
        
        always @(*) begin
            case(in)
                2'b00: out = 4'b0001;
                2'b01: out = 4'b0010;
                2'b10: out = 4'b0100;
                2'b11: out = 4'b1000;
                default: out = 4'b0000;
            endcase
        end
        
        endmodule
