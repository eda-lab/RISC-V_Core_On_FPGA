module core_alu(
    input  [ 6:0] i_opcode, i_funct7,
    input  [ 2:0] i_funct3,
    input  [31:0] i_num1u, i_num2u, i_pc, i_immu,
    output reg [31:0] o_res 
);
wire [ 4:0] shamt_rs, shamt_imm;
wire [31:0] num1_plus_imm, pc_plus_imm;
wire signed [31:0] i_num1s, i_num2s, i_imms;
integer i;

assign shamt_imm     = i_immu[4:0];
assign shamt_rs      = i_num2u[4:0];
assign num1_plus_imm = i_num1u + i_immu;
assign pc_plus_imm   = i_pc    + i_immu;
assign i_num1s       = i_num1u;
assign i_num2s       = i_num2u;
assign i_imms        = i_immu;


always @*
    casex({i_funct7,i_funct3,i_opcode})
        // JAL类与JALR��?
        17'bxxxxxxx_xxx_110x111 : o_res <=  i_pc + 4;             // JAL, JALR
        // LUI��?
        17'bxxxxxxx_xxx_0110111 : o_res <=  i_immu;               // LUI
        // AUIPC��?
        17'bxxxxxxx_xxx_0010111 : o_res <=  pc_plus_imm       ;   // AUIPC
        // 算术��?
        17'b0000000_000_0110011 : o_res <=  i_num1u +  i_num2u;   // ADD
        17'bxxxxxxx_000_0010011 : o_res <=  num1_plus_imm     ;   // ADDI
        17'b0100000_000_0110011 : o_res <=  i_num1u -  i_num2u;   // SUB
        // 逻辑��?
        17'b0000000_100_0110011 : o_res <=  i_num1u ^  i_num2u;   // XOR
        17'bxxxxxxx_100_0010011 : o_res <=  i_num1u ^  i_immu ;   // XORI
        17'b0000000_110_0110011 : o_res <=  i_num1u |  i_num2u;   // OR
        17'bxxxxxxx_110_0010011 : o_res <=  i_num1u |  i_immu ;   // ORI
        17'b0000000_111_0110011 : o_res <=  i_num1u &  i_num2u;   // AND
        17'bxxxxxxx_111_0010011 : o_res <=  i_num1u &  i_immu ;   // ANDI
        // 位移��?
        17'b0000000_001_0110011 : o_res <=  i_num1u << shamt_rs ; // SLL
        17'b0000000_001_0010011 : o_res <=  i_num1u << shamt_imm; // SLLI
        17'b0000000_101_0110011 : o_res <=  i_num1u >> shamt_rs ; // SRL
        17'b0000000_101_0010011 : o_res <=  i_num1u >> shamt_imm; // SRL
        17'b0100000_101_0110011 : begin                           // SRA
                                      o_res <= i_num1u >> shamt_rs;
                                      for(i=0;i< shamt_rs;i=i+1) o_res[31-i] <= i_num1u[31];
                                  end
        17'b0100000_101_0010011 : begin                           // SRAI
                                      o_res <= i_num1u >> shamt_imm;
                                      for(i=0;i<shamt_imm;i=i+1) o_res[31-i] <= i_num1u[31];
                                  end
        // 比较��?
        17'b0000000_010_0110011 : o_res <=  (i_num1s < i_num2s) ? 1 : 0;   // SLT
        17'bxxxxxxx_010_0010011 : o_res <=  (i_num1s < i_imms ) ? 1 : 0;   // SLTI
        17'b0000000_011_0110011 : o_res <=  (i_num1u < i_num2u) ? 1 : 0;   // SLTU
        17'bxxxxxxx_011_0010011 : o_res <=  (i_num1u < i_immu ) ? 1 : 0;   // SLTIU
        // 无操��? 
        default   : o_res <= 0;
    endcase

endmodule
