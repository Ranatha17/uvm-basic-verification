module dut (
  input  logic clk,
  input  logic rst,
  input  logic a,
  output logic y
);
  always_ff @(posedge clk)
    if (rst) y <= 0;
    else     y <= a;
endmodule