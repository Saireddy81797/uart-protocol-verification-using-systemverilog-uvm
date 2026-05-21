module uart_top(
    input logic clk,
    input logic rst,
    input logic [7:0] data_in,
    input logic tx_start,
    output logic tx
);

uart_tx tx_inst(
    .clk(clk),
    .rst(rst),
    .data_in(data_in),
    .tx_start(tx_start),
    .tx(tx)
);

endmodule
