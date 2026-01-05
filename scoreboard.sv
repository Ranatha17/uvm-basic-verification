`include "uvm_macros.svh"
import uvm_pkg::*;

class dut_scoreboard extends uvm_scoreboard;

  `uvm_component_utils(dut_scoreboard)

  uvm_analysis_imp #(dut_txn, dut_scoreboard) sb_imp;

  function new(string name, uvm_component parent);
    super.new(name, parent);
    sb_imp = new("sb_imp", this);
  endfunction

  // This function is called whenever monitor sends data
  function void write(dut_txn tx);
    if (tx.y !== tx.a) begin
      `uvm_error("SB",
        $sformatf("FAIL: Expected y=%0b, Got y=%0b (a=%0b)",
                  tx.a, tx.y, tx.a))
    end
    else begin
      `uvm_info("SB",
        $sformatf("PASS: a=%0b y=%0b", tx.a, tx.y),
        UVM_LOW)
    end
  endfunction

endclass
