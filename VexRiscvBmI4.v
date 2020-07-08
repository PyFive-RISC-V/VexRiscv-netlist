// Generator : SpinalHDL v1.4.2    git head : f02b37a0c0ff9c7a1b658a3205a53ae5ca795fbc
// Component : VexRiscvBmI4
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


module VexRiscvBmI4 (
  input               timerInterrupt,
  input               externalInterrupt,
  input               softwareInterrupt,
  output              iBus_cmd_valid,
  input               iBus_cmd_ready,
  output reg [31:0]   iBus_cmd_payload_address,
  output     [2:0]    iBus_cmd_payload_size,
  input               iBus_rsp_valid,
  input      [31:0]   iBus_rsp_payload_data,
  input               iBus_rsp_payload_error,
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
  wire                _zz_138;
  wire                _zz_139;
  wire                _zz_140;
  wire                _zz_141;
  wire                _zz_142;
  wire                _zz_143;
  wire                _zz_144;
  wire                _zz_145;
  wire                _zz_146;
  wire                _zz_147;
  wire                _zz_148;
  wire                _zz_149;
  reg                 _zz_150;
  wire                _zz_151;
  wire       [0:0]    _zz_152;
  wire                _zz_153;
  wire                _zz_154;
  wire       [0:0]    _zz_155;
  wire                _zz_156;
  wire                IBusCachedPlugin_cache_io_cpu_prefetch_haltIt;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_fetch_data;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_fetch_physicalAddress;
  wire                IBusCachedPlugin_cache_io_cpu_decode_error;
  wire                IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling;
  wire                IBusCachedPlugin_cache_io_cpu_decode_mmuException;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_decode_data;
  wire                IBusCachedPlugin_cache_io_cpu_decode_cacheMiss;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_decode_physicalAddress;
  wire                IBusCachedPlugin_cache_io_mem_cmd_valid;
  wire       [31:0]   IBusCachedPlugin_cache_io_mem_cmd_payload_address;
  wire       [2:0]    IBusCachedPlugin_cache_io_mem_cmd_payload_size;
  wire       [31:0]   RegFilePlugin_regFile_rd_data;
  wire       [31:0]   RegFilePlugin_regFile_1_rd_data;
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
  wire                _zz_170;
  wire                _zz_171;
  wire                _zz_172;
  wire       [1:0]    _zz_173;
  wire                _zz_174;
  wire                _zz_175;
  wire                _zz_176;
  wire                _zz_177;
  wire                _zz_178;
  wire                _zz_179;
  wire                _zz_180;
  wire                _zz_181;
  wire                _zz_182;
  wire                _zz_183;
  wire                _zz_184;
  wire                _zz_185;
  wire                _zz_186;
  wire       [1:0]    _zz_187;
  wire                _zz_188;
  wire       [0:0]    _zz_189;
  wire       [0:0]    _zz_190;
  wire       [0:0]    _zz_191;
  wire       [0:0]    _zz_192;
  wire       [0:0]    _zz_193;
  wire       [0:0]    _zz_194;
  wire       [0:0]    _zz_195;
  wire       [0:0]    _zz_196;
  wire       [0:0]    _zz_197;
  wire       [0:0]    _zz_198;
  wire       [0:0]    _zz_199;
  wire       [32:0]   _zz_200;
  wire       [31:0]   _zz_201;
  wire       [32:0]   _zz_202;
  wire       [0:0]    _zz_203;
  wire       [0:0]    _zz_204;
  wire       [0:0]    _zz_205;
  wire       [0:0]    _zz_206;
  wire       [1:0]    _zz_207;
  wire       [1:0]    _zz_208;
  wire       [2:0]    _zz_209;
  wire       [31:0]   _zz_210;
  wire       [2:0]    _zz_211;
  wire       [0:0]    _zz_212;
  wire       [2:0]    _zz_213;
  wire       [4:0]    _zz_214;
  wire       [11:0]   _zz_215;
  wire       [11:0]   _zz_216;
  wire       [31:0]   _zz_217;
  wire       [31:0]   _zz_218;
  wire       [31:0]   _zz_219;
  wire       [31:0]   _zz_220;
  wire       [31:0]   _zz_221;
  wire       [31:0]   _zz_222;
  wire       [31:0]   _zz_223;
  wire       [0:0]    _zz_224;
  wire       [3:0]    _zz_225;
  wire       [36:0]   _zz_226;
  wire       [36:0]   _zz_227;
  wire       [36:0]   _zz_228;
  wire       [32:0]   _zz_229;
  wire       [36:0]   _zz_230;
  wire       [33:0]   _zz_231;
  wire       [36:0]   _zz_232;
  wire       [33:0]   _zz_233;
  wire       [36:0]   _zz_234;
  wire       [34:0]   _zz_235;
  wire       [36:0]   _zz_236;
  wire       [34:0]   _zz_237;
  wire       [35:0]   _zz_238;
  wire       [36:0]   _zz_239;
  wire       [35:0]   _zz_240;
  wire       [32:0]   _zz_241;
  wire       [36:0]   _zz_242;
  wire       [32:0]   _zz_243;
  wire       [0:0]    _zz_244;
  wire       [5:0]    _zz_245;
  wire       [32:0]   _zz_246;
  wire       [31:0]   _zz_247;
  wire       [31:0]   _zz_248;
  wire       [32:0]   _zz_249;
  wire       [32:0]   _zz_250;
  wire       [32:0]   _zz_251;
  wire       [32:0]   _zz_252;
  wire       [0:0]    _zz_253;
  wire       [32:0]   _zz_254;
  wire       [0:0]    _zz_255;
  wire       [32:0]   _zz_256;
  wire       [0:0]    _zz_257;
  wire       [31:0]   _zz_258;
  wire       [1:0]    _zz_259;
  wire       [1:0]    _zz_260;
  wire       [1:0]    _zz_261;
  wire       [1:0]    _zz_262;
  wire       [19:0]   _zz_263;
  wire       [11:0]   _zz_264;
  wire       [11:0]   _zz_265;
  wire       [0:0]    _zz_266;
  wire       [0:0]    _zz_267;
  wire       [0:0]    _zz_268;
  wire       [0:0]    _zz_269;
  wire       [0:0]    _zz_270;
  wire       [0:0]    _zz_271;
  wire       [0:0]    _zz_272;
  wire       [31:0]   _zz_273;
  wire       [31:0]   _zz_274;
  wire       [31:0]   _zz_275;
  wire                _zz_276;
  wire       [0:0]    _zz_277;
  wire       [12:0]   _zz_278;
  wire       [31:0]   _zz_279;
  wire       [31:0]   _zz_280;
  wire       [31:0]   _zz_281;
  wire                _zz_282;
  wire       [0:0]    _zz_283;
  wire       [6:0]    _zz_284;
  wire       [31:0]   _zz_285;
  wire       [31:0]   _zz_286;
  wire       [31:0]   _zz_287;
  wire                _zz_288;
  wire       [0:0]    _zz_289;
  wire       [0:0]    _zz_290;
  wire       [31:0]   _zz_291;
  wire       [31:0]   _zz_292;
  wire       [31:0]   _zz_293;
  wire       [31:0]   _zz_294;
  wire                _zz_295;
  wire       [0:0]    _zz_296;
  wire       [0:0]    _zz_297;
  wire                _zz_298;
  wire       [0:0]    _zz_299;
  wire       [24:0]   _zz_300;
  wire       [31:0]   _zz_301;
  wire       [31:0]   _zz_302;
  wire       [31:0]   _zz_303;
  wire       [31:0]   _zz_304;
  wire       [31:0]   _zz_305;
  wire       [31:0]   _zz_306;
  wire       [0:0]    _zz_307;
  wire       [0:0]    _zz_308;
  wire       [2:0]    _zz_309;
  wire       [2:0]    _zz_310;
  wire                _zz_311;
  wire       [0:0]    _zz_312;
  wire       [20:0]   _zz_313;
  wire       [31:0]   _zz_314;
  wire       [31:0]   _zz_315;
  wire       [0:0]    _zz_316;
  wire       [0:0]    _zz_317;
  wire       [2:0]    _zz_318;
  wire       [2:0]    _zz_319;
  wire                _zz_320;
  wire       [0:0]    _zz_321;
  wire       [17:0]   _zz_322;
  wire       [31:0]   _zz_323;
  wire       [31:0]   _zz_324;
  wire       [31:0]   _zz_325;
  wire       [31:0]   _zz_326;
  wire                _zz_327;
  wire                _zz_328;
  wire       [31:0]   _zz_329;
  wire       [31:0]   _zz_330;
  wire                _zz_331;
  wire       [0:0]    _zz_332;
  wire       [0:0]    _zz_333;
  wire                _zz_334;
  wire       [0:0]    _zz_335;
  wire       [14:0]   _zz_336;
  wire                _zz_337;
  wire                _zz_338;
  wire       [0:0]    _zz_339;
  wire       [0:0]    _zz_340;
  wire       [4:0]    _zz_341;
  wire       [4:0]    _zz_342;
  wire                _zz_343;
  wire       [0:0]    _zz_344;
  wire       [11:0]   _zz_345;
  wire       [31:0]   _zz_346;
  wire       [31:0]   _zz_347;
  wire       [31:0]   _zz_348;
  wire       [31:0]   _zz_349;
  wire                _zz_350;
  wire       [0:0]    _zz_351;
  wire       [1:0]    _zz_352;
  wire       [31:0]   _zz_353;
  wire       [31:0]   _zz_354;
  wire                _zz_355;
  wire       [2:0]    _zz_356;
  wire       [2:0]    _zz_357;
  wire                _zz_358;
  wire       [0:0]    _zz_359;
  wire       [8:0]    _zz_360;
  wire       [31:0]   _zz_361;
  wire       [31:0]   _zz_362;
  wire       [31:0]   _zz_363;
  wire                _zz_364;
  wire                _zz_365;
  wire       [31:0]   _zz_366;
  wire       [0:0]    _zz_367;
  wire       [0:0]    _zz_368;
  wire       [0:0]    _zz_369;
  wire       [4:0]    _zz_370;
  wire       [1:0]    _zz_371;
  wire       [1:0]    _zz_372;
  wire                _zz_373;
  wire       [0:0]    _zz_374;
  wire       [6:0]    _zz_375;
  wire       [31:0]   _zz_376;
  wire       [31:0]   _zz_377;
  wire       [31:0]   _zz_378;
  wire       [31:0]   _zz_379;
  wire       [31:0]   _zz_380;
  wire       [31:0]   _zz_381;
  wire                _zz_382;
  wire       [0:0]    _zz_383;
  wire       [2:0]    _zz_384;
  wire                _zz_385;
  wire       [0:0]    _zz_386;
  wire       [0:0]    _zz_387;
  wire       [0:0]    _zz_388;
  wire       [0:0]    _zz_389;
  wire                _zz_390;
  wire       [0:0]    _zz_391;
  wire       [4:0]    _zz_392;
  wire       [31:0]   _zz_393;
  wire       [31:0]   _zz_394;
  wire       [31:0]   _zz_395;
  wire                _zz_396;
  wire       [0:0]    _zz_397;
  wire       [0:0]    _zz_398;
  wire       [31:0]   _zz_399;
  wire       [31:0]   _zz_400;
  wire       [31:0]   _zz_401;
  wire       [31:0]   _zz_402;
  wire       [31:0]   _zz_403;
  wire                _zz_404;
  wire       [3:0]    _zz_405;
  wire       [3:0]    _zz_406;
  wire                _zz_407;
  wire       [0:0]    _zz_408;
  wire       [2:0]    _zz_409;
  wire       [31:0]   _zz_410;
  wire       [31:0]   _zz_411;
  wire       [31:0]   _zz_412;
  wire       [31:0]   _zz_413;
  wire                _zz_414;
  wire       [0:0]    _zz_415;
  wire       [0:0]    _zz_416;
  wire       [31:0]   _zz_417;
  wire       [31:0]   _zz_418;
  wire       [0:0]    _zz_419;
  wire       [1:0]    _zz_420;
  wire       [1:0]    _zz_421;
  wire       [1:0]    _zz_422;
  wire                _zz_423;
  wire                _zz_424;
  wire       [31:0]   _zz_425;
  wire       [31:0]   _zz_426;
  wire       [31:0]   _zz_427;
  wire       [31:0]   _zz_428;
  wire       [31:0]   _zz_429;
  wire       [31:0]   _zz_430;
  wire       [31:0]   _zz_431;
  wire       [31:0]   _zz_432;
  wire       [31:0]   _zz_433;
  wire                _zz_434;
  wire       [31:0]   _zz_435;
  wire       [31:0]   _zz_436;
  wire       [31:0]   _zz_437;
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
  wire                decode_FLUSH_ALL;
  reg                 _zz_41;
  reg                 _zz_41_2;
  reg                 _zz_41_1;
  reg                 _zz_41_0;
  wire       [31:0]   decode_INSTRUCTION;
  reg        [31:0]   _zz_42;
  wire       [31:0]   decode_PC;
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
  reg                 IBusCachedPlugin_fetcherHalt;
  reg                 IBusCachedPlugin_incomingInstruction;
  wire                IBusCachedPlugin_pcValids_0;
  wire                IBusCachedPlugin_pcValids_1;
  wire                IBusCachedPlugin_pcValids_2;
  reg                 IBusCachedPlugin_decodeExceptionPort_valid;
  reg        [3:0]    IBusCachedPlugin_decodeExceptionPort_payload_code;
  wire       [31:0]   IBusCachedPlugin_decodeExceptionPort_payload_badAddr;
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
  wire                IBusCachedPlugin_externalFlush;
  wire                IBusCachedPlugin_jump_pcLoad_valid;
  wire       [31:0]   IBusCachedPlugin_jump_pcLoad_payload;
  wire       [1:0]    _zz_43;
  wire                IBusCachedPlugin_fetchPc_output_valid;
  wire                IBusCachedPlugin_fetchPc_output_ready;
  wire       [31:0]   IBusCachedPlugin_fetchPc_output_payload;
  reg        [31:0]   IBusCachedPlugin_fetchPc_pcReg /* verilator public */ ;
  reg                 IBusCachedPlugin_fetchPc_correction;
  reg                 IBusCachedPlugin_fetchPc_correctionReg;
  wire                IBusCachedPlugin_fetchPc_corrected;
  reg                 IBusCachedPlugin_fetchPc_pcRegPropagate;
  reg                 IBusCachedPlugin_fetchPc_booted;
  reg                 IBusCachedPlugin_fetchPc_inc;
  reg        [31:0]   IBusCachedPlugin_fetchPc_pc;
  wire                IBusCachedPlugin_fetchPc_redo_valid;
  wire       [31:0]   IBusCachedPlugin_fetchPc_redo_payload;
  reg                 IBusCachedPlugin_fetchPc_flushed;
  reg                 IBusCachedPlugin_iBusRsp_redoFetch;
  wire                IBusCachedPlugin_iBusRsp_stages_0_input_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_0_input_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_0_input_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_0_output_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_0_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_0_output_payload;
  reg                 IBusCachedPlugin_iBusRsp_stages_0_halt;
  wire                IBusCachedPlugin_iBusRsp_stages_1_input_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_1_input_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_1_input_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_1_output_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_1_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_1_output_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_1_halt;
  wire                IBusCachedPlugin_iBusRsp_stages_2_input_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_2_input_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_2_input_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_2_output_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_2_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_2_output_payload;
  reg                 IBusCachedPlugin_iBusRsp_stages_2_halt;
  wire                _zz_44;
  wire                _zz_45;
  wire                _zz_46;
  wire                IBusCachedPlugin_iBusRsp_flush;
  wire                _zz_47;
  wire                _zz_48;
  reg                 _zz_49;
  wire                _zz_50;
  reg                 _zz_51;
  reg        [31:0]   _zz_52;
  reg                 IBusCachedPlugin_iBusRsp_readyForError;
  wire                IBusCachedPlugin_iBusRsp_output_valid;
  wire                IBusCachedPlugin_iBusRsp_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_output_payload_pc;
  wire                IBusCachedPlugin_iBusRsp_output_payload_rsp_error;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_output_payload_rsp_inst;
  wire                IBusCachedPlugin_iBusRsp_output_payload_isRvc;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_0;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_1;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_2;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_3;
  wire       [31:0]   _zz_53;
  reg        [31:0]   IBusCachedPlugin_rspCounter;
  wire                IBusCachedPlugin_s0_tightlyCoupledHit;
  reg                 IBusCachedPlugin_s1_tightlyCoupledHit;
  reg                 IBusCachedPlugin_s2_tightlyCoupledHit;
  wire                IBusCachedPlugin_rsp_iBusRspOutputHalt;
  wire                IBusCachedPlugin_rsp_issueDetected;
  reg                 IBusCachedPlugin_rsp_redoFetch;
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
  wire       [30:0]   _zz_61;
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


  assign _zz_157 = (memory_arbitration_isValid && memory_REGFILE_WRITE_VALID);
  assign _zz_158 = 1'b1;
  assign _zz_159 = (execute_arbitration_isValid && execute_REGFILE_WRITE_VALID);
  assign _zz_160 = (execute_arbitration_isValid && execute_IS_CSR);
  assign _zz_161 = (memory_arbitration_isValid && memory_IS_MUL);
  assign _zz_162 = (memory_arbitration_isValid && memory_IS_DIV);
  assign _zz_163 = ((_zz_147 && IBusCachedPlugin_cache_io_cpu_decode_error) && (! _zz_41_2));
  assign _zz_164 = ((_zz_147 && IBusCachedPlugin_cache_io_cpu_decode_cacheMiss) && (! _zz_41_1));
  assign _zz_165 = ((_zz_147 && IBusCachedPlugin_cache_io_cpu_decode_mmuException) && (! _zz_41_0));
  assign _zz_166 = ((_zz_147 && IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling) && (! IBusCachedPlugin_rsp_issueDetected));
  assign _zz_167 = ({decodeExceptionPort_valid,IBusCachedPlugin_decodeExceptionPort_valid} != 2'b00);
  assign _zz_168 = (execute_arbitration_isValid && (execute_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_WFI));
  assign _zz_169 = ({BranchPlugin_branchExceptionPort_valid,CsrPlugin_selfException_valid} != 2'b00);
  assign _zz_170 = (memory_MulDivIterativePlugin_frontendOk && (! memory_MulDivIterativePlugin_mul_counter_willOverflowIfInc));
  assign _zz_171 = (CsrPlugin_hadException || CsrPlugin_interruptJump);
  assign _zz_172 = (memory_arbitration_isValid && (memory_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET));
  assign _zz_173 = memory_INSTRUCTION[29 : 28];
  assign _zz_174 = ((dBus_rsp_ready && dBus_rsp_error) && (! memory_MEMORY_STORE));
  assign _zz_175 = (memory_arbitration_isValid && memory_REGFILE_WRITE_VALID);
  assign _zz_176 = (1'b0 || (! 1'b1));
  assign _zz_177 = (execute_arbitration_isValid && execute_REGFILE_WRITE_VALID);
  assign _zz_178 = (1'b0 || (! execute_BYPASSABLE_EXECUTE_STAGE));
  assign _zz_179 = (memory_MulDivIterativePlugin_frontendOk && (! memory_MulDivIterativePlugin_div_done));
  assign _zz_180 = (! memory_arbitration_isStuck);
  assign _zz_181 = (execute_CsrPlugin_illegalAccess || execute_CsrPlugin_illegalInstruction);
  assign _zz_182 = (execute_arbitration_isValid && (execute_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_ECALL));
  assign _zz_183 = (CsrPlugin_mstatus_MIE || (CsrPlugin_privilege < 2'b11));
  assign _zz_184 = ((_zz_100 && 1'b1) && (! 1'b0));
  assign _zz_185 = ((_zz_101 && 1'b1) && (! 1'b0));
  assign _zz_186 = ((_zz_102 && 1'b1) && (! 1'b0));
  assign _zz_187 = memory_INSTRUCTION[13 : 12];
  assign _zz_188 = execute_INSTRUCTION[13];
  assign _zz_189 = _zz_61[26 : 26];
  assign _zz_190 = _zz_61[25 : 25];
  assign _zz_191 = _zz_61[24 : 24];
  assign _zz_192 = _zz_61[23 : 23];
  assign _zz_193 = _zz_61[22 : 22];
  assign _zz_194 = _zz_61[16 : 16];
  assign _zz_195 = _zz_61[13 : 13];
  assign _zz_196 = _zz_61[11 : 11];
  assign _zz_197 = _zz_61[4 : 4];
  assign _zz_198 = _zz_61[15 : 15];
  assign _zz_199 = _zz_61[5 : 5];
  assign _zz_200 = ($signed(_zz_202) >>> execute_FullBarrelShifterPlugin_amplitude);
  assign _zz_201 = _zz_200[31 : 0];
  assign _zz_202 = {((execute_SHIFT_CTRL == `ShiftCtrlEnum_defaultEncoding_SRA_1) && execute_FullBarrelShifterPlugin_reversed[31]),execute_FullBarrelShifterPlugin_reversed};
  assign _zz_203 = _zz_61[3 : 3];
  assign _zz_204 = _zz_61[19 : 19];
  assign _zz_205 = _zz_61[10 : 10];
  assign _zz_206 = _zz_61[0 : 0];
  assign _zz_207 = (_zz_43 & (~ _zz_208));
  assign _zz_208 = (_zz_43 - 2'b01);
  assign _zz_209 = {IBusCachedPlugin_fetchPc_inc,2'b00};
  assign _zz_210 = {29'd0, _zz_209};
  assign _zz_211 = (memory_MEMORY_STORE ? 3'b110 : 3'b100);
  assign _zz_212 = execute_SRC_LESS;
  assign _zz_213 = 3'b100;
  assign _zz_214 = decode_INSTRUCTION[19 : 15];
  assign _zz_215 = decode_INSTRUCTION[31 : 20];
  assign _zz_216 = {decode_INSTRUCTION[31 : 25],decode_INSTRUCTION[11 : 7]};
  assign _zz_217 = ($signed(_zz_218) + $signed(_zz_221));
  assign _zz_218 = ($signed(_zz_219) + $signed(_zz_220));
  assign _zz_219 = execute_SRC1;
  assign _zz_220 = (execute_SRC_USE_SUB_LESS ? (~ execute_SRC2) : execute_SRC2);
  assign _zz_221 = (execute_SRC_USE_SUB_LESS ? _zz_222 : _zz_223);
  assign _zz_222 = 32'h00000001;
  assign _zz_223 = 32'h0;
  assign _zz_224 = memory_MulDivIterativePlugin_mul_counter_willIncrement;
  assign _zz_225 = {3'd0, _zz_224};
  assign _zz_226 = (_zz_227 + _zz_242);
  assign _zz_227 = (_zz_228 + _zz_234);
  assign _zz_228 = (_zz_230 + _zz_232);
  assign _zz_229 = (memory_MulDivIterativePlugin_rs2[0] ? memory_MulDivIterativePlugin_rs1 : 33'h0);
  assign _zz_230 = {{4{_zz_229[32]}}, _zz_229};
  assign _zz_231 = (memory_MulDivIterativePlugin_rs2[1] ? _zz_233 : 34'h0);
  assign _zz_232 = {{3{_zz_231[33]}}, _zz_231};
  assign _zz_233 = ({1'd0,memory_MulDivIterativePlugin_rs1} <<< 1);
  assign _zz_234 = (_zz_236 + _zz_239);
  assign _zz_235 = (memory_MulDivIterativePlugin_rs2[2] ? _zz_237 : 35'h0);
  assign _zz_236 = {{2{_zz_235[34]}}, _zz_235};
  assign _zz_237 = ({2'd0,memory_MulDivIterativePlugin_rs1} <<< 2);
  assign _zz_238 = (memory_MulDivIterativePlugin_rs2[3] ? _zz_240 : 36'h0);
  assign _zz_239 = {{1{_zz_238[35]}}, _zz_238};
  assign _zz_240 = ({3'd0,memory_MulDivIterativePlugin_rs1} <<< 3);
  assign _zz_241 = _zz_243;
  assign _zz_242 = {{4{_zz_241[32]}}, _zz_241};
  assign _zz_243 = (memory_MulDivIterativePlugin_accumulator >>> 32);
  assign _zz_244 = memory_MulDivIterativePlugin_div_counter_willIncrement;
  assign _zz_245 = {5'd0, _zz_244};
  assign _zz_246 = {1'd0, memory_MulDivIterativePlugin_rs2};
  assign _zz_247 = memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator[31:0];
  assign _zz_248 = memory_MulDivIterativePlugin_div_stage_0_remainderShifted[31:0];
  assign _zz_249 = {_zz_95,(! memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator[32])};
  assign _zz_250 = _zz_251;
  assign _zz_251 = _zz_252;
  assign _zz_252 = ({1'b0,(memory_MulDivIterativePlugin_div_needRevert ? (~ _zz_96) : _zz_96)} + _zz_254);
  assign _zz_253 = memory_MulDivIterativePlugin_div_needRevert;
  assign _zz_254 = {32'd0, _zz_253};
  assign _zz_255 = _zz_98;
  assign _zz_256 = {32'd0, _zz_255};
  assign _zz_257 = _zz_97;
  assign _zz_258 = {31'd0, _zz_257};
  assign _zz_259 = (_zz_103 & (~ _zz_260));
  assign _zz_260 = (_zz_103 - 2'b01);
  assign _zz_261 = (_zz_105 & (~ _zz_262));
  assign _zz_262 = (_zz_105 - 2'b01);
  assign _zz_263 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]};
  assign _zz_264 = execute_INSTRUCTION[31 : 20];
  assign _zz_265 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]};
  assign _zz_266 = execute_CsrPlugin_writeData[7 : 7];
  assign _zz_267 = execute_CsrPlugin_writeData[3 : 3];
  assign _zz_268 = execute_CsrPlugin_writeData[3 : 3];
  assign _zz_269 = execute_CsrPlugin_writeData[11 : 11];
  assign _zz_270 = execute_CsrPlugin_writeData[7 : 7];
  assign _zz_271 = execute_CsrPlugin_writeData[3 : 3];
  assign _zz_272 = execute_CsrPlugin_writeData[31 : 31];
  assign _zz_273 = 32'h0000107f;
  assign _zz_274 = (decode_INSTRUCTION & 32'h0000207f);
  assign _zz_275 = 32'h00002073;
  assign _zz_276 = ((decode_INSTRUCTION & 32'h0000407f) == 32'h00004063);
  assign _zz_277 = ((decode_INSTRUCTION & 32'h0000207f) == 32'h00002013);
  assign _zz_278 = {((decode_INSTRUCTION & 32'h0000603f) == 32'h00000023),{((decode_INSTRUCTION & 32'h0000207f) == 32'h00000003),{((decode_INSTRUCTION & _zz_279) == 32'h00000003),{(_zz_280 == _zz_281),{_zz_282,{_zz_283,_zz_284}}}}}};
  assign _zz_279 = 32'h0000505f;
  assign _zz_280 = (decode_INSTRUCTION & 32'h0000707b);
  assign _zz_281 = 32'h00000063;
  assign _zz_282 = ((decode_INSTRUCTION & 32'h0000607f) == 32'h0000000f);
  assign _zz_283 = ((decode_INSTRUCTION & 32'hfc00007f) == 32'h00000033);
  assign _zz_284 = {((decode_INSTRUCTION & 32'hfc00305f) == 32'h00001013),{((decode_INSTRUCTION & 32'hbc00707f) == 32'h00005013),{((decode_INSTRUCTION & _zz_285) == 32'h00005033),{(_zz_286 == _zz_287),{_zz_288,{_zz_289,_zz_290}}}}}};
  assign _zz_285 = 32'hbe00707f;
  assign _zz_286 = (decode_INSTRUCTION & 32'hbe00707f);
  assign _zz_287 = 32'h00000033;
  assign _zz_288 = ((decode_INSTRUCTION & 32'hdfffffff) == 32'h10200073);
  assign _zz_289 = ((decode_INSTRUCTION & 32'hffffffff) == 32'h10500073);
  assign _zz_290 = ((decode_INSTRUCTION & 32'hffffffff) == 32'h00000073);
  assign _zz_291 = (decode_INSTRUCTION & 32'h0000001c);
  assign _zz_292 = 32'h00000004;
  assign _zz_293 = (decode_INSTRUCTION & 32'h00000058);
  assign _zz_294 = 32'h00000040;
  assign _zz_295 = ((decode_INSTRUCTION & 32'h00203050) == 32'h00000050);
  assign _zz_296 = ((decode_INSTRUCTION & 32'h00403050) == 32'h00000050);
  assign _zz_297 = 1'b0;
  assign _zz_298 = ({(_zz_301 == _zz_302),(_zz_303 == _zz_304)} != 2'b00);
  assign _zz_299 = ((_zz_305 == _zz_306) != 1'b0);
  assign _zz_300 = {({_zz_307,_zz_308} != 2'b00),{(_zz_309 != _zz_310),{_zz_311,{_zz_312,_zz_313}}}};
  assign _zz_301 = (decode_INSTRUCTION & 32'h00001050);
  assign _zz_302 = 32'h00001050;
  assign _zz_303 = (decode_INSTRUCTION & 32'h00002050);
  assign _zz_304 = 32'h00002050;
  assign _zz_305 = (decode_INSTRUCTION & 32'h02004064);
  assign _zz_306 = 32'h02004020;
  assign _zz_307 = _zz_67;
  assign _zz_308 = _zz_66;
  assign _zz_309 = {_zz_67,{_zz_65,_zz_66}};
  assign _zz_310 = 3'b000;
  assign _zz_311 = ((_zz_314 == _zz_315) != 1'b0);
  assign _zz_312 = ({_zz_316,_zz_317} != 2'b00);
  assign _zz_313 = {(_zz_318 != _zz_319),{_zz_320,{_zz_321,_zz_322}}};
  assign _zz_314 = (decode_INSTRUCTION & 32'h02004074);
  assign _zz_315 = 32'h02000030;
  assign _zz_316 = ((decode_INSTRUCTION & _zz_323) == 32'h00005010);
  assign _zz_317 = ((decode_INSTRUCTION & _zz_324) == 32'h00005020);
  assign _zz_318 = {(_zz_325 == _zz_326),{_zz_327,_zz_328}};
  assign _zz_319 = 3'b000;
  assign _zz_320 = ((_zz_329 == _zz_330) != 1'b0);
  assign _zz_321 = (_zz_331 != 1'b0);
  assign _zz_322 = {(_zz_332 != _zz_333),{_zz_334,{_zz_335,_zz_336}}};
  assign _zz_323 = 32'h00007034;
  assign _zz_324 = 32'h02007064;
  assign _zz_325 = (decode_INSTRUCTION & 32'h40003054);
  assign _zz_326 = 32'h40001010;
  assign _zz_327 = ((decode_INSTRUCTION & 32'h00007034) == 32'h00001010);
  assign _zz_328 = ((decode_INSTRUCTION & 32'h02007054) == 32'h00001010);
  assign _zz_329 = (decode_INSTRUCTION & 32'h00000064);
  assign _zz_330 = 32'h00000024;
  assign _zz_331 = ((decode_INSTRUCTION & 32'h00001000) == 32'h00001000);
  assign _zz_332 = _zz_65;
  assign _zz_333 = 1'b0;
  assign _zz_334 = ({_zz_337,_zz_338} != 2'b00);
  assign _zz_335 = ({_zz_339,_zz_340} != 2'b00);
  assign _zz_336 = {(_zz_341 != _zz_342),{_zz_343,{_zz_344,_zz_345}}};
  assign _zz_337 = ((decode_INSTRUCTION & 32'h00002010) == 32'h00002000);
  assign _zz_338 = ((decode_INSTRUCTION & 32'h00005000) == 32'h00001000);
  assign _zz_339 = ((decode_INSTRUCTION & _zz_346) == 32'h00000020);
  assign _zz_340 = ((decode_INSTRUCTION & _zz_347) == 32'h00000020);
  assign _zz_341 = {(_zz_348 == _zz_349),{_zz_350,{_zz_351,_zz_352}}};
  assign _zz_342 = 5'h0;
  assign _zz_343 = ((_zz_353 == _zz_354) != 1'b0);
  assign _zz_344 = (_zz_355 != 1'b0);
  assign _zz_345 = {(_zz_356 != _zz_357),{_zz_358,{_zz_359,_zz_360}}};
  assign _zz_346 = 32'h00000034;
  assign _zz_347 = 32'h00000064;
  assign _zz_348 = (decode_INSTRUCTION & 32'h00002040);
  assign _zz_349 = 32'h00002040;
  assign _zz_350 = ((decode_INSTRUCTION & _zz_361) == 32'h00001040);
  assign _zz_351 = (_zz_362 == _zz_363);
  assign _zz_352 = {_zz_364,_zz_365};
  assign _zz_353 = (decode_INSTRUCTION & 32'h00000020);
  assign _zz_354 = 32'h00000020;
  assign _zz_355 = ((decode_INSTRUCTION & _zz_366) == 32'h00000010);
  assign _zz_356 = {_zz_63,{_zz_367,_zz_368}};
  assign _zz_357 = 3'b000;
  assign _zz_358 = ({_zz_369,_zz_370} != 6'h0);
  assign _zz_359 = (_zz_371 != _zz_372);
  assign _zz_360 = {_zz_373,{_zz_374,_zz_375}};
  assign _zz_361 = 32'h00001040;
  assign _zz_362 = (decode_INSTRUCTION & 32'h00000050);
  assign _zz_363 = 32'h00000040;
  assign _zz_364 = ((decode_INSTRUCTION & _zz_376) == 32'h00000040);
  assign _zz_365 = ((decode_INSTRUCTION & _zz_377) == 32'h0);
  assign _zz_366 = 32'h00000010;
  assign _zz_367 = (_zz_378 == _zz_379);
  assign _zz_368 = (_zz_380 == _zz_381);
  assign _zz_369 = _zz_64;
  assign _zz_370 = {_zz_382,{_zz_383,_zz_384}};
  assign _zz_371 = {_zz_63,_zz_385};
  assign _zz_372 = 2'b00;
  assign _zz_373 = ({_zz_386,_zz_387} != 2'b00);
  assign _zz_374 = (_zz_388 != _zz_389);
  assign _zz_375 = {_zz_390,{_zz_391,_zz_392}};
  assign _zz_376 = 32'h00400040;
  assign _zz_377 = 32'h00000038;
  assign _zz_378 = (decode_INSTRUCTION & 32'h00000030);
  assign _zz_379 = 32'h00000010;
  assign _zz_380 = (decode_INSTRUCTION & 32'h02000060);
  assign _zz_381 = 32'h00000020;
  assign _zz_382 = ((decode_INSTRUCTION & _zz_393) == 32'h00001010);
  assign _zz_383 = (_zz_394 == _zz_395);
  assign _zz_384 = {_zz_396,{_zz_397,_zz_398}};
  assign _zz_385 = ((decode_INSTRUCTION & _zz_399) == 32'h00000020);
  assign _zz_386 = _zz_63;
  assign _zz_387 = (_zz_400 == _zz_401);
  assign _zz_388 = (_zz_402 == _zz_403);
  assign _zz_389 = 1'b0;
  assign _zz_390 = (_zz_404 != 1'b0);
  assign _zz_391 = (_zz_405 != _zz_406);
  assign _zz_392 = {_zz_407,{_zz_408,_zz_409}};
  assign _zz_393 = 32'h00001010;
  assign _zz_394 = (decode_INSTRUCTION & 32'h00002010);
  assign _zz_395 = 32'h00002010;
  assign _zz_396 = ((decode_INSTRUCTION & 32'h00000050) == 32'h00000010);
  assign _zz_397 = ((decode_INSTRUCTION & _zz_410) == 32'h00000004);
  assign _zz_398 = ((decode_INSTRUCTION & _zz_411) == 32'h0);
  assign _zz_399 = 32'h00000070;
  assign _zz_400 = (decode_INSTRUCTION & 32'h00000020);
  assign _zz_401 = 32'h0;
  assign _zz_402 = (decode_INSTRUCTION & 32'h00004014);
  assign _zz_403 = 32'h00004010;
  assign _zz_404 = ((decode_INSTRUCTION & 32'h00006014) == 32'h00002010);
  assign _zz_405 = {(_zz_412 == _zz_413),{_zz_414,{_zz_415,_zz_416}}};
  assign _zz_406 = 4'b0000;
  assign _zz_407 = ((_zz_417 == _zz_418) != 1'b0);
  assign _zz_408 = ({_zz_419,_zz_420} != 3'b000);
  assign _zz_409 = {(_zz_421 != _zz_422),{_zz_423,_zz_424}};
  assign _zz_410 = 32'h0000000c;
  assign _zz_411 = 32'h00000028;
  assign _zz_412 = (decode_INSTRUCTION & 32'h00000044);
  assign _zz_413 = 32'h0;
  assign _zz_414 = ((decode_INSTRUCTION & 32'h00000018) == 32'h0);
  assign _zz_415 = ((decode_INSTRUCTION & _zz_425) == 32'h00002000);
  assign _zz_416 = ((decode_INSTRUCTION & _zz_426) == 32'h00001000);
  assign _zz_417 = (decode_INSTRUCTION & 32'h00000058);
  assign _zz_418 = 32'h0;
  assign _zz_419 = ((decode_INSTRUCTION & _zz_427) == 32'h00000040);
  assign _zz_420 = {(_zz_428 == _zz_429),(_zz_430 == _zz_431)};
  assign _zz_421 = {(_zz_432 == _zz_433),_zz_62};
  assign _zz_422 = 2'b00;
  assign _zz_423 = ({_zz_434,_zz_62} != 2'b00);
  assign _zz_424 = ((_zz_435 == _zz_436) != 1'b0);
  assign _zz_425 = 32'h00006004;
  assign _zz_426 = 32'h00005004;
  assign _zz_427 = 32'h00000044;
  assign _zz_428 = (decode_INSTRUCTION & 32'h00002014);
  assign _zz_429 = 32'h00002010;
  assign _zz_430 = (decode_INSTRUCTION & 32'h40000034);
  assign _zz_431 = 32'h40000030;
  assign _zz_432 = (decode_INSTRUCTION & 32'h00000014);
  assign _zz_433 = 32'h00000004;
  assign _zz_434 = ((decode_INSTRUCTION & 32'h00000044) == 32'h00000004);
  assign _zz_435 = (decode_INSTRUCTION & 32'h00001048);
  assign _zz_436 = 32'h00001008;
  assign _zz_437 = 32'h0;
  InstructionCache IBusCachedPlugin_cache (
    .io_flush                                 (_zz_135                                                     ), //i
    .io_cpu_prefetch_isValid                  (_zz_136                                                     ), //i
    .io_cpu_prefetch_haltIt                   (IBusCachedPlugin_cache_io_cpu_prefetch_haltIt               ), //o
    .io_cpu_prefetch_pc                       (IBusCachedPlugin_iBusRsp_stages_0_input_payload[31:0]       ), //i
    .io_cpu_fetch_isValid                     (_zz_137                                                     ), //i
    .io_cpu_fetch_isStuck                     (_zz_138                                                     ), //i
    .io_cpu_fetch_isRemoved                   (_zz_139                                                     ), //i
    .io_cpu_fetch_pc                          (IBusCachedPlugin_iBusRsp_stages_1_input_payload[31:0]       ), //i
    .io_cpu_fetch_data                        (IBusCachedPlugin_cache_io_cpu_fetch_data[31:0]              ), //o
    .io_cpu_fetch_mmuRsp_physicalAddress      (IBusCachedPlugin_iBusRsp_stages_1_input_payload[31:0]       ), //i
    .io_cpu_fetch_mmuRsp_isIoAccess           (_zz_140                                                     ), //i
    .io_cpu_fetch_mmuRsp_allowRead            (_zz_141                                                     ), //i
    .io_cpu_fetch_mmuRsp_allowWrite           (_zz_142                                                     ), //i
    .io_cpu_fetch_mmuRsp_allowExecute         (_zz_143                                                     ), //i
    .io_cpu_fetch_mmuRsp_exception            (_zz_144                                                     ), //i
    .io_cpu_fetch_mmuRsp_refilling            (_zz_145                                                     ), //i
    .io_cpu_fetch_mmuRsp_bypassTranslation    (_zz_146                                                     ), //i
    .io_cpu_fetch_physicalAddress             (IBusCachedPlugin_cache_io_cpu_fetch_physicalAddress[31:0]   ), //o
    .io_cpu_decode_isValid                    (_zz_147                                                     ), //i
    .io_cpu_decode_isStuck                    (_zz_148                                                     ), //i
    .io_cpu_decode_pc                         (IBusCachedPlugin_iBusRsp_stages_2_input_payload[31:0]       ), //i
    .io_cpu_decode_physicalAddress            (IBusCachedPlugin_cache_io_cpu_decode_physicalAddress[31:0]  ), //o
    .io_cpu_decode_data                       (IBusCachedPlugin_cache_io_cpu_decode_data[31:0]             ), //o
    .io_cpu_decode_cacheMiss                  (IBusCachedPlugin_cache_io_cpu_decode_cacheMiss              ), //o
    .io_cpu_decode_error                      (IBusCachedPlugin_cache_io_cpu_decode_error                  ), //o
    .io_cpu_decode_mmuRefilling               (IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling           ), //o
    .io_cpu_decode_mmuException               (IBusCachedPlugin_cache_io_cpu_decode_mmuException           ), //o
    .io_cpu_decode_isUser                     (_zz_149                                                     ), //i
    .io_cpu_fill_valid                        (_zz_150                                                     ), //i
    .io_cpu_fill_payload                      (IBusCachedPlugin_cache_io_cpu_decode_physicalAddress[31:0]  ), //i
    .io_mem_cmd_valid                         (IBusCachedPlugin_cache_io_mem_cmd_valid                     ), //o
    .io_mem_cmd_ready                         (iBus_cmd_ready                                              ), //i
    .io_mem_cmd_payload_address               (IBusCachedPlugin_cache_io_mem_cmd_payload_address[31:0]     ), //o
    .io_mem_cmd_payload_size                  (IBusCachedPlugin_cache_io_mem_cmd_payload_size[2:0]         ), //o
    .io_mem_rsp_valid                         (iBus_rsp_valid                                              ), //i
    .io_mem_rsp_payload_data                  (iBus_rsp_payload_data[31:0]                                 ), //i
    .io_mem_rsp_payload_error                 (iBus_rsp_payload_error                                      ), //i
    .clk                                      (clk                                                         ), //i
    .resetn                                   (resetn                                                      )  //i
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
    .wr_en      (_zz_151                                        ), //i
    .wr_mask    (_zz_152                                        ), //i
    .wr_addr    (lastStageRegFileWrite_payload_address[4:0]     ), //i
    .wr_data    (_zz_75[31:0]                                   ), //i
    .rd_clk     (clk                                            ), //i
    .rd_en      (_zz_153                                        ), //i
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
    .wr_en      (_zz_154                                        ), //i
    .wr_mask    (_zz_155                                        ), //i
    .wr_addr    (lastStageRegFileWrite_payload_address[4:0]     ), //i
    .wr_data    (_zz_75[31:0]                                   ), //i
    .rd_clk     (clk                                            ), //i
    .rd_en      (_zz_156                                        ), //i
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
  assign decode_IS_CSR = _zz_189[0];
  assign decode_IS_DIV = _zz_190[0];
  assign decode_IS_RS2_SIGNED = _zz_191[0];
  assign decode_IS_RS1_SIGNED = _zz_192[0];
  assign decode_IS_MUL = _zz_193[0];
  assign decode_SHIFT_CTRL = _zz_9;
  assign _zz_10 = _zz_11;
  assign decode_ALU_BITWISE_CTRL = _zz_12;
  assign _zz_13 = _zz_14;
  assign decode_SRC_LESS_UNSIGNED = _zz_194[0];
  assign decode_MEMORY_STORE = _zz_195[0];
  assign decode_BYPASSABLE_EXECUTE_STAGE = _zz_196[0];
  assign decode_ALU_CTRL = _zz_15;
  assign _zz_16 = _zz_17;
  assign decode_MEMORY_ENABLE = _zz_197[0];
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
  assign decode_RS2_USE = _zz_198[0];
  assign decode_RS1_USE = _zz_199[0];
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
    if(_zz_157)begin
      if(_zz_158)begin
        if(_zz_92)begin
          decode_RS2 = _zz_40;
        end
      end
    end
    if(_zz_159)begin
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
    if(_zz_157)begin
      if(_zz_158)begin
        if(_zz_91)begin
          decode_RS1 = _zz_40;
        end
      end
    end
    if(_zz_159)begin
      if(execute_BYPASSABLE_EXECUTE_STAGE)begin
        if(_zz_93)begin
          decode_RS1 = _zz_21;
        end
      end
    end
  end

  assign execute_SHIFT_RIGHT = _zz_201;
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
    if(_zz_160)begin
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
  assign decode_SRC_USE_SUB_LESS = _zz_203[0];
  assign decode_SRC_ADD_ZERO = _zz_204[0];
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

  assign decode_INSTRUCTION_ANTICIPATED = (decode_arbitration_isStuck ? decode_INSTRUCTION : IBusCachedPlugin_cache_io_cpu_fetch_data);
  always @ (*) begin
    decode_REGFILE_WRITE_VALID = _zz_205[0];
    if((decode_INSTRUCTION[11 : 7] == 5'h0))begin
      decode_REGFILE_WRITE_VALID = 1'b0;
    end
  end

  assign decode_LEGAL_INSTRUCTION = ({((decode_INSTRUCTION & 32'h0000005f) == 32'h00000017),{((decode_INSTRUCTION & 32'h0000007f) == 32'h0000006f),{((decode_INSTRUCTION & 32'h0000106f) == 32'h00000003),{((decode_INSTRUCTION & _zz_273) == 32'h00001073),{(_zz_274 == _zz_275),{_zz_276,{_zz_277,_zz_278}}}}}}} != 20'h0);
  always @ (*) begin
    _zz_40 = memory_REGFILE_WRITE_DATA;
    if((memory_arbitration_isValid && memory_MEMORY_ENABLE))begin
      _zz_40 = memory_DBusSimplePlugin_rspFormated;
    end
    if(_zz_161)begin
      _zz_40 = ((memory_INSTRUCTION[13 : 12] == 2'b00) ? memory_MulDivIterativePlugin_accumulator[31 : 0] : memory_MulDivIterativePlugin_accumulator[63 : 32]);
    end
    if(_zz_162)begin
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
  assign decode_FLUSH_ALL = _zz_206[0];
  always @ (*) begin
    _zz_41 = _zz_41_2;
    if(_zz_163)begin
      _zz_41 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_41_2 = _zz_41_1;
    if(_zz_164)begin
      _zz_41_2 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_41_1 = _zz_41_0;
    if(_zz_165)begin
      _zz_41_1 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_41_0 = IBusCachedPlugin_rsp_issueDetected;
    if(_zz_166)begin
      _zz_41_0 = 1'b1;
    end
  end

  assign decode_INSTRUCTION = IBusCachedPlugin_iBusRsp_output_payload_rsp_inst;
  always @ (*) begin
    _zz_42 = execute_FORMAL_PC_NEXT;
    if(BranchPlugin_jumpInterface_valid)begin
      _zz_42 = BranchPlugin_jumpInterface_payload;
    end
  end

  assign decode_PC = IBusCachedPlugin_iBusRsp_output_payload_pc;
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
    if(_zz_167)begin
      decode_arbitration_removeIt = 1'b1;
    end
    if(decode_arbitration_isFlushed)begin
      decode_arbitration_removeIt = 1'b1;
    end
  end

  assign decode_arbitration_flushIt = 1'b0;
  always @ (*) begin
    decode_arbitration_flushNext = 1'b0;
    if(_zz_167)begin
      decode_arbitration_flushNext = 1'b1;
    end
  end

  always @ (*) begin
    execute_arbitration_haltItself = 1'b0;
    if(((((execute_arbitration_isValid && execute_MEMORY_ENABLE) && (! dBus_cmd_ready)) && (! execute_DBusSimplePlugin_skipCmd)) && (! _zz_54)))begin
      execute_arbitration_haltItself = 1'b1;
    end
    if(_zz_168)begin
      if((! execute_CsrPlugin_wfiWake))begin
        execute_arbitration_haltItself = 1'b1;
      end
    end
    if(_zz_160)begin
      if(execute_CsrPlugin_blockedBySideEffects)begin
        execute_arbitration_haltItself = 1'b1;
      end
    end
  end

  assign execute_arbitration_haltByOther = 1'b0;
  always @ (*) begin
    execute_arbitration_removeIt = 1'b0;
    if(_zz_169)begin
      execute_arbitration_removeIt = 1'b1;
    end
    if(execute_arbitration_isFlushed)begin
      execute_arbitration_removeIt = 1'b1;
    end
  end

  assign execute_arbitration_flushIt = 1'b0;
  always @ (*) begin
    execute_arbitration_flushNext = 1'b0;
    if(_zz_169)begin
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
    if(_zz_161)begin
      if(((! memory_MulDivIterativePlugin_frontendOk) || (! memory_MulDivIterativePlugin_mul_counter_willOverflowIfInc)))begin
        memory_arbitration_haltItself = 1'b1;
      end
      if(_zz_170)begin
        memory_arbitration_haltItself = 1'b1;
      end
    end
    if(_zz_162)begin
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
    if(_zz_171)begin
      memory_arbitration_flushNext = 1'b1;
    end
    if(_zz_172)begin
      memory_arbitration_flushNext = 1'b1;
    end
  end

  assign lastStageInstruction = memory_INSTRUCTION;
  assign lastStagePc = memory_PC;
  assign lastStageIsValid = memory_arbitration_isValid;
  assign lastStageIsFiring = memory_arbitration_isFiring;
  always @ (*) begin
    IBusCachedPlugin_fetcherHalt = 1'b0;
    if(({CsrPlugin_exceptionPortCtrl_exceptionValids_memory,{CsrPlugin_exceptionPortCtrl_exceptionValids_execute,CsrPlugin_exceptionPortCtrl_exceptionValids_decode}} != 3'b000))begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(_zz_171)begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(_zz_172)begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_incomingInstruction = 1'b0;
    if((IBusCachedPlugin_iBusRsp_stages_1_input_valid || IBusCachedPlugin_iBusRsp_stages_2_input_valid))begin
      IBusCachedPlugin_incomingInstruction = 1'b1;
    end
  end

  always @ (*) begin
    CsrPlugin_inWfi = 1'b0;
    if(_zz_168)begin
      CsrPlugin_inWfi = 1'b1;
    end
  end

  assign CsrPlugin_thirdPartyWake = 1'b0;
  always @ (*) begin
    CsrPlugin_jumpInterface_valid = 1'b0;
    if(_zz_171)begin
      CsrPlugin_jumpInterface_valid = 1'b1;
    end
    if(_zz_172)begin
      CsrPlugin_jumpInterface_valid = 1'b1;
    end
  end

  always @ (*) begin
    CsrPlugin_jumpInterface_payload = 32'h0;
    if(_zz_171)begin
      CsrPlugin_jumpInterface_payload = {CsrPlugin_xtvec_base,2'b00};
    end
    if(_zz_172)begin
      case(_zz_173)
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
  assign IBusCachedPlugin_externalFlush = ({memory_arbitration_flushNext,{execute_arbitration_flushNext,decode_arbitration_flushNext}} != 3'b000);
  assign IBusCachedPlugin_jump_pcLoad_valid = ({BranchPlugin_jumpInterface_valid,CsrPlugin_jumpInterface_valid} != 2'b00);
  assign _zz_43 = {BranchPlugin_jumpInterface_valid,CsrPlugin_jumpInterface_valid};
  assign IBusCachedPlugin_jump_pcLoad_payload = (_zz_207[0] ? CsrPlugin_jumpInterface_payload : BranchPlugin_jumpInterface_payload);
  always @ (*) begin
    IBusCachedPlugin_fetchPc_correction = 1'b0;
    if(IBusCachedPlugin_fetchPc_redo_valid)begin
      IBusCachedPlugin_fetchPc_correction = 1'b1;
    end
    if(IBusCachedPlugin_jump_pcLoad_valid)begin
      IBusCachedPlugin_fetchPc_correction = 1'b1;
    end
  end

  assign IBusCachedPlugin_fetchPc_corrected = (IBusCachedPlugin_fetchPc_correction || IBusCachedPlugin_fetchPc_correctionReg);
  always @ (*) begin
    IBusCachedPlugin_fetchPc_pcRegPropagate = 1'b0;
    if(IBusCachedPlugin_iBusRsp_stages_1_input_ready)begin
      IBusCachedPlugin_fetchPc_pcRegPropagate = 1'b1;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_fetchPc_pc = (IBusCachedPlugin_fetchPc_pcReg + _zz_210);
    if(IBusCachedPlugin_fetchPc_redo_valid)begin
      IBusCachedPlugin_fetchPc_pc = IBusCachedPlugin_fetchPc_redo_payload;
    end
    if(IBusCachedPlugin_jump_pcLoad_valid)begin
      IBusCachedPlugin_fetchPc_pc = IBusCachedPlugin_jump_pcLoad_payload;
    end
    IBusCachedPlugin_fetchPc_pc[0] = 1'b0;
    IBusCachedPlugin_fetchPc_pc[1] = 1'b0;
  end

  always @ (*) begin
    IBusCachedPlugin_fetchPc_flushed = 1'b0;
    if(IBusCachedPlugin_fetchPc_redo_valid)begin
      IBusCachedPlugin_fetchPc_flushed = 1'b1;
    end
    if(IBusCachedPlugin_jump_pcLoad_valid)begin
      IBusCachedPlugin_fetchPc_flushed = 1'b1;
    end
  end

  assign IBusCachedPlugin_fetchPc_output_valid = ((! IBusCachedPlugin_fetcherHalt) && IBusCachedPlugin_fetchPc_booted);
  assign IBusCachedPlugin_fetchPc_output_payload = IBusCachedPlugin_fetchPc_pc;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_redoFetch = 1'b0;
    if(IBusCachedPlugin_rsp_redoFetch)begin
      IBusCachedPlugin_iBusRsp_redoFetch = 1'b1;
    end
  end

  assign IBusCachedPlugin_iBusRsp_stages_0_input_valid = IBusCachedPlugin_fetchPc_output_valid;
  assign IBusCachedPlugin_fetchPc_output_ready = IBusCachedPlugin_iBusRsp_stages_0_input_ready;
  assign IBusCachedPlugin_iBusRsp_stages_0_input_payload = IBusCachedPlugin_fetchPc_output_payload;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_stages_0_halt = 1'b0;
    if(IBusCachedPlugin_cache_io_cpu_prefetch_haltIt)begin
      IBusCachedPlugin_iBusRsp_stages_0_halt = 1'b1;
    end
  end

  assign _zz_44 = (! IBusCachedPlugin_iBusRsp_stages_0_halt);
  assign IBusCachedPlugin_iBusRsp_stages_0_input_ready = (IBusCachedPlugin_iBusRsp_stages_0_output_ready && _zz_44);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_valid = (IBusCachedPlugin_iBusRsp_stages_0_input_valid && _zz_44);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_payload = IBusCachedPlugin_iBusRsp_stages_0_input_payload;
  assign IBusCachedPlugin_iBusRsp_stages_1_halt = 1'b0;
  assign _zz_45 = (! IBusCachedPlugin_iBusRsp_stages_1_halt);
  assign IBusCachedPlugin_iBusRsp_stages_1_input_ready = (IBusCachedPlugin_iBusRsp_stages_1_output_ready && _zz_45);
  assign IBusCachedPlugin_iBusRsp_stages_1_output_valid = (IBusCachedPlugin_iBusRsp_stages_1_input_valid && _zz_45);
  assign IBusCachedPlugin_iBusRsp_stages_1_output_payload = IBusCachedPlugin_iBusRsp_stages_1_input_payload;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_stages_2_halt = 1'b0;
    if((_zz_41 || IBusCachedPlugin_rsp_iBusRspOutputHalt))begin
      IBusCachedPlugin_iBusRsp_stages_2_halt = 1'b1;
    end
  end

  assign _zz_46 = (! IBusCachedPlugin_iBusRsp_stages_2_halt);
  assign IBusCachedPlugin_iBusRsp_stages_2_input_ready = (IBusCachedPlugin_iBusRsp_stages_2_output_ready && _zz_46);
  assign IBusCachedPlugin_iBusRsp_stages_2_output_valid = (IBusCachedPlugin_iBusRsp_stages_2_input_valid && _zz_46);
  assign IBusCachedPlugin_iBusRsp_stages_2_output_payload = IBusCachedPlugin_iBusRsp_stages_2_input_payload;
  assign IBusCachedPlugin_fetchPc_redo_valid = IBusCachedPlugin_iBusRsp_redoFetch;
  assign IBusCachedPlugin_fetchPc_redo_payload = IBusCachedPlugin_iBusRsp_stages_2_input_payload;
  assign IBusCachedPlugin_iBusRsp_flush = ((decode_arbitration_removeIt || (decode_arbitration_flushNext && (! decode_arbitration_isStuck))) || IBusCachedPlugin_iBusRsp_redoFetch);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_ready = _zz_47;
  assign _zz_47 = ((1'b0 && (! _zz_48)) || IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign _zz_48 = _zz_49;
  assign IBusCachedPlugin_iBusRsp_stages_1_input_valid = _zz_48;
  assign IBusCachedPlugin_iBusRsp_stages_1_input_payload = IBusCachedPlugin_fetchPc_pcReg;
  assign IBusCachedPlugin_iBusRsp_stages_1_output_ready = ((1'b0 && (! _zz_50)) || IBusCachedPlugin_iBusRsp_stages_2_input_ready);
  assign _zz_50 = _zz_51;
  assign IBusCachedPlugin_iBusRsp_stages_2_input_valid = _zz_50;
  assign IBusCachedPlugin_iBusRsp_stages_2_input_payload = _zz_52;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_readyForError = 1'b1;
    if((! IBusCachedPlugin_pcValids_0))begin
      IBusCachedPlugin_iBusRsp_readyForError = 1'b0;
    end
  end

  assign IBusCachedPlugin_pcValids_0 = IBusCachedPlugin_injector_nextPcCalc_valids_1;
  assign IBusCachedPlugin_pcValids_1 = IBusCachedPlugin_injector_nextPcCalc_valids_2;
  assign IBusCachedPlugin_pcValids_2 = IBusCachedPlugin_injector_nextPcCalc_valids_3;
  assign IBusCachedPlugin_iBusRsp_output_ready = (! decode_arbitration_isStuck);
  assign decode_arbitration_isValid = IBusCachedPlugin_iBusRsp_output_valid;
  assign iBus_cmd_valid = IBusCachedPlugin_cache_io_mem_cmd_valid;
  always @ (*) begin
    iBus_cmd_payload_address = IBusCachedPlugin_cache_io_mem_cmd_payload_address;
    iBus_cmd_payload_address = IBusCachedPlugin_cache_io_mem_cmd_payload_address;
  end

  assign iBus_cmd_payload_size = IBusCachedPlugin_cache_io_mem_cmd_payload_size;
  assign IBusCachedPlugin_s0_tightlyCoupledHit = 1'b0;
  assign _zz_136 = (IBusCachedPlugin_iBusRsp_stages_0_input_valid && (! IBusCachedPlugin_s0_tightlyCoupledHit));
  assign _zz_137 = (IBusCachedPlugin_iBusRsp_stages_1_input_valid && (! IBusCachedPlugin_s1_tightlyCoupledHit));
  assign _zz_138 = (! IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign _zz_147 = (IBusCachedPlugin_iBusRsp_stages_2_input_valid && (! IBusCachedPlugin_s2_tightlyCoupledHit));
  assign _zz_148 = (! IBusCachedPlugin_iBusRsp_stages_2_input_ready);
  assign _zz_149 = (CsrPlugin_privilege == 2'b00);
  assign IBusCachedPlugin_rsp_iBusRspOutputHalt = 1'b0;
  assign IBusCachedPlugin_rsp_issueDetected = 1'b0;
  always @ (*) begin
    IBusCachedPlugin_rsp_redoFetch = 1'b0;
    if(_zz_166)begin
      IBusCachedPlugin_rsp_redoFetch = 1'b1;
    end
    if(_zz_164)begin
      IBusCachedPlugin_rsp_redoFetch = 1'b1;
    end
  end

  always @ (*) begin
    _zz_150 = (IBusCachedPlugin_rsp_redoFetch && (! IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling));
    if(_zz_164)begin
      _zz_150 = 1'b1;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_decodeExceptionPort_valid = 1'b0;
    if(_zz_165)begin
      IBusCachedPlugin_decodeExceptionPort_valid = IBusCachedPlugin_iBusRsp_readyForError;
    end
    if(_zz_163)begin
      IBusCachedPlugin_decodeExceptionPort_valid = IBusCachedPlugin_iBusRsp_readyForError;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_decodeExceptionPort_payload_code = 4'bxxxx;
    if(_zz_165)begin
      IBusCachedPlugin_decodeExceptionPort_payload_code = 4'b1100;
    end
    if(_zz_163)begin
      IBusCachedPlugin_decodeExceptionPort_payload_code = 4'b0001;
    end
  end

  assign IBusCachedPlugin_decodeExceptionPort_payload_badAddr = {IBusCachedPlugin_iBusRsp_stages_2_input_payload[31 : 2],2'b00};
  assign IBusCachedPlugin_iBusRsp_output_valid = IBusCachedPlugin_iBusRsp_stages_2_output_valid;
  assign IBusCachedPlugin_iBusRsp_stages_2_output_ready = IBusCachedPlugin_iBusRsp_output_ready;
  assign IBusCachedPlugin_iBusRsp_output_payload_rsp_inst = IBusCachedPlugin_cache_io_cpu_decode_data;
  assign IBusCachedPlugin_iBusRsp_output_payload_pc = IBusCachedPlugin_iBusRsp_stages_2_output_payload;
  assign _zz_143 = 1'b1;
  assign _zz_141 = 1'b1;
  assign _zz_142 = 1'b1;
  assign _zz_140 = 1'b0;
  assign _zz_144 = 1'b0;
  assign _zz_145 = 1'b0;
  assign _zz_135 = (decode_arbitration_isValid && decode_FLUSH_ALL);
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
    if(_zz_174)begin
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
    if(_zz_174)begin
      DBusSimplePlugin_memoryExceptionPort_payload_code = 4'b0101;
    end
    if(memory_ALIGNEMENT_FAULT)begin
      DBusSimplePlugin_memoryExceptionPort_payload_code = {1'd0, _zz_211};
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
    case(_zz_187)
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
  assign _zz_61 = {({_zz_64,(_zz_291 == _zz_292)} != 2'b00),{((_zz_293 == _zz_294) != 1'b0),{(_zz_295 != 1'b0),{(_zz_296 != _zz_297),{_zz_298,{_zz_299,_zz_300}}}}}};
  assign _zz_68 = _zz_61[2 : 1];
  assign _zz_39 = _zz_68;
  assign _zz_69 = _zz_61[7 : 6];
  assign _zz_38 = _zz_69;
  assign _zz_70 = _zz_61[9 : 8];
  assign _zz_37 = _zz_70;
  assign _zz_71 = _zz_61[18 : 17];
  assign _zz_36 = _zz_71;
  assign _zz_72 = _zz_61[21 : 20];
  assign _zz_35 = _zz_72;
  assign _zz_73 = _zz_61[28 : 27];
  assign _zz_34 = _zz_73;
  assign _zz_74 = _zz_61[30 : 29];
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
        _zz_77 = {31'd0, _zz_212};
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
        _zz_78 = {29'd0, _zz_213};
      end
      `Src1CtrlEnum_defaultEncoding_IMU : begin
        _zz_78 = {decode_INSTRUCTION[31 : 12],12'h0};
      end
      default : begin
        _zz_78 = {27'd0, _zz_214};
      end
    endcase
  end

  assign _zz_79 = _zz_215[11];
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

  assign _zz_81 = _zz_216[11];
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
    execute_SrcPlugin_addSub = _zz_217;
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
    if(_zz_175)begin
      if(_zz_176)begin
        if(_zz_91)begin
          _zz_86 = 1'b1;
        end
      end
    end
    if(_zz_177)begin
      if(_zz_178)begin
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
    if(_zz_175)begin
      if(_zz_176)begin
        if(_zz_92)begin
          _zz_87 = 1'b1;
        end
      end
    end
    if(_zz_177)begin
      if(_zz_178)begin
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
    if(_zz_161)begin
      if(_zz_170)begin
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
      memory_MulDivIterativePlugin_mul_counter_valueNext = (memory_MulDivIterativePlugin_mul_counter_value + _zz_225);
    end
    if(memory_MulDivIterativePlugin_mul_counter_willClear)begin
      memory_MulDivIterativePlugin_mul_counter_valueNext = 4'b0000;
    end
  end

  always @ (*) begin
    memory_MulDivIterativePlugin_div_counter_willIncrement = 1'b0;
    if(_zz_162)begin
      if(_zz_179)begin
        memory_MulDivIterativePlugin_div_counter_willIncrement = 1'b1;
      end
    end
  end

  always @ (*) begin
    memory_MulDivIterativePlugin_div_counter_willClear = 1'b0;
    if(_zz_180)begin
      memory_MulDivIterativePlugin_div_counter_willClear = 1'b1;
    end
  end

  assign memory_MulDivIterativePlugin_div_counter_willOverflowIfInc = (memory_MulDivIterativePlugin_div_counter_value == 6'h21);
  assign memory_MulDivIterativePlugin_div_counter_willOverflow = (memory_MulDivIterativePlugin_div_counter_willOverflowIfInc && memory_MulDivIterativePlugin_div_counter_willIncrement);
  always @ (*) begin
    if(memory_MulDivIterativePlugin_div_counter_willOverflow)begin
      memory_MulDivIterativePlugin_div_counter_valueNext = 6'h0;
    end else begin
      memory_MulDivIterativePlugin_div_counter_valueNext = (memory_MulDivIterativePlugin_div_counter_value + _zz_245);
    end
    if(memory_MulDivIterativePlugin_div_counter_willClear)begin
      memory_MulDivIterativePlugin_div_counter_valueNext = 6'h0;
    end
  end

  assign _zz_95 = memory_MulDivIterativePlugin_rs1[31 : 0];
  assign memory_MulDivIterativePlugin_div_stage_0_remainderShifted = {memory_MulDivIterativePlugin_accumulator[31 : 0],_zz_95[31]};
  assign memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator = (memory_MulDivIterativePlugin_div_stage_0_remainderShifted - _zz_246);
  assign memory_MulDivIterativePlugin_div_stage_0_outRemainder = ((! memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator[32]) ? _zz_247 : _zz_248);
  assign memory_MulDivIterativePlugin_div_stage_0_outNumerator = _zz_249[31:0];
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
  assign _zz_103 = {decodeExceptionPort_valid,IBusCachedPlugin_decodeExceptionPort_valid};
  assign _zz_104 = _zz_259[0];
  assign _zz_105 = {BranchPlugin_branchExceptionPort_valid,CsrPlugin_selfException_valid};
  assign _zz_106 = _zz_261[0];
  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_decode = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
    if(_zz_167)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_decode = 1'b1;
    end
    if(decode_arbitration_isFlushed)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_decode = 1'b0;
    end
  end

  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_execute = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
    if(_zz_169)begin
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
    if(_zz_181)begin
      CsrPlugin_selfException_valid = 1'b1;
    end
    if(_zz_182)begin
      CsrPlugin_selfException_valid = 1'b1;
    end
  end

  always @ (*) begin
    CsrPlugin_selfException_payload_code = 4'bxxxx;
    if(_zz_181)begin
      CsrPlugin_selfException_payload_code = 4'b0010;
    end
    if(_zz_182)begin
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
    case(_zz_188)
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
  assign _zz_110 = _zz_263[19];
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

  assign _zz_112 = _zz_264[11];
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

  assign _zz_114 = _zz_265[11];
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

  assign execute_CsrPlugin_readData = (((((_zz_117 | _zz_118) | (_zz_119 | _zz_437)) | ((_zz_120 | _zz_121) | (_zz_122 | _zz_123))) | (((_zz_124 | _zz_125) | (_zz_126 | _zz_127)) | ((_zz_128 | _zz_129) | (_zz_130 | _zz_131)))) | ((_zz_132 | _zz_133) | _zz_134));
  assign _zz_151 = (_zz_32 && 1'b1);
  assign _zz_152 = 1'b1;
  assign _zz_153 = (1'b1 && 1'b1);
  assign _zz_154 = (_zz_32 && 1'b1);
  assign _zz_155 = 1'b1;
  assign _zz_156 = (1'b1 && 1'b1);
  always @ (posedge clk or negedge resetn) begin
    if (!resetn) begin
      IBusCachedPlugin_fetchPc_pcReg <= 32'h0;
      IBusCachedPlugin_fetchPc_correctionReg <= 1'b0;
      IBusCachedPlugin_fetchPc_booted <= 1'b0;
      IBusCachedPlugin_fetchPc_inc <= 1'b0;
      _zz_49 <= 1'b0;
      _zz_51 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_0 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      IBusCachedPlugin_rspCounter <= _zz_53;
      IBusCachedPlugin_rspCounter <= 32'h0;
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
      if(IBusCachedPlugin_fetchPc_correction)begin
        IBusCachedPlugin_fetchPc_correctionReg <= 1'b1;
      end
      if((IBusCachedPlugin_fetchPc_output_valid && IBusCachedPlugin_fetchPc_output_ready))begin
        IBusCachedPlugin_fetchPc_correctionReg <= 1'b0;
      end
      IBusCachedPlugin_fetchPc_booted <= 1'b1;
      if((IBusCachedPlugin_fetchPc_correction || IBusCachedPlugin_fetchPc_pcRegPropagate))begin
        IBusCachedPlugin_fetchPc_inc <= 1'b0;
      end
      if((IBusCachedPlugin_fetchPc_output_valid && IBusCachedPlugin_fetchPc_output_ready))begin
        IBusCachedPlugin_fetchPc_inc <= 1'b1;
      end
      if(((! IBusCachedPlugin_fetchPc_output_valid) && IBusCachedPlugin_fetchPc_output_ready))begin
        IBusCachedPlugin_fetchPc_inc <= 1'b0;
      end
      if((IBusCachedPlugin_fetchPc_booted && ((IBusCachedPlugin_fetchPc_output_ready || IBusCachedPlugin_fetchPc_correction) || IBusCachedPlugin_fetchPc_pcRegPropagate)))begin
        IBusCachedPlugin_fetchPc_pcReg <= IBusCachedPlugin_fetchPc_pc;
      end
      if(IBusCachedPlugin_iBusRsp_flush)begin
        _zz_49 <= 1'b0;
      end
      if(_zz_47)begin
        _zz_49 <= (IBusCachedPlugin_iBusRsp_stages_0_output_valid && (! 1'b0));
      end
      if(IBusCachedPlugin_iBusRsp_flush)begin
        _zz_51 <= 1'b0;
      end
      if(IBusCachedPlugin_iBusRsp_stages_1_output_ready)begin
        _zz_51 <= (IBusCachedPlugin_iBusRsp_stages_1_output_valid && (! IBusCachedPlugin_iBusRsp_flush));
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_0 <= 1'b0;
      end
      if((! (! IBusCachedPlugin_iBusRsp_stages_1_input_ready)))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_0 <= 1'b1;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      end
      if((! (! IBusCachedPlugin_iBusRsp_stages_2_input_ready)))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_1 <= IBusCachedPlugin_injector_nextPcCalc_valids_0;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      end
      if((! execute_arbitration_isStuck))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_2 <= IBusCachedPlugin_injector_nextPcCalc_valids_1;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      end
      if((! memory_arbitration_isStuck))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_3 <= IBusCachedPlugin_injector_nextPcCalc_valids_2;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      end
      if(iBus_rsp_valid)begin
        IBusCachedPlugin_rspCounter <= (IBusCachedPlugin_rspCounter + 32'h00000001);
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
      if(_zz_183)begin
        if(_zz_184)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_185)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_186)begin
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
      if(_zz_171)begin
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
      if(_zz_172)begin
        case(_zz_173)
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
          CsrPlugin_mstatus_MPIE <= _zz_266[0];
          CsrPlugin_mstatus_MIE <= _zz_267[0];
        end
      end
      if(execute_CsrPlugin_csr_772)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_mie_MEIE <= _zz_269[0];
          CsrPlugin_mie_MTIE <= _zz_270[0];
          CsrPlugin_mie_MSIE <= _zz_271[0];
        end
      end
    end
  end

  always @ (posedge clk) begin
    if(IBusCachedPlugin_iBusRsp_stages_1_output_ready)begin
      _zz_52 <= IBusCachedPlugin_iBusRsp_stages_1_output_payload;
    end
    if(IBusCachedPlugin_iBusRsp_stages_1_input_ready)begin
      IBusCachedPlugin_s1_tightlyCoupledHit <= IBusCachedPlugin_s0_tightlyCoupledHit;
    end
    if(IBusCachedPlugin_iBusRsp_stages_2_input_ready)begin
      IBusCachedPlugin_s2_tightlyCoupledHit <= IBusCachedPlugin_s1_tightlyCoupledHit;
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
    if(_zz_161)begin
      if(_zz_170)begin
        memory_MulDivIterativePlugin_rs2 <= (memory_MulDivIterativePlugin_rs2 >>> 4);
        memory_MulDivIterativePlugin_accumulator <= ({_zz_226,memory_MulDivIterativePlugin_accumulator[31 : 0]} >>> 4);
      end
    end
    if((memory_MulDivIterativePlugin_div_counter_value == 6'h20))begin
      memory_MulDivIterativePlugin_div_done <= 1'b1;
    end
    if((! memory_arbitration_isStuck))begin
      memory_MulDivIterativePlugin_div_done <= 1'b0;
    end
    if(_zz_162)begin
      if(_zz_179)begin
        memory_MulDivIterativePlugin_rs1[31 : 0] <= memory_MulDivIterativePlugin_div_stage_0_outNumerator;
        memory_MulDivIterativePlugin_accumulator[31 : 0] <= memory_MulDivIterativePlugin_div_stage_0_outRemainder;
        if((memory_MulDivIterativePlugin_div_counter_value == 6'h20))begin
          memory_MulDivIterativePlugin_div_result <= _zz_250[31:0];
        end
      end
    end
    if(_zz_180)begin
      memory_MulDivIterativePlugin_accumulator <= 65'h0;
      memory_MulDivIterativePlugin_rs1 <= ((_zz_98 ? (~ _zz_99) : _zz_99) + _zz_256);
      memory_MulDivIterativePlugin_rs2 <= ((_zz_97 ? (~ execute_RS2) : execute_RS2) + _zz_258);
      memory_MulDivIterativePlugin_div_needRevert <= ((_zz_98 ^ (_zz_97 && (! execute_INSTRUCTION[13]))) && (! (((execute_RS2 == 32'h0) && execute_IS_RS2_SIGNED) && (! execute_INSTRUCTION[13]))));
    end
    CsrPlugin_mip_MEIP <= externalInterrupt;
    CsrPlugin_mip_MTIP <= timerInterrupt;
    CsrPlugin_mip_MSIP <= softwareInterrupt;
    CsrPlugin_mcycle <= (CsrPlugin_mcycle + 64'h0000000000000001);
    if(memory_arbitration_isFiring)begin
      CsrPlugin_minstret <= (CsrPlugin_minstret + 64'h0000000000000001);
    end
    if(_zz_167)begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= (_zz_104 ? IBusCachedPlugin_decodeExceptionPort_payload_code : decodeExceptionPort_payload_code);
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= (_zz_104 ? IBusCachedPlugin_decodeExceptionPort_payload_badAddr : decodeExceptionPort_payload_badAddr);
    end
    if(_zz_169)begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= (_zz_106 ? CsrPlugin_selfException_payload_code : BranchPlugin_branchExceptionPort_payload_code);
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= (_zz_106 ? CsrPlugin_selfException_payload_badAddr : BranchPlugin_branchExceptionPort_payload_badAddr);
    end
    if(DBusSimplePlugin_memoryExceptionPort_valid)begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= DBusSimplePlugin_memoryExceptionPort_payload_code;
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= DBusSimplePlugin_memoryExceptionPort_payload_badAddr;
    end
    if(_zz_183)begin
      if(_zz_184)begin
        CsrPlugin_interrupt_code <= 4'b0111;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
      if(_zz_185)begin
        CsrPlugin_interrupt_code <= 4'b0011;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
      if(_zz_186)begin
        CsrPlugin_interrupt_code <= 4'b1011;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
    end
    if(_zz_171)begin
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
      execute_to_memory_FORMAL_PC_NEXT <= _zz_42;
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
        CsrPlugin_mip_MSIP <= _zz_268[0];
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
        CsrPlugin_mcause_interrupt <= _zz_272[0];
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

module InstructionCache (
  input               io_flush,
  input               io_cpu_prefetch_isValid,
  output reg          io_cpu_prefetch_haltIt,
  input      [31:0]   io_cpu_prefetch_pc,
  input               io_cpu_fetch_isValid,
  input               io_cpu_fetch_isStuck,
  input               io_cpu_fetch_isRemoved,
  input      [31:0]   io_cpu_fetch_pc,
  output     [31:0]   io_cpu_fetch_data,
  input      [31:0]   io_cpu_fetch_mmuRsp_physicalAddress,
  input               io_cpu_fetch_mmuRsp_isIoAccess,
  input               io_cpu_fetch_mmuRsp_allowRead,
  input               io_cpu_fetch_mmuRsp_allowWrite,
  input               io_cpu_fetch_mmuRsp_allowExecute,
  input               io_cpu_fetch_mmuRsp_exception,
  input               io_cpu_fetch_mmuRsp_refilling,
  input               io_cpu_fetch_mmuRsp_bypassTranslation,
  output     [31:0]   io_cpu_fetch_physicalAddress,
  input               io_cpu_decode_isValid,
  input               io_cpu_decode_isStuck,
  input      [31:0]   io_cpu_decode_pc,
  output     [31:0]   io_cpu_decode_physicalAddress,
  output     [31:0]   io_cpu_decode_data,
  output              io_cpu_decode_cacheMiss,
  output              io_cpu_decode_error,
  output              io_cpu_decode_mmuRefilling,
  output              io_cpu_decode_mmuException,
  input               io_cpu_decode_isUser,
  input               io_cpu_fill_valid,
  input      [31:0]   io_cpu_fill_payload,
  output              io_mem_cmd_valid,
  input               io_mem_cmd_ready,
  output     [31:0]   io_mem_cmd_payload_address,
  output     [2:0]    io_mem_cmd_payload_size,
  input               io_mem_rsp_valid,
  input      [31:0]   io_mem_rsp_payload_data,
  input               io_mem_rsp_payload_error,
  input               clk,
  input               resetn
);
  wire                _zz_8;
  wire       [0:0]    _zz_9;
  wire                _zz_10;
  wire       [8:0]    _zz_11;
  wire                _zz_12;
  wire       [0:0]    _zz_13;
  wire                _zz_14;
  wire       [8:0]    _zz_15;
  wire                _zz_16;
  wire       [0:0]    _zz_17;
  wire       [22:0]   _zz_18;
  wire       [4:0]    _zz_19;
  wire                _zz_20;
  wire       [0:0]    _zz_21;
  wire       [22:0]   _zz_22;
  wire       [4:0]    _zz_23;
  reg                 _zz_24;
  reg        [31:0]   _zz_25;
  wire       [31:0]   banks_0_rd_data;
  wire       [31:0]   banks_1_rd_data;
  wire       [22:0]   ways_0_tags_rd_data;
  wire       [22:0]   ways_1_tags_rd_data;
  wire                _zz_26;
  wire                _zz_27;
  wire       [0:0]    _zz_28;
  wire       [0:0]    _zz_29;
  wire       [0:0]    _zz_30;
  wire       [0:0]    _zz_31;
  reg                 _zz_1;
  reg                 _zz_2;
  reg                 _zz_3;
  reg                 _zz_4;
  reg                 lineLoader_fire;
  reg                 lineLoader_valid;
  (* keep , syn_keep *) reg        [31:0]   lineLoader_address /* synthesis syn_keep = 1 */ ;
  reg                 lineLoader_hadError;
  reg                 lineLoader_flushPending;
  reg        [5:0]    lineLoader_flushCounter;
  reg                 _zz_5;
  reg                 lineLoader_cmdSent;
  reg                 lineLoader_wayToAllocate_willIncrement;
  wire                lineLoader_wayToAllocate_willClear;
  reg        [0:0]    lineLoader_wayToAllocate_valueNext;
  reg        [0:0]    lineLoader_wayToAllocate_value;
  wire                lineLoader_wayToAllocate_willOverflowIfInc;
  wire                lineLoader_wayToAllocate_willOverflow;
  (* keep , syn_keep *) reg        [3:0]    lineLoader_wordIndex /* synthesis syn_keep = 1 */ ;
  wire                lineLoader_write_tag_0_valid;
  wire       [4:0]    lineLoader_write_tag_0_payload_address;
  wire                lineLoader_write_tag_0_payload_data_valid;
  wire                lineLoader_write_tag_0_payload_data_error;
  wire       [20:0]   lineLoader_write_tag_0_payload_data_address;
  wire                lineLoader_write_tag_1_valid;
  wire       [4:0]    lineLoader_write_tag_1_payload_address;
  wire                lineLoader_write_tag_1_payload_data_valid;
  wire                lineLoader_write_tag_1_payload_data_error;
  wire       [20:0]   lineLoader_write_tag_1_payload_data_address;
  wire                lineLoader_write_data_0_valid;
  wire       [8:0]    lineLoader_write_data_0_payload_address;
  wire       [31:0]   lineLoader_write_data_0_payload_data;
  wire                lineLoader_write_data_1_valid;
  wire       [8:0]    lineLoader_write_data_1_payload_address;
  wire       [31:0]   lineLoader_write_data_1_payload_data;
  wire       [31:0]   fetchStage_read_banksValue_0_dataMem;
  wire       [31:0]   fetchStage_read_banksValue_0_data;
  wire       [31:0]   fetchStage_read_banksValue_1_dataMem;
  wire       [31:0]   fetchStage_read_banksValue_1_data;
  wire                fetchStage_read_waysValues_0_tag_valid;
  wire                fetchStage_read_waysValues_0_tag_error;
  wire       [20:0]   fetchStage_read_waysValues_0_tag_address;
  wire       [22:0]   _zz_6;
  wire                fetchStage_read_waysValues_1_tag_valid;
  wire                fetchStage_read_waysValues_1_tag_error;
  wire       [20:0]   fetchStage_read_waysValues_1_tag_address;
  wire       [22:0]   _zz_7;
  wire                fetchStage_hit_hits_0;
  wire                fetchStage_hit_hits_1;
  wire                fetchStage_hit_valid;
  wire       [0:0]    fetchStage_hit_wayId;
  wire                fetchStage_hit_error;
  wire       [31:0]   fetchStage_hit_data;
  wire       [31:0]   fetchStage_hit_word;
  reg        [31:0]   io_cpu_fetch_data_regNextWhen;
  reg        [31:0]   decodeStage_mmuRsp_physicalAddress;
  reg                 decodeStage_mmuRsp_isIoAccess;
  reg                 decodeStage_mmuRsp_allowRead;
  reg                 decodeStage_mmuRsp_allowWrite;
  reg                 decodeStage_mmuRsp_allowExecute;
  reg                 decodeStage_mmuRsp_exception;
  reg                 decodeStage_mmuRsp_refilling;
  reg                 decodeStage_mmuRsp_bypassTranslation;
  reg                 decodeStage_hit_valid;
  reg                 decodeStage_hit_error;

  assign _zz_26 = (! lineLoader_flushCounter[5]);
  assign _zz_27 = (lineLoader_flushPending && (! (lineLoader_valid || io_cpu_fetch_isValid)));
  assign _zz_28 = _zz_6[0 : 0];
  assign _zz_29 = _zz_6[1 : 1];
  assign _zz_30 = _zz_7[0 : 0];
  assign _zz_31 = _zz_7[1 : 1];
  Ram_1w_1rs #(
    .wordCount(512),
    .wordWidth(32),
    .clockCrossing(1'b0),
    .technology("auto"),
    .readUnderWrite("dontCare"),
    .wrAddressWidth(9),
    .wrDataWidth(32),
    .wrMaskWidth(1),
    .wrMaskEnable(1'b0),
    .rdAddressWidth(9),
    .rdDataWidth(32) 
  ) banks_0 (
    .wr_clk     (clk                                           ), //i
    .wr_en      (_zz_8                                         ), //i
    .wr_mask    (_zz_9                                         ), //i
    .wr_addr    (lineLoader_write_data_0_payload_address[8:0]  ), //i
    .wr_data    (lineLoader_write_data_0_payload_data[31:0]    ), //i
    .rd_clk     (clk                                           ), //i
    .rd_en      (_zz_10                                        ), //i
    .rd_addr    (_zz_11[8:0]                                   ), //i
    .rd_data    (banks_0_rd_data[31:0]                         )  //o
  );
  Ram_1w_1rs #(
    .wordCount(512),
    .wordWidth(32),
    .clockCrossing(1'b0),
    .technology("auto"),
    .readUnderWrite("dontCare"),
    .wrAddressWidth(9),
    .wrDataWidth(32),
    .wrMaskWidth(1),
    .wrMaskEnable(1'b0),
    .rdAddressWidth(9),
    .rdDataWidth(32) 
  ) banks_1 (
    .wr_clk     (clk                                           ), //i
    .wr_en      (_zz_12                                        ), //i
    .wr_mask    (_zz_13                                        ), //i
    .wr_addr    (lineLoader_write_data_1_payload_address[8:0]  ), //i
    .wr_data    (lineLoader_write_data_1_payload_data[31:0]    ), //i
    .rd_clk     (clk                                           ), //i
    .rd_en      (_zz_14                                        ), //i
    .rd_addr    (_zz_15[8:0]                                   ), //i
    .rd_data    (banks_1_rd_data[31:0]                         )  //o
  );
  Ram_1w_1ra #(
    .wordCount(32),
    .wordWidth(23),
    .technology("auto"),
    .readUnderWrite("dontCare"),
    .wrAddressWidth(5),
    .wrDataWidth(23),
    .wrMaskWidth(1),
    .wrMaskEnable(1'b0),
    .rdAddressWidth(5),
    .rdDataWidth(23) 
  ) ways_0_tags (
    .clk        (clk                                          ), //i
    .wr_en      (_zz_16                                       ), //i
    .wr_mask    (_zz_17                                       ), //i
    .wr_addr    (lineLoader_write_tag_0_payload_address[4:0]  ), //i
    .wr_data    (_zz_18[22:0]                                 ), //i
    .rd_addr    (_zz_19[4:0]                                  ), //i
    .rd_data    (ways_0_tags_rd_data[22:0]                    )  //o
  );
  Ram_1w_1ra #(
    .wordCount(32),
    .wordWidth(23),
    .technology("auto"),
    .readUnderWrite("dontCare"),
    .wrAddressWidth(5),
    .wrDataWidth(23),
    .wrMaskWidth(1),
    .wrMaskEnable(1'b0),
    .rdAddressWidth(5),
    .rdDataWidth(23) 
  ) ways_1_tags (
    .clk        (clk                                          ), //i
    .wr_en      (_zz_20                                       ), //i
    .wr_mask    (_zz_21                                       ), //i
    .wr_addr    (lineLoader_write_tag_1_payload_address[4:0]  ), //i
    .wr_data    (_zz_22[22:0]                                 ), //i
    .rd_addr    (_zz_23[4:0]                                  ), //i
    .rd_data    (ways_1_tags_rd_data[22:0]                    )  //o
  );
  always @(*) begin
    case(fetchStage_hit_wayId)
      1'b0 : begin
        _zz_24 = fetchStage_read_waysValues_0_tag_error;
        _zz_25 = fetchStage_read_banksValue_0_data;
      end
      default : begin
        _zz_24 = fetchStage_read_waysValues_1_tag_error;
        _zz_25 = fetchStage_read_banksValue_1_data;
      end
    endcase
  end

  always @ (*) begin
    _zz_1 = 1'b0;
    if(lineLoader_write_data_1_valid)begin
      _zz_1 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_2 = 1'b0;
    if(lineLoader_write_data_0_valid)begin
      _zz_2 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_3 = 1'b0;
    if(lineLoader_write_tag_1_valid)begin
      _zz_3 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_4 = 1'b0;
    if(lineLoader_write_tag_0_valid)begin
      _zz_4 = 1'b1;
    end
  end

  always @ (*) begin
    lineLoader_fire = 1'b0;
    if(io_mem_rsp_valid)begin
      if((lineLoader_wordIndex == 4'b1111))begin
        lineLoader_fire = 1'b1;
      end
    end
  end

  always @ (*) begin
    io_cpu_prefetch_haltIt = (lineLoader_valid || lineLoader_flushPending);
    if(_zz_26)begin
      io_cpu_prefetch_haltIt = 1'b1;
    end
    if((! _zz_5))begin
      io_cpu_prefetch_haltIt = 1'b1;
    end
    if(io_flush)begin
      io_cpu_prefetch_haltIt = 1'b1;
    end
  end

  assign io_mem_cmd_valid = (lineLoader_valid && (! lineLoader_cmdSent));
  assign io_mem_cmd_payload_address = {lineLoader_address[31 : 6],6'h0};
  assign io_mem_cmd_payload_size = 3'b110;
  always @ (*) begin
    lineLoader_wayToAllocate_willIncrement = 1'b0;
    if((! lineLoader_valid))begin
      lineLoader_wayToAllocate_willIncrement = 1'b1;
    end
  end

  assign lineLoader_wayToAllocate_willClear = 1'b0;
  assign lineLoader_wayToAllocate_willOverflowIfInc = (lineLoader_wayToAllocate_value == 1'b1);
  assign lineLoader_wayToAllocate_willOverflow = (lineLoader_wayToAllocate_willOverflowIfInc && lineLoader_wayToAllocate_willIncrement);
  always @ (*) begin
    lineLoader_wayToAllocate_valueNext = (lineLoader_wayToAllocate_value + lineLoader_wayToAllocate_willIncrement);
    if(lineLoader_wayToAllocate_willClear)begin
      lineLoader_wayToAllocate_valueNext = 1'b0;
    end
  end

  assign lineLoader_write_tag_0_valid = (((lineLoader_wayToAllocate_value == 1'b0) && lineLoader_fire) || (! lineLoader_flushCounter[5]));
  assign lineLoader_write_tag_0_payload_address = (lineLoader_flushCounter[5] ? lineLoader_address[10 : 6] : lineLoader_flushCounter[4 : 0]);
  assign lineLoader_write_tag_0_payload_data_valid = lineLoader_flushCounter[5];
  assign lineLoader_write_tag_0_payload_data_error = (lineLoader_hadError || io_mem_rsp_payload_error);
  assign lineLoader_write_tag_0_payload_data_address = lineLoader_address[31 : 11];
  assign lineLoader_write_tag_1_valid = (((lineLoader_wayToAllocate_value == 1'b1) && lineLoader_fire) || (! lineLoader_flushCounter[5]));
  assign lineLoader_write_tag_1_payload_address = (lineLoader_flushCounter[5] ? lineLoader_address[10 : 6] : lineLoader_flushCounter[4 : 0]);
  assign lineLoader_write_tag_1_payload_data_valid = lineLoader_flushCounter[5];
  assign lineLoader_write_tag_1_payload_data_error = (lineLoader_hadError || io_mem_rsp_payload_error);
  assign lineLoader_write_tag_1_payload_data_address = lineLoader_address[31 : 11];
  assign lineLoader_write_data_0_valid = (io_mem_rsp_valid && (lineLoader_wayToAllocate_value == 1'b0));
  assign lineLoader_write_data_0_payload_address = {lineLoader_address[10 : 6],lineLoader_wordIndex};
  assign lineLoader_write_data_0_payload_data = io_mem_rsp_payload_data;
  assign lineLoader_write_data_1_valid = (io_mem_rsp_valid && (lineLoader_wayToAllocate_value == 1'b1));
  assign lineLoader_write_data_1_payload_address = {lineLoader_address[10 : 6],lineLoader_wordIndex};
  assign lineLoader_write_data_1_payload_data = io_mem_rsp_payload_data;
  assign fetchStage_read_banksValue_0_dataMem = banks_0_rd_data;
  assign fetchStage_read_banksValue_0_data = fetchStage_read_banksValue_0_dataMem[31 : 0];
  assign fetchStage_read_banksValue_1_dataMem = banks_1_rd_data;
  assign fetchStage_read_banksValue_1_data = fetchStage_read_banksValue_1_dataMem[31 : 0];
  assign _zz_6 = ways_0_tags_rd_data;
  assign fetchStage_read_waysValues_0_tag_valid = _zz_28[0];
  assign fetchStage_read_waysValues_0_tag_error = _zz_29[0];
  assign fetchStage_read_waysValues_0_tag_address = _zz_6[22 : 2];
  assign _zz_7 = ways_1_tags_rd_data;
  assign fetchStage_read_waysValues_1_tag_valid = _zz_30[0];
  assign fetchStage_read_waysValues_1_tag_error = _zz_31[0];
  assign fetchStage_read_waysValues_1_tag_address = _zz_7[22 : 2];
  assign fetchStage_hit_hits_0 = (fetchStage_read_waysValues_0_tag_valid && (fetchStage_read_waysValues_0_tag_address == io_cpu_fetch_mmuRsp_physicalAddress[31 : 11]));
  assign fetchStage_hit_hits_1 = (fetchStage_read_waysValues_1_tag_valid && (fetchStage_read_waysValues_1_tag_address == io_cpu_fetch_mmuRsp_physicalAddress[31 : 11]));
  assign fetchStage_hit_valid = ({fetchStage_hit_hits_1,fetchStage_hit_hits_0} != 2'b00);
  assign fetchStage_hit_wayId = fetchStage_hit_hits_1;
  assign fetchStage_hit_error = _zz_24;
  assign fetchStage_hit_data = _zz_25;
  assign fetchStage_hit_word = fetchStage_hit_data;
  assign io_cpu_fetch_data = fetchStage_hit_word;
  assign io_cpu_decode_data = io_cpu_fetch_data_regNextWhen;
  assign io_cpu_fetch_physicalAddress = io_cpu_fetch_mmuRsp_physicalAddress;
  assign io_cpu_decode_cacheMiss = (! decodeStage_hit_valid);
  assign io_cpu_decode_error = decodeStage_hit_error;
  assign io_cpu_decode_mmuRefilling = decodeStage_mmuRsp_refilling;
  assign io_cpu_decode_mmuException = ((! decodeStage_mmuRsp_refilling) && (decodeStage_mmuRsp_exception || (! decodeStage_mmuRsp_allowExecute)));
  assign io_cpu_decode_physicalAddress = decodeStage_mmuRsp_physicalAddress;
  assign _zz_8 = (_zz_2 && 1'b1);
  assign _zz_9 = 1'b1;
  assign _zz_10 = ((! io_cpu_fetch_isStuck) && 1'b1);
  assign _zz_11 = io_cpu_prefetch_pc[10 : 2];
  assign _zz_12 = (_zz_1 && 1'b1);
  assign _zz_13 = 1'b1;
  assign _zz_14 = ((! io_cpu_fetch_isStuck) && 1'b1);
  assign _zz_15 = io_cpu_prefetch_pc[10 : 2];
  assign _zz_16 = (_zz_4 && 1'b1);
  assign _zz_18 = {lineLoader_write_tag_0_payload_data_address,{lineLoader_write_tag_0_payload_data_error,lineLoader_write_tag_0_payload_data_valid}};
  assign _zz_17 = 1'b1;
  assign _zz_19 = io_cpu_fetch_pc[10 : 6];
  assign _zz_20 = (_zz_3 && 1'b1);
  assign _zz_22 = {lineLoader_write_tag_1_payload_data_address,{lineLoader_write_tag_1_payload_data_error,lineLoader_write_tag_1_payload_data_valid}};
  assign _zz_21 = 1'b1;
  assign _zz_23 = io_cpu_fetch_pc[10 : 6];
  always @ (posedge clk or negedge resetn) begin
    if (!resetn) begin
      lineLoader_valid <= 1'b0;
      lineLoader_hadError <= 1'b0;
      lineLoader_flushPending <= 1'b1;
      lineLoader_cmdSent <= 1'b0;
      lineLoader_wayToAllocate_value <= 1'b0;
      lineLoader_wordIndex <= 4'b0000;
    end else begin
      if(lineLoader_fire)begin
        lineLoader_valid <= 1'b0;
      end
      if(lineLoader_fire)begin
        lineLoader_hadError <= 1'b0;
      end
      if(io_cpu_fill_valid)begin
        lineLoader_valid <= 1'b1;
      end
      if(io_flush)begin
        lineLoader_flushPending <= 1'b1;
      end
      if(_zz_27)begin
        lineLoader_flushPending <= 1'b0;
      end
      if((io_mem_cmd_valid && io_mem_cmd_ready))begin
        lineLoader_cmdSent <= 1'b1;
      end
      if(lineLoader_fire)begin
        lineLoader_cmdSent <= 1'b0;
      end
      lineLoader_wayToAllocate_value <= lineLoader_wayToAllocate_valueNext;
      if(io_mem_rsp_valid)begin
        lineLoader_wordIndex <= (lineLoader_wordIndex + 4'b0001);
        if(io_mem_rsp_payload_error)begin
          lineLoader_hadError <= 1'b1;
        end
      end
    end
  end

  always @ (posedge clk) begin
    if(io_cpu_fill_valid)begin
      lineLoader_address <= io_cpu_fill_payload;
    end
    if(_zz_26)begin
      lineLoader_flushCounter <= (lineLoader_flushCounter + 6'h01);
    end
    _zz_5 <= lineLoader_flushCounter[5];
    if(_zz_27)begin
      lineLoader_flushCounter <= 6'h0;
    end
    if((! io_cpu_decode_isStuck))begin
      io_cpu_fetch_data_regNextWhen <= io_cpu_fetch_data;
    end
    if((! io_cpu_decode_isStuck))begin
      decodeStage_mmuRsp_physicalAddress <= io_cpu_fetch_mmuRsp_physicalAddress;
      decodeStage_mmuRsp_isIoAccess <= io_cpu_fetch_mmuRsp_isIoAccess;
      decodeStage_mmuRsp_allowRead <= io_cpu_fetch_mmuRsp_allowRead;
      decodeStage_mmuRsp_allowWrite <= io_cpu_fetch_mmuRsp_allowWrite;
      decodeStage_mmuRsp_allowExecute <= io_cpu_fetch_mmuRsp_allowExecute;
      decodeStage_mmuRsp_exception <= io_cpu_fetch_mmuRsp_exception;
      decodeStage_mmuRsp_refilling <= io_cpu_fetch_mmuRsp_refilling;
      decodeStage_mmuRsp_bypassTranslation <= io_cpu_fetch_mmuRsp_bypassTranslation;
    end
    if((! io_cpu_decode_isStuck))begin
      decodeStage_hit_valid <= fetchStage_hit_valid;
    end
    if((! io_cpu_decode_isStuck))begin
      decodeStage_hit_error <= fetchStage_hit_error;
    end
  end


endmodule
