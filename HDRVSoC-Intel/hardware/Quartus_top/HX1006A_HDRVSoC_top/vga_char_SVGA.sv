module vga_char_svga 	// SVGA 800x600@72Hz    50MHz   100(char)x37(char)
#(parameter VGA_CLK_DIV = 1
)
(
    // clock
	input  logic clk, rst_n,
    // vga interfaces
	output logic hsync, vsync,
	output logic red, green, blue,
    // user interface
    output logic req,
    output logic [11:0] addr,
    input  logic [ 7:0] ascii
);

localparam H_VISIBLE_PIXELS      	= 800;
localparam H_FRONT_PORCH_PIXELS  = 56;
localparam H_SYNC_PULSE_PIXELS	= 120;
localparam H_BACK_PORCH_PIXELS 	= 64;

localparam V_VISIBLE_LINES			= 600;
localparam V_FRONT_PORCH_LINES 	= 37;
localparam V_SYNC_PULSE_LINES   	= 6;
localparam V_BACK_PORCH_LINES    = 23;

localparam H_SYNC_PULSE_POLARITY = 1'b1;
localparam V_SYNC_PULSE_POLARITY = 1'b1;

localparam H_VISIBLE_START 	= H_BACK_PORCH_PIXELS;
localparam H_VISIBLE_END 		= H_VISIBLE_START + H_VISIBLE_PIXELS;
localparam H_SYNC_PULSE_START = H_VISIBLE_END + H_FRONT_PORCH_PIXELS;
localparam H_SYNC_PULSE_END 	= H_SYNC_PULSE_START + H_SYNC_PULSE_PIXELS;
localparam H_TOTAL_PIXELS 		= H_SYNC_PULSE_END;

localparam V_VISIBLE_START 	= V_BACK_PORCH_LINES;
localparam V_VISIBLE_END 		= V_VISIBLE_START + V_VISIBLE_LINES;
localparam V_SYNC_PULSE_START = V_VISIBLE_END + V_FRONT_PORCH_LINES;
localparam V_SYNC_PULSE_END 	= V_SYNC_PULSE_START + V_SYNC_PULSE_LINES;
localparam V_TOTAL_LINES 		= V_SYNC_PULSE_END;


reg [11:0] hcnt,vcnt,cx,cy;
reg de;
	
always @(posedge clk,negedge rst_n)
	if(!rst_n)
		hcnt = 0;
	else if(hcnt < H_TOTAL_PIXELS-1)
		hcnt = hcnt + 1'b1;
	else
		hcnt = 0;
		
always @(posedge clk,negedge rst_n)
	if(!rst_n)
		vcnt = 0;
	else if(hcnt == H_TOTAL_PIXELS -1)
		if(vcnt < V_TOTAL_LINES-1)
			vcnt = vcnt + 1'b1;
		else
			vcnt = 0;

always @(posedge clk,negedge rst_n)
	if(!rst_n)
	begin
		hsync = ~H_SYNC_PULSE_POLARITY;					
		vsync = ~V_SYNC_PULSE_POLARITY;

	end
	else
	begin
		hsync = ~H_SYNC_PULSE_POLARITY;					
		vsync = ~V_SYNC_PULSE_POLARITY;
		if(hcnt >= H_SYNC_PULSE_START && hcnt < H_SYNC_PULSE_END-1)
			hsync = H_SYNC_PULSE_POLARITY;		
		if(vcnt >= V_SYNC_PULSE_START && vcnt >= V_SYNC_PULSE_END-1)
			vsync = V_SYNC_PULSE_POLARITY;
	end

always @(posedge clk,negedge rst_n)
	if(!rst_n)
		de = 1'b0;
	else if(vcnt >= V_VISIBLE_START && vcnt < V_VISIBLE_END-1
			&& hcnt >= H_VISIBLE_START && hcnt < H_VISIBLE_END-1)
		de = 1'b1;
	else 
		de = 1'b0;

always @(posedge clk,negedge rst_n)
	if(!rst_n)
	begin
		cx = 0;
		cy = 0;	
	end
	else
	begin
		cx = hcnt - H_VISIBLE_START;
		cy = vcnt - V_VISIBLE_START;	
	end



logic req1 = 1'b0, req2 = 1'b0;
logic [7:0] ascii_bufferout, ascii_latch=8'h0, ascii_to_rom;
logic [7:0] rom_data;
logic [6:0] x_h, x_h1=7'h0, x_h2=7'h0;
logic [5:0] y_h;

logic [2:0] x_l, x_l1 = 3'h0, x_l2 = 3'h0, x_l3 = 3'h0, x_l4 = 3'h0;
logic [3:0] y_l, y_l1 = 4'h0, y_l2 = 4'h0, y_l3 = 4'h0;

assign {x_h, x_l} = cx;
assign {y_h, y_l} = cy;

    
always @ (posedge clk or negedge rst_n)
    if(~rst_n) begin
        req <= 1'b0;
        req1<= 1'b0;
        req2<= 1'b0;
    end else begin
        req <= de && x_l==3'h0 && y_l==4'h0;
        req1<= req;
        req2<= req1;
    end
    

always @ (posedge clk or negedge rst_n)
    if(~rst_n) 
        addr <= 12'h0;
    else 
		addr <= (y_h[5]==0) ? {y_h[4:0],x_h} : {y_h[2:0],x_h[6:4],2'b11,x_h[3:0]};

    
always @ (posedge clk or negedge rst_n)
    if(~rst_n)
        {x_l1, y_l1, x_l2, y_l2, x_l3, y_l3, x_l4, x_h1, x_h2} <= 38'h0;
    else
        {x_l1, y_l1, x_l2, y_l2, x_l3, y_l3, x_l4, x_h1, x_h2} <= {x_l, y_l, x_l1, y_l1, x_l2, y_l2, x_l3, x_h, x_h1};

always @ (posedge clk or negedge rst_n)
	if(~rst_n) 
		{red,green,blue} <= 3'h0;
	else if(de) 
		{red,green,blue} <= {3{rom_data[x_l4]}};
	else 
		{red,green,blue} <= 3'b000;
		

always @ (posedge clk or negedge rst_n)
    if(~rst_n)
        ascii_latch <= 8'h0;
    else begin
        ascii_latch <= req1 ? ascii : 8'h0;
    end

// buffered a line, 86 chars, The goal is to minimize the number of memory accesses
ram128B ram128B_vga_line_buffer_inst(            // 128B
    .clk        (  clk             ),
    .i_we       (  req1            ),
    .i_addr     (  x_h2            ),
    .i_wdata    (  ascii           ),
    .o_rdata    (  ascii_bufferout )
);

assign ascii_to_rom = req2 ? ascii_latch : ascii_bufferout;
    
char8x16_rom char_8x16_rom_inst(
    .clk        ( clk                  ),
    .addr       ( {ascii_to_rom, y_l3} ),
    .data       ( rom_data             )
);

endmodule
