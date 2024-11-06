`timescale 1ns / 1ps
module tb_mips16;  
    // Inputs  
    reg clk;  
    reg reset;  

    // Outputs  
    wire [15:0] pc_out;  
    wire [15:0] alu_result;  
    
    // Instantiate the Unit Under Test (UUT)  
    mips_16 uut (  
        .clk(clk),   
        .reset(reset),   
        .pc_out(pc_out),   
        .alu_result(alu_result)  
        // .reg3(reg3),  
        // .reg4(reg4)  
    );  

    // Clock Generation: Toggle clock every 10 ns (50 MHz)
    initial begin  
        clk = 0;  
        forever #10 clk = ~clk;  
    end  

    // Reset Logic and Test Stimuli
    initial begin  
        // Initialize Inputs  
        reset = 1;  
        // Wait 100 ns for global reset to finish  
        #100;  
        reset = 0;  
        
        // Optionally, add more stimuli here
        // For example, you can wait for a certain number of clock cycles
        // and then assert some control signals if needed.

        // Run simulation for a total of 1000 ns
        #900;  
        $finish;  
    end  

    // Waveform Dumping for GTKWave (Optional)
    initial begin
        $dumpfile("tb_mips16.vcd");      // Specify the VCD file name
        $dumpvars(0, tb_mips16);         // Dump all variables in tb_mips16
    end

    end

endmodule  