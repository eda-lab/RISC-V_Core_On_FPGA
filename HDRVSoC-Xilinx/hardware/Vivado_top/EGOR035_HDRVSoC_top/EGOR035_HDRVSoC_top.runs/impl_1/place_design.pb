
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
YReport rule limit reached: REQP-1840 rule limit reached: 20 violations have been found.%s*DRC29
 !DRC|DRC System|Rule limit reached2default:default8ZCHECK-3h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1	]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_12default:default2default:default2?
 "?
lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]2default:default2default:default2?
 "?
bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]2default:default2default:default2?
 "?
8soc0/core_top_inst/core_instr_bus_adapter_i/bus_busy_reg	8soc0/core_top_inst/core_instr_bus_adapter_i/bus_busy_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1	]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_12default:default2default:default2?
 "?
lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]2default:default2default:default2?
 "?
bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]2default:default2default:default2?
 "?
>soc0/core_top_inst/core_instr_bus_adapter_i/instr_hold_reg[19]	>soc0/core_top_inst/core_instr_bus_adapter_i/instr_hold_reg[19]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1	]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_12default:default2default:default2?
 "?
lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]2default:default2default:default2?
 "?
bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]2default:default2default:default2?
 "?
7soc0/core_top_inst/core_instr_bus_adapter_i/stall_n_reg	7soc0/core_top_inst/core_instr_bus_adapter_i/stall_n_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1	]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_12default:default2default:default2?
 "?
lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]2default:default2default:default2?
 "?
bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]2default:default2default:default2?
 "?
:soc0/core_top_inst/core_regfile_inst/forward_data1_reg[13]	:soc0/core_top_inst/core_regfile_inst/forward_data1_reg[13]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1	]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_12default:default2default:default2?
 "?
lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]2default:default2default:default2?
 "?
bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]2default:default2default:default2?
 "?
:soc0/core_top_inst/core_regfile_inst/forward_data1_reg[21]	:soc0/core_top_inst/core_regfile_inst/forward_data1_reg[21]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1	]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_12default:default2default:default2?
 "?
lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]2default:default2default:default2?
 "?
bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]2default:default2default:default2?
 "?
:soc0/core_top_inst/core_regfile_inst/forward_data1_reg[22]	:soc0/core_top_inst/core_regfile_inst/forward_data1_reg[22]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1	]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_12default:default2default:default2?
 "?
lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]2default:default2default:default2?
 "?
bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]2default:default2default:default2t
 "^
#soc0/core_top_inst/ex_funct3_reg[0]	#soc0/core_top_inst/ex_funct3_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1	]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_12default:default2default:default2?
 "?
lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]2default:default2default:default2?
 "?
bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]2default:default2default:default2t
 "^
#soc0/core_top_inst/ex_funct3_reg[1]	#soc0/core_top_inst/ex_funct3_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1	]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_12default:default2default:default2?
 "?
lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]2default:default2default:default2?
 "?
bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]2default:default2default:default2t
 "^
#soc0/core_top_inst/ex_funct3_reg[2]	#soc0/core_top_inst/ex_funct3_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1	]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_12default:default2default:default2?
 "?
lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]2default:default2default:default2?
 "?
bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]2default:default2default:default2t
 "^
#soc0/core_top_inst/ex_opcode_reg[0]	#soc0/core_top_inst/ex_opcode_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1	]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_12default:default2default:default2?
 "?
lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]2default:default2default:default2?
 "?
bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]2default:default2default:default2t
 "^
#soc0/core_top_inst/ex_opcode_reg[1]	#soc0/core_top_inst/ex_opcode_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1	]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_12default:default2default:default2?
 "?
lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]2default:default2default:default2?
 "?
bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]2default:default2default:default2t
 "^
#soc0/core_top_inst/ex_opcode_reg[2]	#soc0/core_top_inst/ex_opcode_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1	]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_12default:default2default:default2?
 "?
lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]2default:default2default:default2?
 "?
bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]2default:default2default:default2t
 "^
#soc0/core_top_inst/ex_opcode_reg[3]	#soc0/core_top_inst/ex_opcode_reg[3]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1	]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_12default:default2default:default2?
 "?
lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]2default:default2default:default2?
 "?
bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]2default:default2default:default2t
 "^
#soc0/core_top_inst/ex_opcode_reg[4]	#soc0/core_top_inst/ex_opcode_reg[4]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1	]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_12default:default2default:default2?
 "?
lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]2default:default2default:default2?
 "?
bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]2default:default2default:default2t
 "^
#soc0/core_top_inst/ex_opcode_reg[5]	#soc0/core_top_inst/ex_opcode_reg[5]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1	]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_12default:default2default:default2?
 "?
lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]2default:default2default:default2?
 "?
bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]2default:default2default:default2t
 "^
#soc0/core_top_inst/ex_opcode_reg[6]	#soc0/core_top_inst/ex_opcode_reg[6]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1	]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_12default:default2default:default2?
 "?
lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]2default:default2default:default2?
 "?
bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]2default:default2default:default2?
 "j
)soc0/instr_rom_inst/bus\\.rd_data_reg[19]	)soc0/instr_rom_inst/bus\\.rd_data_reg[19]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1	]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_12default:default2default:default2?
 "?
lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]2default:default2default:default2?
 "?
bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]2default:default2default:default2?
 "?
<soc0/soc_bus_router_inst/master_rd_slv_index_latch_reg[0][0]	<soc0/soc_bus_router_inst/master_rd_slv_index_latch_reg[0][0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1	]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_12default:default2default:default2?
 "?
lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]2default:default2default:default2?
 "?
bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]2default:default2default:default2?
 "?
<soc0/soc_bus_router_inst/master_rd_slv_index_latch_reg[0][1]	<soc0/soc_bus_router_inst/master_rd_slv_index_latch_reg[0][1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1	]soc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_12default:default2default:default2?
 "?
lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]lsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_1/ADDRARDADDR[9]2default:default2default:default2?
 "?
bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]bsoc0/core_top_inst/core_regfile_inst/dual_read_port_ram_32x32_for_regfile/data_ram_cell_reg_2_0[4]2default:default2default:default2?
 "?
<soc0/soc_bus_router_inst/master_rd_slv_index_latch_reg[0][2]	<soc0/soc_bus_router_inst/master_rd_slv_index_latch_reg[0][2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
c
DRC finished with %s
79*	vivadotcl2)
0 Errors, 21 Warnings2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1572.3282default:default2
0.0002default:defaultZ17-268h px? 
[
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 11273116a
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.004 . Memory (MB): peak = 1572.328 ; gain = 0.0002default:defaulth px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1572.3282default:default2
0.0002default:defaultZ17-268h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: d3aadf24
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.734 . Memory (MB): peak = 1572.328 ; gain = 0.0002default:defaulth px? 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 141480ca1
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.866 . Memory (MB): peak = 1572.328 ; gain = 0.0002default:defaulth px? 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 141480ca1
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.870 . Memory (MB): peak = 1572.328 ; gain = 0.0002default:defaulth px? 
I
4Phase 1 Placer Initialization | Checksum: 141480ca1
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.872 . Memory (MB): peak = 1572.328 ; gain = 0.0002default:defaulth px? 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px? 
C
.Phase 2.1 Floorplanning | Checksum: 141480ca1
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.879 . Memory (MB): peak = 1572.328 ; gain = 0.0002default:defaulth px? 
x

Phase %s%s
101*constraints2
2.2 2default:default2)
Global Placement Core2default:defaultZ18-101h px? 
h
Eplace_design is not in timing mode. Skip physical synthesis in placer29*	placeflowZ46-29h px? 
K
6Phase 2.2 Global Placement Core | Checksum: 23af2a50d
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:05 ; elapsed = 00:00:03 . Memory (MB): peak = 1572.328 ; gain = 0.0002default:defaulth px? 
D
/Phase 2 Global Placement | Checksum: 23af2a50d
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:05 ; elapsed = 00:00:03 . Memory (MB): peak = 1572.328 ; gain = 0.0002default:defaulth px? 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px? 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px? 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 23af2a50d
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:05 ; elapsed = 00:00:03 . Memory (MB): peak = 1572.328 ; gain = 0.0002default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 1544cf242
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:05 ; elapsed = 00:00:03 . Memory (MB): peak = 1572.328 ; gain = 0.0002default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 1e2b57b8f
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:06 ; elapsed = 00:00:03 . Memory (MB): peak = 1572.328 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 1d90610d7
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:06 ; elapsed = 00:00:03 . Memory (MB): peak = 1572.328 ; gain = 0.0002default:defaulth px? 


Phase %s%s
101*constraints2
3.5 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
R
=Phase 3.5 Small Shape Detail Placement | Checksum: 184fb93b1
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:07 ; elapsed = 00:00:04 . Memory (MB): peak = 1572.328 ; gain = 0.0002default:defaulth px? 
u

Phase %s%s
101*constraints2
3.6 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
H
3Phase 3.6 Re-assign LUT pins | Checksum: 184fb93b1
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:07 ; elapsed = 00:00:04 . Memory (MB): peak = 1572.328 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
3.7 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.7 Pipeline Register Optimization | Checksum: 184fb93b1
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:07 ; elapsed = 00:00:04 . Memory (MB): peak = 1572.328 ; gain = 0.0002default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 184fb93b1
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:07 ; elapsed = 00:00:04 . Memory (MB): peak = 1572.328 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px? 
N
9Phase 4.1 Post Commit Optimization | Checksum: 184fb93b1
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:07 ; elapsed = 00:00:04 . Memory (MB): peak = 1572.328 ; gain = 0.0002default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 184fb93b1
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:07 ; elapsed = 00:00:04 . Memory (MB): peak = 1572.328 ; gain = 0.0002default:defaulth px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 
F
1Phase 4.3 Placer Reporting | Checksum: 184fb93b1
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:07 ; elapsed = 00:00:04 . Memory (MB): peak = 1572.328 ; gain = 0.0002default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1572.3282default:default2
0.0002default:defaultZ17-268h px? 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 14b8f381e
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:07 ; elapsed = 00:00:04 . Memory (MB): peak = 1572.328 ; gain = 0.0002default:defaulth px? 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 14b8f381e
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:07 ; elapsed = 00:00:04 . Memory (MB): peak = 1572.328 ; gain = 0.0002default:defaulth px? 
=
(Ending Placer Task | Checksum: ac777547
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:07 ; elapsed = 00:00:04 . Memory (MB): peak = 1572.328 ; gain = 0.0002default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
492default:default2
232default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1572.3282default:default2
0.0002default:defaultZ17-268h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:012default:default2 
00:00:00.2672default:default2
1572.3282default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?C:/Users/WTse_/Desktop/RISC-V_Core_On_FPGA/HDRVSoC-Xilinx/hardware/Vivado_top/EGOR035_HDRVSoC_top/EGOR035_HDRVSoC_top.runs/impl_1/EGOR035_HDRVSoC_top_placed.dcp2default:defaultZ17-1381h px? 
n
%s4*runtcl2R
>Executing : report_io -file EGOR035_HDRVSoC_top_io_placed.rpt
2default:defaulth px? 
?
kreport_io: Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.043 . Memory (MB): peak = 1572.328 ; gain = 0.000
*commonh px? 
?
%s4*runtcl2?
~Executing : report_utilization -file EGOR035_HDRVSoC_top_utilization_placed.rpt -pb EGOR035_HDRVSoC_top_utilization_placed.pb
2default:defaulth px? 
?
%s4*runtcl2o
[Executing : report_control_sets -verbose -file EGOR035_HDRVSoC_top_control_sets_placed.rpt
2default:defaulth px? 
?
ureport_control_sets: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.055 . Memory (MB): peak = 1572.328 ; gain = 0.000
*commonh px? 


End Record