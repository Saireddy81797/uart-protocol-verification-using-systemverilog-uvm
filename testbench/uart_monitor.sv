class uart_monitor extends uvm_monitor;

`uvm_component_utils(uart_monitor)

virtual uart_if vif;

function new(string name, uvm_component parent);
    super.new(name,parent);
endfunction

task run_phase(uvm_phase phase);

forever begin
    @(posedge vif.clk);
    `uvm_info("MONITOR",$sformatf("TX=%0b",vif.tx),UVM_LOW)
end

endtask

endclass
