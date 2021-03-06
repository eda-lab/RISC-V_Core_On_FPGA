module dual_read_port_ram_32x32(            // 32bit*32addr
    input  clk,
    input  i_we,
    input  [ 4:0] i_waddr,
    input  [31:0] i_wdata,
    input  [ 4:0] i_raddr1,
    output reg [31:0] o_rdata1,
    input  [ 4:0] i_raddr2,
    output reg [31:0] o_rdata2
);
initial begin o_rdata1 = 0; o_rdata2 = 0; end

reg [31:0] data_ram_cell [0:31];
    
always @ (posedge clk)
    o_rdata1 <= data_ram_cell[i_raddr1];
    
always @ (posedge clk)
    o_rdata2 <= data_ram_cell[i_raddr2];

always @ (posedge clk)
    if(i_we) 
        data_ram_cell[i_waddr] <= i_wdata;

endmodule
