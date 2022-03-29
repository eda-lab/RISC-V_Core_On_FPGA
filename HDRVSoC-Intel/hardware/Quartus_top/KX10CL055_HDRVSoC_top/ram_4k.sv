module ram_4k(            // 4KB
    input  logic clk,
    input  logic i_we,
    input  logic [ 11:0] i_waddr, i_raddr,
    input  logic [ 7:0] i_wdata,
    output logic [ 7:0] o_rdata
);
initial o_rdata = 8'h0;

logic [7:0] data_ram_cell [0:4095];
    
always @ (posedge clk)
    o_rdata <= data_ram_cell[i_raddr];

always @ (posedge clk)
    if(i_we) 
        data_ram_cell[i_waddr] <= i_wdata;
endmodule
