`timescale 1ns/1ps

module testbench;
    reg clk;
    reg wr, rd;
    reg [7:0] d_in;
    wire [7:0] d_out;
    reg [7:0] address;
    
    // Instantiate the RAM module
    single_port_RAM DUT (
        .clk(clk),
        .wr(wr),
        .rd(rd),
        .d_in(d_in),
        .d_out(d_out),
        .addr(address)
    );
    
    // Generate clock
    always #5 clk = ~clk;
    
    // Testbench state machine
    reg [2:0] state;

    initial begin
        clk = 0;
        wr = 0;
        rd = 0;
        state = 0;
        
        // Initialize RAM with random values
        repeat (256) begin
            #10;
            wr = 1;
            d_in = $random;
            address = $random;
        end
        
        // Perform the test for each address
        repeat (256) begin
            #10;
            case (state)
                0: begin
                    // Generate random value for d_in
                    d_in = $random;
                    
                    // WRITE
                    wr = 1;
                    rd = 0;
                    state = 1;
                end
                
                1: begin
                    // READ 
                    wr = 0;
                    rd = 1;
                    state = 2;
                end
                
                2: begin
                    // Print WRITE then READ
                    $write("Address %h\n", address);
                    $write("   1: d_in = %d d_out = %d  <-- write then read\n", d_in, d_out);
                    
                    // Generate new random value for d_in
                    d_in = $random;
                    
                    // Simultaneously READ and WRITE
                    wr = 1;
                    rd = 1;
                    state = 3;
                end
                
                3: begin
                    // Print READ and WRITE
                    $write("   2: d_in = %d d_out = %d  <-- write/read simultaneous\n", d_in, d_out);
                    
                    // Do one more READ operation
                    wr = 0;
                    rd = 1;
                    state = 4;
                end
                
                4: begin
                    // Print READ
                    $write("   3: d_in = %d d_out = %d <-- read\n", d_in, d_out);
                    
                    // Move to the next address
                    address = address + 1;
                    state = 0;
                end
            endcase
        end
    end
endmodule