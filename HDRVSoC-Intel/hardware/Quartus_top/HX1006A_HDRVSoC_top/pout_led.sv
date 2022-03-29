module pout_led (
    input  logic clk, rst_n,
	 output logic [31:0] led,
    naive_bus.slave  bus
);

logic [1:0] cell_wr_addr;
logic [ 31:0] wdata;
logic we;

assign we = bus.wr_req;

assign bus.rd_gnt = 1'b0;
assign bus.wr_gnt = bus.wr_req;
assign bus.rd_data = 0;
assign cell_wr_addr = bus.wr_addr[3:2];
assign wdata = bus.wr_data;

always @ (posedge clk or negedge rst_n)
    if(~rst_n)
        led <= 0;
    else if(we && cell_wr_addr == 0)
        led <= wdata;
 
 

endmodule
