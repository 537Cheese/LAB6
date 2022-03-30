module ROM_tb();
wire[32:0] out;
reg[7:0] addr;
reg clk;
ROM_code dut (out,addr,clk);
initial begin
addr<=8'b00000000;
clk<=1'b0;
end
always begin
    #10
    addr<=addr + 8'b00000001;
     clk<=clk+1'b1;
     end
initial begin
#2000 $stop;
end
endmodule