`include "uvm_macros.svh"
import uvm_pkg::*;

class dut_monitor extends uvm_monitor;

  `uvm_component_utils(dut_monitor)

  virtual dut_if vif;

  uvm_analysis_port #(dut_txn) mon_ap;

  function new(string name, uvm_component parent);
    super.new(name, parent);
    mon_ap = new("mon_ap", this);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if (!uvm_config_db#(virtual dut_if)::get(this, "", "vif", vif))
      `uvm_fatal("MON", "Virtual interface not found")
  endfunction

  task run_phase(uvm_phase phase);
    dut_txn tx;
    forever begin
      @(posedge vif.clk);
      tx = dut_txn::type_id::create("tx");
      tx.a = vif.a;
      tx.y = vif.y;

      `uvm_info("MON",
        $sformatf("Observed a=%0b y=%0b", tx.a, tx.y),
        UVM_LOW)

      mon_ap.write(tx);
    end
  endtask

endclass