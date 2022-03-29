//=======================================================
//  This code is generated by HX1006A Project Builder
//=======================================================

//=============================================================================
//  The project is based on the open source project on GitHub called USTCRVSoC
//=============================================================================

module HX1006A_HDRVSoC_top(

////////////CLOCK//////////
input 		          		CLK_50,

////////////SEG8//////////
output 		   [7:0]       	SEL,
output 		   [7:0]     	DIG,

////////////LED//////////
output		     [3:0]		LED,

////////////SW//////////
input 		     [3:0]		SW,

////////////KEY//////////
input 		     [3:0]		KEY,

////////////VGA//////////
output		     [3:0]		VGA_B,
output		     [3:0]		VGA_G,
output		          		VGA_HS,
output		     [3:0]		VGA_R,
output		          		VGA_VS,

////////////Serial Port//////////
output 		          		UART_TXD,
input 		          		UART_RXD

//input 							rst_n

);


//=======================================================
//  REG/WIRE declarations
wire clk;
//=======================================================
wire vga_red, vga_green, vga_blue;
assign VGA_R = {4{vga_red}};
assign VGA_G = {4{vga_green}};
assign VGA_B = {4{vga_blue}};

apll	apll_inst (
	.inclk0 ( CLK_50 ),
	.c0 ( clk )
);

//ramIP ramIP_inst(
//	.address(),
//	.clock(CLK_50)
//	.data(),
//	.wren(),
//	.q()
//);
//
//wire 	[7:0]	result_sig;
//assign address = 
//
//constantIP constantIP_inst(
//	.result(result_sig)
//	
//);

wire [31:0] led_temp;
soc_svga_top soc_inst(
    .clk              ( clk      ),
    .isp_uart_rx      ( UART_RXD  ),
    .isp_uart_tx      (  UART_TXD    ),
    .vga_hsync        ( VGA_HS    ),
    .vga_vsync        ( VGA_VS    ),
    .vga_red          ( vga_red       ),
    .vga_green        ( vga_green     ),
    .vga_blue         ( vga_blue      ),
	 .led					 ( led_temp	 	  )
);
assign LED = led_temp[3:0];




//=======================================================
//  Structural coding
//=======================================================



endmodule
