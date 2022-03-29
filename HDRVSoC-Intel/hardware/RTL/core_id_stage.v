module core_id_stage(
    input  [31:0]  i_instr,
    output reg o_src1_reg_en, o_src2_reg_en,
    output wire o_jal, o_alures2reg, o_memory2reg, o_mem_write,
    output [ 4:0]  o_src1_reg_addr, o_src2_reg_addr, o_dst_reg_addr,
    output [ 6:0]  o_opcode, o_funct7,
    output [ 2:0]  o_funct3,
    output reg [31:0]  o_imm
);

assign {o_funct7, o_src2_reg_addr, o_src1_reg_addr, o_funct3, o_dst_reg_addr, o_opcode} = i_instr;

integer instr_type;
localparam	UKNOWN_TYPE	= 0, 
				R_TYPE		= 1, 
				I_TYPE		= 2, 
				IZ_TYPE		= 3, 
				S_TYPE		= 4, 
				B_TYPE		= 5, 
				U_TYPE		= 6, 
				J_TYPE		= 7;

localparam  OPCODE_AUIPC         = 7'b0010111,   // rd=pc+imm
            OPCODE_LUI           = 7'b0110111,   // rd=imm;
            OPCODE_JAL           = 7'b1101111,   // rd=pc+4,            pc= pc+imm*2,
            OPCODE_JALR          = 7'b1100111,   // rd=pc+4,            pc= rs1+imm
            OPCODE_BRANCH        = 7'b1100011,   // conditional branch, pc= pc+imm*2,
            OPCODE_ALI           = 7'b0010011,   // arithmetic and logical I-TYPE, rd=alu_res
            OPCODE_ALR           = 7'b0110011,   // arithmetic and logical R-TYPE, rd=alu_res
            OPCODE_LOAD          = 7'b0000011,   // load
            OPCODE_STORE         = 7'b0100011;   // store

// generate control signals
assign o_jal             = (o_opcode == OPCODE_JAL );
assign o_memory2reg      = (o_opcode == OPCODE_LOAD );
assign o_mem_write       = (o_opcode == OPCODE_STORE);
assign o_alures2reg      = (o_opcode == OPCODE_JAL || o_opcode == OPCODE_JALR  ||
                            o_opcode == OPCODE_LUI || o_opcode == OPCODE_AUIPC || 
                            o_opcode == OPCODE_ALI || o_opcode == OPCODE_ALR     );

always @*         // calculate instruction type
    case(o_opcode)
        OPCODE_AUIPC  : instr_type <= U_TYPE;
        OPCODE_JAL    : instr_type <= J_TYPE;
        OPCODE_JALR   : instr_type <= I_TYPE;
        OPCODE_BRANCH : instr_type <= B_TYPE;
        OPCODE_LUI    : instr_type <= U_TYPE;
        OPCODE_ALI    : instr_type <= I_TYPE;
        OPCODE_ALR    : instr_type <= R_TYPE;
        OPCODE_LOAD   : instr_type <= I_TYPE;
        OPCODE_STORE  : instr_type <= S_TYPE;
        default       : instr_type <= UKNOWN_TYPE;
    endcase
    
always @*         // calculate imm
    case(instr_type)
        I_TYPE : o_imm <= {{20{i_instr[31]}} , i_instr[31:20]};
        IZ_TYPE: o_imm <= { 20'h0          , i_instr[31:20]};
        S_TYPE : o_imm <= {{20{i_instr[31]}} , i_instr[31:25], i_instr[11:7]};
        B_TYPE : o_imm <= {{20{i_instr[31]}} , i_instr[7], i_instr[30:25], i_instr[11:8], 1'b0};
        U_TYPE : o_imm <= { i_instr[31:12]   , 12'h0 };
        J_TYPE : o_imm <= {{12{i_instr[31]}} , i_instr[19:12], i_instr[20], i_instr[30:21], 1'b0};
        default: o_imm <= 0;
    endcase
    
always @*         // calculate read register enable
    case(instr_type)
        R_TYPE : {o_src2_reg_en, o_src1_reg_en} <= 2'b11;
        I_TYPE : {o_src2_reg_en, o_src1_reg_en} <= 2'b01;
        IZ_TYPE: {o_src2_reg_en, o_src1_reg_en} <= 2'b01;
        S_TYPE : {o_src2_reg_en, o_src1_reg_en} <= 2'b11;
        B_TYPE : {o_src2_reg_en, o_src1_reg_en} <= 2'b11;
        default: {o_src2_reg_en, o_src1_reg_en} <= 2'b00;
    endcase

endmodule
