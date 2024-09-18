Commands to run:

1) `iverilog -o mips_tb tb_mips16.v mips_16.v ALUControl.v control_unit.v data_memory.v adder.v counter.v d_ff.v decoder.v alu.v mux.v register_file.v internal_xor.v instr_mem.v`  
2) `vvp mips_tb > simulation_output.txt` (if you want to create a .txt output file)  
3) `gtkwave tb_mips16.vcd` (if you want to visualize as a waveform output)

