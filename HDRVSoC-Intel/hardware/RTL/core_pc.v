module core_pc(
    input  [ 6:0] i_opcode, i_funct7,
    input  [ 2:0] i_funct3,
    input  [31:0] i_num1u, i_num2u, i_pc, i_immu,
    output reg o_branch_jalr,
    output reg [31:0]  o_branch_jalr_target
);
wire [31:0] num1_plus_imm, pc_plus_imm;
wire signed [31:0] i_num1s, i_num2s, i_imms;

assign num1_plus_imm = i_num1u + i_immu;
assign pc_plus_imm   = i_pc    + i_immu;
assign i_num1s       = i_num1u;
assign i_num2s       = i_num2u;
assign i_imms        = i_immu;

always @*
    case(i_opcode)
        7'b1100111 :                       // JALR
                     o_branch_jalr_target <= num1_plus_imm;
        7'b1100011 :                        // BRANCH锟斤拷?
                     o_branch_jalr_target <= pc_plus_imm;
        default    :                        // 涓嶈烦锟斤拷?
                     o_branch_jalr_target <= 0;
    endcase


	 always @*
    case(i_opcode)
        7'b1100111 :                        // JALR
                     o_branch_jalr <= 1'b1;
        7'b1100011 :                        // BRANCH锟斤拷?
							 case(i_funct3)
								  3'b000 : o_branch_jalr <= (i_num1u == i_num2u);   // BEQ
								  3'b001 : o_branch_jalr <= (i_num1u != i_num2u);   // BNE
								  3'b100 : o_branch_jalr <= (i_num1s <  i_num2s);   // BLT
								  3'b101 : o_branch_jalr <= (i_num1s >= i_num2s);   // BGE
								  3'b110 : o_branch_jalr <= (i_num1u <  i_num2u);   // BLTU
								  3'b111 : o_branch_jalr <= (i_num1u >= i_num2u);   // BGEU
								  default: o_branch_jalr <= 1'b0;
							 endcase
        default    :                        // 涓嶈烦锟斤拷?
                     o_branch_jalr <= 0;
    endcase


endmodule
