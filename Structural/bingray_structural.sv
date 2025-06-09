`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.11.2024 10:34:04
// Design Name: 
// Module Name: bingray
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

module bingray( input [3:0] binary,
                output [3:0] gray);

xor g1(gray[0], binary[0], binary[1]);
xor g2(gray[1], binary[1], binary[2]);
xor g3(gray[2], binary[2], binary[3]);
and g4(gray[3], binary[3], binary[3]);

endmodule