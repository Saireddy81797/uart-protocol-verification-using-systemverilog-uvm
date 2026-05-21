interface uart_if(input logic clk);

logic rst;
logic [7:0] data_in;
logic tx_start;
logic tx;

endinterface
