module uart_tx(
    input logic clk,
    input logic rst,
    input logic [7:0] data_in,
    input logic tx_start,
    output logic tx
);

always_ff @(posedge clk or posedge rst)
begin
    if(rst)
        tx <= 1'b1;
    else if(tx_start)
        tx <= data_in[0];
    else
        tx <= 1'b1;
end

endmodule
