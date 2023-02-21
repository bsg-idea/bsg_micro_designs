

module top
(
  i,
  bank_o,
  index_o
);

  input [31:0] i;
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

  input [31:0] i;
  output [0:0] bank_o;
  output [1:2] index_o;
  wire [0:0] bank_o;
  wire [1:2] index_o;
  wire index_o__1_,index_o_0_;
  assign bank_o[0] = 1'b0;
  assign index_o__1_ = i[1];
  assign index_o[1] = index_o__1_;
  assign index_o_0_ = i[0];
  assign index_o[2] = index_o_0_;

endmodule

