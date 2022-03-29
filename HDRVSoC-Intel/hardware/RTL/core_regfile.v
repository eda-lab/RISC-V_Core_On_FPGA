
module core_regfile(
    input  clk, rst_n,
    input  rd_latch,
    // Read  port 1
    input  i_re1,
    input  [4:0]  i_raddr1,
    output [31:0] o_rdata1,
    // Read  port 2
    input  i_re2,
    input  [4:0]  i_raddr2,
    output wire [31:0] o_rdata2,
    // forward port 1
    input  i_forward1,
    input  [4:0] i_faddr1,
    input  [31:0] i_fdata1,
    // forward port 2
    input  i_forward2,  
    input  [4:0] i_faddr2,
    input  [31:0] i_fdata2,
    // Write port
    input  i_we,
    input  [4:0] i_waddr,
    input  [31:0] i_wdata
);

wire [31:0] reg_rdata1, reg_rdata2;
reg [31:0] forward_data1, forward_data2;
reg from_fw1, from_fw2;

assign o_rdata1 = from_fw1 ? forward_data1 : reg_rdata1;
assign o_rdata2 = from_fw2 ? forward_data2 : reg_rdata2;

always @ (posedge clk or negedge rst_n)
    if(~rst_n) begin
        from_fw1 <= 1'b0;
        forward_data1 <= 0;
    end else begin
        if(rd_latch) begin
            from_fw1 <= 1'b1;
            forward_data1 <= o_rdata1;
        end else if((~i_re1)   || i_raddr1==5'h0    ) begin
            from_fw1 <= 1'b1;
            forward_data1 <= 0;
        end else if(i_forward1 && i_faddr1==i_raddr1) begin
            from_fw1 <= 1'b1;
            forward_data1 <= i_fdata1;
        end else if(i_forward2 && i_faddr2==i_raddr1) begin
            from_fw1 <= 1'b1;
            forward_data1 <= i_fdata2;
        end else if(i_we       && i_waddr ==i_raddr1) begin
            from_fw1 <= 1'b1;
            forward_data1 <= i_wdata;
        end else begin
            from_fw1 <= 1'b0;
            forward_data1 <= 0;
        end
    end

always @ (posedge clk or negedge rst_n)
    if(~rst_n) begin
        from_fw2 <= 1'b0;
        forward_data2 <= 0;
    end else begin
        if(rd_latch) begin
            from_fw2 <= 1'b1;
            forward_data2 <= o_rdata2;
        end else if((~i_re2)   || i_raddr2==5'h0    ) begin
            from_fw2 <= 1'b1;
            forward_data2 <= 0;
        end else if(i_forward1 && i_faddr1==i_raddr2) begin
            from_fw2 <= 1'b1;
            forward_data2 <= i_fdata1;
        end else if(i_forward2 && i_faddr2==i_raddr2) begin
            from_fw2 <= 1'b1;
            forward_data2 <= i_fdata2;
        end else if(i_we       && i_waddr ==i_raddr2) begin
            from_fw2 <= 1'b1;
            forward_data2 <= i_wdata;
        end else begin
            from_fw2 <= 1'b0;
            forward_data2 <= 0;
        end
    end

dual_read_port_ram_32x32 dual_read_port_ram_32x32_for_regfile( // 32bit*32addr
    .clk         ( clk            ),
    .i_we        ( i_we           ),
    .i_waddr     ( i_waddr        ),
    .i_wdata     ( i_wdata        ),
    .i_raddr1    ( i_raddr1       ),
    .o_rdata1    ( reg_rdata1     ),
    .i_raddr2    ( i_raddr2       ),
    .o_rdata2    ( reg_rdata2     )
);

endmodule
