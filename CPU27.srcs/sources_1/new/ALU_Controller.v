`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/02/21 21:04:22
// Design Name: 
// Module Name: ALU_Controller
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


module ALU_Controller(OP, F, S);
    input[5:0] OP, F;
    output[3:0] S;
    assign S[0]=(~OP[5]&~OP[4]&~OP[3]&~OP[2]&~OP[1]&~OP[0]&~F[5]&~F[4]&~F[3]&~F[2]&F[1]&F[0])|
        (~OP[5]&~OP[4]&~OP[3]&~OP[2]&~OP[1]&~OP[0]&F[5]&~F[4]&~F[3]&~F[2]&~F[1]&~F[0])|
        (~OP[5]&~OP[4]&~OP[3]&~OP[2]&~OP[1]&~OP[0]&F[5]&~F[4]&~F[3]&~F[2]&~F[1]&F[0])|
        (~OP[5]&~OP[4]&~OP[3]&~OP[2]&~OP[1]&~OP[0]&F[5]&~F[4]&~F[3]&F[2]&~F[1]&~F[0])|
        (~OP[5]&~OP[4]&~OP[3]&~OP[2]&~OP[1]&~OP[0]&F[5]&~F[4]&F[3]&~F[2]&F[1]&~F[0])|
        (~OP[5]&~OP[4]&OP[3]&~OP[2]&~OP[1]&~OP[0])|
        (~OP[5]&~OP[4]&OP[3]&OP[2]&~OP[1]&~OP[0])|
        (~OP[5]&~OP[4]&OP[3]&~OP[2]&~OP[1]&OP[0])|
        (~OP[5]&~OP[4]&OP[3]&~OP[2]&OP[1]&~OP[0])|
        (OP[5]&~OP[4]&~OP[3]&~OP[2]&OP[1]&OP[0])|
        (OP[5]&~OP[4]&OP[3]&~OP[2]&OP[1]&OP[0])|
        (OP[5]&~OP[4]&~OP[3]&OP[2]&~OP[1]&~OP[0])|
        (~OP[5]&~OP[4]&~OP[3]&~OP[2]&~OP[1]&OP[0]);
    assign S[1]=(~OP[5]&~OP[4]&~OP[3]&~OP[2]&~OP[1]&~OP[0]&~F[5]&~F[4]&~F[3]&~F[2]&F[1]&~F[0])|
        (~OP[5]&~OP[4]&~OP[3]&~OP[2]&~OP[1]&~OP[0]&F[5]&~F[4]&~F[3]&~F[2]&F[1]&~F[0])|
        (~OP[5]&~OP[4]&~OP[3]&~OP[2]&~OP[1]&~OP[0]&F[5]&~F[4]&~F[3]&F[2]&~F[1]&~F[0])|
        (~OP[5]&~OP[4]&~OP[3]&~OP[2]&~OP[1]&~OP[0]&F[5]&~F[4]&~F[3]&F[2]&F[1]&F[0])|
        (~OP[5]&~OP[4]&~OP[3]&~OP[2]&~OP[1]&~OP[0]&F[5]&~F[4]&F[3]&~F[2]&F[1]&~F[0])|
        (~OP[5]&~OP[4]&OP[3]&OP[2]&~OP[1]&~OP[0])|
        (~OP[5]&~OP[4]&OP[3]&~OP[2]&OP[1]&~OP[0])|
        (~OP[5]&~OP[4]&~OP[3]&~OP[2]&~OP[1]&~OP[0]&~F[5]&~F[4]&~F[3]&F[2]&F[1]&~F[0])|
        (~OP[5]&~OP[4]&~OP[3]&~OP[2]&~OP[1]&OP[0]);
    assign S[2]=(~OP[5]&~OP[4]&~OP[3]&~OP[2]&~OP[1]&~OP[0]&F[5]&~F[4]&~F[3]&~F[2]&~F[1]&~F[0])|
        (~OP[5]&~OP[4]&~OP[3]&~OP[2]&~OP[1]&~OP[0]&F[5]&~F[4]&~F[3]&~F[2]&~F[1]&F[0])|
        (~OP[5]&~OP[4]&~OP[3]&~OP[2]&~OP[1]&~OP[0]&F[5]&~F[4]&~F[3]&~F[2]&F[1]&~F[0])|
        (~OP[5]&~OP[4]&~OP[3]&~OP[2]&~OP[1]&~OP[0]&F[5]&~F[4]&~F[3]&F[2]&~F[1]&~F[0])|
        (~OP[5]&~OP[4]&~OP[3]&~OP[2]&~OP[1]&~OP[0]&F[5]&~F[4]&F[3]&~F[2]&F[1]&F[0])|
        (~OP[5]&~OP[4]&OP[3]&~OP[2]&~OP[1]&~OP[0])|
        (~OP[5]&~OP[4]&OP[3]&OP[2]&~OP[1]&~OP[0])|
        (~OP[5]&~OP[4]&OP[3]&~OP[2]&~OP[1]&OP[0])|
        (OP[5]&~OP[4]&~OP[3]&~OP[2]&OP[1]&OP[0])|
        (OP[5]&~OP[4]&OP[3]&~OP[2]&OP[1]&OP[0])|
        (OP[5]&~OP[4]&~OP[3]&OP[2]&~OP[1]&~OP[0]);
    assign S[3]=(~OP[5]&~OP[4]&~OP[3]&~OP[2]&~OP[1]&~OP[0]&F[5]&~F[4]&~F[3]&F[2]&~F[1]&F[0])|
        (~OP[5]&~OP[4]&~OP[3]&~OP[2]&~OP[1]&~OP[0]&F[5]&~F[4]&~F[3]&F[2]&F[1]&F[0])|
        (~OP[5]&~OP[4]&~OP[3]&~OP[2]&~OP[1]&~OP[0]&F[5]&~F[4]&F[3]&~F[2]&F[1]&~F[0])|
        (~OP[5]&~OP[4]&~OP[3]&~OP[2]&~OP[1]&~OP[0]&F[5]&~F[4]&F[3]&~F[2]&F[1]&F[0])|
        (~OP[5]&~OP[4]&OP[3]&~OP[2]&OP[1]&~OP[0])|
        (~OP[5]&~OP[4]&OP[3]&OP[2]&~OP[1]&OP[0])|
        (~OP[5]&~OP[4]&~OP[3]&~OP[2]&~OP[1]&OP[0]);
endmodule
