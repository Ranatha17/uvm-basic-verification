`include "uvm_macros.svh"
import uvm_pkg::*;

class basic_seq extends uvm_sequence #(dut_txn);

  `uvm_object_utils(basic_seq)

  function new(string name = "basic_seq");
    super.new(name);
  endfunction

  task body();
    dut_txn tx;

    repeat (5) begin
      tx = dut_txn::type_id::create("tx");
      assert(tx.randomize());

      `uvm_info("SEQ", $sformatf("Sending a=%0b", tx.a), UVM_LOW)

      start_item(tx);
      finish_item(tx);
    end
  endtask

endclass