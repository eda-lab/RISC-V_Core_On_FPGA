module ram_bus_wrapper_16k(
    input  logic clk, rst_n,
    naive_bus.slave  bus
);

logic [11:0] cell_rd_addr, cell_wr_addr;

assign cell_rd_addr = bus.rd_addr[13:2];
assign cell_wr_addr = bus.wr_addr[13:2];

assign bus.rd_gnt = bus.rd_req;
assign bus.wr_gnt = bus.wr_req;
    
ram_4k ram_block_inst_0(
    .clk       ( clk                       ),
    .i_we      ( bus.wr_req & bus.wr_be[0] ),
    .i_waddr   ( cell_wr_addr              ),
    .i_raddr   ( cell_rd_addr              ),
    .i_wdata   ( bus.wr_data[ 7: 0]        ),
    .o_rdata   ( bus.rd_data[ 7: 0]        )
);
ram_4k ram_block_inst_1(
    .clk       ( clk                       ),
    .i_we      ( bus.wr_req & bus.wr_be[1] ),
    .i_waddr   ( cell_wr_addr              ),
    .i_raddr   ( cell_rd_addr              ),
    .i_wdata   ( bus.wr_data[15: 8]        ),
    .o_rdata   ( bus.rd_data[15: 8]        )
);
ram_4k ram_block_inst_2(
    .clk       ( clk                       ),
    .i_we      ( bus.wr_req & bus.wr_be[2] ),
    .i_waddr   ( cell_wr_addr              ),
    .i_raddr   ( cell_rd_addr              ),
    .i_wdata   ( bus.wr_data[23:16]        ),
    .o_rdata   ( bus.rd_data[23:16]        )
);
ram_4k ram_block_inst_3(
    .clk       ( clk                       ),
    .i_we      ( bus.wr_req & bus.wr_be[3] ),
    .i_waddr   ( cell_wr_addr              ),
    .i_raddr   ( cell_rd_addr              ),
    .i_wdata   ( bus.wr_data[31:24]        ),
    .o_rdata   ( bus.rd_data[31:24]        )
);

endmodule
