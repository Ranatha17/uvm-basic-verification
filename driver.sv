`include "uvm_macros.svh"
import uvm_pkg::*;

class dut_driver extends uvm_driver #(dut_txn);

  `uvm_component_utils(dut_driver)

  virtual dut_if vif;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if (!uvm_config_db#(virtual dut_if)::get(this, "", "vif", vif))
      `uvm_fatal("DRV", "Virtual interface not found")
  endfunction

  task run_phase(uvm_phase phase);
    dut_txn tx;

    forever begin
      seq_item_port.get_next_item(tx);

      // Drive DUT signals
      vif.cb.a   <= tx.a;
      vif.cb.rst <= 0;

      `uvm_info("DRV",
        $sformatf("Driving a=%0b", tx.a),
        UVM_LOW)

      seq_item_port.item_done();
    end
  endtask

endclass