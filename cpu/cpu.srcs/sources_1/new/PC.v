//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2020/06/23 14:47:21
// Module Name: PC
// Description: 
// Current Program Counter Register. 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module PC(
    input clk,
    input rst,
    input EX_block,
    input [1:0]op,  //Indicate which value to write in PC. 
                        //The priority is : EX > BTB > PC+4. 
                        //2'b1x represents EX write, 2'b01 represents BTB write, 2'b00 represents PC+4.
    input BTB_write_pc,
    input [31:0] EX_addr,
    input [31:0] BTB_addr,
    input EX_rst,
    input EX_need_jump,
    output reg [31:0]pc
    );
    
  always@(posedge clk or posedge rst)
          if(rst)
              pc<='d116;
          else if (EX_rst && op[1]) begin
              pc <= EX_addr;
          end
          else if (EX_block) begin
              pc <= pc;
          end
          else if  (BTB_write_pc) begin
              pc <= BTB_addr;
          end
          else begin
              pc <= pc + 'd4;
          end
              
endmodule
