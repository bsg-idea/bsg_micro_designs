

module top
(
  i,
  bank_o,
  index_o
);

  input [127:0] i;
  output [0:0] bank_o;
  output [1:2] index_o;

  bsg_hash_bank
  wrapper
  (
    .i(i),
    .bank_o(bank_o),
    .index_o(index_o)
  );


endmodule



module bsg_hash_bank
(
  i,
  bank_o,
  index_o
);

  input [127:0] i;
  output [0:0] bank_o;
  output [1:2] index_o;
  wire [0:0] bank_o;
  wire [1:2] index_o;
  assign bank_o[0] = i[127];
  assign index_o[1] = i[1];
  assign index_o[2] = i[0];

endmodule

