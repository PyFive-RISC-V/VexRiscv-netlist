// Generator : SpinalHDL v1.4.2    git head : f02b37a0c0ff9c7a1b658a3205a53ae5ca795fbc
// Component : VexRiscvBm
// Git hash  : 5828dc0f66780f098e6cc8d84f4d0fdf5e27145b


`define BranchCtrlEnum_defaultEncoding_type [1:0]
`define BranchCtrlEnum_defaultEncoding_INC 2'b00
`define BranchCtrlEnum_defaultEncoding_B 2'b01
`define BranchCtrlEnum_defaultEncoding_JAL 2'b10
`define BranchCtrlEnum_defaultEncoding_JALR 2'b11

`define EnvCtrlEnum_defaultEncoding_type [1:0]
`define EnvCtrlEnum_defaultEncoding_NONE 2'b00
`define EnvCtrlEnum_defaultEncoding_XRET 2'b01
`define EnvCtrlEnum_defaultEncoding_WFI 2'b10
`define EnvCtrlEnum_defaultEncoding_ECALL 2'b11

`define ShiftCtrlEnum_defaultEncoding_type [1:0]
`define ShiftCtrlEnum_defaultEncoding_DISABLE_1 2'b00
`define ShiftCtrlEnum_defaultEncoding_SLL_1 2'b01
`define ShiftCtrlEnum_defaultEncoding_SRL_1 2'b10
`define ShiftCtrlEnum_defaultEncoding_SRA_1 2'b11

`define AluBitwiseCtrlEnum_defaultEncoding_type [1:0]
`define AluBitwiseCtrlEnum_defaultEncoding_XOR_1 2'b00
`define AluBitwiseCtrlEnum_defaultEncoding_OR_1 2'b01
`define AluBitwiseCtrlEnum_defaultEncoding_AND_1 2'b10

`define AluCtrlEnum_defaultEncoding_type [1:0]
`define AluCtrlEnum_defaultEncoding_ADD_SUB 2'b00
`define AluCtrlEnum_defaultEncoding_SLT_SLTU 2'b01
`define AluCtrlEnum_defaultEncoding_BITWISE 2'b10

`define Src2CtrlEnum_defaultEncoding_type [1:0]
`define Src2CtrlEnum_defaultEncoding_RS 2'b00
`define Src2CtrlEnum_defaultEncoding_IMI 2'b01
`define Src2CtrlEnum_defaultEncoding_IMS 2'b10
`define Src2CtrlEnum_defaultEncoding_PC 2'b11

`define Src1CtrlEnum_defaultEncoding_type [1:0]
`define Src1CtrlEnum_defaultEncoding_RS 2'b00
`define Src1CtrlEnum_defaultEncoding_IMU 2'b01
`define Src1CtrlEnum_defaultEncoding_PC_INCREMENT 2'b10
`define Src1CtrlEnum_defaultEncoding_URS1 2'b11


module VexRiscvBm (
  output              iBus_cmd_valid,
  input               iBus_cmd_ready,
  output     [31:0]   iBus_cmd_payload_pc,
  input               iBus_rsp_valid,
  input               iBus_rsp_payload_error,
  input      [31:0]   iBus_rsp_payload_inst,
  input               timerInterrupt,
  input               externalInterrupt,
  input               softwareInterrupt,
  output              dBus_cmd_valid,
  input               dBus_cmd_ready,
  output              dBus_cmd_payload_wr,
  output     [31:0]   dBus_cmd_payload_address,
  output     [31:0]   dBus_cmd_payload_data,
  output     [1:0]    dBus_cmd_payload_size,
  input               dBus_rsp_ready,
  input               dBus_rsp_error,
  input      [31:0]   dBus_rsp_data,
  input               clk,
  input               resetn
);
  wire                _zz_135;
  wire                _zz_136;
  wire                _zz_137;
  wire       [0:0]    _zz_138;
  wire                _zz_139;
  wire                _zz_140;
  wire       [0:0]    _zz_141;
  wire                _zz_142;
  wire                IBusSimplePlugin_rspJoin_rspBuffer_c_io_push_ready;
  wire                IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_valid;
  wire                IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_payload_error;
  wire       [31:0]   IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_payload_inst;
  wire       [0:0]    IBusSimplePlugin_rspJoin_rspBuffer_c_io_occupancy;
  wire       [31:0]   RegFilePlugin_regFile_rd_data;
  wire       [31:0]   RegFilePlugin_regFile_1_rd_data;
  wire                _zz_143;
  wire                _zz_144;
  wire                _zz_145;
  wire                _zz_146;
  wire                _zz_147;
  wire                _zz_148;
  wire                _zz_149;
  wire                _zz_150;
  wire                _zz_151;
  wire                _zz_152;
  wire                _zz_153;
  wire                _zz_154;
  wire       [1:0]    _zz_155;
  wire                _zz_156;
  wire                _zz_157;
  wire                _zz_158;
  wire                _zz_159;
  wire                _zz_160;
  wire                _zz_161;
  wire                _zz_162;
  wire                _zz_163;
  wire                _zz_164;
  wire                _zz_165;
  wire                _zz_166;
  wire                _zz_167;
  wire                _zz_168;
  wire                _zz_169;
  wire       [1:0]    _zz_170;
  wire                _zz_171;
  wire       [0:0]    _zz_172;
  wire       [0:0]    _zz_173;
  wire       [0:0]    _zz_174;
  wire       [0:0]    _zz_175;
  wire       [0:0]    _zz_176;
  wire       [0:0]    _zz_177;
  wire       [0:0]    _zz_178;
  wire       [0:0]    _zz_179;
  wire       [0:0]    _zz_180;
  wire       [0:0]    _zz_181;
  wire       [0:0]    _zz_182;
  wire       [32:0]   _zz_183;
  wire       [31:0]   _zz_184;
  wire       [32:0]   _zz_185;
  wire       [0:0]    _zz_186;
  wire       [0:0]    _zz_187;
  wire       [0:0]    _zz_188;
  wire       [1:0]    _zz_189;
  wire       [1:0]    _zz_190;
  wire       [2:0]    _zz_191;
  wire       [31:0]   _zz_192;
  wire       [2:0]    _zz_193;
  wire       [0:0]    _zz_194;
  wire       [2:0]    _zz_195;
  wire       [0:0]    _zz_196;
  wire       [2:0]    _zz_197;
  wire       [0:0]    _zz_198;
  wire       [2:0]    _zz_199;
  wire       [0:0]    _zz_200;
  wire       [2:0]    _zz_201;
  wire       [2:0]    _zz_202;
  wire       [0:0]    _zz_203;
  wire       [2:0]    _zz_204;
  wire       [4:0]    _zz_205;
  wire       [11:0]   _zz_206;
  wire       [11:0]   _zz_207;
  wire       [31:0]   _zz_208;
  wire       [31:0]   _zz_209;
  wire       [31:0]   _zz_210;
  wire       [31:0]   _zz_211;
  wire       [31:0]   _zz_212;
  wire       [31:0]   _zz_213;
  wire       [31:0]   _zz_214;
  wire       [0:0]    _zz_215;
  wire       [3:0]    _zz_216;
  wire       [36:0]   _zz_217;
  wire       [36:0]   _zz_218;
  wire       [36:0]   _zz_219;
  wire       [32:0]   _zz_220;
  wire       [36:0]   _zz_221;
  wire       [33:0]   _zz_222;
  wire       [36:0]   _zz_223;
  wire       [33:0]   _zz_224;
  wire       [36:0]   _zz_225;
  wire       [34:0]   _zz_226;
  wire       [36:0]   _zz_227;
  wire       [34:0]   _zz_228;
  wire       [35:0]   _zz_229;
  wire       [36:0]   _zz_230;
  wire       [35:0]   _zz_231;
  wire       [32:0]   _zz_232;
  wire       [36:0]   _zz_233;
  wire       [32:0]   _zz_234;
  wire       [0:0]    _zz_235;
  wire       [5:0]    _zz_236;
  wire       [32:0]   _zz_237;
  wire       [31:0]   _zz_238;
  wire       [31:0]   _zz_239;
  wire       [32:0]   _zz_240;
  wire       [32:0]   _zz_241;
  wire       [32:0]   _zz_242;
  wire       [32:0]   _zz_243;
  wire       [0:0]    _zz_244;
  wire       [32:0]   _zz_245;
  wire       [0:0]    _zz_246;
  wire       [32:0]   _zz_247;
  wire       [0:0]    _zz_248;
  wire       [31:0]   _zz_249;
  wire       [1:0]    _zz_250;
  wire       [1:0]    _zz_251;
  wire       [1:0]    _zz_252;
  wire       [1:0]    _zz_253;
  wire       [19:0]   _zz_254;
  wire       [11:0]   _zz_255;
  wire       [11:0]   _zz_256;
  wire       [0:0]    _zz_257;
  wire       [0:0]    _zz_258;
  wire       [0:0]    _zz_259;
  wire       [0:0]    _zz_260;
  wire       [0:0]    _zz_261;
  wire       [0:0]    _zz_262;
  wire       [0:0]    _zz_263;
  wire       [31:0]   _zz_264;
  wire       [31:0]   _zz_265;
  wire       [31:0]   _zz_266;
  wire                _zz_267;
  wire       [0:0]    _zz_268;
  wire       [12:0]   _zz_269;
  wire       [31:0]   _zz_270;
  wire       [31:0]   _zz_271;
  wire       [31:0]   _zz_272;
  wire                _zz_273;
  wire       [0:0]    _zz_274;
  wire       [6:0]    _zz_275;
  wire       [31:0]   _zz_276;
  wire       [31:0]   _zz_277;
  wire       [31:0]   _zz_278;
  wire                _zz_279;
  wire       [0:0]    _zz_280;
  wire       [0:0]    _zz_281;
  wire       [31:0]   _zz_282;
  wire       [31:0]   _zz_283;
  wire       [31:0]   _zz_284;
  wire       [31:0]   _zz_285;
  wire                _zz_286;
  wire       [0:0]    _zz_287;
  wire       [0:0]    _zz_288;
  wire                _zz_289;
  wire       [0:0]    _zz_290;
  wire       [23:0]   _zz_291;
  wire       [31:0]   _zz_292;
  wire       [31:0]   _zz_293;
  wire       [31:0]   _zz_294;
  wire       [31:0]   _zz_295;
  wire       [31:0]   _zz_296;
  wire       [31:0]   _zz_297;
  wire       [0:0]    _zz_298;
  wire       [0:0]    _zz_299;
  wire       [2:0]    _zz_300;
  wire       [2:0]    _zz_301;
  wire                _zz_302;
  wire       [0:0]    _zz_303;
  wire       [19:0]   _zz_304;
  wire       [31:0]   _zz_305;
  wire       [31:0]   _zz_306;
  wire       [0:0]    _zz_307;
  wire       [0:0]    _zz_308;
  wire       [2:0]    _zz_309;
  wire       [2:0]    _zz_310;
  wire                _zz_311;
  wire       [0:0]    _zz_312;
  wire       [16:0]   _zz_313;
  wire       [31:0]   _zz_314;
  wire       [31:0]   _zz_315;
  wire       [31:0]   _zz_316;
  wire       [31:0]   _zz_317;
  wire                _zz_318;
  wire                _zz_319;
  wire       [31:0]   _zz_320;
  wire       [31:0]   _zz_321;
  wire                _zz_322;
  wire       [0:0]    _zz_323;
  wire       [0:0]    _zz_324;
  wire                _zz_325;
  wire       [0:0]    _zz_326;
  wire       [13:0]   _zz_327;
  wire                _zz_328;
  wire                _zz_329;
  wire       [0:0]    _zz_330;
  wire       [0:0]    _zz_331;
  wire       [4:0]    _zz_332;
  wire       [4:0]    _zz_333;
  wire                _zz_334;
  wire       [0:0]    _zz_335;
  wire       [10:0]   _zz_336;
  wire       [31:0]   _zz_337;
  wire       [31:0]   _zz_338;
  wire       [31:0]   _zz_339;
  wire       [31:0]   _zz_340;
  wire                _zz_341;
  wire       [0:0]    _zz_342;
  wire       [1:0]    _zz_343;
  wire       [31:0]   _zz_344;
  wire       [31:0]   _zz_345;
  wire                _zz_346;
  wire       [2:0]    _zz_347;
  wire       [2:0]    _zz_348;
  wire                _zz_349;
  wire       [0:0]    _zz_350;
  wire       [7:0]    _zz_351;
  wire       [31:0]   _zz_352;
  wire       [31:0]   _zz_353;
  wire       [31:0]   _zz_354;
  wire                _zz_355;
  wire                _zz_356;
  wire       [31:0]   _zz_357;
  wire       [0:0]    _zz_358;
  wire       [0:0]    _zz_359;
  wire       [0:0]    _zz_360;
  wire       [4:0]    _zz_361;
  wire       [1:0]    _zz_362;
  wire       [1:0]    _zz_363;
  wire                _zz_364;
  wire       [0:0]    _zz_365;
  wire       [5:0]    _zz_366;
  wire       [31:0]   _zz_367;
  wire       [31:0]   _zz_368;
  wire       [31:0]   _zz_369;
  wire       [31:0]   _zz_370;
  wire       [31:0]   _zz_371;
  wire       [31:0]   _zz_372;
  wire                _zz_373;
  wire       [0:0]    _zz_374;
  wire       [2:0]    _zz_375;
  wire                _zz_376;
  wire       [0:0]    _zz_377;
  wire       [0:0]    _zz_378;
  wire       [0:0]    _zz_379;
  wire       [0:0]    _zz_380;
  wire                _zz_381;
  wire       [0:0]    _zz_382;
  wire       [3:0]    _zz_383;
  wire       [31:0]   _zz_384;
  wire       [31:0]   _zz_385;
  wire       [31:0]   _zz_386;
  wire                _zz_387;
  wire       [0:0]    _zz_388;
  wire       [0:0]    _zz_389;
  wire       [31:0]   _zz_390;
  wire       [31:0]   _zz_391;
  wire       [31:0]   _zz_392;
  wire       [31:0]   _zz_393;
  wire       [31:0]   _zz_394;
  wire                _zz_395;
  wire       [3:0]    _zz_396;
  wire       [3:0]    _zz_397;
  wire                _zz_398;
  wire       [0:0]    _zz_399;
  wire       [1:0]    _zz_400;
  wire       [31:0]   _zz_401;
  wire       [31:0]   _zz_402;
  wire       [31:0]   _zz_403;
  wire       [31:0]   _zz_404;
  wire                _zz_405;
  wire       [0:0]    _zz_406;
  wire       [0:0]    _zz_407;
  wire       [31:0]   _zz_408;
  wire       [31:0]   _zz_409;
  wire       [0:0]    _zz_410;
  wire       [1:0]    _zz_411;
  wire       [1:0]    _zz_412;
  wire       [1:0]    _zz_413;
  wire       [1:0]    _zz_414;
  wire       [1:0]    _zz_415;
  wire       [31:0]   _zz_416;
  wire       [31:0]   _zz_417;
  wire       [31:0]   _zz_418;
  wire       [31:0]   _zz_419;
  wire       [31:0]   _zz_420;
  wire       [31:0]   _zz_421;
  wire       [31:0]   _zz_422;
  wire       [31:0]   _zz_423;
  wire       [31:0]   _zz_424;
  wire       [31:0]   _zz_425;
  wire       [31:0]   _zz_426;
  wire       [31:0]   _zz_427;
  wire       [31:0]   execute_REGFILE_WRITE_DATA;
  wire       [1:0]    execute_MEMORY_ADDRESS_LOW;
  wire                decode_CSR_READ_OPCODE;
  wire                decode_CSR_WRITE_OPCODE;
  wire       [31:0]   decode_SRC2;
  wire       [31:0]   decode_SRC1;
  wire                decode_SRC2_FORCE_ZERO;
  wire       `BranchCtrlEnum_defaultEncoding_type decode_BRANCH_CTRL;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_1;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_2;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_3;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_4;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_5;
  wire       `EnvCtrlEnum_defaultEncoding_type decode_ENV_CTRL;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_6;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_7;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_8;
  wire                decode_IS_CSR;
  wire                decode_IS_DIV;
  wire                decode_IS_RS2_SIGNED;
  wire                decode_IS_RS1_SIGNED;
  wire                decode_IS_MUL;
  wire       `ShiftCtrlEnum_defaultEncoding_type decode_SHIFT_CTRL;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_9;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_10;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_11;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type decode_ALU_BITWISE_CTRL;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_12;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_13;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_14;
  wire                decode_SRC_LESS_UNSIGNED;
  wire                decode_MEMORY_STORE;
  wire                decode_BYPASSABLE_EXECUTE_STAGE;
  wire       `AluCtrlEnum_defaultEncoding_type decode_ALU_CTRL;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_15;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_16;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_17;
  wire                decode_MEMORY_ENABLE;
  wire       [31:0]   memory_FORMAL_PC_NEXT;
  wire       [31:0]   execute_FORMAL_PC_NEXT;
  wire       [31:0]   decode_FORMAL_PC_NEXT;
  wire       [31:0]   execute_BRANCH_CALC;
  wire                execute_BRANCH_DO;
  wire       [31:0]   execute_PC;
  wire       `BranchCtrlEnum_defaultEncoding_type execute_BRANCH_CTRL;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_18;
  wire                execute_CSR_READ_OPCODE;
  wire                execute_CSR_WRITE_OPCODE;
  wire                execute_IS_CSR;
  wire       `EnvCtrlEnum_defaultEncoding_type execute_ENV_CTRL;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_19;
  wire       `EnvCtrlEnum_defaultEncoding_type memory_ENV_CTRL;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_20;
  wire                execute_IS_RS1_SIGNED;
  wire       [31:0]   execute_RS1;
  wire                execute_IS_DIV;
  wire                execute_IS_MUL;
  wire                execute_IS_RS2_SIGNED;
  wire                memory_IS_DIV;
  wire                memory_IS_MUL;
  wire                decode_RS2_USE;
  wire                decode_RS1_USE;
  wire                execute_REGFILE_WRITE_VALID;
  wire                execute_BYPASSABLE_EXECUTE_STAGE;
  wire                memory_REGFILE_WRITE_VALID;
  reg        [31:0]   decode_RS2;
  reg        [31:0]   decode_RS1;
  wire       [31:0]   execute_SHIFT_RIGHT;
  reg        [31:0]   _zz_21;
  wire       `ShiftCtrlEnum_defaultEncoding_type execute_SHIFT_CTRL;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_22;
  wire                execute_SRC_LESS_UNSIGNED;
  wire                execute_SRC2_FORCE_ZERO;
  wire                execute_SRC_USE_SUB_LESS;
  wire       [31:0]   _zz_23;
  wire       [31:0]   _zz_24;
  wire       `Src2CtrlEnum_defaultEncoding_type decode_SRC2_CTRL;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_25;
  wire       [31:0]   _zz_26;
  wire       `Src1CtrlEnum_defaultEncoding_type decode_SRC1_CTRL;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_27;
  wire                decode_SRC_USE_SUB_LESS;
  wire                decode_SRC_ADD_ZERO;
  wire       [31:0]   execute_SRC_ADD_SUB;
  wire                execute_SRC_LESS;
  wire       `AluCtrlEnum_defaultEncoding_type execute_ALU_CTRL;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_28;
  wire       [31:0]   execute_SRC2;
  wire       [31:0]   execute_SRC1;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type execute_ALU_BITWISE_CTRL;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_29;
  wire       [31:0]   _zz_30;
  wire                _zz_31;
  reg                 _zz_32;
  wire       [31:0]   decode_INSTRUCTION_ANTICIPATED;
  reg                 decode_REGFILE_WRITE_VALID;
  wire                decode_LEGAL_INSTRUCTION;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_33;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_34;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_35;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_36;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_37;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_38;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_39;
  reg        [31:0]   _zz_40;
  wire       [1:0]    memory_MEMORY_ADDRESS_LOW;
  wire       [31:0]   memory_MEMORY_READ_DATA;
  wire                memory_ALIGNEMENT_FAULT;
  wire       [31:0]   memory_REGFILE_WRITE_DATA;
  wire                memory_MEMORY_STORE;
  wire                memory_MEMORY_ENABLE;
  wire       [31:0]   execute_SRC_ADD;
  wire       [31:0]   execute_RS2;
  wire       [31:0]   execute_INSTRUCTION;
  wire                execute_MEMORY_STORE;
  wire                execute_MEMORY_ENABLE;
  wire                execute_ALIGNEMENT_FAULT;
  reg        [31:0]   _zz_41;
  wire       [31:0]   decode_PC;
  wire       [31:0]   decode_INSTRUCTION;
  wire       [31:0]   memory_PC;
  wire       [31:0]   memory_INSTRUCTION;
  wire                decode_arbitration_haltItself;
  reg                 decode_arbitration_haltByOther;
  reg                 decode_arbitration_removeIt;
  wire                decode_arbitration_flushIt;
  reg                 decode_arbitration_flushNext;
  wire                decode_arbitration_isValid;
  wire                decode_arbitration_isStuck;
  wire                decode_arbitration_isStuckByOthers;
  wire                decode_arbitration_isFlushed;
  wire                decode_arbitration_isMoving;
  wire                decode_arbitration_isFiring;
  reg                 execute_arbitration_haltItself;
  wire                execute_arbitration_haltByOther;
  reg                 execute_arbitration_removeIt;
  wire                execute_arbitration_flushIt;
  reg                 execute_arbitration_flushNext;
  reg                 execute_arbitration_isValid;
  wire                execute_arbitration_isStuck;
  wire                execute_arbitration_isStuckByOthers;
  wire                execute_arbitration_isFlushed;
  wire                execute_arbitration_isMoving;
  wire                execute_arbitration_isFiring;
  reg                 memory_arbitration_haltItself;
  wire                memory_arbitration_haltByOther;
  reg                 memory_arbitration_removeIt;
  wire                memory_arbitration_flushIt;
  reg                 memory_arbitration_flushNext;
  reg                 memory_arbitration_isValid;
  wire                memory_arbitration_isStuck;
  wire                memory_arbitration_isStuckByOthers;
  wire                memory_arbitration_isFlushed;
  wire                memory_arbitration_isMoving;
  wire                memory_arbitration_isFiring;
  wire       [31:0]   lastStageInstruction /* verilator public */ ;
  wire       [31:0]   lastStagePc /* verilator public */ ;
  wire                lastStageIsValid /* verilator public */ ;
  wire                lastStageIsFiring /* verilator public */ ;
  reg                 IBusSimplePlugin_fetcherHalt;
  reg                 IBusSimplePlugin_incomingInstruction;
  wire                IBusSimplePlugin_pcValids_0;
  wire                IBusSimplePlugin_pcValids_1;
  wire                IBusSimplePlugin_pcValids_2;
  wire                IBusSimplePlugin_decodeExceptionPort_valid;
  reg        [3:0]    IBusSimplePlugin_decodeExceptionPort_payload_code;
  wire       [31:0]   IBusSimplePlugin_decodeExceptionPort_payload_badAddr;
  reg                 DBusSimplePlugin_memoryExceptionPort_valid;
  reg        [3:0]    DBusSimplePlugin_memoryExceptionPort_payload_code;
  wire       [31:0]   DBusSimplePlugin_memoryExceptionPort_payload_badAddr;
  wire                decodeExceptionPort_valid;
  wire       [3:0]    decodeExceptionPort_payload_code;
  wire       [31:0]   decodeExceptionPort_payload_badAddr;
  reg                 CsrPlugin_inWfi /* verilator public */ ;
  wire                CsrPlugin_thirdPartyWake;
  reg                 CsrPlugin_jumpInterface_valid;
  reg        [31:0]   CsrPlugin_jumpInterface_payload;
  wire                CsrPlugin_exceptionPendings_0;
  wire                CsrPlugin_exceptionPendings_1;
  wire                CsrPlugin_exceptionPendings_2;
  wire                contextSwitching;
  reg        [1:0]    CsrPlugin_privilege;
  wire                CsrPlugin_forceMachineWire;
  reg                 CsrPlugin_selfException_valid;
  reg        [3:0]    CsrPlugin_selfException_payload_code;
  wire       [31:0]   CsrPlugin_selfException_payload_badAddr;
  wire                CsrPlugin_allowInterrupts;
  wire                CsrPlugin_allowException;
  wire                BranchPlugin_jumpInterface_valid;
  wire       [31:0]   BranchPlugin_jumpInterface_payload;
  reg                 BranchPlugin_branchExceptionPort_valid;
  wire       [3:0]    BranchPlugin_branchExceptionPort_payload_code;
  wire       [31:0]   BranchPlugin_branchExceptionPort_payload_badAddr;
  wire                IBusSimplePlugin_externalFlush;
  wire                IBusSimplePlugin_jump_pcLoad_valid;
  wire       [31:0]   IBusSimplePlugin_jump_pcLoad_payload;
  wire       [1:0]    _zz_42;
  wire                IBusSimplePlugin_fetchPc_output_valid;
  wire                IBusSimplePlugin_fetchPc_output_ready;
  wire       [31:0]   IBusSimplePlugin_fetchPc_output_payload;
  reg        [31:0]   IBusSimplePlugin_fetchPc_pcReg /* verilator public */ ;
  reg                 IBusSimplePlugin_fetchPc_correction;
  reg                 IBusSimplePlugin_fetchPc_correctionReg;
  wire                IBusSimplePlugin_fetchPc_corrected;
  reg                 IBusSimplePlugin_fetchPc_pcRegPropagate;
  reg                 IBusSimplePlugin_fetchPc_booted;
  reg                 IBusSimplePlugin_fetchPc_inc;
  reg        [31:0]   IBusSimplePlugin_fetchPc_pc;
  reg                 IBusSimplePlugin_fetchPc_flushed;
  wire                IBusSimplePlugin_iBusRsp_redoFetch;
  wire                IBusSimplePlugin_iBusRsp_stages_0_input_valid;
  wire                IBusSimplePlugin_iBusRsp_stages_0_input_ready;
  wire       [31:0]   IBusSimplePlugin_iBusRsp_stages_0_input_payload;
  wire                IBusSimplePlugin_iBusRsp_stages_0_output_valid;
  wire                IBusSimplePlugin_iBusRsp_stages_0_output_ready;
  wire       [31:0]   IBusSimplePlugin_iBusRsp_stages_0_output_payload;
  reg                 IBusSimplePlugin_iBusRsp_stages_0_halt;
  wire                IBusSimplePlugin_iBusRsp_stages_1_input_valid;
  wire                IBusSimplePlugin_iBusRsp_stages_1_input_ready;
  wire       [31:0]   IBusSimplePlugin_iBusRsp_stages_1_input_payload;
  wire                IBusSimplePlugin_iBusRsp_stages_1_output_valid;
  wire                IBusSimplePlugin_iBusRsp_stages_1_output_ready;
  wire       [31:0]   IBusSimplePlugin_iBusRsp_stages_1_output_payload;
  wire                IBusSimplePlugin_iBusRsp_stages_1_halt;
  wire                _zz_43;
  wire                _zz_44;
  wire                IBusSimplePlugin_iBusRsp_flush;
  wire                _zz_45;
  wire                _zz_46;
  reg                 _zz_47;
  reg                 IBusSimplePlugin_iBusRsp_readyForError;
  wire                IBusSimplePlugin_iBusRsp_output_valid;
  wire                IBusSimplePlugin_iBusRsp_output_ready;
  wire       [31:0]   IBusSimplePlugin_iBusRsp_output_payload_pc;
  wire                IBusSimplePlugin_iBusRsp_output_payload_rsp_error;
  wire       [31:0]   IBusSimplePlugin_iBusRsp_output_payload_rsp_inst;
  wire                IBusSimplePlugin_iBusRsp_output_payload_isRvc;
  wire                IBusSimplePlugin_injector_decodeInput_valid;
  wire                IBusSimplePlugin_injector_decodeInput_ready;
  wire       [31:0]   IBusSimplePlugin_injector_decodeInput_payload_pc;
  wire                IBusSimplePlugin_injector_decodeInput_payload_rsp_error;
  wire       [31:0]   IBusSimplePlugin_injector_decodeInput_payload_rsp_inst;
  wire                IBusSimplePlugin_injector_decodeInput_payload_isRvc;
  reg                 _zz_48;
  reg        [31:0]   _zz_49;
  reg                 _zz_50;
  reg        [31:0]   _zz_51;
  reg                 _zz_52;
  reg                 IBusSimplePlugin_injector_nextPcCalc_valids_0;
  reg                 IBusSimplePlugin_injector_nextPcCalc_valids_1;
  reg                 IBusSimplePlugin_injector_nextPcCalc_valids_2;
  reg                 IBusSimplePlugin_injector_nextPcCalc_valids_3;
  reg        [31:0]   IBusSimplePlugin_injector_formal_rawInDecode;
  wire                IBusSimplePlugin_cmd_valid;
  wire                IBusSimplePlugin_cmd_ready;
  wire       [31:0]   IBusSimplePlugin_cmd_payload_pc;
  wire                IBusSimplePlugin_pending_inc;
  wire                IBusSimplePlugin_pending_dec;
  reg        [2:0]    IBusSimplePlugin_pending_value;
  wire       [2:0]    IBusSimplePlugin_pending_next;
  wire                IBusSimplePlugin_cmdFork_canEmit;
  wire                IBusSimplePlugin_rspJoin_rspBuffer_output_valid;
  wire                IBusSimplePlugin_rspJoin_rspBuffer_output_ready;
  wire                IBusSimplePlugin_rspJoin_rspBuffer_output_payload_error;
  wire       [31:0]   IBusSimplePlugin_rspJoin_rspBuffer_output_payload_inst;
  reg        [2:0]    IBusSimplePlugin_rspJoin_rspBuffer_discardCounter;
  wire                IBusSimplePlugin_rspJoin_rspBuffer_flush;
  wire       [31:0]   IBusSimplePlugin_rspJoin_fetchRsp_pc;
  reg                 IBusSimplePlugin_rspJoin_fetchRsp_rsp_error;
  wire       [31:0]   IBusSimplePlugin_rspJoin_fetchRsp_rsp_inst;
  wire                IBusSimplePlugin_rspJoin_fetchRsp_isRvc;
  wire                IBusSimplePlugin_rspJoin_join_valid;
  wire                IBusSimplePlugin_rspJoin_join_ready;
  wire       [31:0]   IBusSimplePlugin_rspJoin_join_payload_pc;
  wire                IBusSimplePlugin_rspJoin_join_payload_rsp_error;
  wire       [31:0]   IBusSimplePlugin_rspJoin_join_payload_rsp_inst;
  wire                IBusSimplePlugin_rspJoin_join_payload_isRvc;
  reg                 IBusSimplePlugin_rspJoin_exceptionDetected;
  wire                _zz_53;
  wire                _zz_54;
  reg                 execute_DBusSimplePlugin_skipCmd;
  reg        [31:0]   _zz_55;
  reg        [3:0]    _zz_56;
  wire       [3:0]    execute_DBusSimplePlugin_formalMask;
  reg        [31:0]   memory_DBusSimplePlugin_rspShifted;
  wire                _zz_57;
  reg        [31:0]   _zz_58;
  wire                _zz_59;
  reg        [31:0]   _zz_60;
  reg        [31:0]   memory_DBusSimplePlugin_rspFormated;
  wire       [29:0]   _zz_61;
  wire                _zz_62;
  wire                _zz_63;
  wire                _zz_64;
  wire                _zz_65;
  wire                _zz_66;
  wire                _zz_67;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_68;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_69;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_70;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_71;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_72;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_73;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_74;
  wire       [4:0]    decode_RegFilePlugin_regFileReadAddress1;
  wire       [4:0]    decode_RegFilePlugin_regFileReadAddress2;
  wire       [31:0]   decode_RegFilePlugin_rs1Data;
  wire       [31:0]   decode_RegFilePlugin_rs2Data;
  reg                 lastStageRegFileWrite_valid /* verilator public */ ;
  wire       [4:0]    lastStageRegFileWrite_payload_address /* verilator public */ ;
  wire       [31:0]   lastStageRegFileWrite_payload_data /* verilator public */ ;
  wire       [31:0]   _zz_75;
  reg                 _zz_76;
  reg        [31:0]   execute_IntAluPlugin_bitwise;
  reg        [31:0]   _zz_77;
  reg        [31:0]   _zz_78;
  wire                _zz_79;
  reg        [19:0]   _zz_80;
  wire                _zz_81;
  reg        [19:0]   _zz_82;
  reg        [31:0]   _zz_83;
  reg        [31:0]   execute_SrcPlugin_addSub;
  wire                execute_SrcPlugin_less;
  wire       [4:0]    execute_FullBarrelShifterPlugin_amplitude;
  reg        [31:0]   _zz_84;
  wire       [31:0]   execute_FullBarrelShifterPlugin_reversed;
  reg        [31:0]   _zz_85;
  reg                 _zz_86;
  reg                 _zz_87;
  reg                 _zz_88;
  reg        [4:0]    _zz_89;
  reg        [31:0]   _zz_90;
  wire                _zz_91;
  wire                _zz_92;
  wire                _zz_93;
  wire                _zz_94;
  reg        [32:0]   memory_MulDivIterativePlugin_rs1;
  reg        [31:0]   memory_MulDivIterativePlugin_rs2;
  reg        [64:0]   memory_MulDivIterativePlugin_accumulator;
  wire                memory_MulDivIterativePlugin_frontendOk;
  reg                 memory_MulDivIterativePlugin_mul_counter_willIncrement;
  reg                 memory_MulDivIterativePlugin_mul_counter_willClear;
  reg        [3:0]    memory_MulDivIterativePlugin_mul_counter_valueNext;
  reg        [3:0]    memory_MulDivIterativePlugin_mul_counter_value;
  wire                memory_MulDivIterativePlugin_mul_counter_willOverflowIfInc;
  wire                memory_MulDivIterativePlugin_mul_counter_willOverflow;
  reg                 memory_MulDivIterativePlugin_div_needRevert;
  reg                 memory_MulDivIterativePlugin_div_counter_willIncrement;
  reg                 memory_MulDivIterativePlugin_div_counter_willClear;
  reg        [5:0]    memory_MulDivIterativePlugin_div_counter_valueNext;
  reg        [5:0]    memory_MulDivIterativePlugin_div_counter_value;
  wire                memory_MulDivIterativePlugin_div_counter_willOverflowIfInc;
  wire                memory_MulDivIterativePlugin_div_counter_willOverflow;
  reg                 memory_MulDivIterativePlugin_div_done;
  reg        [31:0]   memory_MulDivIterativePlugin_div_result;
  wire       [31:0]   _zz_95;
  wire       [32:0]   memory_MulDivIterativePlugin_div_stage_0_remainderShifted;
  wire       [32:0]   memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator;
  wire       [31:0]   memory_MulDivIterativePlugin_div_stage_0_outRemainder;
  wire       [31:0]   memory_MulDivIterativePlugin_div_stage_0_outNumerator;
  wire       [31:0]   _zz_96;
  wire                _zz_97;
  wire                _zz_98;
  reg        [32:0]   _zz_99;
  reg        [1:0]    CsrPlugin_misa_base;
  reg        [25:0]   CsrPlugin_misa_extensions;
  reg        [1:0]    CsrPlugin_mtvec_mode;
  reg        [29:0]   CsrPlugin_mtvec_base;
  reg        [31:0]   CsrPlugin_mepc;
  reg                 CsrPlugin_mstatus_MIE;
  reg                 CsrPlugin_mstatus_MPIE;
  reg        [1:0]    CsrPlugin_mstatus_MPP;
  reg                 CsrPlugin_mip_MEIP;
  reg                 CsrPlugin_mip_MTIP;
  reg                 CsrPlugin_mip_MSIP;
  reg                 CsrPlugin_mie_MEIE;
  reg                 CsrPlugin_mie_MTIE;
  reg                 CsrPlugin_mie_MSIE;
  reg        [31:0]   CsrPlugin_mscratch;
  reg                 CsrPlugin_mcause_interrupt;
  reg        [3:0]    CsrPlugin_mcause_exceptionCode;
  reg        [31:0]   CsrPlugin_mtval;
  reg        [63:0]   CsrPlugin_mcycle = 64'b0000000000000000000000000000000000000000000000000000000000000000;
  reg        [63:0]   CsrPlugin_minstret = 64'b0000000000000000000000000000000000000000000000000000000000000000;
  wire                _zz_100;
  wire                _zz_101;
  wire                _zz_102;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_decode;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_execute;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_memory;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
  reg        [3:0]    CsrPlugin_exceptionPortCtrl_exceptionContext_code;
  reg        [31:0]   CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr;
  wire       [1:0]    CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped;
  wire       [1:0]    CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege;
  wire       [1:0]    _zz_103;
  wire                _zz_104;
  wire       [1:0]    _zz_105;
  wire                _zz_106;
  reg                 CsrPlugin_interrupt_valid;
  reg        [3:0]    CsrPlugin_interrupt_code /* verilator public */ ;
  reg        [1:0]    CsrPlugin_interrupt_targetPrivilege;
  wire                CsrPlugin_exception;
  reg                 CsrPlugin_lastStageWasWfi;
  reg                 CsrPlugin_pipelineLiberator_pcValids_0;
  reg                 CsrPlugin_pipelineLiberator_pcValids_1;
  wire                CsrPlugin_pipelineLiberator_active;
  reg                 CsrPlugin_pipelineLiberator_done;
  wire                CsrPlugin_interruptJump /* verilator public */ ;
  reg                 CsrPlugin_hadException /* verilator public */ ;
  reg        [1:0]    CsrPlugin_targetPrivilege;
  reg        [3:0]    CsrPlugin_trapCause;
  reg        [1:0]    CsrPlugin_xtvec_mode;
  reg        [29:0]   CsrPlugin_xtvec_base;
  reg                 execute_CsrPlugin_wfiWake;
  wire                execute_CsrPlugin_blockedBySideEffects;
  reg                 execute_CsrPlugin_illegalAccess;
  reg                 execute_CsrPlugin_illegalInstruction;
  wire       [31:0]   execute_CsrPlugin_readData;
  wire                execute_CsrPlugin_writeInstruction;
  wire                execute_CsrPlugin_readInstruction;
  wire                execute_CsrPlugin_writeEnable;
  wire                execute_CsrPlugin_readEnable;
  wire       [31:0]   execute_CsrPlugin_readToWriteData;
  reg        [31:0]   execute_CsrPlugin_writeData;
  wire       [11:0]   execute_CsrPlugin_csrAddress;
  wire                execute_BranchPlugin_eq;
  wire       [2:0]    _zz_107;
  reg                 _zz_108;
  reg                 _zz_109;
  wire       [31:0]   execute_BranchPlugin_branch_src1;
  wire                _zz_110;
  reg        [10:0]   _zz_111;
  wire                _zz_112;
  reg        [19:0]   _zz_113;
  wire                _zz_114;
  reg        [18:0]   _zz_115;
  reg        [31:0]   _zz_116;
  wire       [31:0]   execute_BranchPlugin_branch_src2;
  wire       [31:0]   execute_BranchPlugin_branchAdder;
  reg        [31:0]   decode_to_execute_PC;
  reg        [31:0]   execute_to_memory_PC;
  reg        [31:0]   decode_to_execute_INSTRUCTION;
  reg        [31:0]   execute_to_memory_INSTRUCTION;
  reg        [31:0]   decode_to_execute_FORMAL_PC_NEXT;
  reg        [31:0]   execute_to_memory_FORMAL_PC_NEXT;
  reg                 decode_to_execute_SRC_USE_SUB_LESS;
  reg                 decode_to_execute_MEMORY_ENABLE;
  reg                 execute_to_memory_MEMORY_ENABLE;
  reg        `AluCtrlEnum_defaultEncoding_type decode_to_execute_ALU_CTRL;
  reg                 decode_to_execute_REGFILE_WRITE_VALID;
  reg                 execute_to_memory_REGFILE_WRITE_VALID;
  reg                 decode_to_execute_BYPASSABLE_EXECUTE_STAGE;
  reg                 decode_to_execute_MEMORY_STORE;
  reg                 execute_to_memory_MEMORY_STORE;
  reg                 decode_to_execute_SRC_LESS_UNSIGNED;
  reg        `AluBitwiseCtrlEnum_defaultEncoding_type decode_to_execute_ALU_BITWISE_CTRL;
  reg        `ShiftCtrlEnum_defaultEncoding_type decode_to_execute_SHIFT_CTRL;
  reg                 decode_to_execute_IS_MUL;
  reg                 execute_to_memory_IS_MUL;
  reg                 decode_to_execute_IS_RS1_SIGNED;
  reg                 decode_to_execute_IS_RS2_SIGNED;
  reg                 decode_to_execute_IS_DIV;
  reg                 execute_to_memory_IS_DIV;
  reg                 decode_to_execute_IS_CSR;
  reg        `EnvCtrlEnum_defaultEncoding_type decode_to_execute_ENV_CTRL;
  reg        `EnvCtrlEnum_defaultEncoding_type execute_to_memory_ENV_CTRL;
  reg        `BranchCtrlEnum_defaultEncoding_type decode_to_execute_BRANCH_CTRL;
  reg        [31:0]   decode_to_execute_RS1;
  reg        [31:0]   decode_to_execute_RS2;
  reg                 decode_to_execute_SRC2_FORCE_ZERO;
  reg        [31:0]   decode_to_execute_SRC1;
  reg        [31:0]   decode_to_execute_SRC2;
  reg                 decode_to_execute_CSR_WRITE_OPCODE;
  reg                 decode_to_execute_CSR_READ_OPCODE;
  reg                 execute_to_memory_ALIGNEMENT_FAULT;
  reg        [1:0]    execute_to_memory_MEMORY_ADDRESS_LOW;
  reg        [31:0]   execute_to_memory_REGFILE_WRITE_DATA;
  reg                 execute_CsrPlugin_csr_3857;
  reg                 execute_CsrPlugin_csr_3858;
  reg                 execute_CsrPlugin_csr_3859;
  reg                 execute_CsrPlugin_csr_3860;
  reg                 execute_CsrPlugin_csr_769;
  reg                 execute_CsrPlugin_csr_768;
  reg                 execute_CsrPlugin_csr_836;
  reg                 execute_CsrPlugin_csr_772;
  reg                 execute_CsrPlugin_csr_773;
  reg                 execute_CsrPlugin_csr_833;
  reg                 execute_CsrPlugin_csr_832;
  reg                 execute_CsrPlugin_csr_834;
  reg                 execute_CsrPlugin_csr_835;
  reg                 execute_CsrPlugin_csr_2816;
  reg                 execute_CsrPlugin_csr_2944;
  reg                 execute_CsrPlugin_csr_2818;
  reg                 execute_CsrPlugin_csr_2946;
  reg                 execute_CsrPlugin_csr_3072;
  reg                 execute_CsrPlugin_csr_3200;
  reg        [31:0]   _zz_117;
  reg        [31:0]   _zz_118;
  reg        [31:0]   _zz_119;
  reg        [31:0]   _zz_120;
  reg        [31:0]   _zz_121;
  reg        [31:0]   _zz_122;
  reg        [31:0]   _zz_123;
  reg        [31:0]   _zz_124;
  reg        [31:0]   _zz_125;
  reg        [31:0]   _zz_126;
  reg        [31:0]   _zz_127;
  reg        [31:0]   _zz_128;
  reg        [31:0]   _zz_129;
  reg        [31:0]   _zz_130;
  reg        [31:0]   _zz_131;
  reg        [31:0]   _zz_132;
  reg        [31:0]   _zz_133;
  reg        [31:0]   _zz_134;
  `ifndef SYNTHESIS
  reg [31:0] decode_BRANCH_CTRL_string;
  reg [31:0] _zz_1_string;
  reg [31:0] _zz_2_string;
  reg [31:0] _zz_3_string;
  reg [39:0] _zz_4_string;
  reg [39:0] _zz_5_string;
  reg [39:0] decode_ENV_CTRL_string;
  reg [39:0] _zz_6_string;
  reg [39:0] _zz_7_string;
  reg [39:0] _zz_8_string;
  reg [71:0] decode_SHIFT_CTRL_string;
  reg [71:0] _zz_9_string;
  reg [71:0] _zz_10_string;
  reg [71:0] _zz_11_string;
  reg [39:0] decode_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_12_string;
  reg [39:0] _zz_13_string;
  reg [39:0] _zz_14_string;
  reg [63:0] decode_ALU_CTRL_string;
  reg [63:0] _zz_15_string;
  reg [63:0] _zz_16_string;
  reg [63:0] _zz_17_string;
  reg [31:0] execute_BRANCH_CTRL_string;
  reg [31:0] _zz_18_string;
  reg [39:0] execute_ENV_CTRL_string;
  reg [39:0] _zz_19_string;
  reg [39:0] memory_ENV_CTRL_string;
  reg [39:0] _zz_20_string;
  reg [71:0] execute_SHIFT_CTRL_string;
  reg [71:0] _zz_22_string;
  reg [23:0] decode_SRC2_CTRL_string;
  reg [23:0] _zz_25_string;
  reg [95:0] decode_SRC1_CTRL_string;
  reg [95:0] _zz_27_string;
  reg [63:0] execute_ALU_CTRL_string;
  reg [63:0] _zz_28_string;
  reg [39:0] execute_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_29_string;
  reg [31:0] _zz_33_string;
  reg [39:0] _zz_34_string;
  reg [71:0] _zz_35_string;
  reg [39:0] _zz_36_string;
  reg [23:0] _zz_37_string;
  reg [63:0] _zz_38_string;
  reg [95:0] _zz_39_string;
  reg [95:0] _zz_68_string;
  reg [63:0] _zz_69_string;
  reg [23:0] _zz_70_string;
  reg [39:0] _zz_71_string;
  reg [71:0] _zz_72_string;
  reg [39:0] _zz_73_string;
  reg [31:0] _zz_74_string;
  reg [63:0] decode_to_execute_ALU_CTRL_string;
  reg [39:0] decode_to_execute_ALU_BITWISE_CTRL_string;
  reg [71:0] decode_to_execute_SHIFT_CTRL_string;
  reg [39:0] decode_to_execute_ENV_CTRL_string;
  reg [39:0] execute_to_memory_ENV_CTRL_string;
  reg [31:0] decode_to_execute_BRANCH_CTRL_string;
  `endif


  assign _zz_143 = (memory_arbitration_isValid && memory_REGFILE_WRITE_VALID);
  assign _zz_144 = 1'b1;
  assign _zz_145 = (execute_arbitration_isValid && execute_REGFILE_WRITE_VALID);
  assign _zz_146 = (execute_arbitration_isValid && execute_IS_CSR);
  assign _zz_147 = (memory_arbitration_isValid && memory_IS_MUL);
  assign _zz_148 = (memory_arbitration_isValid && memory_IS_DIV);
  assign _zz_149 = ({decodeExceptionPort_valid,IBusSimplePlugin_decodeExceptionPort_valid} != 2'b00);
  assign _zz_150 = (execute_arbitration_isValid && (execute_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_WFI));
  assign _zz_151 = ({BranchPlugin_branchExceptionPort_valid,CsrPlugin_selfException_valid} != 2'b00);
  assign _zz_152 = (memory_MulDivIterativePlugin_frontendOk && (! memory_MulDivIterativePlugin_mul_counter_willOverflowIfInc));
  assign _zz_153 = (CsrPlugin_hadException || CsrPlugin_interruptJump);
  assign _zz_154 = (memory_arbitration_isValid && (memory_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET));
  assign _zz_155 = memory_INSTRUCTION[29 : 28];
  assign _zz_156 = (IBusSimplePlugin_rspJoin_join_valid && IBusSimplePlugin_rspJoin_join_payload_rsp_error);
  assign _zz_157 = ((dBus_rsp_ready && dBus_rsp_error) && (! memory_MEMORY_STORE));
  assign _zz_158 = (memory_arbitration_isValid && memory_REGFILE_WRITE_VALID);
  assign _zz_159 = (1'b0 || (! 1'b1));
  assign _zz_160 = (execute_arbitration_isValid && execute_REGFILE_WRITE_VALID);
  assign _zz_161 = (1'b0 || (! execute_BYPASSABLE_EXECUTE_STAGE));
  assign _zz_162 = (memory_MulDivIterativePlugin_frontendOk && (! memory_MulDivIterativePlugin_div_done));
  assign _zz_163 = (! memory_arbitration_isStuck);
  assign _zz_164 = (execute_CsrPlugin_illegalAccess || execute_CsrPlugin_illegalInstruction);
  assign _zz_165 = (execute_arbitration_isValid && (execute_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_ECALL));
  assign _zz_166 = (CsrPlugin_mstatus_MIE || (CsrPlugin_privilege < 2'b11));
  assign _zz_167 = ((_zz_100 && 1'b1) && (! 1'b0));
  assign _zz_168 = ((_zz_101 && 1'b1) && (! 1'b0));
  assign _zz_169 = ((_zz_102 && 1'b1) && (! 1'b0));
  assign _zz_170 = memory_INSTRUCTION[13 : 12];
  assign _zz_171 = execute_INSTRUCTION[13];
  assign _zz_172 = _zz_61[25 : 25];
  assign _zz_173 = _zz_61[24 : 24];
  assign _zz_174 = _zz_61[23 : 23];
  assign _zz_175 = _zz_61[22 : 22];
  assign _zz_176 = _zz_61[21 : 21];
  assign _zz_177 = _zz_61[15 : 15];
  assign _zz_178 = _zz_61[12 : 12];
  assign _zz_179 = _zz_61[10 : 10];
  assign _zz_180 = _zz_61[3 : 3];
  assign _zz_181 = _zz_61[14 : 14];
  assign _zz_182 = _zz_61[4 : 4];
  assign _zz_183 = ($signed(_zz_185) >>> execute_FullBarrelShifterPlugin_amplitude);
  assign _zz_184 = _zz_183[31 : 0];
  assign _zz_185 = {((execute_SHIFT_CTRL == `ShiftCtrlEnum_defaultEncoding_SRA_1) && execute_FullBarrelShifterPlugin_reversed[31]),execute_FullBarrelShifterPlugin_reversed};
  assign _zz_186 = _zz_61[2 : 2];
  assign _zz_187 = _zz_61[18 : 18];
  assign _zz_188 = _zz_61[9 : 9];
  assign _zz_189 = (_zz_42 & (~ _zz_190));
  assign _zz_190 = (_zz_42 - 2'b01);
  assign _zz_191 = {IBusSimplePlugin_fetchPc_inc,2'b00};
  assign _zz_192 = {29'd0, _zz_191};
  assign _zz_193 = (IBusSimplePlugin_pending_value + _zz_195);
  assign _zz_194 = IBusSimplePlugin_pending_inc;
  assign _zz_195 = {2'd0, _zz_194};
  assign _zz_196 = IBusSimplePlugin_pending_dec;
  assign _zz_197 = {2'd0, _zz_196};
  assign _zz_198 = (IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_valid && (IBusSimplePlugin_rspJoin_rspBuffer_discardCounter != 3'b000));
  assign _zz_199 = {2'd0, _zz_198};
  assign _zz_200 = IBusSimplePlugin_pending_dec;
  assign _zz_201 = {2'd0, _zz_200};
  assign _zz_202 = (memory_MEMORY_STORE ? 3'b110 : 3'b100);
  assign _zz_203 = execute_SRC_LESS;
  assign _zz_204 = 3'b100;
  assign _zz_205 = decode_INSTRUCTION[19 : 15];
  assign _zz_206 = decode_INSTRUCTION[31 : 20];
  assign _zz_207 = {decode_INSTRUCTION[31 : 25],decode_INSTRUCTION[11 : 7]};
  assign _zz_208 = ($signed(_zz_209) + $signed(_zz_212));
  assign _zz_209 = ($signed(_zz_210) + $signed(_zz_211));
  assign _zz_210 = execute_SRC1;
  assign _zz_211 = (execute_SRC_USE_SUB_LESS ? (~ execute_SRC2) : execute_SRC2);
  assign _zz_212 = (execute_SRC_USE_SUB_LESS ? _zz_213 : _zz_214);
  assign _zz_213 = 32'h00000001;
  assign _zz_214 = 32'h0;
  assign _zz_215 = memory_MulDivIterativePlugin_mul_counter_willIncrement;
  assign _zz_216 = {3'd0, _zz_215};
  assign _zz_217 = (_zz_218 + _zz_233);
  assign _zz_218 = (_zz_219 + _zz_225);
  assign _zz_219 = (_zz_221 + _zz_223);
  assign _zz_220 = (memory_MulDivIterativePlugin_rs2[0] ? memory_MulDivIterativePlugin_rs1 : 33'h0);
  assign _zz_221 = {{4{_zz_220[32]}}, _zz_220};
  assign _zz_222 = (memory_MulDivIterativePlugin_rs2[1] ? _zz_224 : 34'h0);
  assign _zz_223 = {{3{_zz_222[33]}}, _zz_222};
  assign _zz_224 = ({1'd0,memory_MulDivIterativePlugin_rs1} <<< 1);
  assign _zz_225 = (_zz_227 + _zz_230);
  assign _zz_226 = (memory_MulDivIterativePlugin_rs2[2] ? _zz_228 : 35'h0);
  assign _zz_227 = {{2{_zz_226[34]}}, _zz_226};
  assign _zz_228 = ({2'd0,memory_MulDivIterativePlugin_rs1} <<< 2);
  assign _zz_229 = (memory_MulDivIterativePlugin_rs2[3] ? _zz_231 : 36'h0);
  assign _zz_230 = {{1{_zz_229[35]}}, _zz_229};
  assign _zz_231 = ({3'd0,memory_MulDivIterativePlugin_rs1} <<< 3);
  assign _zz_232 = _zz_234;
  assign _zz_233 = {{4{_zz_232[32]}}, _zz_232};
  assign _zz_234 = (memory_MulDivIterativePlugin_accumulator >>> 32);
  assign _zz_235 = memory_MulDivIterativePlugin_div_counter_willIncrement;
  assign _zz_236 = {5'd0, _zz_235};
  assign _zz_237 = {1'd0, memory_MulDivIterativePlugin_rs2};
  assign _zz_238 = memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator[31:0];
  assign _zz_239 = memory_MulDivIterativePlugin_div_stage_0_remainderShifted[31:0];
  assign _zz_240 = {_zz_95,(! memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator[32])};
  assign _zz_241 = _zz_242;
  assign _zz_242 = _zz_243;
  assign _zz_243 = ({1'b0,(memory_MulDivIterativePlugin_div_needRevert ? (~ _zz_96) : _zz_96)} + _zz_245);
  assign _zz_244 = memory_MulDivIterativePlugin_div_needRevert;
  assign _zz_245 = {32'd0, _zz_244};
  assign _zz_246 = _zz_98;
  assign _zz_247 = {32'd0, _zz_246};
  assign _zz_248 = _zz_97;
  assign _zz_249 = {31'd0, _zz_248};
  assign _zz_250 = (_zz_103 & (~ _zz_251));
  assign _zz_251 = (_zz_103 - 2'b01);
  assign _zz_252 = (_zz_105 & (~ _zz_253));
  assign _zz_253 = (_zz_105 - 2'b01);
  assign _zz_254 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]};
  assign _zz_255 = execute_INSTRUCTION[31 : 20];
  assign _zz_256 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]};
  assign _zz_257 = execute_CsrPlugin_writeData[7 : 7];
  assign _zz_258 = execute_CsrPlugin_writeData[3 : 3];
  assign _zz_259 = execute_CsrPlugin_writeData[3 : 3];
  assign _zz_260 = execute_CsrPlugin_writeData[11 : 11];
  assign _zz_261 = execute_CsrPlugin_writeData[7 : 7];
  assign _zz_262 = execute_CsrPlugin_writeData[3 : 3];
  assign _zz_263 = execute_CsrPlugin_writeData[31 : 31];
  assign _zz_264 = 32'h0000107f;
  assign _zz_265 = (decode_INSTRUCTION & 32'h0000207f);
  assign _zz_266 = 32'h00002073;
  assign _zz_267 = ((decode_INSTRUCTION & 32'h0000407f) == 32'h00004063);
  assign _zz_268 = ((decode_INSTRUCTION & 32'h0000207f) == 32'h00002013);
  assign _zz_269 = {((decode_INSTRUCTION & 32'h0000603f) == 32'h00000023),{((decode_INSTRUCTION & 32'h0000207f) == 32'h00000003),{((decode_INSTRUCTION & _zz_270) == 32'h00000003),{(_zz_271 == _zz_272),{_zz_273,{_zz_274,_zz_275}}}}}};
  assign _zz_270 = 32'h0000505f;
  assign _zz_271 = (decode_INSTRUCTION & 32'h0000707b);
  assign _zz_272 = 32'h00000063;
  assign _zz_273 = ((decode_INSTRUCTION & 32'h0000607f) == 32'h0000000f);
  assign _zz_274 = ((decode_INSTRUCTION & 32'hfc00007f) == 32'h00000033);
  assign _zz_275 = {((decode_INSTRUCTION & 32'hfc00305f) == 32'h00001013),{((decode_INSTRUCTION & 32'hbc00707f) == 32'h00005013),{((decode_INSTRUCTION & _zz_276) == 32'h00005033),{(_zz_277 == _zz_278),{_zz_279,{_zz_280,_zz_281}}}}}};
  assign _zz_276 = 32'hbe00707f;
  assign _zz_277 = (decode_INSTRUCTION & 32'hbe00707f);
  assign _zz_278 = 32'h00000033;
  assign _zz_279 = ((decode_INSTRUCTION & 32'hdfffffff) == 32'h10200073);
  assign _zz_280 = ((decode_INSTRUCTION & 32'hffffffff) == 32'h10500073);
  assign _zz_281 = ((decode_INSTRUCTION & 32'hffffffff) == 32'h00000073);
  assign _zz_282 = (decode_INSTRUCTION & 32'h0000001c);
  assign _zz_283 = 32'h00000004;
  assign _zz_284 = (decode_INSTRUCTION & 32'h00000058);
  assign _zz_285 = 32'h00000040;
  assign _zz_286 = ((decode_INSTRUCTION & 32'h00203050) == 32'h00000050);
  assign _zz_287 = ((decode_INSTRUCTION & 32'h00403050) == 32'h00000050);
  assign _zz_288 = 1'b0;
  assign _zz_289 = ({(_zz_292 == _zz_293),(_zz_294 == _zz_295)} != 2'b00);
  assign _zz_290 = ((_zz_296 == _zz_297) != 1'b0);
  assign _zz_291 = {({_zz_298,_zz_299} != 2'b00),{(_zz_300 != _zz_301),{_zz_302,{_zz_303,_zz_304}}}};
  assign _zz_292 = (decode_INSTRUCTION & 32'h00001050);
  assign _zz_293 = 32'h00001050;
  assign _zz_294 = (decode_INSTRUCTION & 32'h00002050);
  assign _zz_295 = 32'h00002050;
  assign _zz_296 = (decode_INSTRUCTION & 32'h02004064);
  assign _zz_297 = 32'h02004020;
  assign _zz_298 = _zz_67;
  assign _zz_299 = _zz_66;
  assign _zz_300 = {_zz_67,{_zz_65,_zz_66}};
  assign _zz_301 = 3'b000;
  assign _zz_302 = ((_zz_305 == _zz_306) != 1'b0);
  assign _zz_303 = ({_zz_307,_zz_308} != 2'b00);
  assign _zz_304 = {(_zz_309 != _zz_310),{_zz_311,{_zz_312,_zz_313}}};
  assign _zz_305 = (decode_INSTRUCTION & 32'h02004074);
  assign _zz_306 = 32'h02000030;
  assign _zz_307 = ((decode_INSTRUCTION & _zz_314) == 32'h00005010);
  assign _zz_308 = ((decode_INSTRUCTION & _zz_315) == 32'h00005020);
  assign _zz_309 = {(_zz_316 == _zz_317),{_zz_318,_zz_319}};
  assign _zz_310 = 3'b000;
  assign _zz_311 = ((_zz_320 == _zz_321) != 1'b0);
  assign _zz_312 = (_zz_322 != 1'b0);
  assign _zz_313 = {(_zz_323 != _zz_324),{_zz_325,{_zz_326,_zz_327}}};
  assign _zz_314 = 32'h00007034;
  assign _zz_315 = 32'h02007064;
  assign _zz_316 = (decode_INSTRUCTION & 32'h40003054);
  assign _zz_317 = 32'h40001010;
  assign _zz_318 = ((decode_INSTRUCTION & 32'h00007034) == 32'h00001010);
  assign _zz_319 = ((decode_INSTRUCTION & 32'h02007054) == 32'h00001010);
  assign _zz_320 = (decode_INSTRUCTION & 32'h00000064);
  assign _zz_321 = 32'h00000024;
  assign _zz_322 = ((decode_INSTRUCTION & 32'h00001000) == 32'h00001000);
  assign _zz_323 = _zz_65;
  assign _zz_324 = 1'b0;
  assign _zz_325 = ({_zz_328,_zz_329} != 2'b00);
  assign _zz_326 = ({_zz_330,_zz_331} != 2'b00);
  assign _zz_327 = {(_zz_332 != _zz_333),{_zz_334,{_zz_335,_zz_336}}};
  assign _zz_328 = ((decode_INSTRUCTION & 32'h00002010) == 32'h00002000);
  assign _zz_329 = ((decode_INSTRUCTION & 32'h00005000) == 32'h00001000);
  assign _zz_330 = ((decode_INSTRUCTION & _zz_337) == 32'h00000020);
  assign _zz_331 = ((decode_INSTRUCTION & _zz_338) == 32'h00000020);
  assign _zz_332 = {(_zz_339 == _zz_340),{_zz_341,{_zz_342,_zz_343}}};
  assign _zz_333 = 5'h0;
  assign _zz_334 = ((_zz_344 == _zz_345) != 1'b0);
  assign _zz_335 = (_zz_346 != 1'b0);
  assign _zz_336 = {(_zz_347 != _zz_348),{_zz_349,{_zz_350,_zz_351}}};
  assign _zz_337 = 32'h00000034;
  assign _zz_338 = 32'h00000064;
  assign _zz_339 = (decode_INSTRUCTION & 32'h00002040);
  assign _zz_340 = 32'h00002040;
  assign _zz_341 = ((decode_INSTRUCTION & _zz_352) == 32'h00001040);
  assign _zz_342 = (_zz_353 == _zz_354);
  assign _zz_343 = {_zz_355,_zz_356};
  assign _zz_344 = (decode_INSTRUCTION & 32'h00000020);
  assign _zz_345 = 32'h00000020;
  assign _zz_346 = ((decode_INSTRUCTION & _zz_357) == 32'h00000010);
  assign _zz_347 = {_zz_63,{_zz_358,_zz_359}};
  assign _zz_348 = 3'b000;
  assign _zz_349 = ({_zz_360,_zz_361} != 6'h0);
  assign _zz_350 = (_zz_362 != _zz_363);
  assign _zz_351 = {_zz_364,{_zz_365,_zz_366}};
  assign _zz_352 = 32'h00001040;
  assign _zz_353 = (decode_INSTRUCTION & 32'h00000050);
  assign _zz_354 = 32'h00000040;
  assign _zz_355 = ((decode_INSTRUCTION & _zz_367) == 32'h00000040);
  assign _zz_356 = ((decode_INSTRUCTION & _zz_368) == 32'h0);
  assign _zz_357 = 32'h00000010;
  assign _zz_358 = (_zz_369 == _zz_370);
  assign _zz_359 = (_zz_371 == _zz_372);
  assign _zz_360 = _zz_64;
  assign _zz_361 = {_zz_373,{_zz_374,_zz_375}};
  assign _zz_362 = {_zz_63,_zz_376};
  assign _zz_363 = 2'b00;
  assign _zz_364 = ({_zz_377,_zz_378} != 2'b00);
  assign _zz_365 = (_zz_379 != _zz_380);
  assign _zz_366 = {_zz_381,{_zz_382,_zz_383}};
  assign _zz_367 = 32'h00400040;
  assign _zz_368 = 32'h00000038;
  assign _zz_369 = (decode_INSTRUCTION & 32'h00000030);
  assign _zz_370 = 32'h00000010;
  assign _zz_371 = (decode_INSTRUCTION & 32'h02000060);
  assign _zz_372 = 32'h00000020;
  assign _zz_373 = ((decode_INSTRUCTION & _zz_384) == 32'h00001010);
  assign _zz_374 = (_zz_385 == _zz_386);
  assign _zz_375 = {_zz_387,{_zz_388,_zz_389}};
  assign _zz_376 = ((decode_INSTRUCTION & _zz_390) == 32'h00000020);
  assign _zz_377 = _zz_63;
  assign _zz_378 = (_zz_391 == _zz_392);
  assign _zz_379 = (_zz_393 == _zz_394);
  assign _zz_380 = 1'b0;
  assign _zz_381 = (_zz_395 != 1'b0);
  assign _zz_382 = (_zz_396 != _zz_397);
  assign _zz_383 = {_zz_398,{_zz_399,_zz_400}};
  assign _zz_384 = 32'h00001010;
  assign _zz_385 = (decode_INSTRUCTION & 32'h00002010);
  assign _zz_386 = 32'h00002010;
  assign _zz_387 = ((decode_INSTRUCTION & 32'h00000050) == 32'h00000010);
  assign _zz_388 = ((decode_INSTRUCTION & _zz_401) == 32'h00000004);
  assign _zz_389 = ((decode_INSTRUCTION & _zz_402) == 32'h0);
  assign _zz_390 = 32'h00000070;
  assign _zz_391 = (decode_INSTRUCTION & 32'h00000020);
  assign _zz_392 = 32'h0;
  assign _zz_393 = (decode_INSTRUCTION & 32'h00004014);
  assign _zz_394 = 32'h00004010;
  assign _zz_395 = ((decode_INSTRUCTION & 32'h00006014) == 32'h00002010);
  assign _zz_396 = {(_zz_403 == _zz_404),{_zz_405,{_zz_406,_zz_407}}};
  assign _zz_397 = 4'b0000;
  assign _zz_398 = ((_zz_408 == _zz_409) != 1'b0);
  assign _zz_399 = ({_zz_410,_zz_411} != 3'b000);
  assign _zz_400 = {(_zz_412 != _zz_413),(_zz_414 != _zz_415)};
  assign _zz_401 = 32'h0000000c;
  assign _zz_402 = 32'h00000028;
  assign _zz_403 = (decode_INSTRUCTION & 32'h00000044);
  assign _zz_404 = 32'h0;
  assign _zz_405 = ((decode_INSTRUCTION & 32'h00000018) == 32'h0);
  assign _zz_406 = ((decode_INSTRUCTION & _zz_416) == 32'h00002000);
  assign _zz_407 = ((decode_INSTRUCTION & _zz_417) == 32'h00001000);
  assign _zz_408 = (decode_INSTRUCTION & 32'h00000058);
  assign _zz_409 = 32'h0;
  assign _zz_410 = ((decode_INSTRUCTION & _zz_418) == 32'h00000040);
  assign _zz_411 = {(_zz_419 == _zz_420),(_zz_421 == _zz_422)};
  assign _zz_412 = {(_zz_423 == _zz_424),_zz_62};
  assign _zz_413 = 2'b00;
  assign _zz_414 = {(_zz_425 == _zz_426),_zz_62};
  assign _zz_415 = 2'b00;
  assign _zz_416 = 32'h00006004;
  assign _zz_417 = 32'h00005004;
  assign _zz_418 = 32'h00000044;
  assign _zz_419 = (decode_INSTRUCTION & 32'h00002014);
  assign _zz_420 = 32'h00002010;
  assign _zz_421 = (decode_INSTRUCTION & 32'h40000034);
  assign _zz_422 = 32'h40000030;
  assign _zz_423 = (decode_INSTRUCTION & 32'h00000014);
  assign _zz_424 = 32'h00000004;
  assign _zz_425 = (decode_INSTRUCTION & 32'h00000044);
  assign _zz_426 = 32'h00000004;
  assign _zz_427 = 32'h0;
  StreamFifoLowLatency IBusSimplePlugin_rspJoin_rspBuffer_c (
    .io_push_valid            (iBus_rsp_valid                                                  ), //i
    .io_push_ready            (IBusSimplePlugin_rspJoin_rspBuffer_c_io_push_ready              ), //o
    .io_push_payload_error    (iBus_rsp_payload_error                                          ), //i
    .io_push_payload_inst     (iBus_rsp_payload_inst[31:0]                                     ), //i
    .io_pop_valid             (IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_valid               ), //o
    .io_pop_ready             (_zz_135                                                         ), //i
    .io_pop_payload_error     (IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_payload_error       ), //o
    .io_pop_payload_inst      (IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_payload_inst[31:0]  ), //o
    .io_flush                 (_zz_136                                                         ), //i
    .io_occupancy             (IBusSimplePlugin_rspJoin_rspBuffer_c_io_occupancy               ), //o
    .clk                      (clk                                                             ), //i
    .resetn                   (resetn                                                          )  //i
  );
  Ram_1w_1rs #(
    .wordCount(32),
    .wordWidth(32),
    .clockCrossing(1'b0),
    .technology("auto"),
    .readUnderWrite("dontCare"),
    .wrAddressWidth(5),
    .wrDataWidth(32),
    .wrMaskWidth(1),
    .wrMaskEnable(1'b0),
    .rdAddressWidth(5),
    .rdDataWidth(32) 
  ) RegFilePlugin_regFile (
    .wr_clk     (clk                                            ), //i
    .wr_en      (_zz_137                                        ), //i
    .wr_mask    (_zz_138                                        ), //i
    .wr_addr    (lastStageRegFileWrite_payload_address[4:0]     ), //i
    .wr_data    (_zz_75[31:0]                                   ), //i
    .rd_clk     (clk                                            ), //i
    .rd_en      (_zz_139                                        ), //i
    .rd_addr    (decode_RegFilePlugin_regFileReadAddress1[4:0]  ), //i
    .rd_data    (RegFilePlugin_regFile_rd_data[31:0]            )  //o
  );
  Ram_1w_1rs #(
    .wordCount(32),
    .wordWidth(32),
    .clockCrossing(1'b0),
    .technology("auto"),
    .readUnderWrite("dontCare"),
    .wrAddressWidth(5),
    .wrDataWidth(32),
    .wrMaskWidth(1),
    .wrMaskEnable(1'b0),
    .rdAddressWidth(5),
    .rdDataWidth(32) 
  ) RegFilePlugin_regFile_1 (
    .wr_clk     (clk                                            ), //i
    .wr_en      (_zz_140                                        ), //i
    .wr_mask    (_zz_141                                        ), //i
    .wr_addr    (lastStageRegFileWrite_payload_address[4:0]     ), //i
    .wr_data    (_zz_75[31:0]                                   ), //i
    .rd_clk     (clk                                            ), //i
    .rd_en      (_zz_142                                        ), //i
    .rd_addr    (decode_RegFilePlugin_regFileReadAddress2[4:0]  ), //i
    .rd_data    (RegFilePlugin_regFile_1_rd_data[31:0]          )  //o
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(decode_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_INC : decode_BRANCH_CTRL_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : decode_BRANCH_CTRL_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : decode_BRANCH_CTRL_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : decode_BRANCH_CTRL_string = "JALR";
      default : decode_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_1)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_1_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_1_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_1_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_1_string = "JALR";
      default : _zz_1_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_2)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_2_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_2_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_2_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_2_string = "JALR";
      default : _zz_2_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_3)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_3_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_3_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_3_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_3_string = "JALR";
      default : _zz_3_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_4)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_4_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_4_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_4_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_4_string = "ECALL";
      default : _zz_4_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_5)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_5_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_5_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_5_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_5_string = "ECALL";
      default : _zz_5_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : decode_ENV_CTRL_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : decode_ENV_CTRL_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : decode_ENV_CTRL_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : decode_ENV_CTRL_string = "ECALL";
      default : decode_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_6)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_6_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_6_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_6_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_6_string = "ECALL";
      default : _zz_6_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_7)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_7_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_7_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_7_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_7_string = "ECALL";
      default : _zz_7_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_8)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_8_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_8_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_8_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_8_string = "ECALL";
      default : _zz_8_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_SHIFT_CTRL)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : decode_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : decode_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : decode_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : decode_SHIFT_CTRL_string = "SRA_1    ";
      default : decode_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_9)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_9_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_9_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_9_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_9_string = "SRA_1    ";
      default : _zz_9_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_10)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_10_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_10_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_10_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_10_string = "SRA_1    ";
      default : _zz_10_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_11)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_11_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_11_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_11_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_11_string = "SRA_1    ";
      default : _zz_11_string = "?????????";
    endcase
  end
  always @(*) begin
    case(decode_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : decode_ALU_BITWISE_CTRL_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : decode_ALU_BITWISE_CTRL_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : decode_ALU_BITWISE_CTRL_string = "AND_1";
      default : decode_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_12)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_12_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_12_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_12_string = "AND_1";
      default : _zz_12_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_13)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_13_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_13_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_13_string = "AND_1";
      default : _zz_13_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_14)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_14_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_14_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_14_string = "AND_1";
      default : _zz_14_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_ALU_CTRL)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : decode_ALU_CTRL_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : decode_ALU_CTRL_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : decode_ALU_CTRL_string = "BITWISE ";
      default : decode_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_15)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_15_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_15_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_15_string = "BITWISE ";
      default : _zz_15_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_16)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_16_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_16_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_16_string = "BITWISE ";
      default : _zz_16_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_17)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_17_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_17_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_17_string = "BITWISE ";
      default : _zz_17_string = "????????";
    endcase
  end
  always @(*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_INC : execute_BRANCH_CTRL_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : execute_BRANCH_CTRL_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : execute_BRANCH_CTRL_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : execute_BRANCH_CTRL_string = "JALR";
      default : execute_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_18)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_18_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_18_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_18_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_18_string = "JALR";
      default : _zz_18_string = "????";
    endcase
  end
  always @(*) begin
    case(execute_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : execute_ENV_CTRL_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : execute_ENV_CTRL_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : execute_ENV_CTRL_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : execute_ENV_CTRL_string = "ECALL";
      default : execute_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_19)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_19_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_19_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_19_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_19_string = "ECALL";
      default : _zz_19_string = "?????";
    endcase
  end
  always @(*) begin
    case(memory_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : memory_ENV_CTRL_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : memory_ENV_CTRL_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : memory_ENV_CTRL_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : memory_ENV_CTRL_string = "ECALL";
      default : memory_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_20)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_20_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_20_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_20_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_20_string = "ECALL";
      default : _zz_20_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute_SHIFT_CTRL)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : execute_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : execute_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : execute_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : execute_SHIFT_CTRL_string = "SRA_1    ";
      default : execute_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_22)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_22_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_22_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_22_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_22_string = "SRA_1    ";
      default : _zz_22_string = "?????????";
    endcase
  end
  always @(*) begin
    case(decode_SRC2_CTRL)
      `Src2CtrlEnum_defaultEncoding_RS : decode_SRC2_CTRL_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : decode_SRC2_CTRL_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : decode_SRC2_CTRL_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : decode_SRC2_CTRL_string = "PC ";
      default : decode_SRC2_CTRL_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_25)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_25_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_25_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_25_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_25_string = "PC ";
      default : _zz_25_string = "???";
    endcase
  end
  always @(*) begin
    case(decode_SRC1_CTRL)
      `Src1CtrlEnum_defaultEncoding_RS : decode_SRC1_CTRL_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : decode_SRC1_CTRL_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : decode_SRC1_CTRL_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : decode_SRC1_CTRL_string = "URS1        ";
      default : decode_SRC1_CTRL_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_27)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_27_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_27_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_27_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_27_string = "URS1        ";
      default : _zz_27_string = "????????????";
    endcase
  end
  always @(*) begin
    case(execute_ALU_CTRL)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : execute_ALU_CTRL_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : execute_ALU_CTRL_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : execute_ALU_CTRL_string = "BITWISE ";
      default : execute_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_28)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_28_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_28_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_28_string = "BITWISE ";
      default : _zz_28_string = "????????";
    endcase
  end
  always @(*) begin
    case(execute_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : execute_ALU_BITWISE_CTRL_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : execute_ALU_BITWISE_CTRL_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : execute_ALU_BITWISE_CTRL_string = "AND_1";
      default : execute_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_29)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_29_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_29_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_29_string = "AND_1";
      default : _zz_29_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_33)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_33_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_33_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_33_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_33_string = "JALR";
      default : _zz_33_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_34)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_34_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_34_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_34_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_34_string = "ECALL";
      default : _zz_34_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_35)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_35_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_35_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_35_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_35_string = "SRA_1    ";
      default : _zz_35_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_36)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_36_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_36_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_36_string = "AND_1";
      default : _zz_36_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_37)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_37_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_37_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_37_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_37_string = "PC ";
      default : _zz_37_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_38)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_38_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_38_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_38_string = "BITWISE ";
      default : _zz_38_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_39)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_39_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_39_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_39_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_39_string = "URS1        ";
      default : _zz_39_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_68)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_68_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_68_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_68_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_68_string = "URS1        ";
      default : _zz_68_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_69)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_69_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_69_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_69_string = "BITWISE ";
      default : _zz_69_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_70)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_70_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_70_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_70_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_70_string = "PC ";
      default : _zz_70_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_71)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_71_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_71_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_71_string = "AND_1";
      default : _zz_71_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_72)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_72_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_72_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_72_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_72_string = "SRA_1    ";
      default : _zz_72_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_73)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_73_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_73_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_73_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_73_string = "ECALL";
      default : _zz_73_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_74)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_74_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_74_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_74_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_74_string = "JALR";
      default : _zz_74_string = "????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_ALU_CTRL)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : decode_to_execute_ALU_CTRL_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : decode_to_execute_ALU_CTRL_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : decode_to_execute_ALU_CTRL_string = "BITWISE ";
      default : decode_to_execute_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : decode_to_execute_ALU_BITWISE_CTRL_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : decode_to_execute_ALU_BITWISE_CTRL_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : decode_to_execute_ALU_BITWISE_CTRL_string = "AND_1";
      default : decode_to_execute_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_SHIFT_CTRL)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : decode_to_execute_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : decode_to_execute_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : decode_to_execute_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : decode_to_execute_SHIFT_CTRL_string = "SRA_1    ";
      default : decode_to_execute_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : decode_to_execute_ENV_CTRL_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : decode_to_execute_ENV_CTRL_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : decode_to_execute_ENV_CTRL_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : decode_to_execute_ENV_CTRL_string = "ECALL";
      default : decode_to_execute_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute_to_memory_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : execute_to_memory_ENV_CTRL_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : execute_to_memory_ENV_CTRL_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : execute_to_memory_ENV_CTRL_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : execute_to_memory_ENV_CTRL_string = "ECALL";
      default : execute_to_memory_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_INC : decode_to_execute_BRANCH_CTRL_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : decode_to_execute_BRANCH_CTRL_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : decode_to_execute_BRANCH_CTRL_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : decode_to_execute_BRANCH_CTRL_string = "JALR";
      default : decode_to_execute_BRANCH_CTRL_string = "????";
    endcase
  end
  `endif

  assign execute_REGFILE_WRITE_DATA = _zz_77;
  assign execute_MEMORY_ADDRESS_LOW = dBus_cmd_payload_address[1 : 0];
  assign decode_CSR_READ_OPCODE = (decode_INSTRUCTION[13 : 7] != 7'h20);
  assign decode_CSR_WRITE_OPCODE = (! (((decode_INSTRUCTION[14 : 13] == 2'b01) && (decode_INSTRUCTION[19 : 15] == 5'h0)) || ((decode_INSTRUCTION[14 : 13] == 2'b11) && (decode_INSTRUCTION[19 : 15] == 5'h0))));
  assign decode_SRC2 = _zz_83;
  assign decode_SRC1 = _zz_78;
  assign decode_SRC2_FORCE_ZERO = (decode_SRC_ADD_ZERO && (! decode_SRC_USE_SUB_LESS));
  assign decode_BRANCH_CTRL = _zz_1;
  assign _zz_2 = _zz_3;
  assign _zz_4 = _zz_5;
  assign decode_ENV_CTRL = _zz_6;
  assign _zz_7 = _zz_8;
  assign decode_IS_CSR = _zz_172[0];
  assign decode_IS_DIV = _zz_173[0];
  assign decode_IS_RS2_SIGNED = _zz_174[0];
  assign decode_IS_RS1_SIGNED = _zz_175[0];
  assign decode_IS_MUL = _zz_176[0];
  assign decode_SHIFT_CTRL = _zz_9;
  assign _zz_10 = _zz_11;
  assign decode_ALU_BITWISE_CTRL = _zz_12;
  assign _zz_13 = _zz_14;
  assign decode_SRC_LESS_UNSIGNED = _zz_177[0];
  assign decode_MEMORY_STORE = _zz_178[0];
  assign decode_BYPASSABLE_EXECUTE_STAGE = _zz_179[0];
  assign decode_ALU_CTRL = _zz_15;
  assign _zz_16 = _zz_17;
  assign decode_MEMORY_ENABLE = _zz_180[0];
  assign memory_FORMAL_PC_NEXT = execute_to_memory_FORMAL_PC_NEXT;
  assign execute_FORMAL_PC_NEXT = decode_to_execute_FORMAL_PC_NEXT;
  assign decode_FORMAL_PC_NEXT = (decode_PC + 32'h00000004);
  assign execute_BRANCH_CALC = {execute_BranchPlugin_branchAdder[31 : 1],1'b0};
  assign execute_BRANCH_DO = _zz_109;
  assign execute_PC = decode_to_execute_PC;
  assign execute_BRANCH_CTRL = _zz_18;
  assign execute_CSR_READ_OPCODE = decode_to_execute_CSR_READ_OPCODE;
  assign execute_CSR_WRITE_OPCODE = decode_to_execute_CSR_WRITE_OPCODE;
  assign execute_IS_CSR = decode_to_execute_IS_CSR;
  assign execute_ENV_CTRL = _zz_19;
  assign memory_ENV_CTRL = _zz_20;
  assign execute_IS_RS1_SIGNED = decode_to_execute_IS_RS1_SIGNED;
  assign execute_RS1 = decode_to_execute_RS1;
  assign execute_IS_DIV = decode_to_execute_IS_DIV;
  assign execute_IS_MUL = decode_to_execute_IS_MUL;
  assign execute_IS_RS2_SIGNED = decode_to_execute_IS_RS2_SIGNED;
  assign memory_IS_DIV = execute_to_memory_IS_DIV;
  assign memory_IS_MUL = execute_to_memory_IS_MUL;
  assign decode_RS2_USE = _zz_181[0];
  assign decode_RS1_USE = _zz_182[0];
  assign execute_REGFILE_WRITE_VALID = decode_to_execute_REGFILE_WRITE_VALID;
  assign execute_BYPASSABLE_EXECUTE_STAGE = decode_to_execute_BYPASSABLE_EXECUTE_STAGE;
  assign memory_REGFILE_WRITE_VALID = execute_to_memory_REGFILE_WRITE_VALID;
  always @ (*) begin
    decode_RS2 = decode_RegFilePlugin_rs2Data;
    if(_zz_88)begin
      if((_zz_89 == decode_INSTRUCTION[24 : 20]))begin
        decode_RS2 = _zz_90;
      end
    end
    if(_zz_143)begin
      if(_zz_144)begin
        if(_zz_92)begin
          decode_RS2 = _zz_40;
        end
      end
    end
    if(_zz_145)begin
      if(execute_BYPASSABLE_EXECUTE_STAGE)begin
        if(_zz_94)begin
          decode_RS2 = _zz_21;
        end
      end
    end
  end

  always @ (*) begin
    decode_RS1 = decode_RegFilePlugin_rs1Data;
    if(_zz_88)begin
      if((_zz_89 == decode_INSTRUCTION[19 : 15]))begin
        decode_RS1 = _zz_90;
      end
    end
    if(_zz_143)begin
      if(_zz_144)begin
        if(_zz_91)begin
          decode_RS1 = _zz_40;
        end
      end
    end
    if(_zz_145)begin
      if(execute_BYPASSABLE_EXECUTE_STAGE)begin
        if(_zz_93)begin
          decode_RS1 = _zz_21;
        end
      end
    end
  end

  assign execute_SHIFT_RIGHT = _zz_184;
  always @ (*) begin
    _zz_21 = execute_REGFILE_WRITE_DATA;
    if(execute_arbitration_isValid)begin
      case(execute_SHIFT_CTRL)
        `ShiftCtrlEnum_defaultEncoding_SLL_1 : begin
          _zz_21 = _zz_85;
        end
        `ShiftCtrlEnum_defaultEncoding_SRL_1, `ShiftCtrlEnum_defaultEncoding_SRA_1 : begin
          _zz_21 = execute_SHIFT_RIGHT;
        end
        default : begin
        end
      endcase
    end
    if(_zz_146)begin
      _zz_21 = execute_CsrPlugin_readData;
    end
  end

  assign execute_SHIFT_CTRL = _zz_22;
  assign execute_SRC_LESS_UNSIGNED = decode_to_execute_SRC_LESS_UNSIGNED;
  assign execute_SRC2_FORCE_ZERO = decode_to_execute_SRC2_FORCE_ZERO;
  assign execute_SRC_USE_SUB_LESS = decode_to_execute_SRC_USE_SUB_LESS;
  assign _zz_23 = decode_PC;
  assign _zz_24 = decode_RS2;
  assign decode_SRC2_CTRL = _zz_25;
  assign _zz_26 = decode_RS1;
  assign decode_SRC1_CTRL = _zz_27;
  assign decode_SRC_USE_SUB_LESS = _zz_186[0];
  assign decode_SRC_ADD_ZERO = _zz_187[0];
  assign execute_SRC_ADD_SUB = execute_SrcPlugin_addSub;
  assign execute_SRC_LESS = execute_SrcPlugin_less;
  assign execute_ALU_CTRL = _zz_28;
  assign execute_SRC2 = decode_to_execute_SRC2;
  assign execute_SRC1 = decode_to_execute_SRC1;
  assign execute_ALU_BITWISE_CTRL = _zz_29;
  assign _zz_30 = memory_INSTRUCTION;
  assign _zz_31 = memory_REGFILE_WRITE_VALID;
  always @ (*) begin
    _zz_32 = 1'b0;
    if(lastStageRegFileWrite_valid)begin
      _zz_32 = 1'b1;
    end
  end

  assign decode_INSTRUCTION_ANTICIPATED = (decode_arbitration_isStuck ? decode_INSTRUCTION : IBusSimplePlugin_iBusRsp_output_payload_rsp_inst);
  always @ (*) begin
    decode_REGFILE_WRITE_VALID = _zz_188[0];
    if((decode_INSTRUCTION[11 : 7] == 5'h0))begin
      decode_REGFILE_WRITE_VALID = 1'b0;
    end
  end

  assign decode_LEGAL_INSTRUCTION = ({((decode_INSTRUCTION & 32'h0000005f) == 32'h00000017),{((decode_INSTRUCTION & 32'h0000007f) == 32'h0000006f),{((decode_INSTRUCTION & 32'h0000106f) == 32'h00000003),{((decode_INSTRUCTION & _zz_264) == 32'h00001073),{(_zz_265 == _zz_266),{_zz_267,{_zz_268,_zz_269}}}}}}} != 20'h0);
  always @ (*) begin
    _zz_40 = memory_REGFILE_WRITE_DATA;
    if((memory_arbitration_isValid && memory_MEMORY_ENABLE))begin
      _zz_40 = memory_DBusSimplePlugin_rspFormated;
    end
    if(_zz_147)begin
      _zz_40 = ((memory_INSTRUCTION[13 : 12] == 2'b00) ? memory_MulDivIterativePlugin_accumulator[31 : 0] : memory_MulDivIterativePlugin_accumulator[63 : 32]);
    end
    if(_zz_148)begin
      _zz_40 = memory_MulDivIterativePlugin_div_result;
    end
  end

  assign memory_MEMORY_ADDRESS_LOW = execute_to_memory_MEMORY_ADDRESS_LOW;
  assign memory_MEMORY_READ_DATA = dBus_rsp_data;
  assign memory_ALIGNEMENT_FAULT = execute_to_memory_ALIGNEMENT_FAULT;
  assign memory_REGFILE_WRITE_DATA = execute_to_memory_REGFILE_WRITE_DATA;
  assign memory_MEMORY_STORE = execute_to_memory_MEMORY_STORE;
  assign memory_MEMORY_ENABLE = execute_to_memory_MEMORY_ENABLE;
  assign execute_SRC_ADD = execute_SrcPlugin_addSub;
  assign execute_RS2 = decode_to_execute_RS2;
  assign execute_INSTRUCTION = decode_to_execute_INSTRUCTION;
  assign execute_MEMORY_STORE = decode_to_execute_MEMORY_STORE;
  assign execute_MEMORY_ENABLE = decode_to_execute_MEMORY_ENABLE;
  assign execute_ALIGNEMENT_FAULT = (((dBus_cmd_payload_size == 2'b10) && (dBus_cmd_payload_address[1 : 0] != 2'b00)) || ((dBus_cmd_payload_size == 2'b01) && (dBus_cmd_payload_address[0 : 0] != 1'b0)));
  always @ (*) begin
    _zz_41 = execute_FORMAL_PC_NEXT;
    if(BranchPlugin_jumpInterface_valid)begin
      _zz_41 = BranchPlugin_jumpInterface_payload;
    end
  end

  assign decode_PC = IBusSimplePlugin_injector_decodeInput_payload_pc;
  assign decode_INSTRUCTION = IBusSimplePlugin_injector_decodeInput_payload_rsp_inst;
  assign memory_PC = execute_to_memory_PC;
  assign memory_INSTRUCTION = execute_to_memory_INSTRUCTION;
  assign decode_arbitration_haltItself = 1'b0;
  always @ (*) begin
    decode_arbitration_haltByOther = 1'b0;
    if((decode_arbitration_isValid && (_zz_86 || _zz_87)))begin
      decode_arbitration_haltByOther = 1'b1;
    end
    if(CsrPlugin_pipelineLiberator_active)begin
      decode_arbitration_haltByOther = 1'b1;
    end
    if(({(memory_arbitration_isValid && (memory_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET)),(execute_arbitration_isValid && (execute_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET))} != 2'b00))begin
      decode_arbitration_haltByOther = 1'b1;
    end
  end

  always @ (*) begin
    decode_arbitration_removeIt = 1'b0;
    if(_zz_149)begin
      decode_arbitration_removeIt = 1'b1;
    end
    if(decode_arbitration_isFlushed)begin
      decode_arbitration_removeIt = 1'b1;
    end
  end

  assign decode_arbitration_flushIt = 1'b0;
  always @ (*) begin
    decode_arbitration_flushNext = 1'b0;
    if(_zz_149)begin
      decode_arbitration_flushNext = 1'b1;
    end
  end

  always @ (*) begin
    execute_arbitration_haltItself = 1'b0;
    if(((((execute_arbitration_isValid && execute_MEMORY_ENABLE) && (! dBus_cmd_ready)) && (! execute_DBusSimplePlugin_skipCmd)) && (! _zz_54)))begin
      execute_arbitration_haltItself = 1'b1;
    end
    if(_zz_150)begin
      if((! execute_CsrPlugin_wfiWake))begin
        execute_arbitration_haltItself = 1'b1;
      end
    end
    if(_zz_146)begin
      if(execute_CsrPlugin_blockedBySideEffects)begin
        execute_arbitration_haltItself = 1'b1;
      end
    end
  end

  assign execute_arbitration_haltByOther = 1'b0;
  always @ (*) begin
    execute_arbitration_removeIt = 1'b0;
    if(_zz_151)begin
      execute_arbitration_removeIt = 1'b1;
    end
    if(execute_arbitration_isFlushed)begin
      execute_arbitration_removeIt = 1'b1;
    end
  end

  assign execute_arbitration_flushIt = 1'b0;
  always @ (*) begin
    execute_arbitration_flushNext = 1'b0;
    if(_zz_151)begin
      execute_arbitration_flushNext = 1'b1;
    end
    if(BranchPlugin_jumpInterface_valid)begin
      execute_arbitration_flushNext = 1'b1;
    end
  end

  always @ (*) begin
    memory_arbitration_haltItself = 1'b0;
    if((((memory_arbitration_isValid && memory_MEMORY_ENABLE) && (! memory_MEMORY_STORE)) && ((! dBus_rsp_ready) || 1'b0)))begin
      memory_arbitration_haltItself = 1'b1;
    end
    if(_zz_147)begin
      if(((! memory_MulDivIterativePlugin_frontendOk) || (! memory_MulDivIterativePlugin_mul_counter_willOverflowIfInc)))begin
        memory_arbitration_haltItself = 1'b1;
      end
      if(_zz_152)begin
        memory_arbitration_haltItself = 1'b1;
      end
    end
    if(_zz_148)begin
      if(((! memory_MulDivIterativePlugin_frontendOk) || (! memory_MulDivIterativePlugin_div_done)))begin
        memory_arbitration_haltItself = 1'b1;
      end
    end
  end

  assign memory_arbitration_haltByOther = 1'b0;
  always @ (*) begin
    memory_arbitration_removeIt = 1'b0;
    if(DBusSimplePlugin_memoryExceptionPort_valid)begin
      memory_arbitration_removeIt = 1'b1;
    end
    if(memory_arbitration_isFlushed)begin
      memory_arbitration_removeIt = 1'b1;
    end
  end

  assign memory_arbitration_flushIt = 1'b0;
  always @ (*) begin
    memory_arbitration_flushNext = 1'b0;
    if(DBusSimplePlugin_memoryExceptionPort_valid)begin
      memory_arbitration_flushNext = 1'b1;
    end
    if(_zz_153)begin
      memory_arbitration_flushNext = 1'b1;
    end
    if(_zz_154)begin
      memory_arbitration_flushNext = 1'b1;
    end
  end

  assign lastStageInstruction = memory_INSTRUCTION;
  assign lastStagePc = memory_PC;
  assign lastStageIsValid = memory_arbitration_isValid;
  assign lastStageIsFiring = memory_arbitration_isFiring;
  always @ (*) begin
    IBusSimplePlugin_fetcherHalt = 1'b0;
    if(({CsrPlugin_exceptionPortCtrl_exceptionValids_memory,{CsrPlugin_exceptionPortCtrl_exceptionValids_execute,CsrPlugin_exceptionPortCtrl_exceptionValids_decode}} != 3'b000))begin
      IBusSimplePlugin_fetcherHalt = 1'b1;
    end
    if(_zz_153)begin
      IBusSimplePlugin_fetcherHalt = 1'b1;
    end
    if(_zz_154)begin
      IBusSimplePlugin_fetcherHalt = 1'b1;
    end
  end

  always @ (*) begin
    IBusSimplePlugin_incomingInstruction = 1'b0;
    if(IBusSimplePlugin_iBusRsp_stages_1_input_valid)begin
      IBusSimplePlugin_incomingInstruction = 1'b1;
    end
    if(IBusSimplePlugin_injector_decodeInput_valid)begin
      IBusSimplePlugin_incomingInstruction = 1'b1;
    end
  end

  always @ (*) begin
    CsrPlugin_inWfi = 1'b0;
    if(_zz_150)begin
      CsrPlugin_inWfi = 1'b1;
    end
  end

  assign CsrPlugin_thirdPartyWake = 1'b0;
  always @ (*) begin
    CsrPlugin_jumpInterface_valid = 1'b0;
    if(_zz_153)begin
      CsrPlugin_jumpInterface_valid = 1'b1;
    end
    if(_zz_154)begin
      CsrPlugin_jumpInterface_valid = 1'b1;
    end
  end

  always @ (*) begin
    CsrPlugin_jumpInterface_payload = 32'h0;
    if(_zz_153)begin
      CsrPlugin_jumpInterface_payload = {CsrPlugin_xtvec_base,2'b00};
    end
    if(_zz_154)begin
      case(_zz_155)
        2'b11 : begin
          CsrPlugin_jumpInterface_payload = CsrPlugin_mepc;
        end
        default : begin
        end
      endcase
    end
  end

  assign CsrPlugin_forceMachineWire = 1'b0;
  assign CsrPlugin_allowInterrupts = 1'b1;
  assign CsrPlugin_allowException = 1'b1;
  assign IBusSimplePlugin_externalFlush = ({memory_arbitration_flushNext,{execute_arbitration_flushNext,decode_arbitration_flushNext}} != 3'b000);
  assign IBusSimplePlugin_jump_pcLoad_valid = ({BranchPlugin_jumpInterface_valid,CsrPlugin_jumpInterface_valid} != 2'b00);
  assign _zz_42 = {BranchPlugin_jumpInterface_valid,CsrPlugin_jumpInterface_valid};
  assign IBusSimplePlugin_jump_pcLoad_payload = (_zz_189[0] ? CsrPlugin_jumpInterface_payload : BranchPlugin_jumpInterface_payload);
  always @ (*) begin
    IBusSimplePlugin_fetchPc_correction = 1'b0;
    if(IBusSimplePlugin_jump_pcLoad_valid)begin
      IBusSimplePlugin_fetchPc_correction = 1'b1;
    end
  end

  assign IBusSimplePlugin_fetchPc_corrected = (IBusSimplePlugin_fetchPc_correction || IBusSimplePlugin_fetchPc_correctionReg);
  always @ (*) begin
    IBusSimplePlugin_fetchPc_pcRegPropagate = 1'b0;
    if(IBusSimplePlugin_iBusRsp_stages_1_input_ready)begin
      IBusSimplePlugin_fetchPc_pcRegPropagate = 1'b1;
    end
  end

  always @ (*) begin
    IBusSimplePlugin_fetchPc_pc = (IBusSimplePlugin_fetchPc_pcReg + _zz_192);
    if(IBusSimplePlugin_jump_pcLoad_valid)begin
      IBusSimplePlugin_fetchPc_pc = IBusSimplePlugin_jump_pcLoad_payload;
    end
    IBusSimplePlugin_fetchPc_pc[0] = 1'b0;
    IBusSimplePlugin_fetchPc_pc[1] = 1'b0;
  end

  always @ (*) begin
    IBusSimplePlugin_fetchPc_flushed = 1'b0;
    if(IBusSimplePlugin_jump_pcLoad_valid)begin
      IBusSimplePlugin_fetchPc_flushed = 1'b1;
    end
  end

  assign IBusSimplePlugin_fetchPc_output_valid = ((! IBusSimplePlugin_fetcherHalt) && IBusSimplePlugin_fetchPc_booted);
  assign IBusSimplePlugin_fetchPc_output_payload = IBusSimplePlugin_fetchPc_pc;
  assign IBusSimplePlugin_iBusRsp_redoFetch = 1'b0;
  assign IBusSimplePlugin_iBusRsp_stages_0_input_valid = IBusSimplePlugin_fetchPc_output_valid;
  assign IBusSimplePlugin_fetchPc_output_ready = IBusSimplePlugin_iBusRsp_stages_0_input_ready;
  assign IBusSimplePlugin_iBusRsp_stages_0_input_payload = IBusSimplePlugin_fetchPc_output_payload;
  always @ (*) begin
    IBusSimplePlugin_iBusRsp_stages_0_halt = 1'b0;
    if((IBusSimplePlugin_iBusRsp_stages_0_input_valid && ((! IBusSimplePlugin_cmdFork_canEmit) || (! IBusSimplePlugin_cmd_ready))))begin
      IBusSimplePlugin_iBusRsp_stages_0_halt = 1'b1;
    end
  end

  assign _zz_43 = (! IBusSimplePlugin_iBusRsp_stages_0_halt);
  assign IBusSimplePlugin_iBusRsp_stages_0_input_ready = (IBusSimplePlugin_iBusRsp_stages_0_output_ready && _zz_43);
  assign IBusSimplePlugin_iBusRsp_stages_0_output_valid = (IBusSimplePlugin_iBusRsp_stages_0_input_valid && _zz_43);
  assign IBusSimplePlugin_iBusRsp_stages_0_output_payload = IBusSimplePlugin_iBusRsp_stages_0_input_payload;
  assign IBusSimplePlugin_iBusRsp_stages_1_halt = 1'b0;
  assign _zz_44 = (! IBusSimplePlugin_iBusRsp_stages_1_halt);
  assign IBusSimplePlugin_iBusRsp_stages_1_input_ready = (IBusSimplePlugin_iBusRsp_stages_1_output_ready && _zz_44);
  assign IBusSimplePlugin_iBusRsp_stages_1_output_valid = (IBusSimplePlugin_iBusRsp_stages_1_input_valid && _zz_44);
  assign IBusSimplePlugin_iBusRsp_stages_1_output_payload = IBusSimplePlugin_iBusRsp_stages_1_input_payload;
  assign IBusSimplePlugin_iBusRsp_flush = (IBusSimplePlugin_externalFlush || IBusSimplePlugin_iBusRsp_redoFetch);
  assign IBusSimplePlugin_iBusRsp_stages_0_output_ready = _zz_45;
  assign _zz_45 = ((1'b0 && (! _zz_46)) || IBusSimplePlugin_iBusRsp_stages_1_input_ready);
  assign _zz_46 = _zz_47;
  assign IBusSimplePlugin_iBusRsp_stages_1_input_valid = _zz_46;
  assign IBusSimplePlugin_iBusRsp_stages_1_input_payload = IBusSimplePlugin_fetchPc_pcReg;
  always @ (*) begin
    IBusSimplePlugin_iBusRsp_readyForError = 1'b1;
    if(IBusSimplePlugin_injector_decodeInput_valid)begin
      IBusSimplePlugin_iBusRsp_readyForError = 1'b0;
    end
    if((! IBusSimplePlugin_pcValids_0))begin
      IBusSimplePlugin_iBusRsp_readyForError = 1'b0;
    end
  end

  assign IBusSimplePlugin_iBusRsp_output_ready = ((1'b0 && (! IBusSimplePlugin_injector_decodeInput_valid)) || IBusSimplePlugin_injector_decodeInput_ready);
  assign IBusSimplePlugin_injector_decodeInput_valid = _zz_48;
  assign IBusSimplePlugin_injector_decodeInput_payload_pc = _zz_49;
  assign IBusSimplePlugin_injector_decodeInput_payload_rsp_error = _zz_50;
  assign IBusSimplePlugin_injector_decodeInput_payload_rsp_inst = _zz_51;
  assign IBusSimplePlugin_injector_decodeInput_payload_isRvc = _zz_52;
  assign IBusSimplePlugin_pcValids_0 = IBusSimplePlugin_injector_nextPcCalc_valids_1;
  assign IBusSimplePlugin_pcValids_1 = IBusSimplePlugin_injector_nextPcCalc_valids_2;
  assign IBusSimplePlugin_pcValids_2 = IBusSimplePlugin_injector_nextPcCalc_valids_3;
  assign IBusSimplePlugin_injector_decodeInput_ready = (! decode_arbitration_isStuck);
  assign decode_arbitration_isValid = IBusSimplePlugin_injector_decodeInput_valid;
  assign iBus_cmd_valid = IBusSimplePlugin_cmd_valid;
  assign IBusSimplePlugin_cmd_ready = iBus_cmd_ready;
  assign iBus_cmd_payload_pc = IBusSimplePlugin_cmd_payload_pc;
  assign IBusSimplePlugin_pending_next = (_zz_193 - _zz_197);
  assign IBusSimplePlugin_cmdFork_canEmit = (IBusSimplePlugin_iBusRsp_stages_0_output_ready && (IBusSimplePlugin_pending_value != 3'b111));
  assign IBusSimplePlugin_cmd_valid = (IBusSimplePlugin_iBusRsp_stages_0_input_valid && IBusSimplePlugin_cmdFork_canEmit);
  assign IBusSimplePlugin_pending_inc = (IBusSimplePlugin_cmd_valid && IBusSimplePlugin_cmd_ready);
  assign IBusSimplePlugin_cmd_payload_pc = {IBusSimplePlugin_iBusRsp_stages_0_input_payload[31 : 2],2'b00};
  assign IBusSimplePlugin_rspJoin_rspBuffer_flush = ((IBusSimplePlugin_rspJoin_rspBuffer_discardCounter != 3'b000) || IBusSimplePlugin_iBusRsp_flush);
  assign IBusSimplePlugin_rspJoin_rspBuffer_output_valid = (IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_valid && (IBusSimplePlugin_rspJoin_rspBuffer_discardCounter == 3'b000));
  assign IBusSimplePlugin_rspJoin_rspBuffer_output_payload_error = IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_payload_error;
  assign IBusSimplePlugin_rspJoin_rspBuffer_output_payload_inst = IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_payload_inst;
  assign _zz_135 = (IBusSimplePlugin_rspJoin_rspBuffer_output_ready || IBusSimplePlugin_rspJoin_rspBuffer_flush);
  assign IBusSimplePlugin_pending_dec = (IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_valid && _zz_135);
  assign IBusSimplePlugin_rspJoin_fetchRsp_pc = IBusSimplePlugin_iBusRsp_stages_1_output_payload;
  always @ (*) begin
    IBusSimplePlugin_rspJoin_fetchRsp_rsp_error = IBusSimplePlugin_rspJoin_rspBuffer_output_payload_error;
    if((! IBusSimplePlugin_rspJoin_rspBuffer_output_valid))begin
      IBusSimplePlugin_rspJoin_fetchRsp_rsp_error = 1'b0;
    end
  end

  assign IBusSimplePlugin_rspJoin_fetchRsp_rsp_inst = IBusSimplePlugin_rspJoin_rspBuffer_output_payload_inst;
  always @ (*) begin
    IBusSimplePlugin_rspJoin_exceptionDetected = 1'b0;
    if(_zz_156)begin
      IBusSimplePlugin_rspJoin_exceptionDetected = 1'b1;
    end
  end

  assign IBusSimplePlugin_rspJoin_join_valid = (IBusSimplePlugin_iBusRsp_stages_1_output_valid && IBusSimplePlugin_rspJoin_rspBuffer_output_valid);
  assign IBusSimplePlugin_rspJoin_join_payload_pc = IBusSimplePlugin_rspJoin_fetchRsp_pc;
  assign IBusSimplePlugin_rspJoin_join_payload_rsp_error = IBusSimplePlugin_rspJoin_fetchRsp_rsp_error;
  assign IBusSimplePlugin_rspJoin_join_payload_rsp_inst = IBusSimplePlugin_rspJoin_fetchRsp_rsp_inst;
  assign IBusSimplePlugin_rspJoin_join_payload_isRvc = IBusSimplePlugin_rspJoin_fetchRsp_isRvc;
  assign IBusSimplePlugin_iBusRsp_stages_1_output_ready = (IBusSimplePlugin_iBusRsp_stages_1_output_valid ? (IBusSimplePlugin_rspJoin_join_valid && IBusSimplePlugin_rspJoin_join_ready) : IBusSimplePlugin_rspJoin_join_ready);
  assign IBusSimplePlugin_rspJoin_rspBuffer_output_ready = (IBusSimplePlugin_rspJoin_join_valid && IBusSimplePlugin_rspJoin_join_ready);
  assign _zz_53 = (! IBusSimplePlugin_rspJoin_exceptionDetected);
  assign IBusSimplePlugin_rspJoin_join_ready = (IBusSimplePlugin_iBusRsp_output_ready && _zz_53);
  assign IBusSimplePlugin_iBusRsp_output_valid = (IBusSimplePlugin_rspJoin_join_valid && _zz_53);
  assign IBusSimplePlugin_iBusRsp_output_payload_pc = IBusSimplePlugin_rspJoin_join_payload_pc;
  assign IBusSimplePlugin_iBusRsp_output_payload_rsp_error = IBusSimplePlugin_rspJoin_join_payload_rsp_error;
  assign IBusSimplePlugin_iBusRsp_output_payload_rsp_inst = IBusSimplePlugin_rspJoin_join_payload_rsp_inst;
  assign IBusSimplePlugin_iBusRsp_output_payload_isRvc = IBusSimplePlugin_rspJoin_join_payload_isRvc;
  always @ (*) begin
    IBusSimplePlugin_decodeExceptionPort_payload_code = 4'bxxxx;
    if(_zz_156)begin
      IBusSimplePlugin_decodeExceptionPort_payload_code = 4'b0001;
    end
  end

  assign IBusSimplePlugin_decodeExceptionPort_payload_badAddr = {IBusSimplePlugin_rspJoin_join_payload_pc[31 : 2],2'b00};
  assign IBusSimplePlugin_decodeExceptionPort_valid = (IBusSimplePlugin_rspJoin_exceptionDetected && IBusSimplePlugin_iBusRsp_readyForError);
  assign _zz_54 = 1'b0;
  always @ (*) begin
    execute_DBusSimplePlugin_skipCmd = 1'b0;
    if(execute_ALIGNEMENT_FAULT)begin
      execute_DBusSimplePlugin_skipCmd = 1'b1;
    end
  end

  assign dBus_cmd_valid = (((((execute_arbitration_isValid && execute_MEMORY_ENABLE) && (! execute_arbitration_isStuckByOthers)) && (! execute_arbitration_isFlushed)) && (! execute_DBusSimplePlugin_skipCmd)) && (! _zz_54));
  assign dBus_cmd_payload_wr = execute_MEMORY_STORE;
  assign dBus_cmd_payload_size = execute_INSTRUCTION[13 : 12];
  always @ (*) begin
    case(dBus_cmd_payload_size)
      2'b00 : begin
        _zz_55 = {{{execute_RS2[7 : 0],execute_RS2[7 : 0]},execute_RS2[7 : 0]},execute_RS2[7 : 0]};
      end
      2'b01 : begin
        _zz_55 = {execute_RS2[15 : 0],execute_RS2[15 : 0]};
      end
      default : begin
        _zz_55 = execute_RS2[31 : 0];
      end
    endcase
  end

  assign dBus_cmd_payload_data = _zz_55;
  always @ (*) begin
    case(dBus_cmd_payload_size)
      2'b00 : begin
        _zz_56 = 4'b0001;
      end
      2'b01 : begin
        _zz_56 = 4'b0011;
      end
      default : begin
        _zz_56 = 4'b1111;
      end
    endcase
  end

  assign execute_DBusSimplePlugin_formalMask = (_zz_56 <<< dBus_cmd_payload_address[1 : 0]);
  assign dBus_cmd_payload_address = execute_SRC_ADD;
  always @ (*) begin
    DBusSimplePlugin_memoryExceptionPort_valid = 1'b0;
    if(_zz_157)begin
      DBusSimplePlugin_memoryExceptionPort_valid = 1'b1;
    end
    if(memory_ALIGNEMENT_FAULT)begin
      DBusSimplePlugin_memoryExceptionPort_valid = 1'b1;
    end
    if((! ((memory_arbitration_isValid && memory_MEMORY_ENABLE) && (1'b1 || (! memory_arbitration_isStuckByOthers)))))begin
      DBusSimplePlugin_memoryExceptionPort_valid = 1'b0;
    end
  end

  always @ (*) begin
    DBusSimplePlugin_memoryExceptionPort_payload_code = 4'bxxxx;
    if(_zz_157)begin
      DBusSimplePlugin_memoryExceptionPort_payload_code = 4'b0101;
    end
    if(memory_ALIGNEMENT_FAULT)begin
      DBusSimplePlugin_memoryExceptionPort_payload_code = {1'd0, _zz_202};
    end
  end

  assign DBusSimplePlugin_memoryExceptionPort_payload_badAddr = memory_REGFILE_WRITE_DATA;
  always @ (*) begin
    memory_DBusSimplePlugin_rspShifted = memory_MEMORY_READ_DATA;
    case(memory_MEMORY_ADDRESS_LOW)
      2'b01 : begin
        memory_DBusSimplePlugin_rspShifted[7 : 0] = memory_MEMORY_READ_DATA[15 : 8];
      end
      2'b10 : begin
        memory_DBusSimplePlugin_rspShifted[15 : 0] = memory_MEMORY_READ_DATA[31 : 16];
      end
      2'b11 : begin
        memory_DBusSimplePlugin_rspShifted[7 : 0] = memory_MEMORY_READ_DATA[31 : 24];
      end
      default : begin
      end
    endcase
  end

  assign _zz_57 = (memory_DBusSimplePlugin_rspShifted[7] && (! memory_INSTRUCTION[14]));
  always @ (*) begin
    _zz_58[31] = _zz_57;
    _zz_58[30] = _zz_57;
    _zz_58[29] = _zz_57;
    _zz_58[28] = _zz_57;
    _zz_58[27] = _zz_57;
    _zz_58[26] = _zz_57;
    _zz_58[25] = _zz_57;
    _zz_58[24] = _zz_57;
    _zz_58[23] = _zz_57;
    _zz_58[22] = _zz_57;
    _zz_58[21] = _zz_57;
    _zz_58[20] = _zz_57;
    _zz_58[19] = _zz_57;
    _zz_58[18] = _zz_57;
    _zz_58[17] = _zz_57;
    _zz_58[16] = _zz_57;
    _zz_58[15] = _zz_57;
    _zz_58[14] = _zz_57;
    _zz_58[13] = _zz_57;
    _zz_58[12] = _zz_57;
    _zz_58[11] = _zz_57;
    _zz_58[10] = _zz_57;
    _zz_58[9] = _zz_57;
    _zz_58[8] = _zz_57;
    _zz_58[7 : 0] = memory_DBusSimplePlugin_rspShifted[7 : 0];
  end

  assign _zz_59 = (memory_DBusSimplePlugin_rspShifted[15] && (! memory_INSTRUCTION[14]));
  always @ (*) begin
    _zz_60[31] = _zz_59;
    _zz_60[30] = _zz_59;
    _zz_60[29] = _zz_59;
    _zz_60[28] = _zz_59;
    _zz_60[27] = _zz_59;
    _zz_60[26] = _zz_59;
    _zz_60[25] = _zz_59;
    _zz_60[24] = _zz_59;
    _zz_60[23] = _zz_59;
    _zz_60[22] = _zz_59;
    _zz_60[21] = _zz_59;
    _zz_60[20] = _zz_59;
    _zz_60[19] = _zz_59;
    _zz_60[18] = _zz_59;
    _zz_60[17] = _zz_59;
    _zz_60[16] = _zz_59;
    _zz_60[15 : 0] = memory_DBusSimplePlugin_rspShifted[15 : 0];
  end

  always @ (*) begin
    case(_zz_170)
      2'b00 : begin
        memory_DBusSimplePlugin_rspFormated = _zz_58;
      end
      2'b01 : begin
        memory_DBusSimplePlugin_rspFormated = _zz_60;
      end
      default : begin
        memory_DBusSimplePlugin_rspFormated = memory_DBusSimplePlugin_rspShifted;
      end
    endcase
  end

  assign _zz_62 = ((decode_INSTRUCTION & 32'h00004050) == 32'h00004050);
  assign _zz_63 = ((decode_INSTRUCTION & 32'h00000004) == 32'h00000004);
  assign _zz_64 = ((decode_INSTRUCTION & 32'h00000048) == 32'h00000048);
  assign _zz_65 = ((decode_INSTRUCTION & 32'h00003000) == 32'h00002000);
  assign _zz_66 = ((decode_INSTRUCTION & 32'h00007000) == 32'h00001000);
  assign _zz_67 = ((decode_INSTRUCTION & 32'h00005000) == 32'h00004000);
  assign _zz_61 = {({_zz_64,(_zz_282 == _zz_283)} != 2'b00),{((_zz_284 == _zz_285) != 1'b0),{(_zz_286 != 1'b0),{(_zz_287 != _zz_288),{_zz_289,{_zz_290,_zz_291}}}}}};
  assign _zz_68 = _zz_61[1 : 0];
  assign _zz_39 = _zz_68;
  assign _zz_69 = _zz_61[6 : 5];
  assign _zz_38 = _zz_69;
  assign _zz_70 = _zz_61[8 : 7];
  assign _zz_37 = _zz_70;
  assign _zz_71 = _zz_61[17 : 16];
  assign _zz_36 = _zz_71;
  assign _zz_72 = _zz_61[20 : 19];
  assign _zz_35 = _zz_72;
  assign _zz_73 = _zz_61[27 : 26];
  assign _zz_34 = _zz_73;
  assign _zz_74 = _zz_61[29 : 28];
  assign _zz_33 = _zz_74;
  assign decodeExceptionPort_valid = (decode_arbitration_isValid && (! decode_LEGAL_INSTRUCTION));
  assign decodeExceptionPort_payload_code = 4'b0010;
  assign decodeExceptionPort_payload_badAddr = decode_INSTRUCTION;
  assign decode_RegFilePlugin_regFileReadAddress1 = decode_INSTRUCTION_ANTICIPATED[19 : 15];
  assign decode_RegFilePlugin_regFileReadAddress2 = decode_INSTRUCTION_ANTICIPATED[24 : 20];
  assign decode_RegFilePlugin_rs1Data = RegFilePlugin_regFile_rd_data;
  assign decode_RegFilePlugin_rs2Data = RegFilePlugin_regFile_1_rd_data;
  assign _zz_75 = lastStageRegFileWrite_payload_data;
  always @ (*) begin
    lastStageRegFileWrite_valid = (_zz_31 && memory_arbitration_isFiring);
    if(_zz_76)begin
      lastStageRegFileWrite_valid = 1'b1;
    end
  end

  assign lastStageRegFileWrite_payload_address = _zz_30[11 : 7];
  assign lastStageRegFileWrite_payload_data = _zz_40;
  always @ (*) begin
    case(execute_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 & execute_SRC2);
      end
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 | execute_SRC2);
      end
      default : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 ^ execute_SRC2);
      end
    endcase
  end

  always @ (*) begin
    case(execute_ALU_CTRL)
      `AluCtrlEnum_defaultEncoding_BITWISE : begin
        _zz_77 = execute_IntAluPlugin_bitwise;
      end
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : begin
        _zz_77 = {31'd0, _zz_203};
      end
      default : begin
        _zz_77 = execute_SRC_ADD_SUB;
      end
    endcase
  end

  always @ (*) begin
    case(decode_SRC1_CTRL)
      `Src1CtrlEnum_defaultEncoding_RS : begin
        _zz_78 = _zz_26;
      end
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : begin
        _zz_78 = {29'd0, _zz_204};
      end
      `Src1CtrlEnum_defaultEncoding_IMU : begin
        _zz_78 = {decode_INSTRUCTION[31 : 12],12'h0};
      end
      default : begin
        _zz_78 = {27'd0, _zz_205};
      end
    endcase
  end

  assign _zz_79 = _zz_206[11];
  always @ (*) begin
    _zz_80[19] = _zz_79;
    _zz_80[18] = _zz_79;
    _zz_80[17] = _zz_79;
    _zz_80[16] = _zz_79;
    _zz_80[15] = _zz_79;
    _zz_80[14] = _zz_79;
    _zz_80[13] = _zz_79;
    _zz_80[12] = _zz_79;
    _zz_80[11] = _zz_79;
    _zz_80[10] = _zz_79;
    _zz_80[9] = _zz_79;
    _zz_80[8] = _zz_79;
    _zz_80[7] = _zz_79;
    _zz_80[6] = _zz_79;
    _zz_80[5] = _zz_79;
    _zz_80[4] = _zz_79;
    _zz_80[3] = _zz_79;
    _zz_80[2] = _zz_79;
    _zz_80[1] = _zz_79;
    _zz_80[0] = _zz_79;
  end

  assign _zz_81 = _zz_207[11];
  always @ (*) begin
    _zz_82[19] = _zz_81;
    _zz_82[18] = _zz_81;
    _zz_82[17] = _zz_81;
    _zz_82[16] = _zz_81;
    _zz_82[15] = _zz_81;
    _zz_82[14] = _zz_81;
    _zz_82[13] = _zz_81;
    _zz_82[12] = _zz_81;
    _zz_82[11] = _zz_81;
    _zz_82[10] = _zz_81;
    _zz_82[9] = _zz_81;
    _zz_82[8] = _zz_81;
    _zz_82[7] = _zz_81;
    _zz_82[6] = _zz_81;
    _zz_82[5] = _zz_81;
    _zz_82[4] = _zz_81;
    _zz_82[3] = _zz_81;
    _zz_82[2] = _zz_81;
    _zz_82[1] = _zz_81;
    _zz_82[0] = _zz_81;
  end

  always @ (*) begin
    case(decode_SRC2_CTRL)
      `Src2CtrlEnum_defaultEncoding_RS : begin
        _zz_83 = _zz_24;
      end
      `Src2CtrlEnum_defaultEncoding_IMI : begin
        _zz_83 = {_zz_80,decode_INSTRUCTION[31 : 20]};
      end
      `Src2CtrlEnum_defaultEncoding_IMS : begin
        _zz_83 = {_zz_82,{decode_INSTRUCTION[31 : 25],decode_INSTRUCTION[11 : 7]}};
      end
      default : begin
        _zz_83 = _zz_23;
      end
    endcase
  end

  always @ (*) begin
    execute_SrcPlugin_addSub = _zz_208;
    if(execute_SRC2_FORCE_ZERO)begin
      execute_SrcPlugin_addSub = execute_SRC1;
    end
  end

  assign execute_SrcPlugin_less = ((execute_SRC1[31] == execute_SRC2[31]) ? execute_SrcPlugin_addSub[31] : (execute_SRC_LESS_UNSIGNED ? execute_SRC2[31] : execute_SRC1[31]));
  assign execute_FullBarrelShifterPlugin_amplitude = execute_SRC2[4 : 0];
  always @ (*) begin
    _zz_84[0] = execute_SRC1[31];
    _zz_84[1] = execute_SRC1[30];
    _zz_84[2] = execute_SRC1[29];
    _zz_84[3] = execute_SRC1[28];
    _zz_84[4] = execute_SRC1[27];
    _zz_84[5] = execute_SRC1[26];
    _zz_84[6] = execute_SRC1[25];
    _zz_84[7] = execute_SRC1[24];
    _zz_84[8] = execute_SRC1[23];
    _zz_84[9] = execute_SRC1[22];
    _zz_84[10] = execute_SRC1[21];
    _zz_84[11] = execute_SRC1[20];
    _zz_84[12] = execute_SRC1[19];
    _zz_84[13] = execute_SRC1[18];
    _zz_84[14] = execute_SRC1[17];
    _zz_84[15] = execute_SRC1[16];
    _zz_84[16] = execute_SRC1[15];
    _zz_84[17] = execute_SRC1[14];
    _zz_84[18] = execute_SRC1[13];
    _zz_84[19] = execute_SRC1[12];
    _zz_84[20] = execute_SRC1[11];
    _zz_84[21] = execute_SRC1[10];
    _zz_84[22] = execute_SRC1[9];
    _zz_84[23] = execute_SRC1[8];
    _zz_84[24] = execute_SRC1[7];
    _zz_84[25] = execute_SRC1[6];
    _zz_84[26] = execute_SRC1[5];
    _zz_84[27] = execute_SRC1[4];
    _zz_84[28] = execute_SRC1[3];
    _zz_84[29] = execute_SRC1[2];
    _zz_84[30] = execute_SRC1[1];
    _zz_84[31] = execute_SRC1[0];
  end

  assign execute_FullBarrelShifterPlugin_reversed = ((execute_SHIFT_CTRL == `ShiftCtrlEnum_defaultEncoding_SLL_1) ? _zz_84 : execute_SRC1);
  always @ (*) begin
    _zz_85[0] = execute_SHIFT_RIGHT[31];
    _zz_85[1] = execute_SHIFT_RIGHT[30];
    _zz_85[2] = execute_SHIFT_RIGHT[29];
    _zz_85[3] = execute_SHIFT_RIGHT[28];
    _zz_85[4] = execute_SHIFT_RIGHT[27];
    _zz_85[5] = execute_SHIFT_RIGHT[26];
    _zz_85[6] = execute_SHIFT_RIGHT[25];
    _zz_85[7] = execute_SHIFT_RIGHT[24];
    _zz_85[8] = execute_SHIFT_RIGHT[23];
    _zz_85[9] = execute_SHIFT_RIGHT[22];
    _zz_85[10] = execute_SHIFT_RIGHT[21];
    _zz_85[11] = execute_SHIFT_RIGHT[20];
    _zz_85[12] = execute_SHIFT_RIGHT[19];
    _zz_85[13] = execute_SHIFT_RIGHT[18];
    _zz_85[14] = execute_SHIFT_RIGHT[17];
    _zz_85[15] = execute_SHIFT_RIGHT[16];
    _zz_85[16] = execute_SHIFT_RIGHT[15];
    _zz_85[17] = execute_SHIFT_RIGHT[14];
    _zz_85[18] = execute_SHIFT_RIGHT[13];
    _zz_85[19] = execute_SHIFT_RIGHT[12];
    _zz_85[20] = execute_SHIFT_RIGHT[11];
    _zz_85[21] = execute_SHIFT_RIGHT[10];
    _zz_85[22] = execute_SHIFT_RIGHT[9];
    _zz_85[23] = execute_SHIFT_RIGHT[8];
    _zz_85[24] = execute_SHIFT_RIGHT[7];
    _zz_85[25] = execute_SHIFT_RIGHT[6];
    _zz_85[26] = execute_SHIFT_RIGHT[5];
    _zz_85[27] = execute_SHIFT_RIGHT[4];
    _zz_85[28] = execute_SHIFT_RIGHT[3];
    _zz_85[29] = execute_SHIFT_RIGHT[2];
    _zz_85[30] = execute_SHIFT_RIGHT[1];
    _zz_85[31] = execute_SHIFT_RIGHT[0];
  end

  always @ (*) begin
    _zz_86 = 1'b0;
    if(_zz_158)begin
      if(_zz_159)begin
        if(_zz_91)begin
          _zz_86 = 1'b1;
        end
      end
    end
    if(_zz_160)begin
      if(_zz_161)begin
        if(_zz_93)begin
          _zz_86 = 1'b1;
        end
      end
    end
    if((! decode_RS1_USE))begin
      _zz_86 = 1'b0;
    end
  end

  always @ (*) begin
    _zz_87 = 1'b0;
    if(_zz_158)begin
      if(_zz_159)begin
        if(_zz_92)begin
          _zz_87 = 1'b1;
        end
      end
    end
    if(_zz_160)begin
      if(_zz_161)begin
        if(_zz_94)begin
          _zz_87 = 1'b1;
        end
      end
    end
    if((! decode_RS2_USE))begin
      _zz_87 = 1'b0;
    end
  end

  assign _zz_91 = (memory_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign _zz_92 = (memory_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign _zz_93 = (execute_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign _zz_94 = (execute_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign memory_MulDivIterativePlugin_frontendOk = 1'b1;
  always @ (*) begin
    memory_MulDivIterativePlugin_mul_counter_willIncrement = 1'b0;
    if(_zz_147)begin
      if(_zz_152)begin
        memory_MulDivIterativePlugin_mul_counter_willIncrement = 1'b1;
      end
    end
  end

  always @ (*) begin
    memory_MulDivIterativePlugin_mul_counter_willClear = 1'b0;
    if((! memory_arbitration_isStuck))begin
      memory_MulDivIterativePlugin_mul_counter_willClear = 1'b1;
    end
  end

  assign memory_MulDivIterativePlugin_mul_counter_willOverflowIfInc = (memory_MulDivIterativePlugin_mul_counter_value == 4'b1000);
  assign memory_MulDivIterativePlugin_mul_counter_willOverflow = (memory_MulDivIterativePlugin_mul_counter_willOverflowIfInc && memory_MulDivIterativePlugin_mul_counter_willIncrement);
  always @ (*) begin
    if(memory_MulDivIterativePlugin_mul_counter_willOverflow)begin
      memory_MulDivIterativePlugin_mul_counter_valueNext = 4'b0000;
    end else begin
      memory_MulDivIterativePlugin_mul_counter_valueNext = (memory_MulDivIterativePlugin_mul_counter_value + _zz_216);
    end
    if(memory_MulDivIterativePlugin_mul_counter_willClear)begin
      memory_MulDivIterativePlugin_mul_counter_valueNext = 4'b0000;
    end
  end

  always @ (*) begin
    memory_MulDivIterativePlugin_div_counter_willIncrement = 1'b0;
    if(_zz_148)begin
      if(_zz_162)begin
        memory_MulDivIterativePlugin_div_counter_willIncrement = 1'b1;
      end
    end
  end

  always @ (*) begin
    memory_MulDivIterativePlugin_div_counter_willClear = 1'b0;
    if(_zz_163)begin
      memory_MulDivIterativePlugin_div_counter_willClear = 1'b1;
    end
  end

  assign memory_MulDivIterativePlugin_div_counter_willOverflowIfInc = (memory_MulDivIterativePlugin_div_counter_value == 6'h21);
  assign memory_MulDivIterativePlugin_div_counter_willOverflow = (memory_MulDivIterativePlugin_div_counter_willOverflowIfInc && memory_MulDivIterativePlugin_div_counter_willIncrement);
  always @ (*) begin
    if(memory_MulDivIterativePlugin_div_counter_willOverflow)begin
      memory_MulDivIterativePlugin_div_counter_valueNext = 6'h0;
    end else begin
      memory_MulDivIterativePlugin_div_counter_valueNext = (memory_MulDivIterativePlugin_div_counter_value + _zz_236);
    end
    if(memory_MulDivIterativePlugin_div_counter_willClear)begin
      memory_MulDivIterativePlugin_div_counter_valueNext = 6'h0;
    end
  end

  assign _zz_95 = memory_MulDivIterativePlugin_rs1[31 : 0];
  assign memory_MulDivIterativePlugin_div_stage_0_remainderShifted = {memory_MulDivIterativePlugin_accumulator[31 : 0],_zz_95[31]};
  assign memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator = (memory_MulDivIterativePlugin_div_stage_0_remainderShifted - _zz_237);
  assign memory_MulDivIterativePlugin_div_stage_0_outRemainder = ((! memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator[32]) ? _zz_238 : _zz_239);
  assign memory_MulDivIterativePlugin_div_stage_0_outNumerator = _zz_240[31:0];
  assign _zz_96 = (memory_INSTRUCTION[13] ? memory_MulDivIterativePlugin_accumulator[31 : 0] : memory_MulDivIterativePlugin_rs1[31 : 0]);
  assign _zz_97 = (execute_RS2[31] && execute_IS_RS2_SIGNED);
  assign _zz_98 = ((execute_IS_MUL && _zz_97) || ((execute_IS_DIV && execute_RS1[31]) && execute_IS_RS1_SIGNED));
  always @ (*) begin
    _zz_99[32] = (execute_IS_RS1_SIGNED && execute_RS1[31]);
    _zz_99[31 : 0] = execute_RS1;
  end

  always @ (*) begin
    CsrPlugin_privilege = 2'b11;
    if(CsrPlugin_forceMachineWire)begin
      CsrPlugin_privilege = 2'b11;
    end
  end

  assign _zz_100 = (CsrPlugin_mip_MTIP && CsrPlugin_mie_MTIE);
  assign _zz_101 = (CsrPlugin_mip_MSIP && CsrPlugin_mie_MSIE);
  assign _zz_102 = (CsrPlugin_mip_MEIP && CsrPlugin_mie_MEIE);
  assign CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b11;
  assign CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege = ((CsrPlugin_privilege < CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped) ? CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped : CsrPlugin_privilege);
  assign _zz_103 = {decodeExceptionPort_valid,IBusSimplePlugin_decodeExceptionPort_valid};
  assign _zz_104 = _zz_250[0];
  assign _zz_105 = {BranchPlugin_branchExceptionPort_valid,CsrPlugin_selfException_valid};
  assign _zz_106 = _zz_252[0];
  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_decode = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
    if(_zz_149)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_decode = 1'b1;
    end
    if(decode_arbitration_isFlushed)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_decode = 1'b0;
    end
  end

  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_execute = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
    if(_zz_151)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_execute = 1'b1;
    end
    if(execute_arbitration_isFlushed)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_execute = 1'b0;
    end
  end

  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_memory = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
    if(DBusSimplePlugin_memoryExceptionPort_valid)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_memory = 1'b1;
    end
    if(memory_arbitration_isFlushed)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_memory = 1'b0;
    end
  end

  assign CsrPlugin_exceptionPendings_0 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
  assign CsrPlugin_exceptionPendings_1 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
  assign CsrPlugin_exceptionPendings_2 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
  assign CsrPlugin_exception = (CsrPlugin_exceptionPortCtrl_exceptionValids_memory && CsrPlugin_allowException);
  assign CsrPlugin_pipelineLiberator_active = ((CsrPlugin_interrupt_valid && CsrPlugin_allowInterrupts) && decode_arbitration_isValid);
  always @ (*) begin
    CsrPlugin_pipelineLiberator_done = CsrPlugin_pipelineLiberator_pcValids_1;
    if(({CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory,CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute} != 2'b00))begin
      CsrPlugin_pipelineLiberator_done = 1'b0;
    end
    if(CsrPlugin_hadException)begin
      CsrPlugin_pipelineLiberator_done = 1'b0;
    end
  end

  assign CsrPlugin_interruptJump = ((CsrPlugin_interrupt_valid && CsrPlugin_pipelineLiberator_done) && CsrPlugin_allowInterrupts);
  always @ (*) begin
    CsrPlugin_targetPrivilege = CsrPlugin_interrupt_targetPrivilege;
    if(CsrPlugin_hadException)begin
      CsrPlugin_targetPrivilege = CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege;
    end
  end

  always @ (*) begin
    CsrPlugin_trapCause = CsrPlugin_interrupt_code;
    if(CsrPlugin_hadException)begin
      CsrPlugin_trapCause = CsrPlugin_exceptionPortCtrl_exceptionContext_code;
    end
  end

  always @ (*) begin
    CsrPlugin_xtvec_mode = 2'bxx;
    case(CsrPlugin_targetPrivilege)
      2'b11 : begin
        CsrPlugin_xtvec_mode = CsrPlugin_mtvec_mode;
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    CsrPlugin_xtvec_base = 30'h0;
    case(CsrPlugin_targetPrivilege)
      2'b11 : begin
        CsrPlugin_xtvec_base = CsrPlugin_mtvec_base;
      end
      default : begin
      end
    endcase
  end

  assign contextSwitching = CsrPlugin_jumpInterface_valid;
  assign execute_CsrPlugin_blockedBySideEffects = ((memory_arbitration_isValid != 1'b0) || 1'b0);
  always @ (*) begin
    execute_CsrPlugin_illegalAccess = 1'b1;
    if(execute_CsrPlugin_csr_3857)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_3858)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_3859)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_3860)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_769)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_768)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_836)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_772)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_773)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_833)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_832)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_834)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_835)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_2816)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_2944)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_2818)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_2946)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_3072)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_3200)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if((CsrPlugin_privilege < execute_CsrPlugin_csrAddress[9 : 8]))begin
      execute_CsrPlugin_illegalAccess = 1'b1;
    end
    if(((! execute_arbitration_isValid) || (! execute_IS_CSR)))begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
  end

  always @ (*) begin
    execute_CsrPlugin_illegalInstruction = 1'b0;
    if((execute_arbitration_isValid && (execute_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET)))begin
      if((CsrPlugin_privilege < execute_INSTRUCTION[29 : 28]))begin
        execute_CsrPlugin_illegalInstruction = 1'b1;
      end
    end
  end

  always @ (*) begin
    CsrPlugin_selfException_valid = 1'b0;
    if(_zz_164)begin
      CsrPlugin_selfException_valid = 1'b1;
    end
    if(_zz_165)begin
      CsrPlugin_selfException_valid = 1'b1;
    end
  end

  always @ (*) begin
    CsrPlugin_selfException_payload_code = 4'bxxxx;
    if(_zz_164)begin
      CsrPlugin_selfException_payload_code = 4'b0010;
    end
    if(_zz_165)begin
      case(CsrPlugin_privilege)
        2'b00 : begin
          CsrPlugin_selfException_payload_code = 4'b1000;
        end
        default : begin
          CsrPlugin_selfException_payload_code = 4'b1011;
        end
      endcase
    end
  end

  assign CsrPlugin_selfException_payload_badAddr = execute_INSTRUCTION;
  assign execute_CsrPlugin_writeInstruction = ((execute_arbitration_isValid && execute_IS_CSR) && execute_CSR_WRITE_OPCODE);
  assign execute_CsrPlugin_readInstruction = ((execute_arbitration_isValid && execute_IS_CSR) && execute_CSR_READ_OPCODE);
  assign execute_CsrPlugin_writeEnable = ((execute_CsrPlugin_writeInstruction && (! execute_CsrPlugin_blockedBySideEffects)) && (! execute_arbitration_isStuckByOthers));
  assign execute_CsrPlugin_readEnable = ((execute_CsrPlugin_readInstruction && (! execute_CsrPlugin_blockedBySideEffects)) && (! execute_arbitration_isStuckByOthers));
  assign execute_CsrPlugin_readToWriteData = execute_CsrPlugin_readData;
  always @ (*) begin
    case(_zz_171)
      1'b0 : begin
        execute_CsrPlugin_writeData = execute_SRC1;
      end
      default : begin
        execute_CsrPlugin_writeData = (execute_INSTRUCTION[12] ? (execute_CsrPlugin_readToWriteData & (~ execute_SRC1)) : (execute_CsrPlugin_readToWriteData | execute_SRC1));
      end
    endcase
  end

  assign execute_CsrPlugin_csrAddress = execute_INSTRUCTION[31 : 20];
  assign execute_BranchPlugin_eq = (execute_SRC1 == execute_SRC2);
  assign _zz_107 = execute_INSTRUCTION[14 : 12];
  always @ (*) begin
    if((_zz_107 == 3'b000)) begin
        _zz_108 = execute_BranchPlugin_eq;
    end else if((_zz_107 == 3'b001)) begin
        _zz_108 = (! execute_BranchPlugin_eq);
    end else if((((_zz_107 & 3'b101) == 3'b101))) begin
        _zz_108 = (! execute_SRC_LESS);
    end else begin
        _zz_108 = execute_SRC_LESS;
    end
  end

  always @ (*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_INC : begin
        _zz_109 = 1'b0;
      end
      `BranchCtrlEnum_defaultEncoding_JAL : begin
        _zz_109 = 1'b1;
      end
      `BranchCtrlEnum_defaultEncoding_JALR : begin
        _zz_109 = 1'b1;
      end
      default : begin
        _zz_109 = _zz_108;
      end
    endcase
  end

  assign execute_BranchPlugin_branch_src1 = ((execute_BRANCH_CTRL == `BranchCtrlEnum_defaultEncoding_JALR) ? execute_RS1 : execute_PC);
  assign _zz_110 = _zz_254[19];
  always @ (*) begin
    _zz_111[10] = _zz_110;
    _zz_111[9] = _zz_110;
    _zz_111[8] = _zz_110;
    _zz_111[7] = _zz_110;
    _zz_111[6] = _zz_110;
    _zz_111[5] = _zz_110;
    _zz_111[4] = _zz_110;
    _zz_111[3] = _zz_110;
    _zz_111[2] = _zz_110;
    _zz_111[1] = _zz_110;
    _zz_111[0] = _zz_110;
  end

  assign _zz_112 = _zz_255[11];
  always @ (*) begin
    _zz_113[19] = _zz_112;
    _zz_113[18] = _zz_112;
    _zz_113[17] = _zz_112;
    _zz_113[16] = _zz_112;
    _zz_113[15] = _zz_112;
    _zz_113[14] = _zz_112;
    _zz_113[13] = _zz_112;
    _zz_113[12] = _zz_112;
    _zz_113[11] = _zz_112;
    _zz_113[10] = _zz_112;
    _zz_113[9] = _zz_112;
    _zz_113[8] = _zz_112;
    _zz_113[7] = _zz_112;
    _zz_113[6] = _zz_112;
    _zz_113[5] = _zz_112;
    _zz_113[4] = _zz_112;
    _zz_113[3] = _zz_112;
    _zz_113[2] = _zz_112;
    _zz_113[1] = _zz_112;
    _zz_113[0] = _zz_112;
  end

  assign _zz_114 = _zz_256[11];
  always @ (*) begin
    _zz_115[18] = _zz_114;
    _zz_115[17] = _zz_114;
    _zz_115[16] = _zz_114;
    _zz_115[15] = _zz_114;
    _zz_115[14] = _zz_114;
    _zz_115[13] = _zz_114;
    _zz_115[12] = _zz_114;
    _zz_115[11] = _zz_114;
    _zz_115[10] = _zz_114;
    _zz_115[9] = _zz_114;
    _zz_115[8] = _zz_114;
    _zz_115[7] = _zz_114;
    _zz_115[6] = _zz_114;
    _zz_115[5] = _zz_114;
    _zz_115[4] = _zz_114;
    _zz_115[3] = _zz_114;
    _zz_115[2] = _zz_114;
    _zz_115[1] = _zz_114;
    _zz_115[0] = _zz_114;
  end

  always @ (*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_JAL : begin
        _zz_116 = {{_zz_111,{{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]}},1'b0};
      end
      `BranchCtrlEnum_defaultEncoding_JALR : begin
        _zz_116 = {_zz_113,execute_INSTRUCTION[31 : 20]};
      end
      default : begin
        _zz_116 = {{_zz_115,{{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]}},1'b0};
      end
    endcase
  end

  assign execute_BranchPlugin_branch_src2 = _zz_116;
  assign execute_BranchPlugin_branchAdder = (execute_BranchPlugin_branch_src1 + execute_BranchPlugin_branch_src2);
  assign BranchPlugin_jumpInterface_valid = ((execute_arbitration_isValid && execute_BRANCH_DO) && (! 1'b0));
  assign BranchPlugin_jumpInterface_payload = execute_BRANCH_CALC;
  always @ (*) begin
    BranchPlugin_branchExceptionPort_valid = ((execute_arbitration_isValid && execute_BRANCH_DO) && BranchPlugin_jumpInterface_payload[1]);
    if(1'b0)begin
      BranchPlugin_branchExceptionPort_valid = 1'b0;
    end
  end

  assign BranchPlugin_branchExceptionPort_payload_code = 4'b0000;
  assign BranchPlugin_branchExceptionPort_payload_badAddr = BranchPlugin_jumpInterface_payload;
  assign _zz_27 = _zz_39;
  assign _zz_17 = decode_ALU_CTRL;
  assign _zz_15 = _zz_38;
  assign _zz_28 = decode_to_execute_ALU_CTRL;
  assign _zz_25 = _zz_37;
  assign _zz_14 = decode_ALU_BITWISE_CTRL;
  assign _zz_12 = _zz_36;
  assign _zz_29 = decode_to_execute_ALU_BITWISE_CTRL;
  assign _zz_11 = decode_SHIFT_CTRL;
  assign _zz_9 = _zz_35;
  assign _zz_22 = decode_to_execute_SHIFT_CTRL;
  assign _zz_8 = decode_ENV_CTRL;
  assign _zz_5 = execute_ENV_CTRL;
  assign _zz_6 = _zz_34;
  assign _zz_19 = decode_to_execute_ENV_CTRL;
  assign _zz_20 = execute_to_memory_ENV_CTRL;
  assign _zz_3 = decode_BRANCH_CTRL;
  assign _zz_1 = _zz_33;
  assign _zz_18 = decode_to_execute_BRANCH_CTRL;
  assign decode_arbitration_isFlushed = (({memory_arbitration_flushNext,execute_arbitration_flushNext} != 2'b00) || ({memory_arbitration_flushIt,{execute_arbitration_flushIt,decode_arbitration_flushIt}} != 3'b000));
  assign execute_arbitration_isFlushed = ((memory_arbitration_flushNext != 1'b0) || ({memory_arbitration_flushIt,execute_arbitration_flushIt} != 2'b00));
  assign memory_arbitration_isFlushed = (1'b0 || (memory_arbitration_flushIt != 1'b0));
  assign decode_arbitration_isStuckByOthers = (decode_arbitration_haltByOther || ((1'b0 || execute_arbitration_isStuck) || memory_arbitration_isStuck));
  assign decode_arbitration_isStuck = (decode_arbitration_haltItself || decode_arbitration_isStuckByOthers);
  assign decode_arbitration_isMoving = ((! decode_arbitration_isStuck) && (! decode_arbitration_removeIt));
  assign decode_arbitration_isFiring = ((decode_arbitration_isValid && (! decode_arbitration_isStuck)) && (! decode_arbitration_removeIt));
  assign execute_arbitration_isStuckByOthers = (execute_arbitration_haltByOther || (1'b0 || memory_arbitration_isStuck));
  assign execute_arbitration_isStuck = (execute_arbitration_haltItself || execute_arbitration_isStuckByOthers);
  assign execute_arbitration_isMoving = ((! execute_arbitration_isStuck) && (! execute_arbitration_removeIt));
  assign execute_arbitration_isFiring = ((execute_arbitration_isValid && (! execute_arbitration_isStuck)) && (! execute_arbitration_removeIt));
  assign memory_arbitration_isStuckByOthers = (memory_arbitration_haltByOther || 1'b0);
  assign memory_arbitration_isStuck = (memory_arbitration_haltItself || memory_arbitration_isStuckByOthers);
  assign memory_arbitration_isMoving = ((! memory_arbitration_isStuck) && (! memory_arbitration_removeIt));
  assign memory_arbitration_isFiring = ((memory_arbitration_isValid && (! memory_arbitration_isStuck)) && (! memory_arbitration_removeIt));
  always @ (*) begin
    _zz_117 = 32'h0;
    if(execute_CsrPlugin_csr_3857)begin
      _zz_117[3 : 0] = 4'b1011;
    end
  end

  always @ (*) begin
    _zz_118 = 32'h0;
    if(execute_CsrPlugin_csr_3858)begin
      _zz_118[4 : 0] = 5'h16;
    end
  end

  always @ (*) begin
    _zz_119 = 32'h0;
    if(execute_CsrPlugin_csr_3859)begin
      _zz_119[5 : 0] = 6'h21;
    end
  end

  always @ (*) begin
    _zz_120 = 32'h0;
    if(execute_CsrPlugin_csr_769)begin
      _zz_120[31 : 30] = CsrPlugin_misa_base;
      _zz_120[25 : 0] = CsrPlugin_misa_extensions;
    end
  end

  always @ (*) begin
    _zz_121 = 32'h0;
    if(execute_CsrPlugin_csr_768)begin
      _zz_121[12 : 11] = CsrPlugin_mstatus_MPP;
      _zz_121[7 : 7] = CsrPlugin_mstatus_MPIE;
      _zz_121[3 : 3] = CsrPlugin_mstatus_MIE;
    end
  end

  always @ (*) begin
    _zz_122 = 32'h0;
    if(execute_CsrPlugin_csr_836)begin
      _zz_122[11 : 11] = CsrPlugin_mip_MEIP;
      _zz_122[7 : 7] = CsrPlugin_mip_MTIP;
      _zz_122[3 : 3] = CsrPlugin_mip_MSIP;
    end
  end

  always @ (*) begin
    _zz_123 = 32'h0;
    if(execute_CsrPlugin_csr_772)begin
      _zz_123[11 : 11] = CsrPlugin_mie_MEIE;
      _zz_123[7 : 7] = CsrPlugin_mie_MTIE;
      _zz_123[3 : 3] = CsrPlugin_mie_MSIE;
    end
  end

  always @ (*) begin
    _zz_124 = 32'h0;
    if(execute_CsrPlugin_csr_773)begin
      _zz_124[31 : 2] = CsrPlugin_mtvec_base;
      _zz_124[1 : 0] = CsrPlugin_mtvec_mode;
    end
  end

  always @ (*) begin
    _zz_125 = 32'h0;
    if(execute_CsrPlugin_csr_833)begin
      _zz_125[31 : 0] = CsrPlugin_mepc;
    end
  end

  always @ (*) begin
    _zz_126 = 32'h0;
    if(execute_CsrPlugin_csr_832)begin
      _zz_126[31 : 0] = CsrPlugin_mscratch;
    end
  end

  always @ (*) begin
    _zz_127 = 32'h0;
    if(execute_CsrPlugin_csr_834)begin
      _zz_127[31 : 31] = CsrPlugin_mcause_interrupt;
      _zz_127[3 : 0] = CsrPlugin_mcause_exceptionCode;
    end
  end

  always @ (*) begin
    _zz_128 = 32'h0;
    if(execute_CsrPlugin_csr_835)begin
      _zz_128[31 : 0] = CsrPlugin_mtval;
    end
  end

  always @ (*) begin
    _zz_129 = 32'h0;
    if(execute_CsrPlugin_csr_2816)begin
      _zz_129[31 : 0] = CsrPlugin_mcycle[31 : 0];
    end
  end

  always @ (*) begin
    _zz_130 = 32'h0;
    if(execute_CsrPlugin_csr_2944)begin
      _zz_130[31 : 0] = CsrPlugin_mcycle[63 : 32];
    end
  end

  always @ (*) begin
    _zz_131 = 32'h0;
    if(execute_CsrPlugin_csr_2818)begin
      _zz_131[31 : 0] = CsrPlugin_minstret[31 : 0];
    end
  end

  always @ (*) begin
    _zz_132 = 32'h0;
    if(execute_CsrPlugin_csr_2946)begin
      _zz_132[31 : 0] = CsrPlugin_minstret[63 : 32];
    end
  end

  always @ (*) begin
    _zz_133 = 32'h0;
    if(execute_CsrPlugin_csr_3072)begin
      _zz_133[31 : 0] = CsrPlugin_mcycle[31 : 0];
    end
  end

  always @ (*) begin
    _zz_134 = 32'h0;
    if(execute_CsrPlugin_csr_3200)begin
      _zz_134[31 : 0] = CsrPlugin_mcycle[63 : 32];
    end
  end

  assign execute_CsrPlugin_readData = (((((_zz_117 | _zz_118) | (_zz_119 | _zz_427)) | ((_zz_120 | _zz_121) | (_zz_122 | _zz_123))) | (((_zz_124 | _zz_125) | (_zz_126 | _zz_127)) | ((_zz_128 | _zz_129) | (_zz_130 | _zz_131)))) | ((_zz_132 | _zz_133) | _zz_134));
  assign _zz_137 = (_zz_32 && 1'b1);
  assign _zz_138 = 1'b1;
  assign _zz_139 = (1'b1 && 1'b1);
  assign _zz_140 = (_zz_32 && 1'b1);
  assign _zz_141 = 1'b1;
  assign _zz_142 = (1'b1 && 1'b1);
  assign _zz_136 = 1'b0;
  always @ (posedge clk or negedge resetn) begin
    if (!resetn) begin
      IBusSimplePlugin_fetchPc_pcReg <= 32'h80000000;
      IBusSimplePlugin_fetchPc_correctionReg <= 1'b0;
      IBusSimplePlugin_fetchPc_booted <= 1'b0;
      IBusSimplePlugin_fetchPc_inc <= 1'b0;
      _zz_47 <= 1'b0;
      _zz_48 <= 1'b0;
      IBusSimplePlugin_injector_nextPcCalc_valids_0 <= 1'b0;
      IBusSimplePlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      IBusSimplePlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      IBusSimplePlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      IBusSimplePlugin_pending_value <= 3'b000;
      IBusSimplePlugin_rspJoin_rspBuffer_discardCounter <= 3'b000;
      _zz_76 <= 1'b1;
      _zz_88 <= 1'b0;
      memory_MulDivIterativePlugin_mul_counter_value <= 4'b0000;
      memory_MulDivIterativePlugin_div_counter_value <= 6'h0;
      CsrPlugin_misa_base <= 2'b01;
      CsrPlugin_misa_extensions <= 26'h0000042;
      CsrPlugin_mstatus_MIE <= 1'b0;
      CsrPlugin_mstatus_MPIE <= 1'b0;
      CsrPlugin_mstatus_MPP <= 2'b11;
      CsrPlugin_mie_MEIE <= 1'b0;
      CsrPlugin_mie_MTIE <= 1'b0;
      CsrPlugin_mie_MSIE <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= 1'b0;
      CsrPlugin_interrupt_valid <= 1'b0;
      CsrPlugin_lastStageWasWfi <= 1'b0;
      CsrPlugin_pipelineLiberator_pcValids_0 <= 1'b0;
      CsrPlugin_pipelineLiberator_pcValids_1 <= 1'b0;
      CsrPlugin_hadException <= 1'b0;
      execute_CsrPlugin_wfiWake <= 1'b0;
      execute_arbitration_isValid <= 1'b0;
      memory_arbitration_isValid <= 1'b0;
      execute_to_memory_REGFILE_WRITE_DATA <= 32'h0;
      execute_to_memory_INSTRUCTION <= 32'h0;
    end else begin
      if(IBusSimplePlugin_fetchPc_correction)begin
        IBusSimplePlugin_fetchPc_correctionReg <= 1'b1;
      end
      if((IBusSimplePlugin_fetchPc_output_valid && IBusSimplePlugin_fetchPc_output_ready))begin
        IBusSimplePlugin_fetchPc_correctionReg <= 1'b0;
      end
      IBusSimplePlugin_fetchPc_booted <= 1'b1;
      if((IBusSimplePlugin_fetchPc_correction || IBusSimplePlugin_fetchPc_pcRegPropagate))begin
        IBusSimplePlugin_fetchPc_inc <= 1'b0;
      end
      if((IBusSimplePlugin_fetchPc_output_valid && IBusSimplePlugin_fetchPc_output_ready))begin
        IBusSimplePlugin_fetchPc_inc <= 1'b1;
      end
      if(((! IBusSimplePlugin_fetchPc_output_valid) && IBusSimplePlugin_fetchPc_output_ready))begin
        IBusSimplePlugin_fetchPc_inc <= 1'b0;
      end
      if((IBusSimplePlugin_fetchPc_booted && ((IBusSimplePlugin_fetchPc_output_ready || IBusSimplePlugin_fetchPc_correction) || IBusSimplePlugin_fetchPc_pcRegPropagate)))begin
        IBusSimplePlugin_fetchPc_pcReg <= IBusSimplePlugin_fetchPc_pc;
      end
      if(IBusSimplePlugin_iBusRsp_flush)begin
        _zz_47 <= 1'b0;
      end
      if(_zz_45)begin
        _zz_47 <= (IBusSimplePlugin_iBusRsp_stages_0_output_valid && (! 1'b0));
      end
      if(decode_arbitration_removeIt)begin
        _zz_48 <= 1'b0;
      end
      if(IBusSimplePlugin_iBusRsp_output_ready)begin
        _zz_48 <= (IBusSimplePlugin_iBusRsp_output_valid && (! IBusSimplePlugin_externalFlush));
      end
      if(IBusSimplePlugin_fetchPc_flushed)begin
        IBusSimplePlugin_injector_nextPcCalc_valids_0 <= 1'b0;
      end
      if((! (! IBusSimplePlugin_iBusRsp_stages_1_input_ready)))begin
        IBusSimplePlugin_injector_nextPcCalc_valids_0 <= 1'b1;
      end
      if(IBusSimplePlugin_fetchPc_flushed)begin
        IBusSimplePlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      end
      if((! (! IBusSimplePlugin_injector_decodeInput_ready)))begin
        IBusSimplePlugin_injector_nextPcCalc_valids_1 <= IBusSimplePlugin_injector_nextPcCalc_valids_0;
      end
      if(IBusSimplePlugin_fetchPc_flushed)begin
        IBusSimplePlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      end
      if(IBusSimplePlugin_fetchPc_flushed)begin
        IBusSimplePlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      end
      if((! execute_arbitration_isStuck))begin
        IBusSimplePlugin_injector_nextPcCalc_valids_2 <= IBusSimplePlugin_injector_nextPcCalc_valids_1;
      end
      if(IBusSimplePlugin_fetchPc_flushed)begin
        IBusSimplePlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      end
      if(IBusSimplePlugin_fetchPc_flushed)begin
        IBusSimplePlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      end
      if((! memory_arbitration_isStuck))begin
        IBusSimplePlugin_injector_nextPcCalc_valids_3 <= IBusSimplePlugin_injector_nextPcCalc_valids_2;
      end
      if(IBusSimplePlugin_fetchPc_flushed)begin
        IBusSimplePlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      end
      IBusSimplePlugin_pending_value <= IBusSimplePlugin_pending_next;
      IBusSimplePlugin_rspJoin_rspBuffer_discardCounter <= (IBusSimplePlugin_rspJoin_rspBuffer_discardCounter - _zz_199);
      if(IBusSimplePlugin_iBusRsp_flush)begin
        IBusSimplePlugin_rspJoin_rspBuffer_discardCounter <= (IBusSimplePlugin_pending_value - _zz_201);
      end
      _zz_76 <= 1'b0;
      _zz_88 <= (_zz_31 && memory_arbitration_isFiring);
      memory_MulDivIterativePlugin_mul_counter_value <= memory_MulDivIterativePlugin_mul_counter_valueNext;
      memory_MulDivIterativePlugin_div_counter_value <= memory_MulDivIterativePlugin_div_counter_valueNext;
      if((! decode_arbitration_isStuck))begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= 1'b0;
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= CsrPlugin_exceptionPortCtrl_exceptionValids_decode;
      end
      if((! execute_arbitration_isStuck))begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= (CsrPlugin_exceptionPortCtrl_exceptionValids_decode && (! decode_arbitration_isStuck));
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= CsrPlugin_exceptionPortCtrl_exceptionValids_execute;
      end
      if((! memory_arbitration_isStuck))begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= (CsrPlugin_exceptionPortCtrl_exceptionValids_execute && (! execute_arbitration_isStuck));
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= 1'b0;
      end
      CsrPlugin_interrupt_valid <= 1'b0;
      if(_zz_166)begin
        if(_zz_167)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_168)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_169)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
      end
      CsrPlugin_lastStageWasWfi <= (memory_arbitration_isFiring && (memory_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_WFI));
      if(CsrPlugin_pipelineLiberator_active)begin
        if((! execute_arbitration_isStuck))begin
          CsrPlugin_pipelineLiberator_pcValids_0 <= 1'b1;
        end
        if((! memory_arbitration_isStuck))begin
          CsrPlugin_pipelineLiberator_pcValids_1 <= CsrPlugin_pipelineLiberator_pcValids_0;
        end
      end
      if(((! CsrPlugin_pipelineLiberator_active) || decode_arbitration_removeIt))begin
        CsrPlugin_pipelineLiberator_pcValids_0 <= 1'b0;
        CsrPlugin_pipelineLiberator_pcValids_1 <= 1'b0;
      end
      if(CsrPlugin_interruptJump)begin
        CsrPlugin_interrupt_valid <= 1'b0;
      end
      CsrPlugin_hadException <= CsrPlugin_exception;
      if(_zz_153)begin
        case(CsrPlugin_targetPrivilege)
          2'b11 : begin
            CsrPlugin_mstatus_MIE <= 1'b0;
            CsrPlugin_mstatus_MPIE <= CsrPlugin_mstatus_MIE;
            CsrPlugin_mstatus_MPP <= CsrPlugin_privilege;
          end
          default : begin
          end
        endcase
      end
      if(_zz_154)begin
        case(_zz_155)
          2'b11 : begin
            CsrPlugin_mstatus_MPP <= 2'b00;
            CsrPlugin_mstatus_MIE <= CsrPlugin_mstatus_MPIE;
            CsrPlugin_mstatus_MPIE <= 1'b1;
          end
          default : begin
          end
        endcase
      end
      execute_CsrPlugin_wfiWake <= (({_zz_102,{_zz_101,_zz_100}} != 3'b000) || CsrPlugin_thirdPartyWake);
      if((! memory_arbitration_isStuck))begin
        execute_to_memory_INSTRUCTION <= execute_INSTRUCTION;
      end
      if((! memory_arbitration_isStuck))begin
        execute_to_memory_REGFILE_WRITE_DATA <= _zz_21;
      end
      if(((! execute_arbitration_isStuck) || execute_arbitration_removeIt))begin
        execute_arbitration_isValid <= 1'b0;
      end
      if(((! decode_arbitration_isStuck) && (! decode_arbitration_removeIt)))begin
        execute_arbitration_isValid <= decode_arbitration_isValid;
      end
      if(((! memory_arbitration_isStuck) || memory_arbitration_removeIt))begin
        memory_arbitration_isValid <= 1'b0;
      end
      if(((! execute_arbitration_isStuck) && (! execute_arbitration_removeIt)))begin
        memory_arbitration_isValid <= execute_arbitration_isValid;
      end
      if(execute_CsrPlugin_csr_769)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_misa_base <= execute_CsrPlugin_writeData[31 : 30];
          CsrPlugin_misa_extensions <= execute_CsrPlugin_writeData[25 : 0];
        end
      end
      if(execute_CsrPlugin_csr_768)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_mstatus_MPP <= execute_CsrPlugin_writeData[12 : 11];
          CsrPlugin_mstatus_MPIE <= _zz_257[0];
          CsrPlugin_mstatus_MIE <= _zz_258[0];
        end
      end
      if(execute_CsrPlugin_csr_772)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_mie_MEIE <= _zz_260[0];
          CsrPlugin_mie_MTIE <= _zz_261[0];
          CsrPlugin_mie_MSIE <= _zz_262[0];
        end
      end
    end
  end

  always @ (posedge clk) begin
    if(IBusSimplePlugin_iBusRsp_output_ready)begin
      _zz_49 <= IBusSimplePlugin_iBusRsp_output_payload_pc;
      _zz_50 <= IBusSimplePlugin_iBusRsp_output_payload_rsp_error;
      _zz_51 <= IBusSimplePlugin_iBusRsp_output_payload_rsp_inst;
      _zz_52 <= IBusSimplePlugin_iBusRsp_output_payload_isRvc;
    end
    if(IBusSimplePlugin_injector_decodeInput_ready)begin
      IBusSimplePlugin_injector_formal_rawInDecode <= IBusSimplePlugin_iBusRsp_output_payload_rsp_inst;
    end
    `ifndef SYNTHESIS
      `ifdef FORMAL
        assert((! (((dBus_rsp_ready && memory_MEMORY_ENABLE) && memory_arbitration_isValid) && memory_arbitration_isStuck)))
      `else
        if(!(! (((dBus_rsp_ready && memory_MEMORY_ENABLE) && memory_arbitration_isValid) && memory_arbitration_isStuck))) begin
          $display("FAILURE DBusSimplePlugin doesn't allow memory stage stall when read happend");
          $finish;
        end
      `endif
    `endif
    _zz_89 <= _zz_30[11 : 7];
    _zz_90 <= _zz_40;
    if(_zz_147)begin
      if(_zz_152)begin
        memory_MulDivIterativePlugin_rs2 <= (memory_MulDivIterativePlugin_rs2 >>> 4);
        memory_MulDivIterativePlugin_accumulator <= ({_zz_217,memory_MulDivIterativePlugin_accumulator[31 : 0]} >>> 4);
      end
    end
    if((memory_MulDivIterativePlugin_div_counter_value == 6'h20))begin
      memory_MulDivIterativePlugin_div_done <= 1'b1;
    end
    if((! memory_arbitration_isStuck))begin
      memory_MulDivIterativePlugin_div_done <= 1'b0;
    end
    if(_zz_148)begin
      if(_zz_162)begin
        memory_MulDivIterativePlugin_rs1[31 : 0] <= memory_MulDivIterativePlugin_div_stage_0_outNumerator;
        memory_MulDivIterativePlugin_accumulator[31 : 0] <= memory_MulDivIterativePlugin_div_stage_0_outRemainder;
        if((memory_MulDivIterativePlugin_div_counter_value == 6'h20))begin
          memory_MulDivIterativePlugin_div_result <= _zz_241[31:0];
        end
      end
    end
    if(_zz_163)begin
      memory_MulDivIterativePlugin_accumulator <= 65'h0;
      memory_MulDivIterativePlugin_rs1 <= ((_zz_98 ? (~ _zz_99) : _zz_99) + _zz_247);
      memory_MulDivIterativePlugin_rs2 <= ((_zz_97 ? (~ execute_RS2) : execute_RS2) + _zz_249);
      memory_MulDivIterativePlugin_div_needRevert <= ((_zz_98 ^ (_zz_97 && (! execute_INSTRUCTION[13]))) && (! (((execute_RS2 == 32'h0) && execute_IS_RS2_SIGNED) && (! execute_INSTRUCTION[13]))));
    end
    CsrPlugin_mip_MEIP <= externalInterrupt;
    CsrPlugin_mip_MTIP <= timerInterrupt;
    CsrPlugin_mip_MSIP <= softwareInterrupt;
    CsrPlugin_mcycle <= (CsrPlugin_mcycle + 64'h0000000000000001);
    if(memory_arbitration_isFiring)begin
      CsrPlugin_minstret <= (CsrPlugin_minstret + 64'h0000000000000001);
    end
    if(_zz_149)begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= (_zz_104 ? IBusSimplePlugin_decodeExceptionPort_payload_code : decodeExceptionPort_payload_code);
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= (_zz_104 ? IBusSimplePlugin_decodeExceptionPort_payload_badAddr : decodeExceptionPort_payload_badAddr);
    end
    if(_zz_151)begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= (_zz_106 ? CsrPlugin_selfException_payload_code : BranchPlugin_branchExceptionPort_payload_code);
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= (_zz_106 ? CsrPlugin_selfException_payload_badAddr : BranchPlugin_branchExceptionPort_payload_badAddr);
    end
    if(DBusSimplePlugin_memoryExceptionPort_valid)begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= DBusSimplePlugin_memoryExceptionPort_payload_code;
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= DBusSimplePlugin_memoryExceptionPort_payload_badAddr;
    end
    if(_zz_166)begin
      if(_zz_167)begin
        CsrPlugin_interrupt_code <= 4'b0111;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
      if(_zz_168)begin
        CsrPlugin_interrupt_code <= 4'b0011;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
      if(_zz_169)begin
        CsrPlugin_interrupt_code <= 4'b1011;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
    end
    if(_zz_153)begin
      case(CsrPlugin_targetPrivilege)
        2'b11 : begin
          CsrPlugin_mcause_interrupt <= (! CsrPlugin_hadException);
          CsrPlugin_mcause_exceptionCode <= CsrPlugin_trapCause;
          CsrPlugin_mepc <= memory_PC;
          if(CsrPlugin_hadException)begin
            CsrPlugin_mtval <= CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr;
          end
        end
        default : begin
        end
      endcase
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_PC <= _zz_23;
    end
    if(((! memory_arbitration_isStuck) && (! CsrPlugin_exceptionPortCtrl_exceptionValids_memory)))begin
      execute_to_memory_PC <= execute_PC;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_INSTRUCTION <= decode_INSTRUCTION;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_FORMAL_PC_NEXT <= decode_FORMAL_PC_NEXT;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_FORMAL_PC_NEXT <= _zz_41;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC_USE_SUB_LESS <= decode_SRC_USE_SUB_LESS;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_MEMORY_ENABLE <= decode_MEMORY_ENABLE;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MEMORY_ENABLE <= execute_MEMORY_ENABLE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_ALU_CTRL <= _zz_16;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_REGFILE_WRITE_VALID <= decode_REGFILE_WRITE_VALID;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_REGFILE_WRITE_VALID <= execute_REGFILE_WRITE_VALID;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_BYPASSABLE_EXECUTE_STAGE <= decode_BYPASSABLE_EXECUTE_STAGE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_MEMORY_STORE <= decode_MEMORY_STORE;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MEMORY_STORE <= execute_MEMORY_STORE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC_LESS_UNSIGNED <= decode_SRC_LESS_UNSIGNED;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_ALU_BITWISE_CTRL <= _zz_13;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SHIFT_CTRL <= _zz_10;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_MUL <= decode_IS_MUL;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_IS_MUL <= execute_IS_MUL;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_RS1_SIGNED <= decode_IS_RS1_SIGNED;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_RS2_SIGNED <= decode_IS_RS2_SIGNED;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_DIV <= decode_IS_DIV;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_IS_DIV <= execute_IS_DIV;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_CSR <= decode_IS_CSR;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_ENV_CTRL <= _zz_7;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_ENV_CTRL <= _zz_4;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_BRANCH_CTRL <= _zz_2;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_RS1 <= _zz_26;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_RS2 <= _zz_24;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC2_FORCE_ZERO <= decode_SRC2_FORCE_ZERO;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC1 <= decode_SRC1;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC2 <= decode_SRC2;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_CSR_WRITE_OPCODE <= decode_CSR_WRITE_OPCODE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_CSR_READ_OPCODE <= decode_CSR_READ_OPCODE;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_ALIGNEMENT_FAULT <= execute_ALIGNEMENT_FAULT;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MEMORY_ADDRESS_LOW <= execute_MEMORY_ADDRESS_LOW;
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_3857 <= (decode_INSTRUCTION[31 : 20] == 12'hf11);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_3858 <= (decode_INSTRUCTION[31 : 20] == 12'hf12);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_3859 <= (decode_INSTRUCTION[31 : 20] == 12'hf13);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_3860 <= (decode_INSTRUCTION[31 : 20] == 12'hf14);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_769 <= (decode_INSTRUCTION[31 : 20] == 12'h301);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_768 <= (decode_INSTRUCTION[31 : 20] == 12'h300);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_836 <= (decode_INSTRUCTION[31 : 20] == 12'h344);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_772 <= (decode_INSTRUCTION[31 : 20] == 12'h304);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_773 <= (decode_INSTRUCTION[31 : 20] == 12'h305);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_833 <= (decode_INSTRUCTION[31 : 20] == 12'h341);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_832 <= (decode_INSTRUCTION[31 : 20] == 12'h340);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_834 <= (decode_INSTRUCTION[31 : 20] == 12'h342);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_835 <= (decode_INSTRUCTION[31 : 20] == 12'h343);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_2816 <= (decode_INSTRUCTION[31 : 20] == 12'hb00);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_2944 <= (decode_INSTRUCTION[31 : 20] == 12'hb80);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_2818 <= (decode_INSTRUCTION[31 : 20] == 12'hb02);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_2946 <= (decode_INSTRUCTION[31 : 20] == 12'hb82);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_3072 <= (decode_INSTRUCTION[31 : 20] == 12'hc00);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_3200 <= (decode_INSTRUCTION[31 : 20] == 12'hc80);
    end
    if(execute_CsrPlugin_csr_836)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_mip_MSIP <= _zz_259[0];
      end
    end
    if(execute_CsrPlugin_csr_773)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_mtvec_base <= execute_CsrPlugin_writeData[31 : 2];
        CsrPlugin_mtvec_mode <= execute_CsrPlugin_writeData[1 : 0];
      end
    end
    if(execute_CsrPlugin_csr_833)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_mepc <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_832)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_mscratch <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_834)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_mcause_interrupt <= _zz_263[0];
        CsrPlugin_mcause_exceptionCode <= execute_CsrPlugin_writeData[3 : 0];
      end
    end
    if(execute_CsrPlugin_csr_835)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_mtval <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_2816)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_mcycle[31 : 0] <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_2944)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_mcycle[63 : 32] <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_2818)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_minstret[31 : 0] <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_2946)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_minstret[63 : 32] <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
  end


endmodule

module StreamFifoLowLatency (
  input               io_push_valid,
  output              io_push_ready,
  input               io_push_payload_error,
  input      [31:0]   io_push_payload_inst,
  output reg          io_pop_valid,
  input               io_pop_ready,
  output reg          io_pop_payload_error,
  output reg [31:0]   io_pop_payload_inst,
  input               io_flush,
  output     [0:0]    io_occupancy,
  input               clk,
  input               resetn
);
  wire                _zz_4;
  wire       [0:0]    _zz_5;
  reg                 _zz_1;
  reg                 pushPtr_willIncrement;
  reg                 pushPtr_willClear;
  wire                pushPtr_willOverflowIfInc;
  wire                pushPtr_willOverflow;
  reg                 popPtr_willIncrement;
  reg                 popPtr_willClear;
  wire                popPtr_willOverflowIfInc;
  wire                popPtr_willOverflow;
  wire                ptrMatch;
  reg                 risingOccupancy;
  wire                empty;
  wire                full;
  wire                pushing;
  wire                popping;
  wire       [32:0]   _zz_2;
  reg        [32:0]   _zz_3;

  assign _zz_4 = (! empty);
  assign _zz_5 = _zz_2[0 : 0];
  always @ (*) begin
    _zz_1 = 1'b0;
    if(pushing)begin
      _zz_1 = 1'b1;
    end
  end

  always @ (*) begin
    pushPtr_willIncrement = 1'b0;
    if(pushing)begin
      pushPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    pushPtr_willClear = 1'b0;
    if(io_flush)begin
      pushPtr_willClear = 1'b1;
    end
  end

  assign pushPtr_willOverflowIfInc = 1'b1;
  assign pushPtr_willOverflow = (pushPtr_willOverflowIfInc && pushPtr_willIncrement);
  always @ (*) begin
    popPtr_willIncrement = 1'b0;
    if(popping)begin
      popPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    popPtr_willClear = 1'b0;
    if(io_flush)begin
      popPtr_willClear = 1'b1;
    end
  end

  assign popPtr_willOverflowIfInc = 1'b1;
  assign popPtr_willOverflow = (popPtr_willOverflowIfInc && popPtr_willIncrement);
  assign ptrMatch = 1'b1;
  assign empty = (ptrMatch && (! risingOccupancy));
  assign full = (ptrMatch && risingOccupancy);
  assign pushing = (io_push_valid && io_push_ready);
  assign popping = (io_pop_valid && io_pop_ready);
  assign io_push_ready = (! full);
  always @ (*) begin
    if(_zz_4)begin
      io_pop_valid = 1'b1;
    end else begin
      io_pop_valid = io_push_valid;
    end
  end

  assign _zz_2 = _zz_3;
  always @ (*) begin
    if(_zz_4)begin
      io_pop_payload_error = _zz_5[0];
    end else begin
      io_pop_payload_error = io_push_payload_error;
    end
  end

  always @ (*) begin
    if(_zz_4)begin
      io_pop_payload_inst = _zz_2[32 : 1];
    end else begin
      io_pop_payload_inst = io_push_payload_inst;
    end
  end

  assign io_occupancy = (risingOccupancy && ptrMatch);
  always @ (posedge clk or negedge resetn) begin
    if (!resetn) begin
      risingOccupancy <= 1'b0;
    end else begin
      if((pushing != popping))begin
        risingOccupancy <= pushing;
      end
      if(io_flush)begin
        risingOccupancy <= 1'b0;
      end
    end
  end

  always @ (posedge clk) begin
    if(_zz_1)begin
      _zz_3 <= {io_push_payload_inst,io_push_payload_error};
    end
  end


endmodule
