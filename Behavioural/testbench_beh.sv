`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.11.2024 10:14:47
// Design Name: 
// Module Name: testbench
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


module testbench;

reg [3:0] binary;
wire [3:0] gray;
int i;
parameter delay = 40;

bintogray bingray(binary, gray);

    initial begin
        for(i=0; i<25; i=i+1) begin
            binary = $urandom_range(0, 15);
            #delay;
        end
        $finish();
    end
    
endmodule
