class uart_scoreboard extends uvm_scoreboard;

`uvm_component_utils(uart_scoreboard)

function new(string name, uvm_component parent);
    super.new(name,parent);
endfunction

task run_phase(uvm_phase phase);

`uvm_info("SCOREBOARD","UART Verification Completed",UVM_LOW)

endtask

endclass
