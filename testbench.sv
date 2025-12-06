// Code your testbench here
// or browse Examples
module tb;
    reg a, b;
    wire y;
    
    and_gate dut(.a(a), .b(b), .y(y));
    
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1);
        
        $display("a b | y");
        $monitor("%b %b | %b", a, b, y);
        
        a=0; b=0; #1;
        a=0; b=1; #1;
        a=1; b=0; #1;
        a=1; b=1; #1;
    end
endmodule