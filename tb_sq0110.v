`timescale 1ns/1ps
module tb_sq0110 ;

    reg x , clk , reset;
    wire z ;

    sq0110 DUT (x , clk , reset , z ) ;

    initial begin
        $dumpfile("sq0110.vcd") ;
        $dumpvars (0 , tb_sq0110) ;
        clk = 1'b0 ;
        reset = 1'b1 ;
        #15 reset = 1'b0 ;
        end

    initial 
        forever #5 clk = ~clk ;

    initial begin
        #12 x=0; #10 x=0; #10 x=1; #10 x=1;
        #10 x=0; #10 x=1; #10 x=1; #10 x=0;
        #10 x=0; #10 x=1; #10 x=1; #10 x=0;
        #10 $finish;
        end

endmodule