// Generated by CIRCT firtool-1.61.0
// Standard header to adapt well known macros for register randomization.
`ifndef RANDOMIZE
  `ifdef RANDOMIZE_MEM_INIT
    `define RANDOMIZE
  `endif // RANDOMIZE_MEM_INIT
`endif // not def RANDOMIZE
`ifndef RANDOMIZE
  `ifdef RANDOMIZE_REG_INIT
    `define RANDOMIZE
  `endif // RANDOMIZE_REG_INIT
`endif // not def RANDOMIZE

// RANDOM may be set to an expression that produces a 32-bit random unsigned value.
`ifndef RANDOM
  `define RANDOM $random
`endif // not def RANDOM

// Users can define INIT_RANDOM as general code that gets injected into the
// initializer block for modules with registers.
`ifndef INIT_RANDOM
  `define INIT_RANDOM
`endif // not def INIT_RANDOM

// If using random initialization, you can also define RANDOMIZE_DELAY to
// customize the delay used, otherwise 0.002 is used.
`ifndef RANDOMIZE_DELAY
  `define RANDOMIZE_DELAY 0.002
`endif // not def RANDOMIZE_DELAY

// Define INIT_RANDOM_PROLOG_ for use in our modules below.
`ifndef INIT_RANDOM_PROLOG_
  `ifdef RANDOMIZE
    `ifdef VERILATOR
      `define INIT_RANDOM_PROLOG_ `INIT_RANDOM
    `else  // VERILATOR
      `define INIT_RANDOM_PROLOG_ `INIT_RANDOM #`RANDOMIZE_DELAY begin end
    `endif // VERILATOR
  `else  // RANDOMIZE
    `define INIT_RANDOM_PROLOG_
  `endif // RANDOMIZE
`endif // not def INIT_RANDOM_PROLOG_

// Include register initializers in init blocks unless synthesis is set
`ifndef SYNTHESIS
  `ifndef ENABLE_INITIAL_REG_
    `define ENABLE_INITIAL_REG_
  `endif // not def ENABLE_INITIAL_REG_
`endif // not def SYNTHESIS

// Include rmemory initializers in init blocks unless synthesis is set
`ifndef SYNTHESIS
  `ifndef ENABLE_INITIAL_MEM_
    `define ENABLE_INITIAL_MEM_
  `endif // not def ENABLE_INITIAL_MEM_
`endif // not def SYNTHESIS

module CAMTemplate_41(	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:136:7
  input        clock,
  input  [7:0] io_r_req_0_idx,	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:137:14
  output       io_r_resp_0_0,	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:137:14
  output       io_r_resp_0_1,	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:137:14
  output       io_r_resp_0_2,	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:137:14
  output       io_r_resp_0_3,	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:137:14
  input        io_w_valid,	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:137:14
  input  [7:0] io_w_bits_data_idx,	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:137:14
  input  [1:0] io_w_bits_index	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:137:14
);

  reg [7:0] array_0;	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:152:18
  reg [7:0] array_1;	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:152:18
  reg [7:0] array_2;	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:152:18
  reg [7:0] array_3;	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:152:18
  always @(posedge clock) begin
    if (io_w_valid & io_w_bits_index == 2'h0)	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:152:18, :158:21, :159:28
      array_0 <= io_w_bits_data_idx;	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:152:18
    if (io_w_valid & io_w_bits_index == 2'h1)	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:152:18, :158:21, :159:28
      array_1 <= io_w_bits_data_idx;	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:152:18
    if (io_w_valid & io_w_bits_index == 2'h2)	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:152:18, :158:21, :159:28
      array_2 <= io_w_bits_data_idx;	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:152:18
    if (io_w_valid & (&io_w_bits_index))	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:152:18, :158:21, :159:28
      array_3 <= io_w_bits_data_idx;	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:152:18
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:136:7
    `ifdef FIRRTL_BEFORE_INITIAL	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:136:7
      `FIRRTL_BEFORE_INITIAL	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:136:7
    `endif // FIRRTL_BEFORE_INITIAL
    logic [31:0] _RANDOM[0:0];	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:136:7
    initial begin	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:136:7
      `ifdef INIT_RANDOM_PROLOG_	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:136:7
        `INIT_RANDOM_PROLOG_	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:136:7
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:136:7
        _RANDOM[/*Zero width*/ 1'b0] = `RANDOM;	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:136:7
        array_0 = _RANDOM[/*Zero width*/ 1'b0][7:0];	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:136:7, :152:18
        array_1 = _RANDOM[/*Zero width*/ 1'b0][15:8];	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:136:7, :152:18
        array_2 = _RANDOM[/*Zero width*/ 1'b0][23:16];	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:136:7, :152:18
        array_3 = _RANDOM[/*Zero width*/ 1'b0][31:24];	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:136:7, :152:18
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:136:7
      `FIRRTL_AFTER_INITIAL	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:136:7
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  assign io_r_resp_0_0 = io_r_req_0_idx == array_0;	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:136:7, :152:18, :155:39
  assign io_r_resp_0_1 = io_r_req_0_idx == array_1;	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:136:7, :152:18, :155:39
  assign io_r_resp_0_2 = io_r_req_0_idx == array_2;	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:136:7, :152:18, :155:39
  assign io_r_resp_0_3 = io_r_req_0_idx == array_3;	// src/main/scala/xiangshan/cache/mmu/MMUBundle.scala:136:7, :152:18, :155:39
endmodule
