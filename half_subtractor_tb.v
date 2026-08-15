`timescale 1ns/1ps

module half_subtractor_tb;

    reg A;
    reg B;
    wire Difference;
    wire Borrow;

    // Instantiate the Half Subtractor
    half_subtractor uut (
        .A(A),
        .B(B),
        .Difference(Difference),
        .Borrow(Borrow)
    );

    // Generate waveform file
    initial begin
        $dumpfile("half_subtractor.vcd");
        $dumpvars(0, half_subtractor_tb);
    end

    // Apply all possible input combinations
    initial begin
        $display("========================================");
        $display("       HALF SUBTRACTOR SIMULATION");
        $display("========================================");
        $display("Time   A B | Difference Borrow");
        $display("----------------------------------------");

        $monitor("%-6t %b %b |     %b        %b",
                 $time, A, B, Difference, Borrow);

        A = 1'b0;
        B = 1'b0;
        #10;

        A = 1'b0;
        B = 1'b1;
        #10;

        A = 1'b1;
        B = 1'b0;
        #10;

        A = 1'b1;
        B = 1'b1;
        #10;

        $display("----------------------------------------");
        $display("Simulation completed successfully.");
        $finish;
    end

endmodule
