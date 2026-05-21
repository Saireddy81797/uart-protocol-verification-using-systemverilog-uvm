module tb_top;

logic clk;

always #5 clk = ~clk;

uart_if vif(clk);

uart_top dut(
    .clk(clk),
    .rst(vif.rst),
    .data_in(vif.data_in),
    .tx_start(vif.tx_start),
    .tx(vif.tx)
);

initial begin
    clk = 0;
    vif.rst = 1;
    #20;
    vif.rst = 0;
end

endmodule
