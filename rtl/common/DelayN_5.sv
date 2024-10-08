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

module DelayN_5(	// utility/src/main/scala/utility/Hold.scala:83:7
  input         clock,
  input         io_in_valid,	// utility/src/main/scala/utility/Hold.scala:84:14
  input  [3:0]  io_in_brSlots_0_offset,	// utility/src/main/scala/utility/Hold.scala:84:14
  input  [11:0] io_in_brSlots_0_lower,	// utility/src/main/scala/utility/Hold.scala:84:14
  input  [1:0]  io_in_brSlots_0_tarStat,	// utility/src/main/scala/utility/Hold.scala:84:14
  input         io_in_brSlots_0_sharing,	// utility/src/main/scala/utility/Hold.scala:84:14
  input         io_in_brSlots_0_valid,	// utility/src/main/scala/utility/Hold.scala:84:14
  input  [3:0]  io_in_tailSlot_offset,	// utility/src/main/scala/utility/Hold.scala:84:14
  input  [19:0] io_in_tailSlot_lower,	// utility/src/main/scala/utility/Hold.scala:84:14
  input  [1:0]  io_in_tailSlot_tarStat,	// utility/src/main/scala/utility/Hold.scala:84:14
  input         io_in_tailSlot_sharing,	// utility/src/main/scala/utility/Hold.scala:84:14
  input         io_in_tailSlot_valid,	// utility/src/main/scala/utility/Hold.scala:84:14
  input  [3:0]  io_in_pftAddr,	// utility/src/main/scala/utility/Hold.scala:84:14
  input         io_in_carry,	// utility/src/main/scala/utility/Hold.scala:84:14
  input         io_in_isCall,	// utility/src/main/scala/utility/Hold.scala:84:14
  input         io_in_isRet,	// utility/src/main/scala/utility/Hold.scala:84:14
  input         io_in_isJalr,	// utility/src/main/scala/utility/Hold.scala:84:14
  input         io_in_last_may_be_rvi_call,	// utility/src/main/scala/utility/Hold.scala:84:14
  input         io_in_always_taken_0,	// utility/src/main/scala/utility/Hold.scala:84:14
  input         io_in_always_taken_1,	// utility/src/main/scala/utility/Hold.scala:84:14
  output        io_out_valid,	// utility/src/main/scala/utility/Hold.scala:84:14
  output [3:0]  io_out_brSlots_0_offset,	// utility/src/main/scala/utility/Hold.scala:84:14
  output [11:0] io_out_brSlots_0_lower,	// utility/src/main/scala/utility/Hold.scala:84:14
  output [1:0]  io_out_brSlots_0_tarStat,	// utility/src/main/scala/utility/Hold.scala:84:14
  output        io_out_brSlots_0_sharing,	// utility/src/main/scala/utility/Hold.scala:84:14
  output        io_out_brSlots_0_valid,	// utility/src/main/scala/utility/Hold.scala:84:14
  output [3:0]  io_out_tailSlot_offset,	// utility/src/main/scala/utility/Hold.scala:84:14
  output [19:0] io_out_tailSlot_lower,	// utility/src/main/scala/utility/Hold.scala:84:14
  output [1:0]  io_out_tailSlot_tarStat,	// utility/src/main/scala/utility/Hold.scala:84:14
  output        io_out_tailSlot_sharing,	// utility/src/main/scala/utility/Hold.scala:84:14
  output        io_out_tailSlot_valid,	// utility/src/main/scala/utility/Hold.scala:84:14
  output [3:0]  io_out_pftAddr,	// utility/src/main/scala/utility/Hold.scala:84:14
  output        io_out_carry,	// utility/src/main/scala/utility/Hold.scala:84:14
  output        io_out_isCall,	// utility/src/main/scala/utility/Hold.scala:84:14
  output        io_out_isRet,	// utility/src/main/scala/utility/Hold.scala:84:14
  output        io_out_isJalr,	// utility/src/main/scala/utility/Hold.scala:84:14
  output        io_out_last_may_be_rvi_call,	// utility/src/main/scala/utility/Hold.scala:84:14
  output        io_out_always_taken_0,	// utility/src/main/scala/utility/Hold.scala:84:14
  output        io_out_always_taken_1	// utility/src/main/scala/utility/Hold.scala:84:14
);

  reg        REG_valid;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg [3:0]  REG_brSlots_0_offset;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg [11:0] REG_brSlots_0_lower;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg [1:0]  REG_brSlots_0_tarStat;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg        REG_brSlots_0_sharing;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg        REG_brSlots_0_valid;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg [3:0]  REG_tailSlot_offset;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg [19:0] REG_tailSlot_lower;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg [1:0]  REG_tailSlot_tarStat;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg        REG_tailSlot_sharing;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg        REG_tailSlot_valid;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg [3:0]  REG_pftAddr;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg        REG_carry;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg        REG_isCall;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg        REG_isRet;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg        REG_isJalr;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg        REG_last_may_be_rvi_call;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg        REG_always_taken_0;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg        REG_always_taken_1;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg        REG_1_valid;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg [3:0]  REG_1_brSlots_0_offset;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg [11:0] REG_1_brSlots_0_lower;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg [1:0]  REG_1_brSlots_0_tarStat;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg        REG_1_brSlots_0_sharing;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg        REG_1_brSlots_0_valid;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg [3:0]  REG_1_tailSlot_offset;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg [19:0] REG_1_tailSlot_lower;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg [1:0]  REG_1_tailSlot_tarStat;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg        REG_1_tailSlot_sharing;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg        REG_1_tailSlot_valid;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg [3:0]  REG_1_pftAddr;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg        REG_1_carry;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg        REG_1_isCall;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg        REG_1_isRet;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg        REG_1_isJalr;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg        REG_1_last_may_be_rvi_call;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg        REG_1_always_taken_0;	// utility/src/main/scala/utility/Hold.scala:90:18
  reg        REG_1_always_taken_1;	// utility/src/main/scala/utility/Hold.scala:90:18
  always @(posedge clock) begin
    REG_valid <= io_in_valid;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_brSlots_0_offset <= io_in_brSlots_0_offset;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_brSlots_0_lower <= io_in_brSlots_0_lower;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_brSlots_0_tarStat <= io_in_brSlots_0_tarStat;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_brSlots_0_sharing <= io_in_brSlots_0_sharing;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_brSlots_0_valid <= io_in_brSlots_0_valid;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_tailSlot_offset <= io_in_tailSlot_offset;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_tailSlot_lower <= io_in_tailSlot_lower;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_tailSlot_tarStat <= io_in_tailSlot_tarStat;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_tailSlot_sharing <= io_in_tailSlot_sharing;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_tailSlot_valid <= io_in_tailSlot_valid;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_pftAddr <= io_in_pftAddr;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_carry <= io_in_carry;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_isCall <= io_in_isCall;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_isRet <= io_in_isRet;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_isJalr <= io_in_isJalr;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_last_may_be_rvi_call <= io_in_last_may_be_rvi_call;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_always_taken_0 <= io_in_always_taken_0;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_always_taken_1 <= io_in_always_taken_1;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_1_valid <= REG_valid;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_1_brSlots_0_offset <= REG_brSlots_0_offset;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_1_brSlots_0_lower <= REG_brSlots_0_lower;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_1_brSlots_0_tarStat <= REG_brSlots_0_tarStat;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_1_brSlots_0_sharing <= REG_brSlots_0_sharing;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_1_brSlots_0_valid <= REG_brSlots_0_valid;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_1_tailSlot_offset <= REG_tailSlot_offset;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_1_tailSlot_lower <= REG_tailSlot_lower;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_1_tailSlot_tarStat <= REG_tailSlot_tarStat;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_1_tailSlot_sharing <= REG_tailSlot_sharing;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_1_tailSlot_valid <= REG_tailSlot_valid;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_1_pftAddr <= REG_pftAddr;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_1_carry <= REG_carry;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_1_isCall <= REG_isCall;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_1_isRet <= REG_isRet;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_1_isJalr <= REG_isJalr;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_1_last_may_be_rvi_call <= REG_last_may_be_rvi_call;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_1_always_taken_0 <= REG_always_taken_0;	// utility/src/main/scala/utility/Hold.scala:90:18
    REG_1_always_taken_1 <= REG_always_taken_1;	// utility/src/main/scala/utility/Hold.scala:90:18
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_	// utility/src/main/scala/utility/Hold.scala:83:7
    `ifdef FIRRTL_BEFORE_INITIAL	// utility/src/main/scala/utility/Hold.scala:83:7
      `FIRRTL_BEFORE_INITIAL	// utility/src/main/scala/utility/Hold.scala:83:7
    `endif // FIRRTL_BEFORE_INITIAL
    logic [31:0] _RANDOM[0:3];	// utility/src/main/scala/utility/Hold.scala:83:7
    initial begin	// utility/src/main/scala/utility/Hold.scala:83:7
      `ifdef INIT_RANDOM_PROLOG_	// utility/src/main/scala/utility/Hold.scala:83:7
        `INIT_RANDOM_PROLOG_	// utility/src/main/scala/utility/Hold.scala:83:7
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT	// utility/src/main/scala/utility/Hold.scala:83:7
        for (logic [2:0] i = 3'h0; i < 3'h4; i += 3'h1) begin
          _RANDOM[i[1:0]] = `RANDOM;	// utility/src/main/scala/utility/Hold.scala:83:7
        end	// utility/src/main/scala/utility/Hold.scala:83:7
        REG_valid = _RANDOM[2'h0][0];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_brSlots_0_offset = _RANDOM[2'h0][4:1];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_brSlots_0_lower = _RANDOM[2'h0][16:5];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_brSlots_0_tarStat = _RANDOM[2'h0][18:17];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_brSlots_0_sharing = _RANDOM[2'h0][19];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_brSlots_0_valid = _RANDOM[2'h0][20];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_tailSlot_offset = _RANDOM[2'h0][24:21];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_tailSlot_lower = {_RANDOM[2'h0][31:25], _RANDOM[2'h1][12:0]};	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_tailSlot_tarStat = _RANDOM[2'h1][14:13];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_tailSlot_sharing = _RANDOM[2'h1][15];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_tailSlot_valid = _RANDOM[2'h1][16];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_pftAddr = _RANDOM[2'h1][20:17];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_carry = _RANDOM[2'h1][21];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_isCall = _RANDOM[2'h1][22];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_isRet = _RANDOM[2'h1][23];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_isJalr = _RANDOM[2'h1][24];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_last_may_be_rvi_call = _RANDOM[2'h1][25];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_always_taken_0 = _RANDOM[2'h1][26];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_always_taken_1 = _RANDOM[2'h1][27];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_1_valid = _RANDOM[2'h1][28];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_1_brSlots_0_offset = {_RANDOM[2'h1][31:29], _RANDOM[2'h2][0]};	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_1_brSlots_0_lower = _RANDOM[2'h2][12:1];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_1_brSlots_0_tarStat = _RANDOM[2'h2][14:13];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_1_brSlots_0_sharing = _RANDOM[2'h2][15];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_1_brSlots_0_valid = _RANDOM[2'h2][16];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_1_tailSlot_offset = _RANDOM[2'h2][20:17];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_1_tailSlot_lower = {_RANDOM[2'h2][31:21], _RANDOM[2'h3][8:0]};	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_1_tailSlot_tarStat = _RANDOM[2'h3][10:9];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_1_tailSlot_sharing = _RANDOM[2'h3][11];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_1_tailSlot_valid = _RANDOM[2'h3][12];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_1_pftAddr = _RANDOM[2'h3][16:13];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_1_carry = _RANDOM[2'h3][17];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_1_isCall = _RANDOM[2'h3][18];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_1_isRet = _RANDOM[2'h3][19];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_1_isJalr = _RANDOM[2'h3][20];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_1_last_may_be_rvi_call = _RANDOM[2'h3][21];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_1_always_taken_0 = _RANDOM[2'h3][22];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
        REG_1_always_taken_1 = _RANDOM[2'h3][23];	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL	// utility/src/main/scala/utility/Hold.scala:83:7
      `FIRRTL_AFTER_INITIAL	// utility/src/main/scala/utility/Hold.scala:83:7
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  assign io_out_valid = REG_1_valid;	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
  assign io_out_brSlots_0_offset = REG_1_brSlots_0_offset;	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
  assign io_out_brSlots_0_lower = REG_1_brSlots_0_lower;	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
  assign io_out_brSlots_0_tarStat = REG_1_brSlots_0_tarStat;	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
  assign io_out_brSlots_0_sharing = REG_1_brSlots_0_sharing;	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
  assign io_out_brSlots_0_valid = REG_1_brSlots_0_valid;	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
  assign io_out_tailSlot_offset = REG_1_tailSlot_offset;	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
  assign io_out_tailSlot_lower = REG_1_tailSlot_lower;	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
  assign io_out_tailSlot_tarStat = REG_1_tailSlot_tarStat;	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
  assign io_out_tailSlot_sharing = REG_1_tailSlot_sharing;	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
  assign io_out_tailSlot_valid = REG_1_tailSlot_valid;	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
  assign io_out_pftAddr = REG_1_pftAddr;	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
  assign io_out_carry = REG_1_carry;	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
  assign io_out_isCall = REG_1_isCall;	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
  assign io_out_isRet = REG_1_isRet;	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
  assign io_out_isJalr = REG_1_isJalr;	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
  assign io_out_last_may_be_rvi_call = REG_1_last_may_be_rvi_call;	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
  assign io_out_always_taken_0 = REG_1_always_taken_0;	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
  assign io_out_always_taken_1 = REG_1_always_taken_1;	// utility/src/main/scala/utility/Hold.scala:83:7, :90:18
endmodule

