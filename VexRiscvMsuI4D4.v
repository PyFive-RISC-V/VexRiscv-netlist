// Generator : SpinalHDL v1.4.2    git head : f02b37a0c0ff9c7a1b658a3205a53ae5ca795fbc
// Component : VexRiscvMsuI4D4
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

`define MmuPlugin_shared_State_defaultEncoding_type [2:0]
`define MmuPlugin_shared_State_defaultEncoding_IDLE 3'b000
`define MmuPlugin_shared_State_defaultEncoding_L1_CMD 3'b001
`define MmuPlugin_shared_State_defaultEncoding_L1_RSP 3'b010
`define MmuPlugin_shared_State_defaultEncoding_L0_CMD 3'b011
`define MmuPlugin_shared_State_defaultEncoding_L0_RSP 3'b100


module VexRiscvMsuI4D4 (
  output              dBus_cmd_valid,
  input               dBus_cmd_ready,
  output              dBus_cmd_payload_wr,
  output              dBus_cmd_payload_uncached,
  output     [31:0]   dBus_cmd_payload_address,
  output     [31:0]   dBus_cmd_payload_data,
  output     [3:0]    dBus_cmd_payload_mask,
  output     [3:0]    dBus_cmd_payload_length,
  output              dBus_cmd_payload_last,
  input               dBus_rsp_valid,
  input               dBus_rsp_payload_last,
  input      [31:0]   dBus_rsp_payload_data,
  input               dBus_rsp_payload_error,
  input               timerInterrupt,
  input               externalInterrupt,
  input               softwareInterrupt,
  input               externalInterruptS,
  output              iBus_cmd_valid,
  input               iBus_cmd_ready,
  output reg [31:0]   iBus_cmd_payload_address,
  output     [2:0]    iBus_cmd_payload_size,
  input               iBus_rsp_valid,
  input      [31:0]   iBus_rsp_payload_data,
  input               iBus_rsp_payload_error,
  input               clk,
  input               resetn
);
  wire                _zz_167;
  wire                _zz_168;
  wire                _zz_169;
  wire                _zz_170;
  wire                _zz_171;
  wire                _zz_172;
  wire                _zz_173;
  wire                _zz_174;
  reg                 _zz_175;
  reg                 _zz_176;
  reg        [31:0]   _zz_177;
  reg                 _zz_178;
  reg        [31:0]   _zz_179;
  reg        [1:0]    _zz_180;
  reg                 _zz_181;
  reg                 _zz_182;
  wire                _zz_183;
  wire       [2:0]    _zz_184;
  reg                 _zz_185;
  wire       [31:0]   _zz_186;
  reg                 _zz_187;
  reg                 _zz_188;
  wire                _zz_189;
  wire       [31:0]   _zz_190;
  wire                _zz_191;
  wire                _zz_192;
  wire                _zz_193;
  wire                _zz_194;
  wire                _zz_195;
  wire                _zz_196;
  wire                _zz_197;
  wire                _zz_198;
  wire       [3:0]    _zz_199;
  wire                _zz_200;
  wire                _zz_201;
  wire                _zz_202;
  wire       [0:0]    _zz_203;
  wire                _zz_204;
  wire                _zz_205;
  wire       [0:0]    _zz_206;
  wire                _zz_207;
  reg        [31:0]   _zz_208;
  reg                 _zz_209;
  reg                 _zz_210;
  reg                 _zz_211;
  reg        [9:0]    _zz_212;
  reg        [9:0]    _zz_213;
  reg        [9:0]    _zz_214;
  reg        [9:0]    _zz_215;
  reg                 _zz_216;
  reg                 _zz_217;
  reg                 _zz_218;
  reg                 _zz_219;
  reg                 _zz_220;
  reg                 _zz_221;
  reg                 _zz_222;
  reg        [9:0]    _zz_223;
  reg        [9:0]    _zz_224;
  reg        [9:0]    _zz_225;
  reg        [9:0]    _zz_226;
  reg                 _zz_227;
  reg                 _zz_228;
  reg                 _zz_229;
  reg                 _zz_230;
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
  wire                dataCache_1_io_cpu_execute_haltIt;
  wire                dataCache_1_io_cpu_memory_isWrite;
  wire                dataCache_1_io_cpu_writeBack_haltIt;
  wire       [31:0]   dataCache_1_io_cpu_writeBack_data;
  wire                dataCache_1_io_cpu_writeBack_mmuException;
  wire                dataCache_1_io_cpu_writeBack_unalignedAccess;
  wire                dataCache_1_io_cpu_writeBack_accessError;
  wire                dataCache_1_io_cpu_writeBack_isWrite;
  wire                dataCache_1_io_cpu_writeBack_keepMemRspData;
  wire                dataCache_1_io_cpu_flush_ready;
  wire                dataCache_1_io_cpu_redo;
  wire                dataCache_1_io_mem_cmd_valid;
  wire                dataCache_1_io_mem_cmd_payload_wr;
  wire                dataCache_1_io_mem_cmd_payload_uncached;
  wire       [31:0]   dataCache_1_io_mem_cmd_payload_address;
  wire       [31:0]   dataCache_1_io_mem_cmd_payload_data;
  wire       [3:0]    dataCache_1_io_mem_cmd_payload_mask;
  wire       [3:0]    dataCache_1_io_mem_cmd_payload_length;
  wire                dataCache_1_io_mem_cmd_payload_last;
  wire       [31:0]   RegFilePlugin_regFile_rd_data;
  wire       [31:0]   RegFilePlugin_regFile_1_rd_data;
  wire                _zz_231;
  wire                _zz_232;
  wire                _zz_233;
  wire                _zz_234;
  wire                _zz_235;
  wire                _zz_236;
  wire                _zz_237;
  wire                _zz_238;
  wire                _zz_239;
  wire                _zz_240;
  wire                _zz_241;
  wire                _zz_242;
  wire                _zz_243;
  wire                _zz_244;
  wire                _zz_245;
  wire                _zz_246;
  wire                _zz_247;
  wire       [1:0]    _zz_248;
  wire                _zz_249;
  wire                _zz_250;
  wire                _zz_251;
  wire                _zz_252;
  wire                _zz_253;
  wire                _zz_254;
  wire                _zz_255;
  wire                _zz_256;
  wire                _zz_257;
  wire                _zz_258;
  wire                _zz_259;
  wire                _zz_260;
  wire                _zz_261;
  wire                _zz_262;
  wire                _zz_263;
  wire                _zz_264;
  wire                _zz_265;
  wire                _zz_266;
  wire                _zz_267;
  wire                _zz_268;
  wire                _zz_269;
  wire                _zz_270;
  wire                _zz_271;
  wire                _zz_272;
  wire                _zz_273;
  wire                _zz_274;
  wire                _zz_275;
  wire                _zz_276;
  wire                _zz_277;
  wire                _zz_278;
  wire                _zz_279;
  wire                _zz_280;
  wire                _zz_281;
  wire                _zz_282;
  wire                _zz_283;
  wire                _zz_284;
  wire                _zz_285;
  wire       [1:0]    _zz_286;
  wire                _zz_287;
  wire       [0:0]    _zz_288;
  wire       [0:0]    _zz_289;
  wire       [0:0]    _zz_290;
  wire       [0:0]    _zz_291;
  wire       [0:0]    _zz_292;
  wire       [0:0]    _zz_293;
  wire       [0:0]    _zz_294;
  wire       [0:0]    _zz_295;
  wire       [0:0]    _zz_296;
  wire       [0:0]    _zz_297;
  wire       [0:0]    _zz_298;
  wire       [0:0]    _zz_299;
  wire       [0:0]    _zz_300;
  wire       [32:0]   _zz_301;
  wire       [31:0]   _zz_302;
  wire       [32:0]   _zz_303;
  wire       [0:0]    _zz_304;
  wire       [0:0]    _zz_305;
  wire       [0:0]    _zz_306;
  wire       [0:0]    _zz_307;
  wire       [0:0]    _zz_308;
  wire       [0:0]    _zz_309;
  wire       [0:0]    _zz_310;
  wire       [3:0]    _zz_311;
  wire       [2:0]    _zz_312;
  wire       [31:0]   _zz_313;
  wire       [2:0]    _zz_314;
  wire       [2:0]    _zz_315;
  wire       [0:0]    _zz_316;
  wire       [2:0]    _zz_317;
  wire       [4:0]    _zz_318;
  wire       [11:0]   _zz_319;
  wire       [11:0]   _zz_320;
  wire       [31:0]   _zz_321;
  wire       [31:0]   _zz_322;
  wire       [31:0]   _zz_323;
  wire       [31:0]   _zz_324;
  wire       [31:0]   _zz_325;
  wire       [31:0]   _zz_326;
  wire       [31:0]   _zz_327;
  wire       [0:0]    _zz_328;
  wire       [2:0]    _zz_329;
  wire       [40:0]   _zz_330;
  wire       [40:0]   _zz_331;
  wire       [40:0]   _zz_332;
  wire       [40:0]   _zz_333;
  wire       [32:0]   _zz_334;
  wire       [40:0]   _zz_335;
  wire       [33:0]   _zz_336;
  wire       [40:0]   _zz_337;
  wire       [33:0]   _zz_338;
  wire       [40:0]   _zz_339;
  wire       [34:0]   _zz_340;
  wire       [40:0]   _zz_341;
  wire       [34:0]   _zz_342;
  wire       [35:0]   _zz_343;
  wire       [40:0]   _zz_344;
  wire       [35:0]   _zz_345;
  wire       [40:0]   _zz_346;
  wire       [40:0]   _zz_347;
  wire       [36:0]   _zz_348;
  wire       [40:0]   _zz_349;
  wire       [36:0]   _zz_350;
  wire       [37:0]   _zz_351;
  wire       [40:0]   _zz_352;
  wire       [37:0]   _zz_353;
  wire       [40:0]   _zz_354;
  wire       [38:0]   _zz_355;
  wire       [40:0]   _zz_356;
  wire       [38:0]   _zz_357;
  wire       [39:0]   _zz_358;
  wire       [40:0]   _zz_359;
  wire       [39:0]   _zz_360;
  wire       [32:0]   _zz_361;
  wire       [40:0]   _zz_362;
  wire       [32:0]   _zz_363;
  wire       [0:0]    _zz_364;
  wire       [5:0]    _zz_365;
  wire       [32:0]   _zz_366;
  wire       [31:0]   _zz_367;
  wire       [31:0]   _zz_368;
  wire       [32:0]   _zz_369;
  wire       [32:0]   _zz_370;
  wire       [32:0]   _zz_371;
  wire       [32:0]   _zz_372;
  wire       [0:0]    _zz_373;
  wire       [32:0]   _zz_374;
  wire       [0:0]    _zz_375;
  wire       [32:0]   _zz_376;
  wire       [0:0]    _zz_377;
  wire       [31:0]   _zz_378;
  wire       [1:0]    _zz_379;
  wire       [1:0]    _zz_380;
  wire       [1:0]    _zz_381;
  wire       [1:0]    _zz_382;
  wire       [19:0]   _zz_383;
  wire       [11:0]   _zz_384;
  wire       [11:0]   _zz_385;
  wire       [0:0]    _zz_386;
  wire       [1:0]    _zz_387;
  wire       [0:0]    _zz_388;
  wire       [1:0]    _zz_389;
  wire       [0:0]    _zz_390;
  wire       [0:0]    _zz_391;
  wire       [0:0]    _zz_392;
  wire       [0:0]    _zz_393;
  wire       [0:0]    _zz_394;
  wire       [0:0]    _zz_395;
  wire       [0:0]    _zz_396;
  wire       [0:0]    _zz_397;
  wire       [1:0]    _zz_398;
  wire       [0:0]    _zz_399;
  wire       [0:0]    _zz_400;
  wire       [0:0]    _zz_401;
  wire       [0:0]    _zz_402;
  wire       [0:0]    _zz_403;
  wire       [0:0]    _zz_404;
  wire       [0:0]    _zz_405;
  wire       [0:0]    _zz_406;
  wire       [0:0]    _zz_407;
  wire       [0:0]    _zz_408;
  wire       [0:0]    _zz_409;
  wire       [0:0]    _zz_410;
  wire       [0:0]    _zz_411;
  wire       [0:0]    _zz_412;
  wire       [0:0]    _zz_413;
  wire       [0:0]    _zz_414;
  wire       [0:0]    _zz_415;
  wire       [0:0]    _zz_416;
  wire       [0:0]    _zz_417;
  wire       [0:0]    _zz_418;
  wire       [0:0]    _zz_419;
  wire       [0:0]    _zz_420;
  wire       [0:0]    _zz_421;
  wire       [0:0]    _zz_422;
  wire       [0:0]    _zz_423;
  wire       [0:0]    _zz_424;
  wire       [0:0]    _zz_425;
  wire       [0:0]    _zz_426;
  wire       [0:0]    _zz_427;
  wire       [0:0]    _zz_428;
  wire       [0:0]    _zz_429;
  wire       [0:0]    _zz_430;
  wire       [0:0]    _zz_431;
  wire       [0:0]    _zz_432;
  wire       [0:0]    _zz_433;
  wire       [0:0]    _zz_434;
  wire       [0:0]    _zz_435;
  wire       [0:0]    _zz_436;
  wire       [0:0]    _zz_437;
  wire       [0:0]    _zz_438;
  wire       [0:0]    _zz_439;
  wire       [0:0]    _zz_440;
  wire       [0:0]    _zz_441;
  wire       [0:0]    _zz_442;
  wire       [0:0]    _zz_443;
  wire       [1:0]    _zz_444;
  wire       [31:0]   _zz_445;
  wire       [31:0]   _zz_446;
  wire       [31:0]   _zz_447;
  wire                _zz_448;
  wire       [0:0]    _zz_449;
  wire       [17:0]   _zz_450;
  wire       [31:0]   _zz_451;
  wire       [31:0]   _zz_452;
  wire       [31:0]   _zz_453;
  wire                _zz_454;
  wire       [0:0]    _zz_455;
  wire       [11:0]   _zz_456;
  wire       [31:0]   _zz_457;
  wire       [31:0]   _zz_458;
  wire       [31:0]   _zz_459;
  wire                _zz_460;
  wire       [0:0]    _zz_461;
  wire       [5:0]    _zz_462;
  wire       [31:0]   _zz_463;
  wire       [31:0]   _zz_464;
  wire       [31:0]   _zz_465;
  wire                _zz_466;
  wire                _zz_467;
  wire       [31:0]   _zz_468;
  wire                _zz_469;
  wire                _zz_470;
  wire       [0:0]    _zz_471;
  wire       [0:0]    _zz_472;
  wire                _zz_473;
  wire       [0:0]    _zz_474;
  wire       [28:0]   _zz_475;
  wire       [31:0]   _zz_476;
  wire                _zz_477;
  wire                _zz_478;
  wire                _zz_479;
  wire       [1:0]    _zz_480;
  wire       [1:0]    _zz_481;
  wire                _zz_482;
  wire       [0:0]    _zz_483;
  wire       [24:0]   _zz_484;
  wire       [0:0]    _zz_485;
  wire       [0:0]    _zz_486;
  wire                _zz_487;
  wire       [1:0]    _zz_488;
  wire       [1:0]    _zz_489;
  wire                _zz_490;
  wire       [0:0]    _zz_491;
  wire       [21:0]   _zz_492;
  wire       [31:0]   _zz_493;
  wire       [31:0]   _zz_494;
  wire       [31:0]   _zz_495;
  wire       [31:0]   _zz_496;
  wire                _zz_497;
  wire       [0:0]    _zz_498;
  wire       [0:0]    _zz_499;
  wire                _zz_500;
  wire       [0:0]    _zz_501;
  wire       [0:0]    _zz_502;
  wire                _zz_503;
  wire       [0:0]    _zz_504;
  wire       [18:0]   _zz_505;
  wire       [31:0]   _zz_506;
  wire       [31:0]   _zz_507;
  wire                _zz_508;
  wire                _zz_509;
  wire                _zz_510;
  wire       [0:0]    _zz_511;
  wire       [0:0]    _zz_512;
  wire                _zz_513;
  wire       [0:0]    _zz_514;
  wire       [15:0]   _zz_515;
  wire       [31:0]   _zz_516;
  wire                _zz_517;
  wire       [0:0]    _zz_518;
  wire       [1:0]    _zz_519;
  wire                _zz_520;
  wire       [0:0]    _zz_521;
  wire       [0:0]    _zz_522;
  wire                _zz_523;
  wire       [0:0]    _zz_524;
  wire       [12:0]   _zz_525;
  wire       [31:0]   _zz_526;
  wire       [31:0]   _zz_527;
  wire       [31:0]   _zz_528;
  wire       [31:0]   _zz_529;
  wire       [31:0]   _zz_530;
  wire       [31:0]   _zz_531;
  wire                _zz_532;
  wire       [0:0]    _zz_533;
  wire       [3:0]    _zz_534;
  wire       [0:0]    _zz_535;
  wire       [1:0]    _zz_536;
  wire       [0:0]    _zz_537;
  wire       [0:0]    _zz_538;
  wire                _zz_539;
  wire       [0:0]    _zz_540;
  wire       [9:0]    _zz_541;
  wire       [31:0]   _zz_542;
  wire       [31:0]   _zz_543;
  wire       [31:0]   _zz_544;
  wire                _zz_545;
  wire       [0:0]    _zz_546;
  wire       [1:0]    _zz_547;
  wire       [31:0]   _zz_548;
  wire       [31:0]   _zz_549;
  wire                _zz_550;
  wire                _zz_551;
  wire       [31:0]   _zz_552;
  wire       [31:0]   _zz_553;
  wire       [0:0]    _zz_554;
  wire       [1:0]    _zz_555;
  wire       [6:0]    _zz_556;
  wire       [6:0]    _zz_557;
  wire                _zz_558;
  wire       [0:0]    _zz_559;
  wire       [7:0]    _zz_560;
  wire       [31:0]   _zz_561;
  wire       [31:0]   _zz_562;
  wire       [31:0]   _zz_563;
  wire                _zz_564;
  wire                _zz_565;
  wire       [31:0]   _zz_566;
  wire       [31:0]   _zz_567;
  wire       [31:0]   _zz_568;
  wire       [31:0]   _zz_569;
  wire                _zz_570;
  wire       [0:0]    _zz_571;
  wire       [4:0]    _zz_572;
  wire       [0:0]    _zz_573;
  wire       [0:0]    _zz_574;
  wire       [1:0]    _zz_575;
  wire       [1:0]    _zz_576;
  wire                _zz_577;
  wire       [0:0]    _zz_578;
  wire       [5:0]    _zz_579;
  wire       [31:0]   _zz_580;
  wire       [31:0]   _zz_581;
  wire       [31:0]   _zz_582;
  wire       [31:0]   _zz_583;
  wire       [31:0]   _zz_584;
  wire                _zz_585;
  wire       [0:0]    _zz_586;
  wire       [2:0]    _zz_587;
  wire       [31:0]   _zz_588;
  wire       [31:0]   _zz_589;
  wire                _zz_590;
  wire                _zz_591;
  wire       [0:0]    _zz_592;
  wire       [0:0]    _zz_593;
  wire                _zz_594;
  wire       [0:0]    _zz_595;
  wire       [3:0]    _zz_596;
  wire       [31:0]   _zz_597;
  wire       [31:0]   _zz_598;
  wire       [31:0]   _zz_599;
  wire                _zz_600;
  wire       [0:0]    _zz_601;
  wire       [0:0]    _zz_602;
  wire       [31:0]   _zz_603;
  wire       [31:0]   _zz_604;
  wire       [31:0]   _zz_605;
  wire       [31:0]   _zz_606;
  wire       [0:0]    _zz_607;
  wire       [3:0]    _zz_608;
  wire       [1:0]    _zz_609;
  wire       [1:0]    _zz_610;
  wire                _zz_611;
  wire       [0:0]    _zz_612;
  wire       [1:0]    _zz_613;
  wire       [31:0]   _zz_614;
  wire       [31:0]   _zz_615;
  wire       [31:0]   _zz_616;
  wire       [31:0]   _zz_617;
  wire                _zz_618;
  wire       [0:0]    _zz_619;
  wire       [0:0]    _zz_620;
  wire       [31:0]   _zz_621;
  wire       [31:0]   _zz_622;
  wire                _zz_623;
  wire       [0:0]    _zz_624;
  wire       [0:0]    _zz_625;
  wire       [0:0]    _zz_626;
  wire       [1:0]    _zz_627;
  wire       [1:0]    _zz_628;
  wire       [1:0]    _zz_629;
  wire       [0:0]    _zz_630;
  wire       [0:0]    _zz_631;
  wire       [31:0]   _zz_632;
  wire       [31:0]   _zz_633;
  wire       [31:0]   _zz_634;
  wire       [31:0]   _zz_635;
  wire       [31:0]   _zz_636;
  wire       [31:0]   _zz_637;
  wire       [31:0]   _zz_638;
  wire       [31:0]   _zz_639;
  wire       [31:0]   _zz_640;
  wire       [31:0]   _zz_641;
  wire       [31:0]   _zz_642;
  wire       [31:0]   _zz_643;
  wire       [31:0]   execute_REGFILE_WRITE_DATA;
  wire                execute_IS_DBUS_SHARING;
  wire       [1:0]    memory_MEMORY_ADDRESS_LOW;
  wire       [1:0]    execute_MEMORY_ADDRESS_LOW;
  wire                decode_CSR_READ_OPCODE;
  wire                decode_CSR_WRITE_OPCODE;
  wire       [31:0]   decode_SRC2;
  wire       [31:0]   decode_SRC1;
  wire                decode_SRC2_FORCE_ZERO;
  wire                memory_IS_SFENCE_VMA;
  wire                execute_IS_SFENCE_VMA;
  wire                decode_IS_SFENCE_VMA;
  wire       `BranchCtrlEnum_defaultEncoding_type decode_BRANCH_CTRL;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_1;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_2;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_3;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_4;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_5;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_6;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_7;
  wire       `EnvCtrlEnum_defaultEncoding_type decode_ENV_CTRL;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_8;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_9;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_10;
  wire                decode_IS_CSR;
  wire                decode_IS_DIV;
  wire                decode_IS_RS2_SIGNED;
  wire                decode_IS_RS1_SIGNED;
  wire                decode_IS_MUL;
  wire       `ShiftCtrlEnum_defaultEncoding_type decode_SHIFT_CTRL;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_11;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_12;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_13;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type decode_ALU_BITWISE_CTRL;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_14;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_15;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_16;
  wire                decode_SRC_LESS_UNSIGNED;
  wire                decode_MEMORY_MANAGMENT;
  wire                memory_MEMORY_WR;
  wire                decode_MEMORY_WR;
  wire                execute_BYPASSABLE_MEMORY_STAGE;
  wire                decode_BYPASSABLE_MEMORY_STAGE;
  wire                decode_BYPASSABLE_EXECUTE_STAGE;
  wire       `AluCtrlEnum_defaultEncoding_type decode_ALU_CTRL;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_17;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_18;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_19;
  wire                decode_MEMORY_FORCE_CONSTISTENCY;
  wire       [31:0]   writeBack_FORMAL_PC_NEXT;
  wire       [31:0]   memory_FORMAL_PC_NEXT;
  wire       [31:0]   execute_FORMAL_PC_NEXT;
  wire       [31:0]   decode_FORMAL_PC_NEXT;
  wire       [31:0]   memory_PC;
  wire                writeBack_IS_SFENCE_VMA;
  wire       [31:0]   execute_BRANCH_CALC;
  wire                execute_BRANCH_DO;
  wire       [31:0]   execute_PC;
  wire       `BranchCtrlEnum_defaultEncoding_type execute_BRANCH_CTRL;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_20;
  wire                execute_CSR_READ_OPCODE;
  wire                execute_CSR_WRITE_OPCODE;
  wire                execute_IS_CSR;
  wire       `EnvCtrlEnum_defaultEncoding_type memory_ENV_CTRL;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_21;
  wire       `EnvCtrlEnum_defaultEncoding_type execute_ENV_CTRL;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_22;
  wire       `EnvCtrlEnum_defaultEncoding_type writeBack_ENV_CTRL;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_23;
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
  reg        [31:0]   _zz_24;
  wire                memory_REGFILE_WRITE_VALID;
  wire       [31:0]   memory_INSTRUCTION;
  wire                memory_BYPASSABLE_MEMORY_STAGE;
  wire                writeBack_REGFILE_WRITE_VALID;
  reg        [31:0]   decode_RS2;
  reg        [31:0]   decode_RS1;
  wire       [31:0]   execute_SHIFT_RIGHT;
  reg        [31:0]   _zz_25;
  wire       `ShiftCtrlEnum_defaultEncoding_type execute_SHIFT_CTRL;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_26;
  wire                execute_SRC_LESS_UNSIGNED;
  wire                execute_SRC2_FORCE_ZERO;
  wire                execute_SRC_USE_SUB_LESS;
  wire       [31:0]   _zz_27;
  wire       [31:0]   _zz_28;
  wire       `Src2CtrlEnum_defaultEncoding_type decode_SRC2_CTRL;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_29;
  wire       [31:0]   _zz_30;
  wire       `Src1CtrlEnum_defaultEncoding_type decode_SRC1_CTRL;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_31;
  wire                decode_SRC_USE_SUB_LESS;
  wire                decode_SRC_ADD_ZERO;
  wire       [31:0]   execute_SRC_ADD_SUB;
  wire                execute_SRC_LESS;
  wire       `AluCtrlEnum_defaultEncoding_type execute_ALU_CTRL;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_32;
  wire       [31:0]   execute_SRC2;
  wire       [31:0]   execute_SRC1;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type execute_ALU_BITWISE_CTRL;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_33;
  wire       [31:0]   _zz_34;
  wire                _zz_35;
  reg                 _zz_36;
  wire       [31:0]   decode_INSTRUCTION_ANTICIPATED;
  reg                 decode_REGFILE_WRITE_VALID;
  wire                decode_LEGAL_INSTRUCTION;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_37;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_38;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_39;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_40;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_41;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_42;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_43;
  wire                writeBack_IS_DBUS_SHARING;
  wire                memory_IS_DBUS_SHARING;
  reg        [31:0]   _zz_44;
  wire       [1:0]    writeBack_MEMORY_ADDRESS_LOW;
  wire                writeBack_MEMORY_WR;
  wire       [31:0]   writeBack_REGFILE_WRITE_DATA;
  wire                writeBack_MEMORY_ENABLE;
  wire       [31:0]   memory_REGFILE_WRITE_DATA;
  wire                memory_MEMORY_ENABLE;
  wire                execute_MEMORY_AMO;
  wire                execute_MEMORY_LRSC;
  wire                execute_MEMORY_FORCE_CONSTISTENCY;
  wire                execute_MEMORY_MANAGMENT;
  wire       [31:0]   execute_RS2;
  wire                execute_MEMORY_WR;
  wire       [31:0]   execute_SRC_ADD;
  wire                execute_MEMORY_ENABLE;
  wire       [31:0]   execute_INSTRUCTION;
  wire                decode_MEMORY_AMO;
  wire                decode_MEMORY_LRSC;
  reg                 _zz_45;
  wire                decode_MEMORY_ENABLE;
  wire                decode_FLUSH_ALL;
  reg                 _zz_46;
  reg                 _zz_46_2;
  reg                 _zz_46_1;
  reg                 _zz_46_0;
  wire       [31:0]   decode_INSTRUCTION;
  reg        [31:0]   _zz_47;
  wire       [31:0]   decode_PC;
  wire       [31:0]   writeBack_PC;
  wire       [31:0]   writeBack_INSTRUCTION;
  reg                 decode_arbitration_haltItself;
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
  wire                memory_arbitration_flushNext;
  reg                 memory_arbitration_isValid;
  wire                memory_arbitration_isStuck;
  wire                memory_arbitration_isStuckByOthers;
  wire                memory_arbitration_isFlushed;
  wire                memory_arbitration_isMoving;
  wire                memory_arbitration_isFiring;
  reg                 writeBack_arbitration_haltItself;
  wire                writeBack_arbitration_haltByOther;
  reg                 writeBack_arbitration_removeIt;
  reg                 writeBack_arbitration_flushIt;
  reg                 writeBack_arbitration_flushNext;
  reg                 writeBack_arbitration_isValid;
  wire                writeBack_arbitration_isStuck;
  wire                writeBack_arbitration_isStuckByOthers;
  wire                writeBack_arbitration_isFlushed;
  wire                writeBack_arbitration_isMoving;
  wire                writeBack_arbitration_isFiring;
  wire       [31:0]   lastStageInstruction /* verilator public */ ;
  wire       [31:0]   lastStagePc /* verilator public */ ;
  wire                lastStageIsValid /* verilator public */ ;
  wire                lastStageIsFiring /* verilator public */ ;
  reg                 IBusCachedPlugin_fetcherHalt;
  reg                 IBusCachedPlugin_incomingInstruction;
  wire                IBusCachedPlugin_pcValids_0;
  wire                IBusCachedPlugin_pcValids_1;
  wire                IBusCachedPlugin_pcValids_2;
  wire                IBusCachedPlugin_pcValids_3;
  reg                 IBusCachedPlugin_decodeExceptionPort_valid;
  reg        [3:0]    IBusCachedPlugin_decodeExceptionPort_payload_code;
  wire       [31:0]   IBusCachedPlugin_decodeExceptionPort_payload_badAddr;
  wire                IBusCachedPlugin_mmuBus_cmd_0_isValid;
  wire                IBusCachedPlugin_mmuBus_cmd_0_isStuck;
  wire       [31:0]   IBusCachedPlugin_mmuBus_cmd_0_virtualAddress;
  wire                IBusCachedPlugin_mmuBus_cmd_0_bypassTranslation;
  reg        [31:0]   IBusCachedPlugin_mmuBus_rsp_physicalAddress;
  wire                IBusCachedPlugin_mmuBus_rsp_isIoAccess;
  reg                 IBusCachedPlugin_mmuBus_rsp_allowRead;
  reg                 IBusCachedPlugin_mmuBus_rsp_allowWrite;
  reg                 IBusCachedPlugin_mmuBus_rsp_allowExecute;
  reg                 IBusCachedPlugin_mmuBus_rsp_exception;
  reg                 IBusCachedPlugin_mmuBus_rsp_refilling;
  wire                IBusCachedPlugin_mmuBus_rsp_bypassTranslation;
  wire                IBusCachedPlugin_mmuBus_rsp_ways_0_sel;
  wire       [31:0]   IBusCachedPlugin_mmuBus_rsp_ways_0_physical;
  wire                IBusCachedPlugin_mmuBus_rsp_ways_1_sel;
  wire       [31:0]   IBusCachedPlugin_mmuBus_rsp_ways_1_physical;
  wire                IBusCachedPlugin_mmuBus_rsp_ways_2_sel;
  wire       [31:0]   IBusCachedPlugin_mmuBus_rsp_ways_2_physical;
  wire                IBusCachedPlugin_mmuBus_rsp_ways_3_sel;
  wire       [31:0]   IBusCachedPlugin_mmuBus_rsp_ways_3_physical;
  wire                IBusCachedPlugin_mmuBus_end;
  wire                IBusCachedPlugin_mmuBus_busy;
  wire                DBusCachedPlugin_mmuBus_cmd_0_isValid;
  wire                DBusCachedPlugin_mmuBus_cmd_0_isStuck;
  wire       [31:0]   DBusCachedPlugin_mmuBus_cmd_0_virtualAddress;
  reg                 DBusCachedPlugin_mmuBus_cmd_0_bypassTranslation;
  reg        [31:0]   DBusCachedPlugin_mmuBus_rsp_physicalAddress;
  wire                DBusCachedPlugin_mmuBus_rsp_isIoAccess;
  reg                 DBusCachedPlugin_mmuBus_rsp_allowRead;
  reg                 DBusCachedPlugin_mmuBus_rsp_allowWrite;
  reg                 DBusCachedPlugin_mmuBus_rsp_allowExecute;
  reg                 DBusCachedPlugin_mmuBus_rsp_exception;
  reg                 DBusCachedPlugin_mmuBus_rsp_refilling;
  wire                DBusCachedPlugin_mmuBus_rsp_bypassTranslation;
  wire                DBusCachedPlugin_mmuBus_rsp_ways_0_sel;
  wire       [31:0]   DBusCachedPlugin_mmuBus_rsp_ways_0_physical;
  wire                DBusCachedPlugin_mmuBus_rsp_ways_1_sel;
  wire       [31:0]   DBusCachedPlugin_mmuBus_rsp_ways_1_physical;
  wire                DBusCachedPlugin_mmuBus_rsp_ways_2_sel;
  wire       [31:0]   DBusCachedPlugin_mmuBus_rsp_ways_2_physical;
  wire                DBusCachedPlugin_mmuBus_rsp_ways_3_sel;
  wire       [31:0]   DBusCachedPlugin_mmuBus_rsp_ways_3_physical;
  wire                DBusCachedPlugin_mmuBus_end;
  wire                DBusCachedPlugin_mmuBus_busy;
  reg                 DBusCachedPlugin_redoBranch_valid;
  wire       [31:0]   DBusCachedPlugin_redoBranch_payload;
  reg                 DBusCachedPlugin_exceptionBus_valid;
  reg        [3:0]    DBusCachedPlugin_exceptionBus_payload_code;
  wire       [31:0]   DBusCachedPlugin_exceptionBus_payload_badAddr;
  wire                decodeExceptionPort_valid;
  wire       [3:0]    decodeExceptionPort_payload_code;
  wire       [31:0]   decodeExceptionPort_payload_badAddr;
  reg                 CsrPlugin_inWfi /* verilator public */ ;
  wire                CsrPlugin_thirdPartyWake;
  reg                 CsrPlugin_jumpInterface_valid;
  reg        [31:0]   CsrPlugin_jumpInterface_payload;
  reg                 CsrPlugin_redoInterface_valid;
  wire       [31:0]   CsrPlugin_redoInterface_payload;
  wire                CsrPlugin_exceptionPendings_0;
  wire                CsrPlugin_exceptionPendings_1;
  wire                CsrPlugin_exceptionPendings_2;
  wire                CsrPlugin_exceptionPendings_3;
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
  reg                 MmuPlugin_dBusAccess_cmd_valid;
  reg                 MmuPlugin_dBusAccess_cmd_ready;
  reg        [31:0]   MmuPlugin_dBusAccess_cmd_payload_address;
  wire       [1:0]    MmuPlugin_dBusAccess_cmd_payload_size;
  wire                MmuPlugin_dBusAccess_cmd_payload_write;
  wire       [31:0]   MmuPlugin_dBusAccess_cmd_payload_data;
  wire       [3:0]    MmuPlugin_dBusAccess_cmd_payload_writeMask;
  wire                MmuPlugin_dBusAccess_rsp_valid;
  wire       [31:0]   MmuPlugin_dBusAccess_rsp_payload_data;
  wire                MmuPlugin_dBusAccess_rsp_payload_error;
  wire                MmuPlugin_dBusAccess_rsp_payload_redo;
  wire                IBusCachedPlugin_externalFlush;
  wire                IBusCachedPlugin_jump_pcLoad_valid;
  wire       [31:0]   IBusCachedPlugin_jump_pcLoad_payload;
  wire       [3:0]    _zz_48;
  wire       [3:0]    _zz_49;
  wire                _zz_50;
  wire                _zz_51;
  wire                _zz_52;
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
  reg                 IBusCachedPlugin_iBusRsp_stages_1_halt;
  wire                IBusCachedPlugin_iBusRsp_stages_2_input_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_2_input_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_2_input_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_2_output_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_2_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_2_output_payload;
  reg                 IBusCachedPlugin_iBusRsp_stages_2_halt;
  wire                _zz_53;
  wire                _zz_54;
  wire                _zz_55;
  wire                IBusCachedPlugin_iBusRsp_flush;
  wire                _zz_56;
  wire                _zz_57;
  reg                 _zz_58;
  wire                _zz_59;
  reg                 _zz_60;
  reg        [31:0]   _zz_61;
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
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_4;
  wire       [31:0]   _zz_62;
  reg        [31:0]   IBusCachedPlugin_rspCounter;
  wire                IBusCachedPlugin_s0_tightlyCoupledHit;
  reg                 IBusCachedPlugin_s1_tightlyCoupledHit;
  reg                 IBusCachedPlugin_s2_tightlyCoupledHit;
  wire                IBusCachedPlugin_rsp_iBusRspOutputHalt;
  wire                IBusCachedPlugin_rsp_issueDetected;
  reg                 IBusCachedPlugin_rsp_redoFetch;
  wire                dataCache_1_io_mem_cmd_s2mPipe_valid;
  wire                dataCache_1_io_mem_cmd_s2mPipe_ready;
  wire                dataCache_1_io_mem_cmd_s2mPipe_payload_wr;
  wire                dataCache_1_io_mem_cmd_s2mPipe_payload_uncached;
  wire       [31:0]   dataCache_1_io_mem_cmd_s2mPipe_payload_address;
  wire       [31:0]   dataCache_1_io_mem_cmd_s2mPipe_payload_data;
  wire       [3:0]    dataCache_1_io_mem_cmd_s2mPipe_payload_mask;
  wire       [3:0]    dataCache_1_io_mem_cmd_s2mPipe_payload_length;
  wire                dataCache_1_io_mem_cmd_s2mPipe_payload_last;
  reg                 dataCache_1_io_mem_cmd_s2mPipe_rValid;
  reg                 dataCache_1_io_mem_cmd_s2mPipe_rData_wr;
  reg                 dataCache_1_io_mem_cmd_s2mPipe_rData_uncached;
  reg        [31:0]   dataCache_1_io_mem_cmd_s2mPipe_rData_address;
  reg        [31:0]   dataCache_1_io_mem_cmd_s2mPipe_rData_data;
  reg        [3:0]    dataCache_1_io_mem_cmd_s2mPipe_rData_mask;
  reg        [3:0]    dataCache_1_io_mem_cmd_s2mPipe_rData_length;
  reg                 dataCache_1_io_mem_cmd_s2mPipe_rData_last;
  wire                dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_valid;
  wire                dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_ready;
  wire                dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_wr;
  wire                dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_uncached;
  wire       [31:0]   dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_address;
  wire       [31:0]   dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_data;
  wire       [3:0]    dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_mask;
  wire       [3:0]    dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_length;
  wire                dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_last;
  reg                 dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rValid;
  reg                 dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_wr;
  reg                 dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_uncached;
  reg        [31:0]   dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_address;
  reg        [31:0]   dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_data;
  reg        [3:0]    dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_mask;
  reg        [3:0]    dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_length;
  reg                 dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_last;
  reg                 dBus_rsp_regNext_valid;
  reg                 dBus_rsp_regNext_payload_last;
  reg        [31:0]   dBus_rsp_regNext_payload_data;
  reg                 dBus_rsp_regNext_payload_error;
  wire       [31:0]   _zz_63;
  reg        [31:0]   DBusCachedPlugin_rspCounter;
  wire       [1:0]    execute_DBusCachedPlugin_size;
  reg        [31:0]   _zz_64;
  reg        [31:0]   writeBack_DBusCachedPlugin_rspShifted;
  wire                _zz_65;
  reg        [31:0]   _zz_66;
  wire                _zz_67;
  reg        [31:0]   _zz_68;
  reg        [31:0]   writeBack_DBusCachedPlugin_rspFormated;
  reg                 DBusCachedPlugin_forceDatapath;
  wire       [34:0]   _zz_69;
  wire                _zz_70;
  wire                _zz_71;
  wire                _zz_72;
  wire                _zz_73;
  wire                _zz_74;
  wire                _zz_75;
  wire                _zz_76;
  wire                _zz_77;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_78;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_79;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_80;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_81;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_82;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_83;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_84;
  wire       [4:0]    decode_RegFilePlugin_regFileReadAddress1;
  wire       [4:0]    decode_RegFilePlugin_regFileReadAddress2;
  wire       [31:0]   decode_RegFilePlugin_rs1Data;
  wire       [31:0]   decode_RegFilePlugin_rs2Data;
  reg                 lastStageRegFileWrite_valid /* verilator public */ ;
  wire       [4:0]    lastStageRegFileWrite_payload_address /* verilator public */ ;
  wire       [31:0]   lastStageRegFileWrite_payload_data /* verilator public */ ;
  wire       [31:0]   _zz_85;
  reg                 _zz_86;
  reg        [31:0]   execute_IntAluPlugin_bitwise;
  reg        [31:0]   _zz_87;
  reg        [31:0]   _zz_88;
  wire                _zz_89;
  reg        [19:0]   _zz_90;
  wire                _zz_91;
  reg        [19:0]   _zz_92;
  reg        [31:0]   _zz_93;
  reg        [31:0]   execute_SrcPlugin_addSub;
  wire                execute_SrcPlugin_less;
  wire       [4:0]    execute_FullBarrelShifterPlugin_amplitude;
  reg        [31:0]   _zz_94;
  wire       [31:0]   execute_FullBarrelShifterPlugin_reversed;
  reg        [31:0]   _zz_95;
  reg                 _zz_96;
  reg                 _zz_97;
  reg                 _zz_98;
  reg        [4:0]    _zz_99;
  reg        [31:0]   _zz_100;
  wire                _zz_101;
  wire                _zz_102;
  wire                _zz_103;
  wire                _zz_104;
  wire                _zz_105;
  wire                _zz_106;
  reg        [32:0]   memory_MulDivIterativePlugin_rs1;
  reg        [31:0]   memory_MulDivIterativePlugin_rs2;
  reg        [64:0]   memory_MulDivIterativePlugin_accumulator;
  wire                memory_MulDivIterativePlugin_frontendOk;
  reg                 memory_MulDivIterativePlugin_mul_counter_willIncrement;
  reg                 memory_MulDivIterativePlugin_mul_counter_willClear;
  reg        [2:0]    memory_MulDivIterativePlugin_mul_counter_valueNext;
  reg        [2:0]    memory_MulDivIterativePlugin_mul_counter_value;
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
  wire       [31:0]   _zz_107;
  wire       [32:0]   memory_MulDivIterativePlugin_div_stage_0_remainderShifted;
  wire       [32:0]   memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator;
  wire       [31:0]   memory_MulDivIterativePlugin_div_stage_0_outRemainder;
  wire       [31:0]   memory_MulDivIterativePlugin_div_stage_0_outNumerator;
  wire       [31:0]   _zz_108;
  wire                _zz_109;
  wire                _zz_110;
  reg        [32:0]   _zz_111;
  reg        [1:0]    _zz_112;
  wire       [1:0]    CsrPlugin_misa_base;
  wire       [25:0]   CsrPlugin_misa_extensions;
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
  reg                 CsrPlugin_medeleg_IAM;
  reg                 CsrPlugin_medeleg_IAF;
  reg                 CsrPlugin_medeleg_II;
  reg                 CsrPlugin_medeleg_LAM;
  reg                 CsrPlugin_medeleg_LAF;
  reg                 CsrPlugin_medeleg_SAM;
  reg                 CsrPlugin_medeleg_SAF;
  reg                 CsrPlugin_medeleg_EU;
  reg                 CsrPlugin_medeleg_ES;
  reg                 CsrPlugin_medeleg_IPF;
  reg                 CsrPlugin_medeleg_LPF;
  reg                 CsrPlugin_medeleg_SPF;
  reg                 CsrPlugin_mideleg_ST;
  reg                 CsrPlugin_mideleg_SE;
  reg                 CsrPlugin_mideleg_SS;
  reg                 CsrPlugin_sstatus_SIE;
  reg                 CsrPlugin_sstatus_SPIE;
  reg        [0:0]    CsrPlugin_sstatus_SPP;
  reg                 CsrPlugin_sip_SEIP_SOFT;
  reg                 CsrPlugin_sip_SEIP_INPUT;
  wire                CsrPlugin_sip_SEIP_OR;
  reg                 CsrPlugin_sip_STIP;
  reg                 CsrPlugin_sip_SSIP;
  reg                 CsrPlugin_sie_SEIE;
  reg                 CsrPlugin_sie_STIE;
  reg                 CsrPlugin_sie_SSIE;
  reg        [1:0]    CsrPlugin_stvec_mode;
  reg        [29:0]   CsrPlugin_stvec_base;
  reg        [31:0]   CsrPlugin_sscratch;
  reg                 CsrPlugin_scause_interrupt;
  reg        [3:0]    CsrPlugin_scause_exceptionCode;
  reg        [31:0]   CsrPlugin_stval;
  reg        [31:0]   CsrPlugin_sepc;
  reg        [21:0]   CsrPlugin_satp_PPN;
  reg        [8:0]    CsrPlugin_satp_ASID;
  reg        [0:0]    CsrPlugin_satp_MODE;
  wire                _zz_113;
  wire                _zz_114;
  wire                _zz_115;
  wire                _zz_116;
  wire                _zz_117;
  wire                _zz_118;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_decode;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_execute;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_memory;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack;
  reg        [3:0]    CsrPlugin_exceptionPortCtrl_exceptionContext_code;
  reg        [31:0]   CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr;
  reg        [1:0]    CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped;
  wire       [1:0]    CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege;
  wire       [1:0]    _zz_119;
  wire                _zz_120;
  wire       [1:0]    _zz_121;
  wire                _zz_122;
  reg                 CsrPlugin_interrupt_valid;
  reg        [3:0]    CsrPlugin_interrupt_code /* verilator public */ ;
  reg        [1:0]    CsrPlugin_interrupt_targetPrivilege;
  wire                CsrPlugin_exception;
  reg                 CsrPlugin_lastStageWasWfi;
  reg                 CsrPlugin_pipelineLiberator_pcValids_0;
  reg                 CsrPlugin_pipelineLiberator_pcValids_1;
  reg                 CsrPlugin_pipelineLiberator_pcValids_2;
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
  reg        [31:0]   execute_CsrPlugin_readToWriteData;
  reg        [31:0]   execute_CsrPlugin_writeData;
  wire       [11:0]   execute_CsrPlugin_csrAddress;
  wire                execute_BranchPlugin_eq;
  wire       [2:0]    _zz_123;
  reg                 _zz_124;
  reg                 _zz_125;
  wire       [31:0]   execute_BranchPlugin_branch_src1;
  wire                _zz_126;
  reg        [10:0]   _zz_127;
  wire                _zz_128;
  reg        [19:0]   _zz_129;
  wire                _zz_130;
  reg        [18:0]   _zz_131;
  reg        [31:0]   _zz_132;
  wire       [31:0]   execute_BranchPlugin_branch_src2;
  wire       [31:0]   execute_BranchPlugin_branchAdder;
  reg                 MmuPlugin_status_sum;
  reg                 MmuPlugin_status_mxr;
  reg                 MmuPlugin_status_mprv;
  reg                 MmuPlugin_satp_mode;
  reg        [19:0]   MmuPlugin_satp_ppn;
  reg                 MmuPlugin_ports_0_cache_0_valid;
  reg                 MmuPlugin_ports_0_cache_0_exception;
  reg                 MmuPlugin_ports_0_cache_0_superPage;
  reg        [9:0]    MmuPlugin_ports_0_cache_0_virtualAddress_0;
  reg        [9:0]    MmuPlugin_ports_0_cache_0_virtualAddress_1;
  reg        [9:0]    MmuPlugin_ports_0_cache_0_physicalAddress_0;
  reg        [9:0]    MmuPlugin_ports_0_cache_0_physicalAddress_1;
  reg                 MmuPlugin_ports_0_cache_0_allowRead;
  reg                 MmuPlugin_ports_0_cache_0_allowWrite;
  reg                 MmuPlugin_ports_0_cache_0_allowExecute;
  reg                 MmuPlugin_ports_0_cache_0_allowUser;
  reg                 MmuPlugin_ports_0_cache_1_valid;
  reg                 MmuPlugin_ports_0_cache_1_exception;
  reg                 MmuPlugin_ports_0_cache_1_superPage;
  reg        [9:0]    MmuPlugin_ports_0_cache_1_virtualAddress_0;
  reg        [9:0]    MmuPlugin_ports_0_cache_1_virtualAddress_1;
  reg        [9:0]    MmuPlugin_ports_0_cache_1_physicalAddress_0;
  reg        [9:0]    MmuPlugin_ports_0_cache_1_physicalAddress_1;
  reg                 MmuPlugin_ports_0_cache_1_allowRead;
  reg                 MmuPlugin_ports_0_cache_1_allowWrite;
  reg                 MmuPlugin_ports_0_cache_1_allowExecute;
  reg                 MmuPlugin_ports_0_cache_1_allowUser;
  reg                 MmuPlugin_ports_0_cache_2_valid;
  reg                 MmuPlugin_ports_0_cache_2_exception;
  reg                 MmuPlugin_ports_0_cache_2_superPage;
  reg        [9:0]    MmuPlugin_ports_0_cache_2_virtualAddress_0;
  reg        [9:0]    MmuPlugin_ports_0_cache_2_virtualAddress_1;
  reg        [9:0]    MmuPlugin_ports_0_cache_2_physicalAddress_0;
  reg        [9:0]    MmuPlugin_ports_0_cache_2_physicalAddress_1;
  reg                 MmuPlugin_ports_0_cache_2_allowRead;
  reg                 MmuPlugin_ports_0_cache_2_allowWrite;
  reg                 MmuPlugin_ports_0_cache_2_allowExecute;
  reg                 MmuPlugin_ports_0_cache_2_allowUser;
  reg                 MmuPlugin_ports_0_cache_3_valid;
  reg                 MmuPlugin_ports_0_cache_3_exception;
  reg                 MmuPlugin_ports_0_cache_3_superPage;
  reg        [9:0]    MmuPlugin_ports_0_cache_3_virtualAddress_0;
  reg        [9:0]    MmuPlugin_ports_0_cache_3_virtualAddress_1;
  reg        [9:0]    MmuPlugin_ports_0_cache_3_physicalAddress_0;
  reg        [9:0]    MmuPlugin_ports_0_cache_3_physicalAddress_1;
  reg                 MmuPlugin_ports_0_cache_3_allowRead;
  reg                 MmuPlugin_ports_0_cache_3_allowWrite;
  reg                 MmuPlugin_ports_0_cache_3_allowExecute;
  reg                 MmuPlugin_ports_0_cache_3_allowUser;
  wire                MmuPlugin_ports_0_dirty;
  reg                 MmuPlugin_ports_0_requireMmuLockupCalc;
  reg        [3:0]    MmuPlugin_ports_0_cacheHitsCalc;
  wire                MmuPlugin_ports_0_cacheHit;
  wire                _zz_133;
  wire                _zz_134;
  wire                _zz_135;
  wire       [1:0]    _zz_136;
  wire                MmuPlugin_ports_0_cacheLine_valid;
  wire                MmuPlugin_ports_0_cacheLine_exception;
  wire                MmuPlugin_ports_0_cacheLine_superPage;
  wire       [9:0]    MmuPlugin_ports_0_cacheLine_virtualAddress_0;
  wire       [9:0]    MmuPlugin_ports_0_cacheLine_virtualAddress_1;
  wire       [9:0]    MmuPlugin_ports_0_cacheLine_physicalAddress_0;
  wire       [9:0]    MmuPlugin_ports_0_cacheLine_physicalAddress_1;
  wire                MmuPlugin_ports_0_cacheLine_allowRead;
  wire                MmuPlugin_ports_0_cacheLine_allowWrite;
  wire                MmuPlugin_ports_0_cacheLine_allowExecute;
  wire                MmuPlugin_ports_0_cacheLine_allowUser;
  reg                 MmuPlugin_ports_0_entryToReplace_willIncrement;
  wire                MmuPlugin_ports_0_entryToReplace_willClear;
  reg        [1:0]    MmuPlugin_ports_0_entryToReplace_valueNext;
  reg        [1:0]    MmuPlugin_ports_0_entryToReplace_value;
  wire                MmuPlugin_ports_0_entryToReplace_willOverflowIfInc;
  wire                MmuPlugin_ports_0_entryToReplace_willOverflow;
  reg                 MmuPlugin_ports_1_cache_0_valid;
  reg                 MmuPlugin_ports_1_cache_0_exception;
  reg                 MmuPlugin_ports_1_cache_0_superPage;
  reg        [9:0]    MmuPlugin_ports_1_cache_0_virtualAddress_0;
  reg        [9:0]    MmuPlugin_ports_1_cache_0_virtualAddress_1;
  reg        [9:0]    MmuPlugin_ports_1_cache_0_physicalAddress_0;
  reg        [9:0]    MmuPlugin_ports_1_cache_0_physicalAddress_1;
  reg                 MmuPlugin_ports_1_cache_0_allowRead;
  reg                 MmuPlugin_ports_1_cache_0_allowWrite;
  reg                 MmuPlugin_ports_1_cache_0_allowExecute;
  reg                 MmuPlugin_ports_1_cache_0_allowUser;
  reg                 MmuPlugin_ports_1_cache_1_valid;
  reg                 MmuPlugin_ports_1_cache_1_exception;
  reg                 MmuPlugin_ports_1_cache_1_superPage;
  reg        [9:0]    MmuPlugin_ports_1_cache_1_virtualAddress_0;
  reg        [9:0]    MmuPlugin_ports_1_cache_1_virtualAddress_1;
  reg        [9:0]    MmuPlugin_ports_1_cache_1_physicalAddress_0;
  reg        [9:0]    MmuPlugin_ports_1_cache_1_physicalAddress_1;
  reg                 MmuPlugin_ports_1_cache_1_allowRead;
  reg                 MmuPlugin_ports_1_cache_1_allowWrite;
  reg                 MmuPlugin_ports_1_cache_1_allowExecute;
  reg                 MmuPlugin_ports_1_cache_1_allowUser;
  reg                 MmuPlugin_ports_1_cache_2_valid;
  reg                 MmuPlugin_ports_1_cache_2_exception;
  reg                 MmuPlugin_ports_1_cache_2_superPage;
  reg        [9:0]    MmuPlugin_ports_1_cache_2_virtualAddress_0;
  reg        [9:0]    MmuPlugin_ports_1_cache_2_virtualAddress_1;
  reg        [9:0]    MmuPlugin_ports_1_cache_2_physicalAddress_0;
  reg        [9:0]    MmuPlugin_ports_1_cache_2_physicalAddress_1;
  reg                 MmuPlugin_ports_1_cache_2_allowRead;
  reg                 MmuPlugin_ports_1_cache_2_allowWrite;
  reg                 MmuPlugin_ports_1_cache_2_allowExecute;
  reg                 MmuPlugin_ports_1_cache_2_allowUser;
  reg                 MmuPlugin_ports_1_cache_3_valid;
  reg                 MmuPlugin_ports_1_cache_3_exception;
  reg                 MmuPlugin_ports_1_cache_3_superPage;
  reg        [9:0]    MmuPlugin_ports_1_cache_3_virtualAddress_0;
  reg        [9:0]    MmuPlugin_ports_1_cache_3_virtualAddress_1;
  reg        [9:0]    MmuPlugin_ports_1_cache_3_physicalAddress_0;
  reg        [9:0]    MmuPlugin_ports_1_cache_3_physicalAddress_1;
  reg                 MmuPlugin_ports_1_cache_3_allowRead;
  reg                 MmuPlugin_ports_1_cache_3_allowWrite;
  reg                 MmuPlugin_ports_1_cache_3_allowExecute;
  reg                 MmuPlugin_ports_1_cache_3_allowUser;
  wire                MmuPlugin_ports_1_dirty;
  reg                 MmuPlugin_ports_1_requireMmuLockupCalc;
  reg        [3:0]    MmuPlugin_ports_1_cacheHitsCalc;
  wire                MmuPlugin_ports_1_cacheHit;
  wire                _zz_137;
  wire                _zz_138;
  wire                _zz_139;
  wire       [1:0]    _zz_140;
  wire                MmuPlugin_ports_1_cacheLine_valid;
  wire                MmuPlugin_ports_1_cacheLine_exception;
  wire                MmuPlugin_ports_1_cacheLine_superPage;
  wire       [9:0]    MmuPlugin_ports_1_cacheLine_virtualAddress_0;
  wire       [9:0]    MmuPlugin_ports_1_cacheLine_virtualAddress_1;
  wire       [9:0]    MmuPlugin_ports_1_cacheLine_physicalAddress_0;
  wire       [9:0]    MmuPlugin_ports_1_cacheLine_physicalAddress_1;
  wire                MmuPlugin_ports_1_cacheLine_allowRead;
  wire                MmuPlugin_ports_1_cacheLine_allowWrite;
  wire                MmuPlugin_ports_1_cacheLine_allowExecute;
  wire                MmuPlugin_ports_1_cacheLine_allowUser;
  reg                 MmuPlugin_ports_1_entryToReplace_willIncrement;
  wire                MmuPlugin_ports_1_entryToReplace_willClear;
  reg        [1:0]    MmuPlugin_ports_1_entryToReplace_valueNext;
  reg        [1:0]    MmuPlugin_ports_1_entryToReplace_value;
  wire                MmuPlugin_ports_1_entryToReplace_willOverflowIfInc;
  wire                MmuPlugin_ports_1_entryToReplace_willOverflow;
  reg        `MmuPlugin_shared_State_defaultEncoding_type MmuPlugin_shared_state_1;
  reg        [9:0]    MmuPlugin_shared_vpn_0;
  reg        [9:0]    MmuPlugin_shared_vpn_1;
  reg        [1:0]    MmuPlugin_shared_portSortedOh;
  reg                 MmuPlugin_shared_dBusRspStaged_valid;
  reg        [31:0]   MmuPlugin_shared_dBusRspStaged_payload_data;
  reg                 MmuPlugin_shared_dBusRspStaged_payload_error;
  reg                 MmuPlugin_shared_dBusRspStaged_payload_redo;
  wire                MmuPlugin_shared_dBusRsp_pte_V;
  wire                MmuPlugin_shared_dBusRsp_pte_R;
  wire                MmuPlugin_shared_dBusRsp_pte_W;
  wire                MmuPlugin_shared_dBusRsp_pte_X;
  wire                MmuPlugin_shared_dBusRsp_pte_U;
  wire                MmuPlugin_shared_dBusRsp_pte_G;
  wire                MmuPlugin_shared_dBusRsp_pte_A;
  wire                MmuPlugin_shared_dBusRsp_pte_D;
  wire       [1:0]    MmuPlugin_shared_dBusRsp_pte_RSW;
  wire       [9:0]    MmuPlugin_shared_dBusRsp_pte_PPN0;
  wire       [11:0]   MmuPlugin_shared_dBusRsp_pte_PPN1;
  wire                MmuPlugin_shared_dBusRsp_exception;
  wire                MmuPlugin_shared_dBusRsp_leaf;
  reg                 MmuPlugin_shared_pteBuffer_V;
  reg                 MmuPlugin_shared_pteBuffer_R;
  reg                 MmuPlugin_shared_pteBuffer_W;
  reg                 MmuPlugin_shared_pteBuffer_X;
  reg                 MmuPlugin_shared_pteBuffer_U;
  reg                 MmuPlugin_shared_pteBuffer_G;
  reg                 MmuPlugin_shared_pteBuffer_A;
  reg                 MmuPlugin_shared_pteBuffer_D;
  reg        [1:0]    MmuPlugin_shared_pteBuffer_RSW;
  reg        [9:0]    MmuPlugin_shared_pteBuffer_PPN0;
  reg        [11:0]   MmuPlugin_shared_pteBuffer_PPN1;
  reg        [1:0]    _zz_141;
  wire       [1:0]    _zz_142;
  reg        [1:0]    _zz_143;
  wire       [1:0]    MmuPlugin_shared_refills;
  wire       [1:0]    _zz_144;
  reg        [1:0]    _zz_145;
  wire       [31:0]   _zz_146;
  reg        [31:0]   decode_to_execute_PC;
  reg        [31:0]   execute_to_memory_PC;
  reg        [31:0]   memory_to_writeBack_PC;
  reg        [31:0]   decode_to_execute_INSTRUCTION;
  reg        [31:0]   execute_to_memory_INSTRUCTION;
  reg        [31:0]   memory_to_writeBack_INSTRUCTION;
  reg        [31:0]   decode_to_execute_FORMAL_PC_NEXT;
  reg        [31:0]   execute_to_memory_FORMAL_PC_NEXT;
  reg        [31:0]   memory_to_writeBack_FORMAL_PC_NEXT;
  reg                 decode_to_execute_MEMORY_FORCE_CONSTISTENCY;
  reg                 decode_to_execute_SRC_USE_SUB_LESS;
  reg                 decode_to_execute_MEMORY_ENABLE;
  reg                 execute_to_memory_MEMORY_ENABLE;
  reg                 memory_to_writeBack_MEMORY_ENABLE;
  reg        `AluCtrlEnum_defaultEncoding_type decode_to_execute_ALU_CTRL;
  reg                 decode_to_execute_REGFILE_WRITE_VALID;
  reg                 execute_to_memory_REGFILE_WRITE_VALID;
  reg                 memory_to_writeBack_REGFILE_WRITE_VALID;
  reg                 decode_to_execute_BYPASSABLE_EXECUTE_STAGE;
  reg                 decode_to_execute_BYPASSABLE_MEMORY_STAGE;
  reg                 execute_to_memory_BYPASSABLE_MEMORY_STAGE;
  reg                 decode_to_execute_MEMORY_WR;
  reg                 execute_to_memory_MEMORY_WR;
  reg                 memory_to_writeBack_MEMORY_WR;
  reg                 decode_to_execute_MEMORY_LRSC;
  reg                 decode_to_execute_MEMORY_AMO;
  reg                 decode_to_execute_MEMORY_MANAGMENT;
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
  reg        `EnvCtrlEnum_defaultEncoding_type memory_to_writeBack_ENV_CTRL;
  reg        `BranchCtrlEnum_defaultEncoding_type decode_to_execute_BRANCH_CTRL;
  reg                 decode_to_execute_IS_SFENCE_VMA;
  reg                 execute_to_memory_IS_SFENCE_VMA;
  reg                 memory_to_writeBack_IS_SFENCE_VMA;
  reg        [31:0]   decode_to_execute_RS1;
  reg        [31:0]   decode_to_execute_RS2;
  reg                 decode_to_execute_SRC2_FORCE_ZERO;
  reg        [31:0]   decode_to_execute_SRC1;
  reg        [31:0]   decode_to_execute_SRC2;
  reg                 decode_to_execute_CSR_WRITE_OPCODE;
  reg                 decode_to_execute_CSR_READ_OPCODE;
  reg        [1:0]    execute_to_memory_MEMORY_ADDRESS_LOW;
  reg        [1:0]    memory_to_writeBack_MEMORY_ADDRESS_LOW;
  reg                 execute_to_memory_IS_DBUS_SHARING;
  reg                 memory_to_writeBack_IS_DBUS_SHARING;
  reg        [31:0]   execute_to_memory_REGFILE_WRITE_DATA;
  reg        [31:0]   memory_to_writeBack_REGFILE_WRITE_DATA;
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
  reg                 execute_CsrPlugin_csr_770;
  reg                 execute_CsrPlugin_csr_771;
  reg                 execute_CsrPlugin_csr_256;
  reg                 execute_CsrPlugin_csr_324;
  reg                 execute_CsrPlugin_csr_260;
  reg                 execute_CsrPlugin_csr_261;
  reg                 execute_CsrPlugin_csr_321;
  reg                 execute_CsrPlugin_csr_320;
  reg                 execute_CsrPlugin_csr_322;
  reg                 execute_CsrPlugin_csr_323;
  reg                 execute_CsrPlugin_csr_384;
  reg        [31:0]   _zz_147;
  reg        [31:0]   _zz_148;
  reg        [31:0]   _zz_149;
  reg        [31:0]   _zz_150;
  reg        [31:0]   _zz_151;
  reg        [31:0]   _zz_152;
  reg        [31:0]   _zz_153;
  reg        [31:0]   _zz_154;
  reg        [31:0]   _zz_155;
  reg        [31:0]   _zz_156;
  reg        [31:0]   _zz_157;
  reg        [31:0]   _zz_158;
  reg        [31:0]   _zz_159;
  reg        [31:0]   _zz_160;
  reg        [31:0]   _zz_161;
  reg        [31:0]   _zz_162;
  reg        [31:0]   _zz_163;
  reg        [31:0]   _zz_164;
  reg        [31:0]   _zz_165;
  reg        [31:0]   _zz_166;
  `ifndef SYNTHESIS
  reg [31:0] decode_BRANCH_CTRL_string;
  reg [31:0] _zz_1_string;
  reg [31:0] _zz_2_string;
  reg [31:0] _zz_3_string;
  reg [39:0] _zz_4_string;
  reg [39:0] _zz_5_string;
  reg [39:0] _zz_6_string;
  reg [39:0] _zz_7_string;
  reg [39:0] decode_ENV_CTRL_string;
  reg [39:0] _zz_8_string;
  reg [39:0] _zz_9_string;
  reg [39:0] _zz_10_string;
  reg [71:0] decode_SHIFT_CTRL_string;
  reg [71:0] _zz_11_string;
  reg [71:0] _zz_12_string;
  reg [71:0] _zz_13_string;
  reg [39:0] decode_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_14_string;
  reg [39:0] _zz_15_string;
  reg [39:0] _zz_16_string;
  reg [63:0] decode_ALU_CTRL_string;
  reg [63:0] _zz_17_string;
  reg [63:0] _zz_18_string;
  reg [63:0] _zz_19_string;
  reg [31:0] execute_BRANCH_CTRL_string;
  reg [31:0] _zz_20_string;
  reg [39:0] memory_ENV_CTRL_string;
  reg [39:0] _zz_21_string;
  reg [39:0] execute_ENV_CTRL_string;
  reg [39:0] _zz_22_string;
  reg [39:0] writeBack_ENV_CTRL_string;
  reg [39:0] _zz_23_string;
  reg [71:0] execute_SHIFT_CTRL_string;
  reg [71:0] _zz_26_string;
  reg [23:0] decode_SRC2_CTRL_string;
  reg [23:0] _zz_29_string;
  reg [95:0] decode_SRC1_CTRL_string;
  reg [95:0] _zz_31_string;
  reg [63:0] execute_ALU_CTRL_string;
  reg [63:0] _zz_32_string;
  reg [39:0] execute_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_33_string;
  reg [31:0] _zz_37_string;
  reg [39:0] _zz_38_string;
  reg [71:0] _zz_39_string;
  reg [39:0] _zz_40_string;
  reg [23:0] _zz_41_string;
  reg [63:0] _zz_42_string;
  reg [95:0] _zz_43_string;
  reg [95:0] _zz_78_string;
  reg [63:0] _zz_79_string;
  reg [23:0] _zz_80_string;
  reg [39:0] _zz_81_string;
  reg [71:0] _zz_82_string;
  reg [39:0] _zz_83_string;
  reg [31:0] _zz_84_string;
  reg [47:0] MmuPlugin_shared_state_1_string;
  reg [63:0] decode_to_execute_ALU_CTRL_string;
  reg [39:0] decode_to_execute_ALU_BITWISE_CTRL_string;
  reg [71:0] decode_to_execute_SHIFT_CTRL_string;
  reg [39:0] decode_to_execute_ENV_CTRL_string;
  reg [39:0] execute_to_memory_ENV_CTRL_string;
  reg [39:0] memory_to_writeBack_ENV_CTRL_string;
  reg [31:0] decode_to_execute_BRANCH_CTRL_string;
  `endif


  assign _zz_231 = (memory_arbitration_isValid && memory_IS_MUL);
  assign _zz_232 = (memory_arbitration_isValid && memory_IS_DIV);
  assign _zz_233 = (writeBack_arbitration_isValid && writeBack_REGFILE_WRITE_VALID);
  assign _zz_234 = 1'b1;
  assign _zz_235 = (memory_arbitration_isValid && memory_REGFILE_WRITE_VALID);
  assign _zz_236 = (execute_arbitration_isValid && execute_REGFILE_WRITE_VALID);
  assign _zz_237 = (execute_arbitration_isValid && execute_IS_CSR);
  assign _zz_238 = ((_zz_172 && IBusCachedPlugin_cache_io_cpu_decode_error) && (! _zz_46_2));
  assign _zz_239 = ((_zz_172 && IBusCachedPlugin_cache_io_cpu_decode_cacheMiss) && (! _zz_46_1));
  assign _zz_240 = ((_zz_172 && IBusCachedPlugin_cache_io_cpu_decode_mmuException) && (! _zz_46_0));
  assign _zz_241 = ((_zz_172 && IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling) && (! IBusCachedPlugin_rsp_issueDetected));
  assign _zz_242 = ({decodeExceptionPort_valid,IBusCachedPlugin_decodeExceptionPort_valid} != 2'b00);
  assign _zz_243 = (execute_arbitration_isValid && (execute_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_WFI));
  assign _zz_244 = ({BranchPlugin_branchExceptionPort_valid,CsrPlugin_selfException_valid} != 2'b00);
  assign _zz_245 = (memory_MulDivIterativePlugin_frontendOk && (! memory_MulDivIterativePlugin_mul_counter_willOverflowIfInc));
  assign _zz_246 = (CsrPlugin_hadException || CsrPlugin_interruptJump);
  assign _zz_247 = (writeBack_arbitration_isValid && (writeBack_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET));
  assign _zz_248 = writeBack_INSTRUCTION[29 : 28];
  assign _zz_249 = (! ({(writeBack_arbitration_isValid || CsrPlugin_exceptionPendings_3),{(memory_arbitration_isValid || CsrPlugin_exceptionPendings_2),(execute_arbitration_isValid || CsrPlugin_exceptionPendings_1)}} != 3'b000));
  assign _zz_250 = (! dataCache_1_io_cpu_redo);
  assign _zz_251 = (writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE);
  assign _zz_252 = (writeBack_arbitration_isValid && writeBack_REGFILE_WRITE_VALID);
  assign _zz_253 = (1'b0 || (! 1'b1));
  assign _zz_254 = (memory_arbitration_isValid && memory_REGFILE_WRITE_VALID);
  assign _zz_255 = (1'b0 || (! memory_BYPASSABLE_MEMORY_STAGE));
  assign _zz_256 = (execute_arbitration_isValid && execute_REGFILE_WRITE_VALID);
  assign _zz_257 = (1'b0 || (! execute_BYPASSABLE_EXECUTE_STAGE));
  assign _zz_258 = (memory_MulDivIterativePlugin_frontendOk && (! memory_MulDivIterativePlugin_div_done));
  assign _zz_259 = (! memory_arbitration_isStuck);
  assign _zz_260 = (execute_CsrPlugin_illegalAccess || execute_CsrPlugin_illegalInstruction);
  assign _zz_261 = (execute_arbitration_isValid && (execute_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_ECALL));
  assign _zz_262 = ((MmuPlugin_shared_dBusRspStaged_valid && (! MmuPlugin_shared_dBusRspStaged_payload_redo)) && (MmuPlugin_shared_dBusRsp_leaf || MmuPlugin_shared_dBusRsp_exception));
  assign _zz_263 = MmuPlugin_shared_portSortedOh[0];
  assign _zz_264 = MmuPlugin_shared_portSortedOh[1];
  assign _zz_265 = (_zz_201 && (! dataCache_1_io_mem_cmd_s2mPipe_ready));
  assign _zz_266 = ((CsrPlugin_sstatus_SIE && (CsrPlugin_privilege == 2'b01)) || (CsrPlugin_privilege < 2'b01));
  assign _zz_267 = ((_zz_113 && (1'b1 && CsrPlugin_mideleg_ST)) && (! 1'b0));
  assign _zz_268 = ((_zz_114 && (1'b1 && CsrPlugin_mideleg_SS)) && (! 1'b0));
  assign _zz_269 = ((_zz_115 && (1'b1 && CsrPlugin_mideleg_SE)) && (! 1'b0));
  assign _zz_270 = (CsrPlugin_mstatus_MIE || (CsrPlugin_privilege < 2'b11));
  assign _zz_271 = ((_zz_113 && 1'b1) && (! (CsrPlugin_mideleg_ST != 1'b0)));
  assign _zz_272 = ((_zz_114 && 1'b1) && (! (CsrPlugin_mideleg_SS != 1'b0)));
  assign _zz_273 = ((_zz_115 && 1'b1) && (! (CsrPlugin_mideleg_SE != 1'b0)));
  assign _zz_274 = ((_zz_116 && 1'b1) && (! 1'b0));
  assign _zz_275 = ((_zz_117 && 1'b1) && (! 1'b0));
  assign _zz_276 = ((_zz_118 && 1'b1) && (! 1'b0));
  assign _zz_277 = (MmuPlugin_shared_refills != 2'b00);
  assign _zz_278 = (MmuPlugin_ports_0_entryToReplace_value == 2'b00);
  assign _zz_279 = (MmuPlugin_ports_0_entryToReplace_value == 2'b01);
  assign _zz_280 = (MmuPlugin_ports_0_entryToReplace_value == 2'b10);
  assign _zz_281 = (MmuPlugin_ports_0_entryToReplace_value == 2'b11);
  assign _zz_282 = (MmuPlugin_ports_1_entryToReplace_value == 2'b00);
  assign _zz_283 = (MmuPlugin_ports_1_entryToReplace_value == 2'b01);
  assign _zz_284 = (MmuPlugin_ports_1_entryToReplace_value == 2'b10);
  assign _zz_285 = (MmuPlugin_ports_1_entryToReplace_value == 2'b11);
  assign _zz_286 = writeBack_INSTRUCTION[13 : 12];
  assign _zz_287 = execute_INSTRUCTION[13];
  assign _zz_288 = _zz_69[34 : 34];
  assign _zz_289 = _zz_69[29 : 29];
  assign _zz_290 = _zz_69[28 : 28];
  assign _zz_291 = _zz_69[27 : 27];
  assign _zz_292 = _zz_69[26 : 26];
  assign _zz_293 = _zz_69[25 : 25];
  assign _zz_294 = _zz_69[20 : 20];
  assign _zz_295 = _zz_69[19 : 19];
  assign _zz_296 = _zz_69[13 : 13];
  assign _zz_297 = _zz_69[12 : 12];
  assign _zz_298 = _zz_69[11 : 11];
  assign _zz_299 = _zz_69[17 : 17];
  assign _zz_300 = _zz_69[5 : 5];
  assign _zz_301 = ($signed(_zz_303) >>> execute_FullBarrelShifterPlugin_amplitude);
  assign _zz_302 = _zz_301[31 : 0];
  assign _zz_303 = {((execute_SHIFT_CTRL == `ShiftCtrlEnum_defaultEncoding_SRA_1) && execute_FullBarrelShifterPlugin_reversed[31]),execute_FullBarrelShifterPlugin_reversed};
  assign _zz_304 = _zz_69[3 : 3];
  assign _zz_305 = _zz_69[18 : 18];
  assign _zz_306 = _zz_69[10 : 10];
  assign _zz_307 = _zz_69[16 : 16];
  assign _zz_308 = _zz_69[15 : 15];
  assign _zz_309 = _zz_69[4 : 4];
  assign _zz_310 = _zz_69[0 : 0];
  assign _zz_311 = (_zz_48 - 4'b0001);
  assign _zz_312 = {IBusCachedPlugin_fetchPc_inc,2'b00};
  assign _zz_313 = {29'd0, _zz_312};
  assign _zz_314 = (writeBack_MEMORY_WR ? 3'b111 : 3'b101);
  assign _zz_315 = (writeBack_MEMORY_WR ? 3'b110 : 3'b100);
  assign _zz_316 = execute_SRC_LESS;
  assign _zz_317 = 3'b100;
  assign _zz_318 = decode_INSTRUCTION[19 : 15];
  assign _zz_319 = decode_INSTRUCTION[31 : 20];
  assign _zz_320 = {decode_INSTRUCTION[31 : 25],decode_INSTRUCTION[11 : 7]};
  assign _zz_321 = ($signed(_zz_322) + $signed(_zz_325));
  assign _zz_322 = ($signed(_zz_323) + $signed(_zz_324));
  assign _zz_323 = execute_SRC1;
  assign _zz_324 = (execute_SRC_USE_SUB_LESS ? (~ execute_SRC2) : execute_SRC2);
  assign _zz_325 = (execute_SRC_USE_SUB_LESS ? _zz_326 : _zz_327);
  assign _zz_326 = 32'h00000001;
  assign _zz_327 = 32'h0;
  assign _zz_328 = memory_MulDivIterativePlugin_mul_counter_willIncrement;
  assign _zz_329 = {2'd0, _zz_328};
  assign _zz_330 = (_zz_331 + _zz_362);
  assign _zz_331 = (_zz_332 + _zz_346);
  assign _zz_332 = (_zz_333 + _zz_339);
  assign _zz_333 = (_zz_335 + _zz_337);
  assign _zz_334 = (memory_MulDivIterativePlugin_rs2[0] ? memory_MulDivIterativePlugin_rs1 : 33'h0);
  assign _zz_335 = {{8{_zz_334[32]}}, _zz_334};
  assign _zz_336 = (memory_MulDivIterativePlugin_rs2[1] ? _zz_338 : 34'h0);
  assign _zz_337 = {{7{_zz_336[33]}}, _zz_336};
  assign _zz_338 = ({1'd0,memory_MulDivIterativePlugin_rs1} <<< 1);
  assign _zz_339 = (_zz_341 + _zz_344);
  assign _zz_340 = (memory_MulDivIterativePlugin_rs2[2] ? _zz_342 : 35'h0);
  assign _zz_341 = {{6{_zz_340[34]}}, _zz_340};
  assign _zz_342 = ({2'd0,memory_MulDivIterativePlugin_rs1} <<< 2);
  assign _zz_343 = (memory_MulDivIterativePlugin_rs2[3] ? _zz_345 : 36'h0);
  assign _zz_344 = {{5{_zz_343[35]}}, _zz_343};
  assign _zz_345 = ({3'd0,memory_MulDivIterativePlugin_rs1} <<< 3);
  assign _zz_346 = (_zz_347 + _zz_354);
  assign _zz_347 = (_zz_349 + _zz_352);
  assign _zz_348 = (memory_MulDivIterativePlugin_rs2[4] ? _zz_350 : 37'h0);
  assign _zz_349 = {{4{_zz_348[36]}}, _zz_348};
  assign _zz_350 = ({4'd0,memory_MulDivIterativePlugin_rs1} <<< 4);
  assign _zz_351 = (memory_MulDivIterativePlugin_rs2[5] ? _zz_353 : 38'h0);
  assign _zz_352 = {{3{_zz_351[37]}}, _zz_351};
  assign _zz_353 = ({5'd0,memory_MulDivIterativePlugin_rs1} <<< 5);
  assign _zz_354 = (_zz_356 + _zz_359);
  assign _zz_355 = (memory_MulDivIterativePlugin_rs2[6] ? _zz_357 : 39'h0);
  assign _zz_356 = {{2{_zz_355[38]}}, _zz_355};
  assign _zz_357 = ({6'd0,memory_MulDivIterativePlugin_rs1} <<< 6);
  assign _zz_358 = (memory_MulDivIterativePlugin_rs2[7] ? _zz_360 : 40'h0);
  assign _zz_359 = {{1{_zz_358[39]}}, _zz_358};
  assign _zz_360 = ({7'd0,memory_MulDivIterativePlugin_rs1} <<< 7);
  assign _zz_361 = _zz_363;
  assign _zz_362 = {{8{_zz_361[32]}}, _zz_361};
  assign _zz_363 = (memory_MulDivIterativePlugin_accumulator >>> 32);
  assign _zz_364 = memory_MulDivIterativePlugin_div_counter_willIncrement;
  assign _zz_365 = {5'd0, _zz_364};
  assign _zz_366 = {1'd0, memory_MulDivIterativePlugin_rs2};
  assign _zz_367 = memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator[31:0];
  assign _zz_368 = memory_MulDivIterativePlugin_div_stage_0_remainderShifted[31:0];
  assign _zz_369 = {_zz_107,(! memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator[32])};
  assign _zz_370 = _zz_371;
  assign _zz_371 = _zz_372;
  assign _zz_372 = ({1'b0,(memory_MulDivIterativePlugin_div_needRevert ? (~ _zz_108) : _zz_108)} + _zz_374);
  assign _zz_373 = memory_MulDivIterativePlugin_div_needRevert;
  assign _zz_374 = {32'd0, _zz_373};
  assign _zz_375 = _zz_110;
  assign _zz_376 = {32'd0, _zz_375};
  assign _zz_377 = _zz_109;
  assign _zz_378 = {31'd0, _zz_377};
  assign _zz_379 = (_zz_119 & (~ _zz_380));
  assign _zz_380 = (_zz_119 - 2'b01);
  assign _zz_381 = (_zz_121 & (~ _zz_382));
  assign _zz_382 = (_zz_121 - 2'b01);
  assign _zz_383 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]};
  assign _zz_384 = execute_INSTRUCTION[31 : 20];
  assign _zz_385 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]};
  assign _zz_386 = MmuPlugin_ports_0_entryToReplace_willIncrement;
  assign _zz_387 = {1'd0, _zz_386};
  assign _zz_388 = MmuPlugin_ports_1_entryToReplace_willIncrement;
  assign _zz_389 = {1'd0, _zz_388};
  assign _zz_390 = MmuPlugin_shared_dBusRspStaged_payload_data[0 : 0];
  assign _zz_391 = MmuPlugin_shared_dBusRspStaged_payload_data[1 : 1];
  assign _zz_392 = MmuPlugin_shared_dBusRspStaged_payload_data[2 : 2];
  assign _zz_393 = MmuPlugin_shared_dBusRspStaged_payload_data[3 : 3];
  assign _zz_394 = MmuPlugin_shared_dBusRspStaged_payload_data[4 : 4];
  assign _zz_395 = MmuPlugin_shared_dBusRspStaged_payload_data[5 : 5];
  assign _zz_396 = MmuPlugin_shared_dBusRspStaged_payload_data[6 : 6];
  assign _zz_397 = MmuPlugin_shared_dBusRspStaged_payload_data[7 : 7];
  assign _zz_398 = (_zz_143 - 2'b01);
  assign _zz_399 = execute_CsrPlugin_writeData[7 : 7];
  assign _zz_400 = execute_CsrPlugin_writeData[3 : 3];
  assign _zz_401 = execute_CsrPlugin_writeData[5 : 5];
  assign _zz_402 = execute_CsrPlugin_writeData[1 : 1];
  assign _zz_403 = execute_CsrPlugin_writeData[19 : 19];
  assign _zz_404 = execute_CsrPlugin_writeData[18 : 18];
  assign _zz_405 = execute_CsrPlugin_writeData[17 : 17];
  assign _zz_406 = execute_CsrPlugin_writeData[3 : 3];
  assign _zz_407 = execute_CsrPlugin_writeData[5 : 5];
  assign _zz_408 = execute_CsrPlugin_writeData[1 : 1];
  assign _zz_409 = execute_CsrPlugin_writeData[9 : 9];
  assign _zz_410 = execute_CsrPlugin_writeData[11 : 11];
  assign _zz_411 = execute_CsrPlugin_writeData[7 : 7];
  assign _zz_412 = execute_CsrPlugin_writeData[3 : 3];
  assign _zz_413 = execute_CsrPlugin_writeData[9 : 9];
  assign _zz_414 = execute_CsrPlugin_writeData[5 : 5];
  assign _zz_415 = execute_CsrPlugin_writeData[1 : 1];
  assign _zz_416 = execute_CsrPlugin_writeData[0 : 0];
  assign _zz_417 = execute_CsrPlugin_writeData[1 : 1];
  assign _zz_418 = execute_CsrPlugin_writeData[2 : 2];
  assign _zz_419 = execute_CsrPlugin_writeData[4 : 4];
  assign _zz_420 = execute_CsrPlugin_writeData[5 : 5];
  assign _zz_421 = execute_CsrPlugin_writeData[6 : 6];
  assign _zz_422 = execute_CsrPlugin_writeData[7 : 7];
  assign _zz_423 = execute_CsrPlugin_writeData[8 : 8];
  assign _zz_424 = execute_CsrPlugin_writeData[9 : 9];
  assign _zz_425 = execute_CsrPlugin_writeData[12 : 12];
  assign _zz_426 = execute_CsrPlugin_writeData[13 : 13];
  assign _zz_427 = execute_CsrPlugin_writeData[15 : 15];
  assign _zz_428 = execute_CsrPlugin_writeData[9 : 9];
  assign _zz_429 = execute_CsrPlugin_writeData[5 : 5];
  assign _zz_430 = execute_CsrPlugin_writeData[1 : 1];
  assign _zz_431 = execute_CsrPlugin_writeData[5 : 5];
  assign _zz_432 = execute_CsrPlugin_writeData[1 : 1];
  assign _zz_433 = execute_CsrPlugin_writeData[19 : 19];
  assign _zz_434 = execute_CsrPlugin_writeData[18 : 18];
  assign _zz_435 = execute_CsrPlugin_writeData[17 : 17];
  assign _zz_436 = execute_CsrPlugin_writeData[5 : 5];
  assign _zz_437 = execute_CsrPlugin_writeData[1 : 1];
  assign _zz_438 = execute_CsrPlugin_writeData[9 : 9];
  assign _zz_439 = execute_CsrPlugin_writeData[9 : 9];
  assign _zz_440 = execute_CsrPlugin_writeData[5 : 5];
  assign _zz_441 = execute_CsrPlugin_writeData[1 : 1];
  assign _zz_442 = execute_CsrPlugin_writeData[31 : 31];
  assign _zz_443 = execute_CsrPlugin_writeData[31 : 31];
  assign _zz_444 = {_zz_52,_zz_51};
  assign _zz_445 = 32'h0000107f;
  assign _zz_446 = (decode_INSTRUCTION & 32'h0000207f);
  assign _zz_447 = 32'h00002073;
  assign _zz_448 = ((decode_INSTRUCTION & 32'h0000407f) == 32'h00004063);
  assign _zz_449 = ((decode_INSTRUCTION & 32'h0000207f) == 32'h00002013);
  assign _zz_450 = {((decode_INSTRUCTION & 32'h0000603f) == 32'h00000023),{((decode_INSTRUCTION & 32'h0000207f) == 32'h00000003),{((decode_INSTRUCTION & _zz_451) == 32'h00000003),{(_zz_452 == _zz_453),{_zz_454,{_zz_455,_zz_456}}}}}};
  assign _zz_451 = 32'h0000505f;
  assign _zz_452 = (decode_INSTRUCTION & 32'h0000707b);
  assign _zz_453 = 32'h00000063;
  assign _zz_454 = ((decode_INSTRUCTION & 32'h0000607f) == 32'h0000000f);
  assign _zz_455 = ((decode_INSTRUCTION & 32'h1800707f) == 32'h0000202f);
  assign _zz_456 = {((decode_INSTRUCTION & 32'hfc00007f) == 32'h00000033),{((decode_INSTRUCTION & 32'he800707f) == 32'h0800202f),{((decode_INSTRUCTION & _zz_457) == 32'h00001013),{(_zz_458 == _zz_459),{_zz_460,{_zz_461,_zz_462}}}}}};
  assign _zz_457 = 32'hfc00305f;
  assign _zz_458 = (decode_INSTRUCTION & 32'h01f0707f);
  assign _zz_459 = 32'h0000500f;
  assign _zz_460 = ((decode_INSTRUCTION & 32'hbc00707f) == 32'h00005013);
  assign _zz_461 = ((decode_INSTRUCTION & 32'hbe00707f) == 32'h00005033);
  assign _zz_462 = {((decode_INSTRUCTION & 32'hbe00707f) == 32'h00000033),{((decode_INSTRUCTION & 32'hf9f0707f) == 32'h1000202f),{((decode_INSTRUCTION & _zz_463) == 32'h12000073),{(_zz_464 == _zz_465),{_zz_466,_zz_467}}}}};
  assign _zz_463 = 32'hfe007fff;
  assign _zz_464 = (decode_INSTRUCTION & 32'hdfffffff);
  assign _zz_465 = 32'h10200073;
  assign _zz_466 = ((decode_INSTRUCTION & 32'hffffffff) == 32'h10500073);
  assign _zz_467 = ((decode_INSTRUCTION & 32'hffffffff) == 32'h00000073);
  assign _zz_468 = 32'h02003050;
  assign _zz_469 = ((decode_INSTRUCTION & 32'h0000001c) == 32'h00000004);
  assign _zz_470 = ((decode_INSTRUCTION & 32'h00000058) == 32'h00000040);
  assign _zz_471 = ((decode_INSTRUCTION & 32'h02203050) == 32'h00000050);
  assign _zz_472 = 1'b0;
  assign _zz_473 = (((decode_INSTRUCTION & _zz_476) == 32'h00000050) != 1'b0);
  assign _zz_474 = ({_zz_477,_zz_478} != 2'b00);
  assign _zz_475 = {(_zz_479 != 1'b0),{(_zz_480 != _zz_481),{_zz_482,{_zz_483,_zz_484}}}};
  assign _zz_476 = 32'h02403050;
  assign _zz_477 = ((decode_INSTRUCTION & 32'h00001050) == 32'h00001050);
  assign _zz_478 = ((decode_INSTRUCTION & 32'h00002050) == 32'h00002050);
  assign _zz_479 = ((decode_INSTRUCTION & 32'h02004064) == 32'h02004020);
  assign _zz_480 = {_zz_77,_zz_76};
  assign _zz_481 = 2'b00;
  assign _zz_482 = ({_zz_77,{_zz_485,_zz_486}} != 3'b000);
  assign _zz_483 = (_zz_487 != 1'b0);
  assign _zz_484 = {(_zz_488 != _zz_489),{_zz_490,{_zz_491,_zz_492}}};
  assign _zz_485 = _zz_75;
  assign _zz_486 = _zz_76;
  assign _zz_487 = ((decode_INSTRUCTION & 32'h02004074) == 32'h02000030);
  assign _zz_488 = {(_zz_493 == _zz_494),(_zz_495 == _zz_496)};
  assign _zz_489 = 2'b00;
  assign _zz_490 = ({_zz_497,{_zz_498,_zz_499}} != 3'b000);
  assign _zz_491 = (_zz_500 != 1'b0);
  assign _zz_492 = {(_zz_501 != _zz_502),{_zz_503,{_zz_504,_zz_505}}};
  assign _zz_493 = (decode_INSTRUCTION & 32'h00007034);
  assign _zz_494 = 32'h00005010;
  assign _zz_495 = (decode_INSTRUCTION & 32'h02007064);
  assign _zz_496 = 32'h00005020;
  assign _zz_497 = ((decode_INSTRUCTION & 32'h40003054) == 32'h40001010);
  assign _zz_498 = ((decode_INSTRUCTION & _zz_506) == 32'h00001010);
  assign _zz_499 = ((decode_INSTRUCTION & _zz_507) == 32'h00001010);
  assign _zz_500 = ((decode_INSTRUCTION & 32'h00001000) == 32'h00001000);
  assign _zz_501 = _zz_75;
  assign _zz_502 = 1'b0;
  assign _zz_503 = ({_zz_508,_zz_509} != 2'b00);
  assign _zz_504 = (_zz_510 != 1'b0);
  assign _zz_505 = {(_zz_511 != _zz_512),{_zz_513,{_zz_514,_zz_515}}};
  assign _zz_506 = 32'h00007034;
  assign _zz_507 = 32'h02007054;
  assign _zz_508 = ((decode_INSTRUCTION & 32'h00002010) == 32'h00002000);
  assign _zz_509 = ((decode_INSTRUCTION & 32'h00005000) == 32'h00001000);
  assign _zz_510 = ((decode_INSTRUCTION & 32'h00004048) == 32'h00004008);
  assign _zz_511 = ((decode_INSTRUCTION & _zz_516) == 32'h00000024);
  assign _zz_512 = 1'b0;
  assign _zz_513 = ({_zz_517,{_zz_518,_zz_519}} != 4'b0000);
  assign _zz_514 = (_zz_520 != 1'b0);
  assign _zz_515 = {(_zz_521 != _zz_522),{_zz_523,{_zz_524,_zz_525}}};
  assign _zz_516 = 32'h00000064;
  assign _zz_517 = ((decode_INSTRUCTION & 32'h00000034) == 32'h00000020);
  assign _zz_518 = ((decode_INSTRUCTION & _zz_526) == 32'h00000020);
  assign _zz_519 = {(_zz_527 == _zz_528),(_zz_529 == _zz_530)};
  assign _zz_520 = ((decode_INSTRUCTION & 32'h10000008) == 32'h00000008);
  assign _zz_521 = ((decode_INSTRUCTION & _zz_531) == 32'h10000008);
  assign _zz_522 = 1'b0;
  assign _zz_523 = ({_zz_532,{_zz_533,_zz_534}} != 6'h0);
  assign _zz_524 = ({_zz_535,_zz_536} != 3'b000);
  assign _zz_525 = {(_zz_537 != _zz_538),{_zz_539,{_zz_540,_zz_541}}};
  assign _zz_526 = 32'h00000064;
  assign _zz_527 = (decode_INSTRUCTION & 32'h08000070);
  assign _zz_528 = 32'h08000020;
  assign _zz_529 = (decode_INSTRUCTION & 32'h10000070);
  assign _zz_530 = 32'h00000020;
  assign _zz_531 = 32'h10000008;
  assign _zz_532 = ((decode_INSTRUCTION & _zz_542) == 32'h00002040);
  assign _zz_533 = (_zz_543 == _zz_544);
  assign _zz_534 = {_zz_545,{_zz_546,_zz_547}};
  assign _zz_535 = (_zz_548 == _zz_549);
  assign _zz_536 = {_zz_550,_zz_551};
  assign _zz_537 = (_zz_552 == _zz_553);
  assign _zz_538 = 1'b0;
  assign _zz_539 = ({_zz_554,_zz_555} != 3'b000);
  assign _zz_540 = (_zz_556 != _zz_557);
  assign _zz_541 = {_zz_558,{_zz_559,_zz_560}};
  assign _zz_542 = 32'h00002040;
  assign _zz_543 = (decode_INSTRUCTION & 32'h00001040);
  assign _zz_544 = 32'h00001040;
  assign _zz_545 = ((decode_INSTRUCTION & _zz_561) == 32'h00000040);
  assign _zz_546 = (_zz_562 == _zz_563);
  assign _zz_547 = {_zz_564,_zz_565};
  assign _zz_548 = (decode_INSTRUCTION & 32'h08000020);
  assign _zz_549 = 32'h08000020;
  assign _zz_550 = ((decode_INSTRUCTION & _zz_566) == 32'h00000020);
  assign _zz_551 = ((decode_INSTRUCTION & _zz_567) == 32'h00000020);
  assign _zz_552 = (decode_INSTRUCTION & 32'h00000010);
  assign _zz_553 = 32'h00000010;
  assign _zz_554 = (_zz_568 == _zz_569);
  assign _zz_555 = {_zz_74,_zz_570};
  assign _zz_556 = {_zz_71,{_zz_571,_zz_572}};
  assign _zz_557 = 7'h0;
  assign _zz_558 = ({_zz_573,_zz_574} != 2'b00);
  assign _zz_559 = (_zz_575 != _zz_576);
  assign _zz_560 = {_zz_577,{_zz_578,_zz_579}};
  assign _zz_561 = 32'h00000050;
  assign _zz_562 = (decode_INSTRUCTION & 32'h02400040);
  assign _zz_563 = 32'h00000040;
  assign _zz_564 = ((decode_INSTRUCTION & _zz_580) == 32'h0);
  assign _zz_565 = ((decode_INSTRUCTION & _zz_581) == 32'h10002008);
  assign _zz_566 = 32'h10000020;
  assign _zz_567 = 32'h00000028;
  assign _zz_568 = (decode_INSTRUCTION & 32'h00000030);
  assign _zz_569 = 32'h00000010;
  assign _zz_570 = ((decode_INSTRUCTION & _zz_582) == 32'h00000020);
  assign _zz_571 = (_zz_583 == _zz_584);
  assign _zz_572 = {_zz_585,{_zz_586,_zz_587}};
  assign _zz_573 = _zz_73;
  assign _zz_574 = (_zz_588 == _zz_589);
  assign _zz_575 = {_zz_73,_zz_590};
  assign _zz_576 = 2'b00;
  assign _zz_577 = (_zz_591 != 1'b0);
  assign _zz_578 = (_zz_592 != _zz_593);
  assign _zz_579 = {_zz_594,{_zz_595,_zz_596}};
  assign _zz_580 = 32'h00000038;
  assign _zz_581 = 32'h18002008;
  assign _zz_582 = 32'h02000068;
  assign _zz_583 = (decode_INSTRUCTION & 32'h00001010);
  assign _zz_584 = 32'h00001010;
  assign _zz_585 = ((decode_INSTRUCTION & _zz_597) == 32'h00002010);
  assign _zz_586 = (_zz_598 == _zz_599);
  assign _zz_587 = {_zz_600,{_zz_601,_zz_602}};
  assign _zz_588 = (decode_INSTRUCTION & 32'h00000070);
  assign _zz_589 = 32'h00000020;
  assign _zz_590 = ((decode_INSTRUCTION & _zz_603) == 32'h0);
  assign _zz_591 = ((decode_INSTRUCTION & _zz_604) == 32'h00004010);
  assign _zz_592 = (_zz_605 == _zz_606);
  assign _zz_593 = 1'b0;
  assign _zz_594 = ({_zz_607,_zz_608} != 5'h0);
  assign _zz_595 = (_zz_609 != _zz_610);
  assign _zz_596 = {_zz_611,{_zz_612,_zz_613}};
  assign _zz_597 = 32'h00002010;
  assign _zz_598 = (decode_INSTRUCTION & 32'h00002008);
  assign _zz_599 = 32'h00002008;
  assign _zz_600 = ((decode_INSTRUCTION & 32'h00000050) == 32'h00000010);
  assign _zz_601 = _zz_74;
  assign _zz_602 = ((decode_INSTRUCTION & _zz_614) == 32'h0);
  assign _zz_603 = 32'h00000020;
  assign _zz_604 = 32'h00004014;
  assign _zz_605 = (decode_INSTRUCTION & 32'h00006014);
  assign _zz_606 = 32'h00002010;
  assign _zz_607 = ((decode_INSTRUCTION & _zz_615) == 32'h0);
  assign _zz_608 = {(_zz_616 == _zz_617),{_zz_618,{_zz_619,_zz_620}}};
  assign _zz_609 = {_zz_72,(_zz_621 == _zz_622)};
  assign _zz_610 = 2'b00;
  assign _zz_611 = ({_zz_623,{_zz_624,_zz_625}} != 3'b000);
  assign _zz_612 = ({_zz_626,_zz_627} != 3'b000);
  assign _zz_613 = {(_zz_628 != _zz_629),(_zz_630 != _zz_631)};
  assign _zz_614 = 32'h00000028;
  assign _zz_615 = 32'h00000044;
  assign _zz_616 = (decode_INSTRUCTION & 32'h00000018);
  assign _zz_617 = 32'h0;
  assign _zz_618 = ((decode_INSTRUCTION & 32'h00006004) == 32'h00002000);
  assign _zz_619 = ((decode_INSTRUCTION & _zz_632) == 32'h00001000);
  assign _zz_620 = _zz_72;
  assign _zz_621 = (decode_INSTRUCTION & 32'h00000058);
  assign _zz_622 = 32'h0;
  assign _zz_623 = ((decode_INSTRUCTION & 32'h00000044) == 32'h00000040);
  assign _zz_624 = ((decode_INSTRUCTION & _zz_633) == 32'h00002010);
  assign _zz_625 = ((decode_INSTRUCTION & _zz_634) == 32'h40000030);
  assign _zz_626 = _zz_71;
  assign _zz_627 = {_zz_70,(_zz_635 == _zz_636)};
  assign _zz_628 = {_zz_70,(_zz_637 == _zz_638)};
  assign _zz_629 = 2'b00;
  assign _zz_630 = ((decode_INSTRUCTION & _zz_639) == 32'h00001008);
  assign _zz_631 = 1'b0;
  assign _zz_632 = 32'h00005004;
  assign _zz_633 = 32'h00002014;
  assign _zz_634 = 32'h40000034;
  assign _zz_635 = (decode_INSTRUCTION & 32'h00002014);
  assign _zz_636 = 32'h00000004;
  assign _zz_637 = (decode_INSTRUCTION & 32'h0000004c);
  assign _zz_638 = 32'h00000004;
  assign _zz_639 = 32'h00005048;
  assign _zz_640 = 32'h0;
  assign _zz_641 = 32'h0;
  assign _zz_642 = 32'h0;
  assign _zz_643 = 32'h0;
  InstructionCache IBusCachedPlugin_cache (
    .io_flush                                 (_zz_167                                                     ), //i
    .io_cpu_prefetch_isValid                  (_zz_168                                                     ), //i
    .io_cpu_prefetch_haltIt                   (IBusCachedPlugin_cache_io_cpu_prefetch_haltIt               ), //o
    .io_cpu_prefetch_pc                       (IBusCachedPlugin_iBusRsp_stages_0_input_payload[31:0]       ), //i
    .io_cpu_fetch_isValid                     (_zz_169                                                     ), //i
    .io_cpu_fetch_isStuck                     (_zz_170                                                     ), //i
    .io_cpu_fetch_isRemoved                   (_zz_171                                                     ), //i
    .io_cpu_fetch_pc                          (IBusCachedPlugin_iBusRsp_stages_1_input_payload[31:0]       ), //i
    .io_cpu_fetch_data                        (IBusCachedPlugin_cache_io_cpu_fetch_data[31:0]              ), //o
    .io_cpu_fetch_mmuRsp_physicalAddress      (IBusCachedPlugin_mmuBus_rsp_physicalAddress[31:0]           ), //i
    .io_cpu_fetch_mmuRsp_isIoAccess           (IBusCachedPlugin_mmuBus_rsp_isIoAccess                      ), //i
    .io_cpu_fetch_mmuRsp_allowRead            (IBusCachedPlugin_mmuBus_rsp_allowRead                       ), //i
    .io_cpu_fetch_mmuRsp_allowWrite           (IBusCachedPlugin_mmuBus_rsp_allowWrite                      ), //i
    .io_cpu_fetch_mmuRsp_allowExecute         (IBusCachedPlugin_mmuBus_rsp_allowExecute                    ), //i
    .io_cpu_fetch_mmuRsp_exception            (IBusCachedPlugin_mmuBus_rsp_exception                       ), //i
    .io_cpu_fetch_mmuRsp_refilling            (IBusCachedPlugin_mmuBus_rsp_refilling                       ), //i
    .io_cpu_fetch_mmuRsp_bypassTranslation    (IBusCachedPlugin_mmuBus_rsp_bypassTranslation               ), //i
    .io_cpu_fetch_mmuRsp_ways_0_sel           (IBusCachedPlugin_mmuBus_rsp_ways_0_sel                      ), //i
    .io_cpu_fetch_mmuRsp_ways_0_physical      (IBusCachedPlugin_mmuBus_rsp_ways_0_physical[31:0]           ), //i
    .io_cpu_fetch_mmuRsp_ways_1_sel           (IBusCachedPlugin_mmuBus_rsp_ways_1_sel                      ), //i
    .io_cpu_fetch_mmuRsp_ways_1_physical      (IBusCachedPlugin_mmuBus_rsp_ways_1_physical[31:0]           ), //i
    .io_cpu_fetch_mmuRsp_ways_2_sel           (IBusCachedPlugin_mmuBus_rsp_ways_2_sel                      ), //i
    .io_cpu_fetch_mmuRsp_ways_2_physical      (IBusCachedPlugin_mmuBus_rsp_ways_2_physical[31:0]           ), //i
    .io_cpu_fetch_mmuRsp_ways_3_sel           (IBusCachedPlugin_mmuBus_rsp_ways_3_sel                      ), //i
    .io_cpu_fetch_mmuRsp_ways_3_physical      (IBusCachedPlugin_mmuBus_rsp_ways_3_physical[31:0]           ), //i
    .io_cpu_fetch_physicalAddress             (IBusCachedPlugin_cache_io_cpu_fetch_physicalAddress[31:0]   ), //o
    .io_cpu_decode_isValid                    (_zz_172                                                     ), //i
    .io_cpu_decode_isStuck                    (_zz_173                                                     ), //i
    .io_cpu_decode_pc                         (IBusCachedPlugin_iBusRsp_stages_2_input_payload[31:0]       ), //i
    .io_cpu_decode_physicalAddress            (IBusCachedPlugin_cache_io_cpu_decode_physicalAddress[31:0]  ), //o
    .io_cpu_decode_data                       (IBusCachedPlugin_cache_io_cpu_decode_data[31:0]             ), //o
    .io_cpu_decode_cacheMiss                  (IBusCachedPlugin_cache_io_cpu_decode_cacheMiss              ), //o
    .io_cpu_decode_error                      (IBusCachedPlugin_cache_io_cpu_decode_error                  ), //o
    .io_cpu_decode_mmuRefilling               (IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling           ), //o
    .io_cpu_decode_mmuException               (IBusCachedPlugin_cache_io_cpu_decode_mmuException           ), //o
    .io_cpu_decode_isUser                     (_zz_174                                                     ), //i
    .io_cpu_fill_valid                        (_zz_175                                                     ), //i
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
  DataCache dataCache_1 (
    .io_cpu_execute_isValid                    (_zz_176                                            ), //i
    .io_cpu_execute_address                    (_zz_177[31:0]                                      ), //i
    .io_cpu_execute_haltIt                     (dataCache_1_io_cpu_execute_haltIt                  ), //o
    .io_cpu_execute_args_wr                    (_zz_178                                            ), //i
    .io_cpu_execute_args_data                  (_zz_179[31:0]                                      ), //i
    .io_cpu_execute_args_size                  (_zz_180[1:0]                                       ), //i
    .io_cpu_execute_args_isLrsc                (_zz_181                                            ), //i
    .io_cpu_execute_args_isAmo                 (_zz_182                                            ), //i
    .io_cpu_execute_args_amoCtrl_swap          (_zz_183                                            ), //i
    .io_cpu_execute_args_amoCtrl_alu           (_zz_184[2:0]                                       ), //i
    .io_cpu_execute_args_totalyConsistent      (execute_MEMORY_FORCE_CONSTISTENCY                  ), //i
    .io_cpu_memory_isValid                     (_zz_185                                            ), //i
    .io_cpu_memory_isStuck                     (memory_arbitration_isStuck                         ), //i
    .io_cpu_memory_isWrite                     (dataCache_1_io_cpu_memory_isWrite                  ), //o
    .io_cpu_memory_address                     (_zz_186[31:0]                                      ), //i
    .io_cpu_memory_mmuRsp_physicalAddress      (DBusCachedPlugin_mmuBus_rsp_physicalAddress[31:0]  ), //i
    .io_cpu_memory_mmuRsp_isIoAccess           (_zz_187                                            ), //i
    .io_cpu_memory_mmuRsp_allowRead            (DBusCachedPlugin_mmuBus_rsp_allowRead              ), //i
    .io_cpu_memory_mmuRsp_allowWrite           (DBusCachedPlugin_mmuBus_rsp_allowWrite             ), //i
    .io_cpu_memory_mmuRsp_allowExecute         (DBusCachedPlugin_mmuBus_rsp_allowExecute           ), //i
    .io_cpu_memory_mmuRsp_exception            (DBusCachedPlugin_mmuBus_rsp_exception              ), //i
    .io_cpu_memory_mmuRsp_refilling            (DBusCachedPlugin_mmuBus_rsp_refilling              ), //i
    .io_cpu_memory_mmuRsp_bypassTranslation    (DBusCachedPlugin_mmuBus_rsp_bypassTranslation      ), //i
    .io_cpu_memory_mmuRsp_ways_0_sel           (DBusCachedPlugin_mmuBus_rsp_ways_0_sel             ), //i
    .io_cpu_memory_mmuRsp_ways_0_physical      (DBusCachedPlugin_mmuBus_rsp_ways_0_physical[31:0]  ), //i
    .io_cpu_memory_mmuRsp_ways_1_sel           (DBusCachedPlugin_mmuBus_rsp_ways_1_sel             ), //i
    .io_cpu_memory_mmuRsp_ways_1_physical      (DBusCachedPlugin_mmuBus_rsp_ways_1_physical[31:0]  ), //i
    .io_cpu_memory_mmuRsp_ways_2_sel           (DBusCachedPlugin_mmuBus_rsp_ways_2_sel             ), //i
    .io_cpu_memory_mmuRsp_ways_2_physical      (DBusCachedPlugin_mmuBus_rsp_ways_2_physical[31:0]  ), //i
    .io_cpu_memory_mmuRsp_ways_3_sel           (DBusCachedPlugin_mmuBus_rsp_ways_3_sel             ), //i
    .io_cpu_memory_mmuRsp_ways_3_physical      (DBusCachedPlugin_mmuBus_rsp_ways_3_physical[31:0]  ), //i
    .io_cpu_writeBack_isValid                  (_zz_188                                            ), //i
    .io_cpu_writeBack_isStuck                  (writeBack_arbitration_isStuck                      ), //i
    .io_cpu_writeBack_isUser                   (_zz_189                                            ), //i
    .io_cpu_writeBack_haltIt                   (dataCache_1_io_cpu_writeBack_haltIt                ), //o
    .io_cpu_writeBack_isWrite                  (dataCache_1_io_cpu_writeBack_isWrite               ), //o
    .io_cpu_writeBack_data                     (dataCache_1_io_cpu_writeBack_data[31:0]            ), //o
    .io_cpu_writeBack_address                  (_zz_190[31:0]                                      ), //i
    .io_cpu_writeBack_mmuException             (dataCache_1_io_cpu_writeBack_mmuException          ), //o
    .io_cpu_writeBack_unalignedAccess          (dataCache_1_io_cpu_writeBack_unalignedAccess       ), //o
    .io_cpu_writeBack_accessError              (dataCache_1_io_cpu_writeBack_accessError           ), //o
    .io_cpu_writeBack_keepMemRspData           (dataCache_1_io_cpu_writeBack_keepMemRspData        ), //o
    .io_cpu_writeBack_fence_SW                 (_zz_191                                            ), //i
    .io_cpu_writeBack_fence_SR                 (_zz_192                                            ), //i
    .io_cpu_writeBack_fence_SO                 (_zz_193                                            ), //i
    .io_cpu_writeBack_fence_SI                 (_zz_194                                            ), //i
    .io_cpu_writeBack_fence_PW                 (_zz_195                                            ), //i
    .io_cpu_writeBack_fence_PR                 (_zz_196                                            ), //i
    .io_cpu_writeBack_fence_PO                 (_zz_197                                            ), //i
    .io_cpu_writeBack_fence_PI                 (_zz_198                                            ), //i
    .io_cpu_writeBack_fence_FM                 (_zz_199[3:0]                                       ), //i
    .io_cpu_redo                               (dataCache_1_io_cpu_redo                            ), //o
    .io_cpu_flush_valid                        (_zz_200                                            ), //i
    .io_cpu_flush_ready                        (dataCache_1_io_cpu_flush_ready                     ), //o
    .io_mem_cmd_valid                          (dataCache_1_io_mem_cmd_valid                       ), //o
    .io_mem_cmd_ready                          (_zz_201                                            ), //i
    .io_mem_cmd_payload_wr                     (dataCache_1_io_mem_cmd_payload_wr                  ), //o
    .io_mem_cmd_payload_uncached               (dataCache_1_io_mem_cmd_payload_uncached            ), //o
    .io_mem_cmd_payload_address                (dataCache_1_io_mem_cmd_payload_address[31:0]       ), //o
    .io_mem_cmd_payload_data                   (dataCache_1_io_mem_cmd_payload_data[31:0]          ), //o
    .io_mem_cmd_payload_mask                   (dataCache_1_io_mem_cmd_payload_mask[3:0]           ), //o
    .io_mem_cmd_payload_length                 (dataCache_1_io_mem_cmd_payload_length[3:0]         ), //o
    .io_mem_cmd_payload_last                   (dataCache_1_io_mem_cmd_payload_last                ), //o
    .io_mem_rsp_valid                          (dBus_rsp_regNext_valid                             ), //i
    .io_mem_rsp_payload_last                   (dBus_rsp_regNext_payload_last                      ), //i
    .io_mem_rsp_payload_data                   (dBus_rsp_regNext_payload_data[31:0]                ), //i
    .io_mem_rsp_payload_error                  (dBus_rsp_regNext_payload_error                     ), //i
    .clk                                       (clk                                                ), //i
    .resetn                                    (resetn                                             )  //i
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
    .wr_en      (_zz_202                                        ), //i
    .wr_mask    (_zz_203                                        ), //i
    .wr_addr    (lastStageRegFileWrite_payload_address[4:0]     ), //i
    .wr_data    (_zz_85[31:0]                                   ), //i
    .rd_clk     (clk                                            ), //i
    .rd_en      (_zz_204                                        ), //i
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
    .wr_en      (_zz_205                                        ), //i
    .wr_mask    (_zz_206                                        ), //i
    .wr_addr    (lastStageRegFileWrite_payload_address[4:0]     ), //i
    .wr_data    (_zz_85[31:0]                                   ), //i
    .rd_clk     (clk                                            ), //i
    .rd_en      (_zz_207                                        ), //i
    .rd_addr    (decode_RegFilePlugin_regFileReadAddress2[4:0]  ), //i
    .rd_data    (RegFilePlugin_regFile_1_rd_data[31:0]          )  //o
  );
  always @(*) begin
    case(_zz_444)
      2'b00 : begin
        _zz_208 = DBusCachedPlugin_redoBranch_payload;
      end
      2'b01 : begin
        _zz_208 = CsrPlugin_jumpInterface_payload;
      end
      2'b10 : begin
        _zz_208 = CsrPlugin_redoInterface_payload;
      end
      default : begin
        _zz_208 = BranchPlugin_jumpInterface_payload;
      end
    endcase
  end

  always @(*) begin
    case(_zz_136)
      2'b00 : begin
        _zz_209 = MmuPlugin_ports_0_cache_0_valid;
        _zz_210 = MmuPlugin_ports_0_cache_0_exception;
        _zz_211 = MmuPlugin_ports_0_cache_0_superPage;
        _zz_212 = MmuPlugin_ports_0_cache_0_virtualAddress_0;
        _zz_213 = MmuPlugin_ports_0_cache_0_virtualAddress_1;
        _zz_214 = MmuPlugin_ports_0_cache_0_physicalAddress_0;
        _zz_215 = MmuPlugin_ports_0_cache_0_physicalAddress_1;
        _zz_216 = MmuPlugin_ports_0_cache_0_allowRead;
        _zz_217 = MmuPlugin_ports_0_cache_0_allowWrite;
        _zz_218 = MmuPlugin_ports_0_cache_0_allowExecute;
        _zz_219 = MmuPlugin_ports_0_cache_0_allowUser;
      end
      2'b01 : begin
        _zz_209 = MmuPlugin_ports_0_cache_1_valid;
        _zz_210 = MmuPlugin_ports_0_cache_1_exception;
        _zz_211 = MmuPlugin_ports_0_cache_1_superPage;
        _zz_212 = MmuPlugin_ports_0_cache_1_virtualAddress_0;
        _zz_213 = MmuPlugin_ports_0_cache_1_virtualAddress_1;
        _zz_214 = MmuPlugin_ports_0_cache_1_physicalAddress_0;
        _zz_215 = MmuPlugin_ports_0_cache_1_physicalAddress_1;
        _zz_216 = MmuPlugin_ports_0_cache_1_allowRead;
        _zz_217 = MmuPlugin_ports_0_cache_1_allowWrite;
        _zz_218 = MmuPlugin_ports_0_cache_1_allowExecute;
        _zz_219 = MmuPlugin_ports_0_cache_1_allowUser;
      end
      2'b10 : begin
        _zz_209 = MmuPlugin_ports_0_cache_2_valid;
        _zz_210 = MmuPlugin_ports_0_cache_2_exception;
        _zz_211 = MmuPlugin_ports_0_cache_2_superPage;
        _zz_212 = MmuPlugin_ports_0_cache_2_virtualAddress_0;
        _zz_213 = MmuPlugin_ports_0_cache_2_virtualAddress_1;
        _zz_214 = MmuPlugin_ports_0_cache_2_physicalAddress_0;
        _zz_215 = MmuPlugin_ports_0_cache_2_physicalAddress_1;
        _zz_216 = MmuPlugin_ports_0_cache_2_allowRead;
        _zz_217 = MmuPlugin_ports_0_cache_2_allowWrite;
        _zz_218 = MmuPlugin_ports_0_cache_2_allowExecute;
        _zz_219 = MmuPlugin_ports_0_cache_2_allowUser;
      end
      default : begin
        _zz_209 = MmuPlugin_ports_0_cache_3_valid;
        _zz_210 = MmuPlugin_ports_0_cache_3_exception;
        _zz_211 = MmuPlugin_ports_0_cache_3_superPage;
        _zz_212 = MmuPlugin_ports_0_cache_3_virtualAddress_0;
        _zz_213 = MmuPlugin_ports_0_cache_3_virtualAddress_1;
        _zz_214 = MmuPlugin_ports_0_cache_3_physicalAddress_0;
        _zz_215 = MmuPlugin_ports_0_cache_3_physicalAddress_1;
        _zz_216 = MmuPlugin_ports_0_cache_3_allowRead;
        _zz_217 = MmuPlugin_ports_0_cache_3_allowWrite;
        _zz_218 = MmuPlugin_ports_0_cache_3_allowExecute;
        _zz_219 = MmuPlugin_ports_0_cache_3_allowUser;
      end
    endcase
  end

  always @(*) begin
    case(_zz_140)
      2'b00 : begin
        _zz_220 = MmuPlugin_ports_1_cache_0_valid;
        _zz_221 = MmuPlugin_ports_1_cache_0_exception;
        _zz_222 = MmuPlugin_ports_1_cache_0_superPage;
        _zz_223 = MmuPlugin_ports_1_cache_0_virtualAddress_0;
        _zz_224 = MmuPlugin_ports_1_cache_0_virtualAddress_1;
        _zz_225 = MmuPlugin_ports_1_cache_0_physicalAddress_0;
        _zz_226 = MmuPlugin_ports_1_cache_0_physicalAddress_1;
        _zz_227 = MmuPlugin_ports_1_cache_0_allowRead;
        _zz_228 = MmuPlugin_ports_1_cache_0_allowWrite;
        _zz_229 = MmuPlugin_ports_1_cache_0_allowExecute;
        _zz_230 = MmuPlugin_ports_1_cache_0_allowUser;
      end
      2'b01 : begin
        _zz_220 = MmuPlugin_ports_1_cache_1_valid;
        _zz_221 = MmuPlugin_ports_1_cache_1_exception;
        _zz_222 = MmuPlugin_ports_1_cache_1_superPage;
        _zz_223 = MmuPlugin_ports_1_cache_1_virtualAddress_0;
        _zz_224 = MmuPlugin_ports_1_cache_1_virtualAddress_1;
        _zz_225 = MmuPlugin_ports_1_cache_1_physicalAddress_0;
        _zz_226 = MmuPlugin_ports_1_cache_1_physicalAddress_1;
        _zz_227 = MmuPlugin_ports_1_cache_1_allowRead;
        _zz_228 = MmuPlugin_ports_1_cache_1_allowWrite;
        _zz_229 = MmuPlugin_ports_1_cache_1_allowExecute;
        _zz_230 = MmuPlugin_ports_1_cache_1_allowUser;
      end
      2'b10 : begin
        _zz_220 = MmuPlugin_ports_1_cache_2_valid;
        _zz_221 = MmuPlugin_ports_1_cache_2_exception;
        _zz_222 = MmuPlugin_ports_1_cache_2_superPage;
        _zz_223 = MmuPlugin_ports_1_cache_2_virtualAddress_0;
        _zz_224 = MmuPlugin_ports_1_cache_2_virtualAddress_1;
        _zz_225 = MmuPlugin_ports_1_cache_2_physicalAddress_0;
        _zz_226 = MmuPlugin_ports_1_cache_2_physicalAddress_1;
        _zz_227 = MmuPlugin_ports_1_cache_2_allowRead;
        _zz_228 = MmuPlugin_ports_1_cache_2_allowWrite;
        _zz_229 = MmuPlugin_ports_1_cache_2_allowExecute;
        _zz_230 = MmuPlugin_ports_1_cache_2_allowUser;
      end
      default : begin
        _zz_220 = MmuPlugin_ports_1_cache_3_valid;
        _zz_221 = MmuPlugin_ports_1_cache_3_exception;
        _zz_222 = MmuPlugin_ports_1_cache_3_superPage;
        _zz_223 = MmuPlugin_ports_1_cache_3_virtualAddress_0;
        _zz_224 = MmuPlugin_ports_1_cache_3_virtualAddress_1;
        _zz_225 = MmuPlugin_ports_1_cache_3_physicalAddress_0;
        _zz_226 = MmuPlugin_ports_1_cache_3_physicalAddress_1;
        _zz_227 = MmuPlugin_ports_1_cache_3_allowRead;
        _zz_228 = MmuPlugin_ports_1_cache_3_allowWrite;
        _zz_229 = MmuPlugin_ports_1_cache_3_allowExecute;
        _zz_230 = MmuPlugin_ports_1_cache_3_allowUser;
      end
    endcase
  end

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
    case(decode_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : decode_ENV_CTRL_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : decode_ENV_CTRL_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : decode_ENV_CTRL_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : decode_ENV_CTRL_string = "ECALL";
      default : decode_ENV_CTRL_string = "?????";
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
    case(_zz_9)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_9_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_9_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_9_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_9_string = "ECALL";
      default : _zz_9_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_10)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_10_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_10_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_10_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_10_string = "ECALL";
      default : _zz_10_string = "?????";
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
    case(_zz_11)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_11_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_11_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_11_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_11_string = "SRA_1    ";
      default : _zz_11_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_12)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_12_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_12_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_12_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_12_string = "SRA_1    ";
      default : _zz_12_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_13)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_13_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_13_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_13_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_13_string = "SRA_1    ";
      default : _zz_13_string = "?????????";
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
    case(_zz_14)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_14_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_14_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_14_string = "AND_1";
      default : _zz_14_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_15)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_15_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_15_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_15_string = "AND_1";
      default : _zz_15_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_16)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_16_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_16_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_16_string = "AND_1";
      default : _zz_16_string = "?????";
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
    case(_zz_17)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_17_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_17_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_17_string = "BITWISE ";
      default : _zz_17_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_18)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_18_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_18_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_18_string = "BITWISE ";
      default : _zz_18_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_19)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_19_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_19_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_19_string = "BITWISE ";
      default : _zz_19_string = "????????";
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
    case(_zz_20)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_20_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_20_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_20_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_20_string = "JALR";
      default : _zz_20_string = "????";
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
    case(_zz_21)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_21_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_21_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_21_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_21_string = "ECALL";
      default : _zz_21_string = "?????";
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
    case(_zz_22)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_22_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_22_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_22_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_22_string = "ECALL";
      default : _zz_22_string = "?????";
    endcase
  end
  always @(*) begin
    case(writeBack_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : writeBack_ENV_CTRL_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : writeBack_ENV_CTRL_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : writeBack_ENV_CTRL_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : writeBack_ENV_CTRL_string = "ECALL";
      default : writeBack_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_23)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_23_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_23_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_23_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_23_string = "ECALL";
      default : _zz_23_string = "?????";
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
    case(_zz_26)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_26_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_26_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_26_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_26_string = "SRA_1    ";
      default : _zz_26_string = "?????????";
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
    case(_zz_29)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_29_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_29_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_29_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_29_string = "PC ";
      default : _zz_29_string = "???";
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
    case(_zz_31)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_31_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_31_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_31_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_31_string = "URS1        ";
      default : _zz_31_string = "????????????";
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
    case(_zz_32)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_32_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_32_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_32_string = "BITWISE ";
      default : _zz_32_string = "????????";
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
    case(_zz_33)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_33_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_33_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_33_string = "AND_1";
      default : _zz_33_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_37)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_37_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_37_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_37_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_37_string = "JALR";
      default : _zz_37_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_38)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_38_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_38_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_38_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_38_string = "ECALL";
      default : _zz_38_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_39)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_39_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_39_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_39_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_39_string = "SRA_1    ";
      default : _zz_39_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_40)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_40_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_40_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_40_string = "AND_1";
      default : _zz_40_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_41)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_41_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_41_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_41_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_41_string = "PC ";
      default : _zz_41_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_42)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_42_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_42_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_42_string = "BITWISE ";
      default : _zz_42_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_43)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_43_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_43_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_43_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_43_string = "URS1        ";
      default : _zz_43_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_78)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_78_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_78_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_78_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_78_string = "URS1        ";
      default : _zz_78_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_79)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_79_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_79_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_79_string = "BITWISE ";
      default : _zz_79_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_80)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_80_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_80_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_80_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_80_string = "PC ";
      default : _zz_80_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_81)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_81_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_81_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_81_string = "AND_1";
      default : _zz_81_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_82)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_82_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_82_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_82_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_82_string = "SRA_1    ";
      default : _zz_82_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_83)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_83_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_83_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_83_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_83_string = "ECALL";
      default : _zz_83_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_84)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_84_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_84_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_84_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_84_string = "JALR";
      default : _zz_84_string = "????";
    endcase
  end
  always @(*) begin
    case(MmuPlugin_shared_state_1)
      `MmuPlugin_shared_State_defaultEncoding_IDLE : MmuPlugin_shared_state_1_string = "IDLE  ";
      `MmuPlugin_shared_State_defaultEncoding_L1_CMD : MmuPlugin_shared_state_1_string = "L1_CMD";
      `MmuPlugin_shared_State_defaultEncoding_L1_RSP : MmuPlugin_shared_state_1_string = "L1_RSP";
      `MmuPlugin_shared_State_defaultEncoding_L0_CMD : MmuPlugin_shared_state_1_string = "L0_CMD";
      `MmuPlugin_shared_State_defaultEncoding_L0_RSP : MmuPlugin_shared_state_1_string = "L0_RSP";
      default : MmuPlugin_shared_state_1_string = "??????";
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
    case(memory_to_writeBack_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : memory_to_writeBack_ENV_CTRL_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : memory_to_writeBack_ENV_CTRL_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : memory_to_writeBack_ENV_CTRL_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : memory_to_writeBack_ENV_CTRL_string = "ECALL";
      default : memory_to_writeBack_ENV_CTRL_string = "?????";
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

  assign execute_REGFILE_WRITE_DATA = _zz_87;
  assign execute_IS_DBUS_SHARING = (MmuPlugin_dBusAccess_cmd_valid && MmuPlugin_dBusAccess_cmd_ready);
  assign memory_MEMORY_ADDRESS_LOW = execute_to_memory_MEMORY_ADDRESS_LOW;
  assign execute_MEMORY_ADDRESS_LOW = _zz_177[1 : 0];
  assign decode_CSR_READ_OPCODE = (decode_INSTRUCTION[13 : 7] != 7'h20);
  assign decode_CSR_WRITE_OPCODE = (! (((decode_INSTRUCTION[14 : 13] == 2'b01) && (decode_INSTRUCTION[19 : 15] == 5'h0)) || ((decode_INSTRUCTION[14 : 13] == 2'b11) && (decode_INSTRUCTION[19 : 15] == 5'h0))));
  assign decode_SRC2 = _zz_93;
  assign decode_SRC1 = _zz_88;
  assign decode_SRC2_FORCE_ZERO = (decode_SRC_ADD_ZERO && (! decode_SRC_USE_SUB_LESS));
  assign memory_IS_SFENCE_VMA = execute_to_memory_IS_SFENCE_VMA;
  assign execute_IS_SFENCE_VMA = decode_to_execute_IS_SFENCE_VMA;
  assign decode_IS_SFENCE_VMA = _zz_288[0];
  assign decode_BRANCH_CTRL = _zz_1;
  assign _zz_2 = _zz_3;
  assign _zz_4 = _zz_5;
  assign _zz_6 = _zz_7;
  assign decode_ENV_CTRL = _zz_8;
  assign _zz_9 = _zz_10;
  assign decode_IS_CSR = _zz_289[0];
  assign decode_IS_DIV = _zz_290[0];
  assign decode_IS_RS2_SIGNED = _zz_291[0];
  assign decode_IS_RS1_SIGNED = _zz_292[0];
  assign decode_IS_MUL = _zz_293[0];
  assign decode_SHIFT_CTRL = _zz_11;
  assign _zz_12 = _zz_13;
  assign decode_ALU_BITWISE_CTRL = _zz_14;
  assign _zz_15 = _zz_16;
  assign decode_SRC_LESS_UNSIGNED = _zz_294[0];
  assign decode_MEMORY_MANAGMENT = _zz_295[0];
  assign memory_MEMORY_WR = execute_to_memory_MEMORY_WR;
  assign decode_MEMORY_WR = _zz_296[0];
  assign execute_BYPASSABLE_MEMORY_STAGE = decode_to_execute_BYPASSABLE_MEMORY_STAGE;
  assign decode_BYPASSABLE_MEMORY_STAGE = _zz_297[0];
  assign decode_BYPASSABLE_EXECUTE_STAGE = _zz_298[0];
  assign decode_ALU_CTRL = _zz_17;
  assign _zz_18 = _zz_19;
  assign decode_MEMORY_FORCE_CONSTISTENCY = _zz_45;
  assign writeBack_FORMAL_PC_NEXT = memory_to_writeBack_FORMAL_PC_NEXT;
  assign memory_FORMAL_PC_NEXT = execute_to_memory_FORMAL_PC_NEXT;
  assign execute_FORMAL_PC_NEXT = decode_to_execute_FORMAL_PC_NEXT;
  assign decode_FORMAL_PC_NEXT = (decode_PC + 32'h00000004);
  assign memory_PC = execute_to_memory_PC;
  assign writeBack_IS_SFENCE_VMA = memory_to_writeBack_IS_SFENCE_VMA;
  assign execute_BRANCH_CALC = {execute_BranchPlugin_branchAdder[31 : 1],1'b0};
  assign execute_BRANCH_DO = _zz_125;
  assign execute_PC = decode_to_execute_PC;
  assign execute_BRANCH_CTRL = _zz_20;
  assign execute_CSR_READ_OPCODE = decode_to_execute_CSR_READ_OPCODE;
  assign execute_CSR_WRITE_OPCODE = decode_to_execute_CSR_WRITE_OPCODE;
  assign execute_IS_CSR = decode_to_execute_IS_CSR;
  assign memory_ENV_CTRL = _zz_21;
  assign execute_ENV_CTRL = _zz_22;
  assign writeBack_ENV_CTRL = _zz_23;
  assign execute_IS_RS1_SIGNED = decode_to_execute_IS_RS1_SIGNED;
  assign execute_RS1 = decode_to_execute_RS1;
  assign execute_IS_DIV = decode_to_execute_IS_DIV;
  assign execute_IS_MUL = decode_to_execute_IS_MUL;
  assign execute_IS_RS2_SIGNED = decode_to_execute_IS_RS2_SIGNED;
  assign memory_IS_DIV = execute_to_memory_IS_DIV;
  assign memory_IS_MUL = execute_to_memory_IS_MUL;
  assign decode_RS2_USE = _zz_299[0];
  assign decode_RS1_USE = _zz_300[0];
  assign execute_REGFILE_WRITE_VALID = decode_to_execute_REGFILE_WRITE_VALID;
  assign execute_BYPASSABLE_EXECUTE_STAGE = decode_to_execute_BYPASSABLE_EXECUTE_STAGE;
  always @ (*) begin
    _zz_24 = memory_REGFILE_WRITE_DATA;
    if(_zz_231)begin
      _zz_24 = ((memory_INSTRUCTION[13 : 12] == 2'b00) ? memory_MulDivIterativePlugin_accumulator[31 : 0] : memory_MulDivIterativePlugin_accumulator[63 : 32]);
    end
    if(_zz_232)begin
      _zz_24 = memory_MulDivIterativePlugin_div_result;
    end
  end

  assign memory_REGFILE_WRITE_VALID = execute_to_memory_REGFILE_WRITE_VALID;
  assign memory_INSTRUCTION = execute_to_memory_INSTRUCTION;
  assign memory_BYPASSABLE_MEMORY_STAGE = execute_to_memory_BYPASSABLE_MEMORY_STAGE;
  assign writeBack_REGFILE_WRITE_VALID = memory_to_writeBack_REGFILE_WRITE_VALID;
  always @ (*) begin
    decode_RS2 = decode_RegFilePlugin_rs2Data;
    if(_zz_98)begin
      if((_zz_99 == decode_INSTRUCTION[24 : 20]))begin
        decode_RS2 = _zz_100;
      end
    end
    if(_zz_233)begin
      if(_zz_234)begin
        if(_zz_102)begin
          decode_RS2 = _zz_44;
        end
      end
    end
    if(_zz_235)begin
      if(memory_BYPASSABLE_MEMORY_STAGE)begin
        if(_zz_104)begin
          decode_RS2 = _zz_24;
        end
      end
    end
    if(_zz_236)begin
      if(execute_BYPASSABLE_EXECUTE_STAGE)begin
        if(_zz_106)begin
          decode_RS2 = _zz_25;
        end
      end
    end
  end

  always @ (*) begin
    decode_RS1 = decode_RegFilePlugin_rs1Data;
    if(_zz_98)begin
      if((_zz_99 == decode_INSTRUCTION[19 : 15]))begin
        decode_RS1 = _zz_100;
      end
    end
    if(_zz_233)begin
      if(_zz_234)begin
        if(_zz_101)begin
          decode_RS1 = _zz_44;
        end
      end
    end
    if(_zz_235)begin
      if(memory_BYPASSABLE_MEMORY_STAGE)begin
        if(_zz_103)begin
          decode_RS1 = _zz_24;
        end
      end
    end
    if(_zz_236)begin
      if(execute_BYPASSABLE_EXECUTE_STAGE)begin
        if(_zz_105)begin
          decode_RS1 = _zz_25;
        end
      end
    end
  end

  assign execute_SHIFT_RIGHT = _zz_302;
  always @ (*) begin
    _zz_25 = execute_REGFILE_WRITE_DATA;
    if(execute_arbitration_isValid)begin
      case(execute_SHIFT_CTRL)
        `ShiftCtrlEnum_defaultEncoding_SLL_1 : begin
          _zz_25 = _zz_95;
        end
        `ShiftCtrlEnum_defaultEncoding_SRL_1, `ShiftCtrlEnum_defaultEncoding_SRA_1 : begin
          _zz_25 = execute_SHIFT_RIGHT;
        end
        default : begin
        end
      endcase
    end
    if(_zz_237)begin
      _zz_25 = execute_CsrPlugin_readData;
    end
    if(DBusCachedPlugin_forceDatapath)begin
      _zz_25 = MmuPlugin_dBusAccess_cmd_payload_address;
    end
  end

  assign execute_SHIFT_CTRL = _zz_26;
  assign execute_SRC_LESS_UNSIGNED = decode_to_execute_SRC_LESS_UNSIGNED;
  assign execute_SRC2_FORCE_ZERO = decode_to_execute_SRC2_FORCE_ZERO;
  assign execute_SRC_USE_SUB_LESS = decode_to_execute_SRC_USE_SUB_LESS;
  assign _zz_27 = decode_PC;
  assign _zz_28 = decode_RS2;
  assign decode_SRC2_CTRL = _zz_29;
  assign _zz_30 = decode_RS1;
  assign decode_SRC1_CTRL = _zz_31;
  assign decode_SRC_USE_SUB_LESS = _zz_304[0];
  assign decode_SRC_ADD_ZERO = _zz_305[0];
  assign execute_SRC_ADD_SUB = execute_SrcPlugin_addSub;
  assign execute_SRC_LESS = execute_SrcPlugin_less;
  assign execute_ALU_CTRL = _zz_32;
  assign execute_SRC2 = decode_to_execute_SRC2;
  assign execute_SRC1 = decode_to_execute_SRC1;
  assign execute_ALU_BITWISE_CTRL = _zz_33;
  assign _zz_34 = writeBack_INSTRUCTION;
  assign _zz_35 = writeBack_REGFILE_WRITE_VALID;
  always @ (*) begin
    _zz_36 = 1'b0;
    if(lastStageRegFileWrite_valid)begin
      _zz_36 = 1'b1;
    end
  end

  assign decode_INSTRUCTION_ANTICIPATED = (decode_arbitration_isStuck ? decode_INSTRUCTION : IBusCachedPlugin_cache_io_cpu_fetch_data);
  always @ (*) begin
    decode_REGFILE_WRITE_VALID = _zz_306[0];
    if((decode_INSTRUCTION[11 : 7] == 5'h0))begin
      decode_REGFILE_WRITE_VALID = 1'b0;
    end
  end

  assign decode_LEGAL_INSTRUCTION = ({((decode_INSTRUCTION & 32'h0000005f) == 32'h00000017),{((decode_INSTRUCTION & 32'h0000007f) == 32'h0000006f),{((decode_INSTRUCTION & 32'h0000106f) == 32'h00000003),{((decode_INSTRUCTION & _zz_445) == 32'h00001073),{(_zz_446 == _zz_447),{_zz_448,{_zz_449,_zz_450}}}}}}} != 25'h0);
  assign writeBack_IS_DBUS_SHARING = memory_to_writeBack_IS_DBUS_SHARING;
  assign memory_IS_DBUS_SHARING = execute_to_memory_IS_DBUS_SHARING;
  always @ (*) begin
    _zz_44 = writeBack_REGFILE_WRITE_DATA;
    if((writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE))begin
      _zz_44 = writeBack_DBusCachedPlugin_rspFormated;
    end
  end

  assign writeBack_MEMORY_ADDRESS_LOW = memory_to_writeBack_MEMORY_ADDRESS_LOW;
  assign writeBack_MEMORY_WR = memory_to_writeBack_MEMORY_WR;
  assign writeBack_REGFILE_WRITE_DATA = memory_to_writeBack_REGFILE_WRITE_DATA;
  assign writeBack_MEMORY_ENABLE = memory_to_writeBack_MEMORY_ENABLE;
  assign memory_REGFILE_WRITE_DATA = execute_to_memory_REGFILE_WRITE_DATA;
  assign memory_MEMORY_ENABLE = execute_to_memory_MEMORY_ENABLE;
  assign execute_MEMORY_AMO = decode_to_execute_MEMORY_AMO;
  assign execute_MEMORY_LRSC = decode_to_execute_MEMORY_LRSC;
  assign execute_MEMORY_FORCE_CONSTISTENCY = decode_to_execute_MEMORY_FORCE_CONSTISTENCY;
  assign execute_MEMORY_MANAGMENT = decode_to_execute_MEMORY_MANAGMENT;
  assign execute_RS2 = decode_to_execute_RS2;
  assign execute_MEMORY_WR = decode_to_execute_MEMORY_WR;
  assign execute_SRC_ADD = execute_SrcPlugin_addSub;
  assign execute_MEMORY_ENABLE = decode_to_execute_MEMORY_ENABLE;
  assign execute_INSTRUCTION = decode_to_execute_INSTRUCTION;
  assign decode_MEMORY_AMO = _zz_307[0];
  assign decode_MEMORY_LRSC = _zz_308[0];
  assign decode_MEMORY_ENABLE = _zz_309[0];
  assign decode_FLUSH_ALL = _zz_310[0];
  always @ (*) begin
    _zz_46 = _zz_46_2;
    if(_zz_238)begin
      _zz_46 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_46_2 = _zz_46_1;
    if(_zz_239)begin
      _zz_46_2 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_46_1 = _zz_46_0;
    if(_zz_240)begin
      _zz_46_1 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_46_0 = IBusCachedPlugin_rsp_issueDetected;
    if(_zz_241)begin
      _zz_46_0 = 1'b1;
    end
  end

  assign decode_INSTRUCTION = IBusCachedPlugin_iBusRsp_output_payload_rsp_inst;
  always @ (*) begin
    _zz_47 = execute_FORMAL_PC_NEXT;
    if(CsrPlugin_redoInterface_valid)begin
      _zz_47 = CsrPlugin_redoInterface_payload;
    end
    if(BranchPlugin_jumpInterface_valid)begin
      _zz_47 = BranchPlugin_jumpInterface_payload;
    end
  end

  assign decode_PC = IBusCachedPlugin_iBusRsp_output_payload_pc;
  assign writeBack_PC = memory_to_writeBack_PC;
  assign writeBack_INSTRUCTION = memory_to_writeBack_INSTRUCTION;
  always @ (*) begin
    decode_arbitration_haltItself = 1'b0;
    if(((DBusCachedPlugin_mmuBus_busy && decode_arbitration_isValid) && decode_MEMORY_ENABLE))begin
      decode_arbitration_haltItself = 1'b1;
    end
  end

  always @ (*) begin
    decode_arbitration_haltByOther = 1'b0;
    if(MmuPlugin_dBusAccess_cmd_valid)begin
      decode_arbitration_haltByOther = 1'b1;
    end
    if((decode_arbitration_isValid && (_zz_96 || _zz_97)))begin
      decode_arbitration_haltByOther = 1'b1;
    end
    if(CsrPlugin_pipelineLiberator_active)begin
      decode_arbitration_haltByOther = 1'b1;
    end
    if(({(writeBack_arbitration_isValid && (writeBack_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET)),{(memory_arbitration_isValid && (memory_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET)),(execute_arbitration_isValid && (execute_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET))}} != 3'b000))begin
      decode_arbitration_haltByOther = 1'b1;
    end
  end

  always @ (*) begin
    decode_arbitration_removeIt = 1'b0;
    if(_zz_242)begin
      decode_arbitration_removeIt = 1'b1;
    end
    if(decode_arbitration_isFlushed)begin
      decode_arbitration_removeIt = 1'b1;
    end
  end

  assign decode_arbitration_flushIt = 1'b0;
  always @ (*) begin
    decode_arbitration_flushNext = 1'b0;
    if(_zz_242)begin
      decode_arbitration_flushNext = 1'b1;
    end
  end

  always @ (*) begin
    execute_arbitration_haltItself = 1'b0;
    if(((_zz_200 && (! dataCache_1_io_cpu_flush_ready)) || dataCache_1_io_cpu_execute_haltIt))begin
      execute_arbitration_haltItself = 1'b1;
    end
    if(((dataCache_1_io_cpu_redo && execute_arbitration_isValid) && execute_MEMORY_ENABLE))begin
      execute_arbitration_haltItself = 1'b1;
    end
    if(_zz_243)begin
      if((! execute_CsrPlugin_wfiWake))begin
        execute_arbitration_haltItself = 1'b1;
      end
    end
    if(_zz_237)begin
      if(execute_CsrPlugin_blockedBySideEffects)begin
        execute_arbitration_haltItself = 1'b1;
      end
    end
  end

  assign execute_arbitration_haltByOther = 1'b0;
  always @ (*) begin
    execute_arbitration_removeIt = 1'b0;
    if(_zz_244)begin
      execute_arbitration_removeIt = 1'b1;
    end
    if(execute_arbitration_isFlushed)begin
      execute_arbitration_removeIt = 1'b1;
    end
  end

  assign execute_arbitration_flushIt = 1'b0;
  always @ (*) begin
    execute_arbitration_flushNext = 1'b0;
    if(_zz_244)begin
      execute_arbitration_flushNext = 1'b1;
    end
    if(BranchPlugin_jumpInterface_valid)begin
      execute_arbitration_flushNext = 1'b1;
    end
    if(execute_CsrPlugin_csr_384)begin
      if(execute_CsrPlugin_writeInstruction)begin
        execute_arbitration_flushNext = 1'b1;
      end
    end
  end

  always @ (*) begin
    memory_arbitration_haltItself = 1'b0;
    if(_zz_231)begin
      if(((! memory_MulDivIterativePlugin_frontendOk) || (! memory_MulDivIterativePlugin_mul_counter_willOverflowIfInc)))begin
        memory_arbitration_haltItself = 1'b1;
      end
      if(_zz_245)begin
        memory_arbitration_haltItself = 1'b1;
      end
    end
    if(_zz_232)begin
      if(((! memory_MulDivIterativePlugin_frontendOk) || (! memory_MulDivIterativePlugin_div_done)))begin
        memory_arbitration_haltItself = 1'b1;
      end
    end
  end

  assign memory_arbitration_haltByOther = 1'b0;
  always @ (*) begin
    memory_arbitration_removeIt = 1'b0;
    if(memory_arbitration_isFlushed)begin
      memory_arbitration_removeIt = 1'b1;
    end
  end

  assign memory_arbitration_flushIt = 1'b0;
  assign memory_arbitration_flushNext = 1'b0;
  always @ (*) begin
    writeBack_arbitration_haltItself = 1'b0;
    if(dataCache_1_io_cpu_writeBack_haltIt)begin
      writeBack_arbitration_haltItself = 1'b1;
    end
  end

  assign writeBack_arbitration_haltByOther = 1'b0;
  always @ (*) begin
    writeBack_arbitration_removeIt = 1'b0;
    if(DBusCachedPlugin_exceptionBus_valid)begin
      writeBack_arbitration_removeIt = 1'b1;
    end
    if(writeBack_arbitration_isFlushed)begin
      writeBack_arbitration_removeIt = 1'b1;
    end
  end

  always @ (*) begin
    writeBack_arbitration_flushIt = 1'b0;
    if(DBusCachedPlugin_redoBranch_valid)begin
      writeBack_arbitration_flushIt = 1'b1;
    end
  end

  always @ (*) begin
    writeBack_arbitration_flushNext = 1'b0;
    if(DBusCachedPlugin_redoBranch_valid)begin
      writeBack_arbitration_flushNext = 1'b1;
    end
    if(DBusCachedPlugin_exceptionBus_valid)begin
      writeBack_arbitration_flushNext = 1'b1;
    end
    if(_zz_246)begin
      writeBack_arbitration_flushNext = 1'b1;
    end
    if(_zz_247)begin
      writeBack_arbitration_flushNext = 1'b1;
    end
  end

  assign lastStageInstruction = writeBack_INSTRUCTION;
  assign lastStagePc = writeBack_PC;
  assign lastStageIsValid = writeBack_arbitration_isValid;
  assign lastStageIsFiring = writeBack_arbitration_isFiring;
  always @ (*) begin
    IBusCachedPlugin_fetcherHalt = 1'b0;
    if(({CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack,{CsrPlugin_exceptionPortCtrl_exceptionValids_memory,{CsrPlugin_exceptionPortCtrl_exceptionValids_execute,CsrPlugin_exceptionPortCtrl_exceptionValids_decode}}} != 4'b0000))begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(_zz_246)begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(_zz_247)begin
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
    if(_zz_243)begin
      CsrPlugin_inWfi = 1'b1;
    end
  end

  assign CsrPlugin_thirdPartyWake = 1'b0;
  always @ (*) begin
    CsrPlugin_jumpInterface_valid = 1'b0;
    if(_zz_246)begin
      CsrPlugin_jumpInterface_valid = 1'b1;
    end
    if(_zz_247)begin
      CsrPlugin_jumpInterface_valid = 1'b1;
    end
  end

  always @ (*) begin
    CsrPlugin_jumpInterface_payload = 32'h0;
    if(_zz_246)begin
      CsrPlugin_jumpInterface_payload = {CsrPlugin_xtvec_base,2'b00};
    end
    if(_zz_247)begin
      case(_zz_248)
        2'b11 : begin
          CsrPlugin_jumpInterface_payload = CsrPlugin_mepc;
        end
        2'b01 : begin
          CsrPlugin_jumpInterface_payload = CsrPlugin_sepc;
        end
        default : begin
        end
      endcase
    end
  end

  assign CsrPlugin_forceMachineWire = 1'b0;
  assign CsrPlugin_allowInterrupts = 1'b1;
  assign CsrPlugin_allowException = 1'b1;
  assign IBusCachedPlugin_externalFlush = ({writeBack_arbitration_flushNext,{memory_arbitration_flushNext,{execute_arbitration_flushNext,decode_arbitration_flushNext}}} != 4'b0000);
  assign IBusCachedPlugin_jump_pcLoad_valid = ({BranchPlugin_jumpInterface_valid,{CsrPlugin_redoInterface_valid,{CsrPlugin_jumpInterface_valid,DBusCachedPlugin_redoBranch_valid}}} != 4'b0000);
  assign _zz_48 = {BranchPlugin_jumpInterface_valid,{CsrPlugin_redoInterface_valid,{CsrPlugin_jumpInterface_valid,DBusCachedPlugin_redoBranch_valid}}};
  assign _zz_49 = (_zz_48 & (~ _zz_311));
  assign _zz_50 = _zz_49[3];
  assign _zz_51 = (_zz_49[1] || _zz_50);
  assign _zz_52 = (_zz_49[2] || _zz_50);
  assign IBusCachedPlugin_jump_pcLoad_payload = _zz_208;
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
    IBusCachedPlugin_fetchPc_pc = (IBusCachedPlugin_fetchPc_pcReg + _zz_313);
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

  assign _zz_53 = (! IBusCachedPlugin_iBusRsp_stages_0_halt);
  assign IBusCachedPlugin_iBusRsp_stages_0_input_ready = (IBusCachedPlugin_iBusRsp_stages_0_output_ready && _zz_53);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_valid = (IBusCachedPlugin_iBusRsp_stages_0_input_valid && _zz_53);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_payload = IBusCachedPlugin_iBusRsp_stages_0_input_payload;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_stages_1_halt = 1'b0;
    if(IBusCachedPlugin_mmuBus_busy)begin
      IBusCachedPlugin_iBusRsp_stages_1_halt = 1'b1;
    end
  end

  assign _zz_54 = (! IBusCachedPlugin_iBusRsp_stages_1_halt);
  assign IBusCachedPlugin_iBusRsp_stages_1_input_ready = (IBusCachedPlugin_iBusRsp_stages_1_output_ready && _zz_54);
  assign IBusCachedPlugin_iBusRsp_stages_1_output_valid = (IBusCachedPlugin_iBusRsp_stages_1_input_valid && _zz_54);
  assign IBusCachedPlugin_iBusRsp_stages_1_output_payload = IBusCachedPlugin_iBusRsp_stages_1_input_payload;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_stages_2_halt = 1'b0;
    if((_zz_46 || IBusCachedPlugin_rsp_iBusRspOutputHalt))begin
      IBusCachedPlugin_iBusRsp_stages_2_halt = 1'b1;
    end
  end

  assign _zz_55 = (! IBusCachedPlugin_iBusRsp_stages_2_halt);
  assign IBusCachedPlugin_iBusRsp_stages_2_input_ready = (IBusCachedPlugin_iBusRsp_stages_2_output_ready && _zz_55);
  assign IBusCachedPlugin_iBusRsp_stages_2_output_valid = (IBusCachedPlugin_iBusRsp_stages_2_input_valid && _zz_55);
  assign IBusCachedPlugin_iBusRsp_stages_2_output_payload = IBusCachedPlugin_iBusRsp_stages_2_input_payload;
  assign IBusCachedPlugin_fetchPc_redo_valid = IBusCachedPlugin_iBusRsp_redoFetch;
  assign IBusCachedPlugin_fetchPc_redo_payload = IBusCachedPlugin_iBusRsp_stages_2_input_payload;
  assign IBusCachedPlugin_iBusRsp_flush = ((decode_arbitration_removeIt || (decode_arbitration_flushNext && (! decode_arbitration_isStuck))) || IBusCachedPlugin_iBusRsp_redoFetch);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_ready = _zz_56;
  assign _zz_56 = ((1'b0 && (! _zz_57)) || IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign _zz_57 = _zz_58;
  assign IBusCachedPlugin_iBusRsp_stages_1_input_valid = _zz_57;
  assign IBusCachedPlugin_iBusRsp_stages_1_input_payload = IBusCachedPlugin_fetchPc_pcReg;
  assign IBusCachedPlugin_iBusRsp_stages_1_output_ready = ((1'b0 && (! _zz_59)) || IBusCachedPlugin_iBusRsp_stages_2_input_ready);
  assign _zz_59 = _zz_60;
  assign IBusCachedPlugin_iBusRsp_stages_2_input_valid = _zz_59;
  assign IBusCachedPlugin_iBusRsp_stages_2_input_payload = _zz_61;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_readyForError = 1'b1;
    if((! IBusCachedPlugin_pcValids_0))begin
      IBusCachedPlugin_iBusRsp_readyForError = 1'b0;
    end
  end

  assign IBusCachedPlugin_pcValids_0 = IBusCachedPlugin_injector_nextPcCalc_valids_1;
  assign IBusCachedPlugin_pcValids_1 = IBusCachedPlugin_injector_nextPcCalc_valids_2;
  assign IBusCachedPlugin_pcValids_2 = IBusCachedPlugin_injector_nextPcCalc_valids_3;
  assign IBusCachedPlugin_pcValids_3 = IBusCachedPlugin_injector_nextPcCalc_valids_4;
  assign IBusCachedPlugin_iBusRsp_output_ready = (! decode_arbitration_isStuck);
  assign decode_arbitration_isValid = IBusCachedPlugin_iBusRsp_output_valid;
  assign iBus_cmd_valid = IBusCachedPlugin_cache_io_mem_cmd_valid;
  always @ (*) begin
    iBus_cmd_payload_address = IBusCachedPlugin_cache_io_mem_cmd_payload_address;
    iBus_cmd_payload_address = IBusCachedPlugin_cache_io_mem_cmd_payload_address;
  end

  assign iBus_cmd_payload_size = IBusCachedPlugin_cache_io_mem_cmd_payload_size;
  assign IBusCachedPlugin_s0_tightlyCoupledHit = 1'b0;
  assign _zz_168 = (IBusCachedPlugin_iBusRsp_stages_0_input_valid && (! IBusCachedPlugin_s0_tightlyCoupledHit));
  assign _zz_169 = (IBusCachedPlugin_iBusRsp_stages_1_input_valid && (! IBusCachedPlugin_s1_tightlyCoupledHit));
  assign _zz_170 = (! IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign IBusCachedPlugin_mmuBus_cmd_0_isValid = _zz_169;
  assign IBusCachedPlugin_mmuBus_cmd_0_isStuck = (! IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign IBusCachedPlugin_mmuBus_cmd_0_virtualAddress = IBusCachedPlugin_iBusRsp_stages_1_input_payload;
  assign IBusCachedPlugin_mmuBus_cmd_0_bypassTranslation = 1'b0;
  assign IBusCachedPlugin_mmuBus_end = (IBusCachedPlugin_iBusRsp_stages_1_input_ready || IBusCachedPlugin_externalFlush);
  assign _zz_172 = (IBusCachedPlugin_iBusRsp_stages_2_input_valid && (! IBusCachedPlugin_s2_tightlyCoupledHit));
  assign _zz_173 = (! IBusCachedPlugin_iBusRsp_stages_2_input_ready);
  assign _zz_174 = (CsrPlugin_privilege == 2'b00);
  assign IBusCachedPlugin_rsp_iBusRspOutputHalt = 1'b0;
  assign IBusCachedPlugin_rsp_issueDetected = 1'b0;
  always @ (*) begin
    IBusCachedPlugin_rsp_redoFetch = 1'b0;
    if(_zz_241)begin
      IBusCachedPlugin_rsp_redoFetch = 1'b1;
    end
    if(_zz_239)begin
      IBusCachedPlugin_rsp_redoFetch = 1'b1;
    end
  end

  always @ (*) begin
    _zz_175 = (IBusCachedPlugin_rsp_redoFetch && (! IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling));
    if(_zz_239)begin
      _zz_175 = 1'b1;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_decodeExceptionPort_valid = 1'b0;
    if(_zz_240)begin
      IBusCachedPlugin_decodeExceptionPort_valid = IBusCachedPlugin_iBusRsp_readyForError;
    end
    if(_zz_238)begin
      IBusCachedPlugin_decodeExceptionPort_valid = IBusCachedPlugin_iBusRsp_readyForError;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_decodeExceptionPort_payload_code = 4'bxxxx;
    if(_zz_240)begin
      IBusCachedPlugin_decodeExceptionPort_payload_code = 4'b1100;
    end
    if(_zz_238)begin
      IBusCachedPlugin_decodeExceptionPort_payload_code = 4'b0001;
    end
  end

  assign IBusCachedPlugin_decodeExceptionPort_payload_badAddr = {IBusCachedPlugin_iBusRsp_stages_2_input_payload[31 : 2],2'b00};
  assign IBusCachedPlugin_iBusRsp_output_valid = IBusCachedPlugin_iBusRsp_stages_2_output_valid;
  assign IBusCachedPlugin_iBusRsp_stages_2_output_ready = IBusCachedPlugin_iBusRsp_output_ready;
  assign IBusCachedPlugin_iBusRsp_output_payload_rsp_inst = IBusCachedPlugin_cache_io_cpu_decode_data;
  assign IBusCachedPlugin_iBusRsp_output_payload_pc = IBusCachedPlugin_iBusRsp_stages_2_output_payload;
  assign _zz_167 = (decode_arbitration_isValid && decode_FLUSH_ALL);
  assign dataCache_1_io_mem_cmd_s2mPipe_valid = (dataCache_1_io_mem_cmd_valid || dataCache_1_io_mem_cmd_s2mPipe_rValid);
  assign _zz_201 = (! dataCache_1_io_mem_cmd_s2mPipe_rValid);
  assign dataCache_1_io_mem_cmd_s2mPipe_payload_wr = (dataCache_1_io_mem_cmd_s2mPipe_rValid ? dataCache_1_io_mem_cmd_s2mPipe_rData_wr : dataCache_1_io_mem_cmd_payload_wr);
  assign dataCache_1_io_mem_cmd_s2mPipe_payload_uncached = (dataCache_1_io_mem_cmd_s2mPipe_rValid ? dataCache_1_io_mem_cmd_s2mPipe_rData_uncached : dataCache_1_io_mem_cmd_payload_uncached);
  assign dataCache_1_io_mem_cmd_s2mPipe_payload_address = (dataCache_1_io_mem_cmd_s2mPipe_rValid ? dataCache_1_io_mem_cmd_s2mPipe_rData_address : dataCache_1_io_mem_cmd_payload_address);
  assign dataCache_1_io_mem_cmd_s2mPipe_payload_data = (dataCache_1_io_mem_cmd_s2mPipe_rValid ? dataCache_1_io_mem_cmd_s2mPipe_rData_data : dataCache_1_io_mem_cmd_payload_data);
  assign dataCache_1_io_mem_cmd_s2mPipe_payload_mask = (dataCache_1_io_mem_cmd_s2mPipe_rValid ? dataCache_1_io_mem_cmd_s2mPipe_rData_mask : dataCache_1_io_mem_cmd_payload_mask);
  assign dataCache_1_io_mem_cmd_s2mPipe_payload_length = (dataCache_1_io_mem_cmd_s2mPipe_rValid ? dataCache_1_io_mem_cmd_s2mPipe_rData_length : dataCache_1_io_mem_cmd_payload_length);
  assign dataCache_1_io_mem_cmd_s2mPipe_payload_last = (dataCache_1_io_mem_cmd_s2mPipe_rValid ? dataCache_1_io_mem_cmd_s2mPipe_rData_last : dataCache_1_io_mem_cmd_payload_last);
  assign dataCache_1_io_mem_cmd_s2mPipe_ready = ((1'b1 && (! dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_valid)) || dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_ready);
  assign dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_valid = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rValid;
  assign dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_wr = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_wr;
  assign dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_uncached = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_uncached;
  assign dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_address = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_address;
  assign dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_data = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_data;
  assign dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_mask = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_mask;
  assign dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_length = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_length;
  assign dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_last = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_last;
  assign dBus_cmd_valid = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_valid;
  assign dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_ready = dBus_cmd_ready;
  assign dBus_cmd_payload_wr = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_wr;
  assign dBus_cmd_payload_uncached = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_uncached;
  assign dBus_cmd_payload_address = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_address;
  assign dBus_cmd_payload_data = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_data;
  assign dBus_cmd_payload_mask = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_mask;
  assign dBus_cmd_payload_length = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_length;
  assign dBus_cmd_payload_last = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_last;
  always @ (*) begin
    _zz_45 = 1'b0;
    if(decode_INSTRUCTION[25])begin
      if(decode_MEMORY_LRSC)begin
        _zz_45 = 1'b1;
      end
      if(decode_MEMORY_AMO)begin
        _zz_45 = 1'b1;
      end
    end
  end

  assign execute_DBusCachedPlugin_size = execute_INSTRUCTION[13 : 12];
  always @ (*) begin
    _zz_176 = (execute_arbitration_isValid && execute_MEMORY_ENABLE);
    if(MmuPlugin_dBusAccess_cmd_valid)begin
      if(_zz_249)begin
        if(_zz_250)begin
          _zz_176 = 1'b1;
        end
      end
    end
  end

  always @ (*) begin
    _zz_177 = execute_SRC_ADD;
    if(MmuPlugin_dBusAccess_cmd_valid)begin
      if(_zz_249)begin
        _zz_177 = MmuPlugin_dBusAccess_cmd_payload_address;
      end
    end
  end

  always @ (*) begin
    _zz_178 = execute_MEMORY_WR;
    if(MmuPlugin_dBusAccess_cmd_valid)begin
      if(_zz_249)begin
        _zz_178 = MmuPlugin_dBusAccess_cmd_payload_write;
      end
    end
  end

  always @ (*) begin
    case(execute_DBusCachedPlugin_size)
      2'b00 : begin
        _zz_64 = {{{execute_RS2[7 : 0],execute_RS2[7 : 0]},execute_RS2[7 : 0]},execute_RS2[7 : 0]};
      end
      2'b01 : begin
        _zz_64 = {execute_RS2[15 : 0],execute_RS2[15 : 0]};
      end
      default : begin
        _zz_64 = execute_RS2[31 : 0];
      end
    endcase
  end

  always @ (*) begin
    _zz_179 = _zz_64;
    if(MmuPlugin_dBusAccess_cmd_valid)begin
      if(_zz_249)begin
        _zz_179 = MmuPlugin_dBusAccess_cmd_payload_data;
      end
    end
  end

  always @ (*) begin
    _zz_180 = execute_DBusCachedPlugin_size;
    if(MmuPlugin_dBusAccess_cmd_valid)begin
      if(_zz_249)begin
        _zz_180 = MmuPlugin_dBusAccess_cmd_payload_size;
      end
    end
  end

  assign _zz_200 = (execute_arbitration_isValid && execute_MEMORY_MANAGMENT);
  always @ (*) begin
    _zz_181 = 1'b0;
    if(execute_MEMORY_LRSC)begin
      _zz_181 = 1'b1;
    end
    if(MmuPlugin_dBusAccess_cmd_valid)begin
      if(_zz_249)begin
        _zz_181 = 1'b0;
      end
    end
  end

  always @ (*) begin
    _zz_182 = execute_MEMORY_AMO;
    if(MmuPlugin_dBusAccess_cmd_valid)begin
      if(_zz_249)begin
        _zz_182 = 1'b0;
      end
    end
  end

  assign _zz_184 = execute_INSTRUCTION[31 : 29];
  assign _zz_183 = execute_INSTRUCTION[27];
  always @ (*) begin
    _zz_185 = (memory_arbitration_isValid && memory_MEMORY_ENABLE);
    if(memory_IS_DBUS_SHARING)begin
      _zz_185 = 1'b1;
    end
  end

  assign _zz_186 = memory_REGFILE_WRITE_DATA;
  assign DBusCachedPlugin_mmuBus_cmd_0_isValid = _zz_185;
  assign DBusCachedPlugin_mmuBus_cmd_0_isStuck = memory_arbitration_isStuck;
  assign DBusCachedPlugin_mmuBus_cmd_0_virtualAddress = _zz_186;
  always @ (*) begin
    DBusCachedPlugin_mmuBus_cmd_0_bypassTranslation = 1'b0;
    if(memory_IS_DBUS_SHARING)begin
      DBusCachedPlugin_mmuBus_cmd_0_bypassTranslation = 1'b1;
    end
  end

  assign DBusCachedPlugin_mmuBus_end = ((! memory_arbitration_isStuck) || memory_arbitration_removeIt);
  always @ (*) begin
    _zz_187 = DBusCachedPlugin_mmuBus_rsp_isIoAccess;
    if((1'b0 && (! dataCache_1_io_cpu_memory_isWrite)))begin
      _zz_187 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_188 = (writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE);
    if(writeBack_IS_DBUS_SHARING)begin
      _zz_188 = 1'b1;
    end
  end

  assign _zz_189 = (CsrPlugin_privilege == 2'b00);
  assign _zz_190 = writeBack_REGFILE_WRITE_DATA;
  always @ (*) begin
    DBusCachedPlugin_redoBranch_valid = 1'b0;
    if(_zz_251)begin
      if(dataCache_1_io_cpu_redo)begin
        DBusCachedPlugin_redoBranch_valid = 1'b1;
      end
    end
  end

  assign DBusCachedPlugin_redoBranch_payload = writeBack_PC;
  always @ (*) begin
    DBusCachedPlugin_exceptionBus_valid = 1'b0;
    if(_zz_251)begin
      if(dataCache_1_io_cpu_writeBack_accessError)begin
        DBusCachedPlugin_exceptionBus_valid = 1'b1;
      end
      if(dataCache_1_io_cpu_writeBack_unalignedAccess)begin
        DBusCachedPlugin_exceptionBus_valid = 1'b1;
      end
      if(dataCache_1_io_cpu_writeBack_mmuException)begin
        DBusCachedPlugin_exceptionBus_valid = 1'b1;
      end
      if(dataCache_1_io_cpu_redo)begin
        DBusCachedPlugin_exceptionBus_valid = 1'b0;
      end
    end
  end

  assign DBusCachedPlugin_exceptionBus_payload_badAddr = writeBack_REGFILE_WRITE_DATA;
  always @ (*) begin
    DBusCachedPlugin_exceptionBus_payload_code = 4'bxxxx;
    if(_zz_251)begin
      if(dataCache_1_io_cpu_writeBack_accessError)begin
        DBusCachedPlugin_exceptionBus_payload_code = {1'd0, _zz_314};
      end
      if(dataCache_1_io_cpu_writeBack_unalignedAccess)begin
        DBusCachedPlugin_exceptionBus_payload_code = {1'd0, _zz_315};
      end
      if(dataCache_1_io_cpu_writeBack_mmuException)begin
        DBusCachedPlugin_exceptionBus_payload_code = (writeBack_MEMORY_WR ? 4'b1111 : 4'b1101);
      end
    end
  end

  always @ (*) begin
    writeBack_DBusCachedPlugin_rspShifted = dataCache_1_io_cpu_writeBack_data;
    case(writeBack_MEMORY_ADDRESS_LOW)
      2'b01 : begin
        writeBack_DBusCachedPlugin_rspShifted[7 : 0] = dataCache_1_io_cpu_writeBack_data[15 : 8];
      end
      2'b10 : begin
        writeBack_DBusCachedPlugin_rspShifted[15 : 0] = dataCache_1_io_cpu_writeBack_data[31 : 16];
      end
      2'b11 : begin
        writeBack_DBusCachedPlugin_rspShifted[7 : 0] = dataCache_1_io_cpu_writeBack_data[31 : 24];
      end
      default : begin
      end
    endcase
  end

  assign _zz_65 = (writeBack_DBusCachedPlugin_rspShifted[7] && (! writeBack_INSTRUCTION[14]));
  always @ (*) begin
    _zz_66[31] = _zz_65;
    _zz_66[30] = _zz_65;
    _zz_66[29] = _zz_65;
    _zz_66[28] = _zz_65;
    _zz_66[27] = _zz_65;
    _zz_66[26] = _zz_65;
    _zz_66[25] = _zz_65;
    _zz_66[24] = _zz_65;
    _zz_66[23] = _zz_65;
    _zz_66[22] = _zz_65;
    _zz_66[21] = _zz_65;
    _zz_66[20] = _zz_65;
    _zz_66[19] = _zz_65;
    _zz_66[18] = _zz_65;
    _zz_66[17] = _zz_65;
    _zz_66[16] = _zz_65;
    _zz_66[15] = _zz_65;
    _zz_66[14] = _zz_65;
    _zz_66[13] = _zz_65;
    _zz_66[12] = _zz_65;
    _zz_66[11] = _zz_65;
    _zz_66[10] = _zz_65;
    _zz_66[9] = _zz_65;
    _zz_66[8] = _zz_65;
    _zz_66[7 : 0] = writeBack_DBusCachedPlugin_rspShifted[7 : 0];
  end

  assign _zz_67 = (writeBack_DBusCachedPlugin_rspShifted[15] && (! writeBack_INSTRUCTION[14]));
  always @ (*) begin
    _zz_68[31] = _zz_67;
    _zz_68[30] = _zz_67;
    _zz_68[29] = _zz_67;
    _zz_68[28] = _zz_67;
    _zz_68[27] = _zz_67;
    _zz_68[26] = _zz_67;
    _zz_68[25] = _zz_67;
    _zz_68[24] = _zz_67;
    _zz_68[23] = _zz_67;
    _zz_68[22] = _zz_67;
    _zz_68[21] = _zz_67;
    _zz_68[20] = _zz_67;
    _zz_68[19] = _zz_67;
    _zz_68[18] = _zz_67;
    _zz_68[17] = _zz_67;
    _zz_68[16] = _zz_67;
    _zz_68[15 : 0] = writeBack_DBusCachedPlugin_rspShifted[15 : 0];
  end

  always @ (*) begin
    case(_zz_286)
      2'b00 : begin
        writeBack_DBusCachedPlugin_rspFormated = _zz_66;
      end
      2'b01 : begin
        writeBack_DBusCachedPlugin_rspFormated = _zz_68;
      end
      default : begin
        writeBack_DBusCachedPlugin_rspFormated = writeBack_DBusCachedPlugin_rspShifted;
      end
    endcase
  end

  always @ (*) begin
    MmuPlugin_dBusAccess_cmd_ready = 1'b0;
    if(MmuPlugin_dBusAccess_cmd_valid)begin
      if(_zz_249)begin
        if(_zz_250)begin
          MmuPlugin_dBusAccess_cmd_ready = (! execute_arbitration_isStuck);
        end
      end
    end
  end

  always @ (*) begin
    DBusCachedPlugin_forceDatapath = 1'b0;
    if(MmuPlugin_dBusAccess_cmd_valid)begin
      if(_zz_249)begin
        DBusCachedPlugin_forceDatapath = 1'b1;
      end
    end
  end

  assign MmuPlugin_dBusAccess_rsp_valid = ((writeBack_IS_DBUS_SHARING && (! dataCache_1_io_cpu_writeBack_isWrite)) && (dataCache_1_io_cpu_redo || (! dataCache_1_io_cpu_writeBack_haltIt)));
  assign MmuPlugin_dBusAccess_rsp_payload_data = dataCache_1_io_cpu_writeBack_data;
  assign MmuPlugin_dBusAccess_rsp_payload_error = (dataCache_1_io_cpu_writeBack_unalignedAccess || dataCache_1_io_cpu_writeBack_accessError);
  assign MmuPlugin_dBusAccess_rsp_payload_redo = dataCache_1_io_cpu_redo;
  assign _zz_70 = ((decode_INSTRUCTION & 32'h00004050) == 32'h00004050);
  assign _zz_71 = ((decode_INSTRUCTION & 32'h00000048) == 32'h00000048);
  assign _zz_72 = ((decode_INSTRUCTION & 32'h00002050) == 32'h00002000);
  assign _zz_73 = ((decode_INSTRUCTION & 32'h00000004) == 32'h00000004);
  assign _zz_74 = ((decode_INSTRUCTION & 32'h0000000c) == 32'h00000004);
  assign _zz_75 = ((decode_INSTRUCTION & 32'h00003000) == 32'h00002000);
  assign _zz_76 = ((decode_INSTRUCTION & 32'h00007000) == 32'h00001000);
  assign _zz_77 = ((decode_INSTRUCTION & 32'h00005000) == 32'h00004000);
  assign _zz_69 = {(((decode_INSTRUCTION & _zz_468) == 32'h02000050) != 1'b0),{({_zz_71,_zz_469} != 2'b00),{(_zz_470 != 1'b0),{(_zz_471 != _zz_472),{_zz_473,{_zz_474,_zz_475}}}}}};
  assign _zz_78 = _zz_69[2 : 1];
  assign _zz_43 = _zz_78;
  assign _zz_79 = _zz_69[7 : 6];
  assign _zz_42 = _zz_79;
  assign _zz_80 = _zz_69[9 : 8];
  assign _zz_41 = _zz_80;
  assign _zz_81 = _zz_69[22 : 21];
  assign _zz_40 = _zz_81;
  assign _zz_82 = _zz_69[24 : 23];
  assign _zz_39 = _zz_82;
  assign _zz_83 = _zz_69[31 : 30];
  assign _zz_38 = _zz_83;
  assign _zz_84 = _zz_69[33 : 32];
  assign _zz_37 = _zz_84;
  assign decodeExceptionPort_valid = (decode_arbitration_isValid && (! decode_LEGAL_INSTRUCTION));
  assign decodeExceptionPort_payload_code = 4'b0010;
  assign decodeExceptionPort_payload_badAddr = decode_INSTRUCTION;
  assign decode_RegFilePlugin_regFileReadAddress1 = decode_INSTRUCTION_ANTICIPATED[19 : 15];
  assign decode_RegFilePlugin_regFileReadAddress2 = decode_INSTRUCTION_ANTICIPATED[24 : 20];
  assign decode_RegFilePlugin_rs1Data = RegFilePlugin_regFile_rd_data;
  assign decode_RegFilePlugin_rs2Data = RegFilePlugin_regFile_1_rd_data;
  assign _zz_85 = lastStageRegFileWrite_payload_data;
  always @ (*) begin
    lastStageRegFileWrite_valid = (_zz_35 && writeBack_arbitration_isFiring);
    if(_zz_86)begin
      lastStageRegFileWrite_valid = 1'b1;
    end
  end

  assign lastStageRegFileWrite_payload_address = _zz_34[11 : 7];
  assign lastStageRegFileWrite_payload_data = _zz_44;
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
        _zz_87 = execute_IntAluPlugin_bitwise;
      end
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : begin
        _zz_87 = {31'd0, _zz_316};
      end
      default : begin
        _zz_87 = execute_SRC_ADD_SUB;
      end
    endcase
  end

  always @ (*) begin
    case(decode_SRC1_CTRL)
      `Src1CtrlEnum_defaultEncoding_RS : begin
        _zz_88 = _zz_30;
      end
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : begin
        _zz_88 = {29'd0, _zz_317};
      end
      `Src1CtrlEnum_defaultEncoding_IMU : begin
        _zz_88 = {decode_INSTRUCTION[31 : 12],12'h0};
      end
      default : begin
        _zz_88 = {27'd0, _zz_318};
      end
    endcase
  end

  assign _zz_89 = _zz_319[11];
  always @ (*) begin
    _zz_90[19] = _zz_89;
    _zz_90[18] = _zz_89;
    _zz_90[17] = _zz_89;
    _zz_90[16] = _zz_89;
    _zz_90[15] = _zz_89;
    _zz_90[14] = _zz_89;
    _zz_90[13] = _zz_89;
    _zz_90[12] = _zz_89;
    _zz_90[11] = _zz_89;
    _zz_90[10] = _zz_89;
    _zz_90[9] = _zz_89;
    _zz_90[8] = _zz_89;
    _zz_90[7] = _zz_89;
    _zz_90[6] = _zz_89;
    _zz_90[5] = _zz_89;
    _zz_90[4] = _zz_89;
    _zz_90[3] = _zz_89;
    _zz_90[2] = _zz_89;
    _zz_90[1] = _zz_89;
    _zz_90[0] = _zz_89;
  end

  assign _zz_91 = _zz_320[11];
  always @ (*) begin
    _zz_92[19] = _zz_91;
    _zz_92[18] = _zz_91;
    _zz_92[17] = _zz_91;
    _zz_92[16] = _zz_91;
    _zz_92[15] = _zz_91;
    _zz_92[14] = _zz_91;
    _zz_92[13] = _zz_91;
    _zz_92[12] = _zz_91;
    _zz_92[11] = _zz_91;
    _zz_92[10] = _zz_91;
    _zz_92[9] = _zz_91;
    _zz_92[8] = _zz_91;
    _zz_92[7] = _zz_91;
    _zz_92[6] = _zz_91;
    _zz_92[5] = _zz_91;
    _zz_92[4] = _zz_91;
    _zz_92[3] = _zz_91;
    _zz_92[2] = _zz_91;
    _zz_92[1] = _zz_91;
    _zz_92[0] = _zz_91;
  end

  always @ (*) begin
    case(decode_SRC2_CTRL)
      `Src2CtrlEnum_defaultEncoding_RS : begin
        _zz_93 = _zz_28;
      end
      `Src2CtrlEnum_defaultEncoding_IMI : begin
        _zz_93 = {_zz_90,decode_INSTRUCTION[31 : 20]};
      end
      `Src2CtrlEnum_defaultEncoding_IMS : begin
        _zz_93 = {_zz_92,{decode_INSTRUCTION[31 : 25],decode_INSTRUCTION[11 : 7]}};
      end
      default : begin
        _zz_93 = _zz_27;
      end
    endcase
  end

  always @ (*) begin
    execute_SrcPlugin_addSub = _zz_321;
    if(execute_SRC2_FORCE_ZERO)begin
      execute_SrcPlugin_addSub = execute_SRC1;
    end
  end

  assign execute_SrcPlugin_less = ((execute_SRC1[31] == execute_SRC2[31]) ? execute_SrcPlugin_addSub[31] : (execute_SRC_LESS_UNSIGNED ? execute_SRC2[31] : execute_SRC1[31]));
  assign execute_FullBarrelShifterPlugin_amplitude = execute_SRC2[4 : 0];
  always @ (*) begin
    _zz_94[0] = execute_SRC1[31];
    _zz_94[1] = execute_SRC1[30];
    _zz_94[2] = execute_SRC1[29];
    _zz_94[3] = execute_SRC1[28];
    _zz_94[4] = execute_SRC1[27];
    _zz_94[5] = execute_SRC1[26];
    _zz_94[6] = execute_SRC1[25];
    _zz_94[7] = execute_SRC1[24];
    _zz_94[8] = execute_SRC1[23];
    _zz_94[9] = execute_SRC1[22];
    _zz_94[10] = execute_SRC1[21];
    _zz_94[11] = execute_SRC1[20];
    _zz_94[12] = execute_SRC1[19];
    _zz_94[13] = execute_SRC1[18];
    _zz_94[14] = execute_SRC1[17];
    _zz_94[15] = execute_SRC1[16];
    _zz_94[16] = execute_SRC1[15];
    _zz_94[17] = execute_SRC1[14];
    _zz_94[18] = execute_SRC1[13];
    _zz_94[19] = execute_SRC1[12];
    _zz_94[20] = execute_SRC1[11];
    _zz_94[21] = execute_SRC1[10];
    _zz_94[22] = execute_SRC1[9];
    _zz_94[23] = execute_SRC1[8];
    _zz_94[24] = execute_SRC1[7];
    _zz_94[25] = execute_SRC1[6];
    _zz_94[26] = execute_SRC1[5];
    _zz_94[27] = execute_SRC1[4];
    _zz_94[28] = execute_SRC1[3];
    _zz_94[29] = execute_SRC1[2];
    _zz_94[30] = execute_SRC1[1];
    _zz_94[31] = execute_SRC1[0];
  end

  assign execute_FullBarrelShifterPlugin_reversed = ((execute_SHIFT_CTRL == `ShiftCtrlEnum_defaultEncoding_SLL_1) ? _zz_94 : execute_SRC1);
  always @ (*) begin
    _zz_95[0] = execute_SHIFT_RIGHT[31];
    _zz_95[1] = execute_SHIFT_RIGHT[30];
    _zz_95[2] = execute_SHIFT_RIGHT[29];
    _zz_95[3] = execute_SHIFT_RIGHT[28];
    _zz_95[4] = execute_SHIFT_RIGHT[27];
    _zz_95[5] = execute_SHIFT_RIGHT[26];
    _zz_95[6] = execute_SHIFT_RIGHT[25];
    _zz_95[7] = execute_SHIFT_RIGHT[24];
    _zz_95[8] = execute_SHIFT_RIGHT[23];
    _zz_95[9] = execute_SHIFT_RIGHT[22];
    _zz_95[10] = execute_SHIFT_RIGHT[21];
    _zz_95[11] = execute_SHIFT_RIGHT[20];
    _zz_95[12] = execute_SHIFT_RIGHT[19];
    _zz_95[13] = execute_SHIFT_RIGHT[18];
    _zz_95[14] = execute_SHIFT_RIGHT[17];
    _zz_95[15] = execute_SHIFT_RIGHT[16];
    _zz_95[16] = execute_SHIFT_RIGHT[15];
    _zz_95[17] = execute_SHIFT_RIGHT[14];
    _zz_95[18] = execute_SHIFT_RIGHT[13];
    _zz_95[19] = execute_SHIFT_RIGHT[12];
    _zz_95[20] = execute_SHIFT_RIGHT[11];
    _zz_95[21] = execute_SHIFT_RIGHT[10];
    _zz_95[22] = execute_SHIFT_RIGHT[9];
    _zz_95[23] = execute_SHIFT_RIGHT[8];
    _zz_95[24] = execute_SHIFT_RIGHT[7];
    _zz_95[25] = execute_SHIFT_RIGHT[6];
    _zz_95[26] = execute_SHIFT_RIGHT[5];
    _zz_95[27] = execute_SHIFT_RIGHT[4];
    _zz_95[28] = execute_SHIFT_RIGHT[3];
    _zz_95[29] = execute_SHIFT_RIGHT[2];
    _zz_95[30] = execute_SHIFT_RIGHT[1];
    _zz_95[31] = execute_SHIFT_RIGHT[0];
  end

  always @ (*) begin
    _zz_96 = 1'b0;
    if(_zz_252)begin
      if(_zz_253)begin
        if(_zz_101)begin
          _zz_96 = 1'b1;
        end
      end
    end
    if(_zz_254)begin
      if(_zz_255)begin
        if(_zz_103)begin
          _zz_96 = 1'b1;
        end
      end
    end
    if(_zz_256)begin
      if(_zz_257)begin
        if(_zz_105)begin
          _zz_96 = 1'b1;
        end
      end
    end
    if((! decode_RS1_USE))begin
      _zz_96 = 1'b0;
    end
  end

  always @ (*) begin
    _zz_97 = 1'b0;
    if(_zz_252)begin
      if(_zz_253)begin
        if(_zz_102)begin
          _zz_97 = 1'b1;
        end
      end
    end
    if(_zz_254)begin
      if(_zz_255)begin
        if(_zz_104)begin
          _zz_97 = 1'b1;
        end
      end
    end
    if(_zz_256)begin
      if(_zz_257)begin
        if(_zz_106)begin
          _zz_97 = 1'b1;
        end
      end
    end
    if((! decode_RS2_USE))begin
      _zz_97 = 1'b0;
    end
  end

  assign _zz_101 = (writeBack_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign _zz_102 = (writeBack_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign _zz_103 = (memory_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign _zz_104 = (memory_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign _zz_105 = (execute_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign _zz_106 = (execute_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign memory_MulDivIterativePlugin_frontendOk = 1'b1;
  always @ (*) begin
    memory_MulDivIterativePlugin_mul_counter_willIncrement = 1'b0;
    if(_zz_231)begin
      if(_zz_245)begin
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

  assign memory_MulDivIterativePlugin_mul_counter_willOverflowIfInc = (memory_MulDivIterativePlugin_mul_counter_value == 3'b100);
  assign memory_MulDivIterativePlugin_mul_counter_willOverflow = (memory_MulDivIterativePlugin_mul_counter_willOverflowIfInc && memory_MulDivIterativePlugin_mul_counter_willIncrement);
  always @ (*) begin
    if(memory_MulDivIterativePlugin_mul_counter_willOverflow)begin
      memory_MulDivIterativePlugin_mul_counter_valueNext = 3'b000;
    end else begin
      memory_MulDivIterativePlugin_mul_counter_valueNext = (memory_MulDivIterativePlugin_mul_counter_value + _zz_329);
    end
    if(memory_MulDivIterativePlugin_mul_counter_willClear)begin
      memory_MulDivIterativePlugin_mul_counter_valueNext = 3'b000;
    end
  end

  always @ (*) begin
    memory_MulDivIterativePlugin_div_counter_willIncrement = 1'b0;
    if(_zz_232)begin
      if(_zz_258)begin
        memory_MulDivIterativePlugin_div_counter_willIncrement = 1'b1;
      end
    end
  end

  always @ (*) begin
    memory_MulDivIterativePlugin_div_counter_willClear = 1'b0;
    if(_zz_259)begin
      memory_MulDivIterativePlugin_div_counter_willClear = 1'b1;
    end
  end

  assign memory_MulDivIterativePlugin_div_counter_willOverflowIfInc = (memory_MulDivIterativePlugin_div_counter_value == 6'h21);
  assign memory_MulDivIterativePlugin_div_counter_willOverflow = (memory_MulDivIterativePlugin_div_counter_willOverflowIfInc && memory_MulDivIterativePlugin_div_counter_willIncrement);
  always @ (*) begin
    if(memory_MulDivIterativePlugin_div_counter_willOverflow)begin
      memory_MulDivIterativePlugin_div_counter_valueNext = 6'h0;
    end else begin
      memory_MulDivIterativePlugin_div_counter_valueNext = (memory_MulDivIterativePlugin_div_counter_value + _zz_365);
    end
    if(memory_MulDivIterativePlugin_div_counter_willClear)begin
      memory_MulDivIterativePlugin_div_counter_valueNext = 6'h0;
    end
  end

  assign _zz_107 = memory_MulDivIterativePlugin_rs1[31 : 0];
  assign memory_MulDivIterativePlugin_div_stage_0_remainderShifted = {memory_MulDivIterativePlugin_accumulator[31 : 0],_zz_107[31]};
  assign memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator = (memory_MulDivIterativePlugin_div_stage_0_remainderShifted - _zz_366);
  assign memory_MulDivIterativePlugin_div_stage_0_outRemainder = ((! memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator[32]) ? _zz_367 : _zz_368);
  assign memory_MulDivIterativePlugin_div_stage_0_outNumerator = _zz_369[31:0];
  assign _zz_108 = (memory_INSTRUCTION[13] ? memory_MulDivIterativePlugin_accumulator[31 : 0] : memory_MulDivIterativePlugin_rs1[31 : 0]);
  assign _zz_109 = (execute_RS2[31] && execute_IS_RS2_SIGNED);
  assign _zz_110 = ((execute_IS_MUL && _zz_109) || ((execute_IS_DIV && execute_RS1[31]) && execute_IS_RS1_SIGNED));
  always @ (*) begin
    _zz_111[32] = (execute_IS_RS1_SIGNED && execute_RS1[31]);
    _zz_111[31 : 0] = execute_RS1;
  end

  always @ (*) begin
    CsrPlugin_privilege = _zz_112;
    if(CsrPlugin_forceMachineWire)begin
      CsrPlugin_privilege = 2'b11;
    end
  end

  assign CsrPlugin_misa_base = 2'b01;
  assign CsrPlugin_misa_extensions = 26'h0041101;
  assign CsrPlugin_sip_SEIP_OR = (CsrPlugin_sip_SEIP_SOFT || CsrPlugin_sip_SEIP_INPUT);
  always @ (*) begin
    CsrPlugin_redoInterface_valid = 1'b0;
    if(execute_CsrPlugin_csr_384)begin
      if(execute_CsrPlugin_writeInstruction)begin
        CsrPlugin_redoInterface_valid = 1'b1;
      end
    end
  end

  assign CsrPlugin_redoInterface_payload = decode_PC;
  assign _zz_113 = (CsrPlugin_sip_STIP && CsrPlugin_sie_STIE);
  assign _zz_114 = (CsrPlugin_sip_SSIP && CsrPlugin_sie_SSIE);
  assign _zz_115 = (CsrPlugin_sip_SEIP_OR && CsrPlugin_sie_SEIE);
  assign _zz_116 = (CsrPlugin_mip_MTIP && CsrPlugin_mie_MTIE);
  assign _zz_117 = (CsrPlugin_mip_MSIP && CsrPlugin_mie_MSIE);
  assign _zz_118 = (CsrPlugin_mip_MEIP && CsrPlugin_mie_MEIE);
  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b11;
    case(CsrPlugin_exceptionPortCtrl_exceptionContext_code)
      4'b0000 : begin
        if(((1'b1 && CsrPlugin_medeleg_IAM) && (! 1'b0)))begin
          CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b01;
        end
      end
      4'b0001 : begin
        if(((1'b1 && CsrPlugin_medeleg_IAF) && (! 1'b0)))begin
          CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b01;
        end
      end
      4'b0010 : begin
        if(((1'b1 && CsrPlugin_medeleg_II) && (! 1'b0)))begin
          CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b01;
        end
      end
      4'b0100 : begin
        if(((1'b1 && CsrPlugin_medeleg_LAM) && (! 1'b0)))begin
          CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b01;
        end
      end
      4'b0101 : begin
        if(((1'b1 && CsrPlugin_medeleg_LAF) && (! 1'b0)))begin
          CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b01;
        end
      end
      4'b0110 : begin
        if(((1'b1 && CsrPlugin_medeleg_SAM) && (! 1'b0)))begin
          CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b01;
        end
      end
      4'b0111 : begin
        if(((1'b1 && CsrPlugin_medeleg_SAF) && (! 1'b0)))begin
          CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b01;
        end
      end
      4'b1000 : begin
        if(((1'b1 && CsrPlugin_medeleg_EU) && (! 1'b0)))begin
          CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b01;
        end
      end
      4'b1001 : begin
        if(((1'b1 && CsrPlugin_medeleg_ES) && (! 1'b0)))begin
          CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b01;
        end
      end
      4'b1100 : begin
        if(((1'b1 && CsrPlugin_medeleg_IPF) && (! 1'b0)))begin
          CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b01;
        end
      end
      4'b1101 : begin
        if(((1'b1 && CsrPlugin_medeleg_LPF) && (! 1'b0)))begin
          CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b01;
        end
      end
      4'b1111 : begin
        if(((1'b1 && CsrPlugin_medeleg_SPF) && (! 1'b0)))begin
          CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b01;
        end
      end
      default : begin
      end
    endcase
  end

  assign CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege = ((CsrPlugin_privilege < CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped) ? CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped : CsrPlugin_privilege);
  assign _zz_119 = {decodeExceptionPort_valid,IBusCachedPlugin_decodeExceptionPort_valid};
  assign _zz_120 = _zz_379[0];
  assign _zz_121 = {BranchPlugin_branchExceptionPort_valid,CsrPlugin_selfException_valid};
  assign _zz_122 = _zz_381[0];
  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_decode = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
    if(_zz_242)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_decode = 1'b1;
    end
    if(decode_arbitration_isFlushed)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_decode = 1'b0;
    end
  end

  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_execute = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
    if(_zz_244)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_execute = 1'b1;
    end
    if(execute_arbitration_isFlushed)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_execute = 1'b0;
    end
  end

  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_memory = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
    if(memory_arbitration_isFlushed)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_memory = 1'b0;
    end
  end

  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack;
    if(DBusCachedPlugin_exceptionBus_valid)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack = 1'b1;
    end
    if(writeBack_arbitration_isFlushed)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack = 1'b0;
    end
  end

  assign CsrPlugin_exceptionPendings_0 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
  assign CsrPlugin_exceptionPendings_1 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
  assign CsrPlugin_exceptionPendings_2 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
  assign CsrPlugin_exceptionPendings_3 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack;
  assign CsrPlugin_exception = (CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack && CsrPlugin_allowException);
  assign CsrPlugin_pipelineLiberator_active = ((CsrPlugin_interrupt_valid && CsrPlugin_allowInterrupts) && decode_arbitration_isValid);
  always @ (*) begin
    CsrPlugin_pipelineLiberator_done = CsrPlugin_pipelineLiberator_pcValids_2;
    if(({CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack,{CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory,CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute}} != 3'b000))begin
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
      2'b01 : begin
        CsrPlugin_xtvec_mode = CsrPlugin_stvec_mode;
      end
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
      2'b01 : begin
        CsrPlugin_xtvec_base = CsrPlugin_stvec_base;
      end
      2'b11 : begin
        CsrPlugin_xtvec_base = CsrPlugin_mtvec_base;
      end
      default : begin
      end
    endcase
  end

  assign contextSwitching = CsrPlugin_jumpInterface_valid;
  assign execute_CsrPlugin_blockedBySideEffects = (({writeBack_arbitration_isValid,memory_arbitration_isValid} != 2'b00) || 1'b0);
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
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
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
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_835)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_770)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_771)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_256)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_324)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_260)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_261)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_321)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_320)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_322)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_323)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_384)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
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
    if(_zz_260)begin
      CsrPlugin_selfException_valid = 1'b1;
    end
    if(_zz_261)begin
      CsrPlugin_selfException_valid = 1'b1;
    end
  end

  always @ (*) begin
    CsrPlugin_selfException_payload_code = 4'bxxxx;
    if(_zz_260)begin
      CsrPlugin_selfException_payload_code = 4'b0010;
    end
    if(_zz_261)begin
      case(CsrPlugin_privilege)
        2'b00 : begin
          CsrPlugin_selfException_payload_code = 4'b1000;
        end
        2'b01 : begin
          CsrPlugin_selfException_payload_code = 4'b1001;
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
  always @ (*) begin
    execute_CsrPlugin_readToWriteData = execute_CsrPlugin_readData;
    if(execute_CsrPlugin_csr_836)begin
      execute_CsrPlugin_readToWriteData[9 : 9] = CsrPlugin_sip_SEIP_SOFT;
    end
    if(execute_CsrPlugin_csr_324)begin
      execute_CsrPlugin_readToWriteData[9 : 9] = CsrPlugin_sip_SEIP_SOFT;
    end
  end

  always @ (*) begin
    case(_zz_287)
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
  assign _zz_123 = execute_INSTRUCTION[14 : 12];
  always @ (*) begin
    if((_zz_123 == 3'b000)) begin
        _zz_124 = execute_BranchPlugin_eq;
    end else if((_zz_123 == 3'b001)) begin
        _zz_124 = (! execute_BranchPlugin_eq);
    end else if((((_zz_123 & 3'b101) == 3'b101))) begin
        _zz_124 = (! execute_SRC_LESS);
    end else begin
        _zz_124 = execute_SRC_LESS;
    end
  end

  always @ (*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_INC : begin
        _zz_125 = 1'b0;
      end
      `BranchCtrlEnum_defaultEncoding_JAL : begin
        _zz_125 = 1'b1;
      end
      `BranchCtrlEnum_defaultEncoding_JALR : begin
        _zz_125 = 1'b1;
      end
      default : begin
        _zz_125 = _zz_124;
      end
    endcase
  end

  assign execute_BranchPlugin_branch_src1 = ((execute_BRANCH_CTRL == `BranchCtrlEnum_defaultEncoding_JALR) ? execute_RS1 : execute_PC);
  assign _zz_126 = _zz_383[19];
  always @ (*) begin
    _zz_127[10] = _zz_126;
    _zz_127[9] = _zz_126;
    _zz_127[8] = _zz_126;
    _zz_127[7] = _zz_126;
    _zz_127[6] = _zz_126;
    _zz_127[5] = _zz_126;
    _zz_127[4] = _zz_126;
    _zz_127[3] = _zz_126;
    _zz_127[2] = _zz_126;
    _zz_127[1] = _zz_126;
    _zz_127[0] = _zz_126;
  end

  assign _zz_128 = _zz_384[11];
  always @ (*) begin
    _zz_129[19] = _zz_128;
    _zz_129[18] = _zz_128;
    _zz_129[17] = _zz_128;
    _zz_129[16] = _zz_128;
    _zz_129[15] = _zz_128;
    _zz_129[14] = _zz_128;
    _zz_129[13] = _zz_128;
    _zz_129[12] = _zz_128;
    _zz_129[11] = _zz_128;
    _zz_129[10] = _zz_128;
    _zz_129[9] = _zz_128;
    _zz_129[8] = _zz_128;
    _zz_129[7] = _zz_128;
    _zz_129[6] = _zz_128;
    _zz_129[5] = _zz_128;
    _zz_129[4] = _zz_128;
    _zz_129[3] = _zz_128;
    _zz_129[2] = _zz_128;
    _zz_129[1] = _zz_128;
    _zz_129[0] = _zz_128;
  end

  assign _zz_130 = _zz_385[11];
  always @ (*) begin
    _zz_131[18] = _zz_130;
    _zz_131[17] = _zz_130;
    _zz_131[16] = _zz_130;
    _zz_131[15] = _zz_130;
    _zz_131[14] = _zz_130;
    _zz_131[13] = _zz_130;
    _zz_131[12] = _zz_130;
    _zz_131[11] = _zz_130;
    _zz_131[10] = _zz_130;
    _zz_131[9] = _zz_130;
    _zz_131[8] = _zz_130;
    _zz_131[7] = _zz_130;
    _zz_131[6] = _zz_130;
    _zz_131[5] = _zz_130;
    _zz_131[4] = _zz_130;
    _zz_131[3] = _zz_130;
    _zz_131[2] = _zz_130;
    _zz_131[1] = _zz_130;
    _zz_131[0] = _zz_130;
  end

  always @ (*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_JAL : begin
        _zz_132 = {{_zz_127,{{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]}},1'b0};
      end
      `BranchCtrlEnum_defaultEncoding_JALR : begin
        _zz_132 = {_zz_129,execute_INSTRUCTION[31 : 20]};
      end
      default : begin
        _zz_132 = {{_zz_131,{{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]}},1'b0};
      end
    endcase
  end

  assign execute_BranchPlugin_branch_src2 = _zz_132;
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
  assign MmuPlugin_ports_0_dirty = 1'b0;
  always @ (*) begin
    MmuPlugin_ports_0_requireMmuLockupCalc = ((1'b1 && (! IBusCachedPlugin_mmuBus_cmd_0_bypassTranslation)) && MmuPlugin_satp_mode);
    if(((! MmuPlugin_status_mprv) && (CsrPlugin_privilege == 2'b11)))begin
      MmuPlugin_ports_0_requireMmuLockupCalc = 1'b0;
    end
    if((CsrPlugin_privilege == 2'b11))begin
      MmuPlugin_ports_0_requireMmuLockupCalc = 1'b0;
    end
  end

  always @ (*) begin
    MmuPlugin_ports_0_cacheHitsCalc[0] = ((MmuPlugin_ports_0_cache_0_valid && (MmuPlugin_ports_0_cache_0_virtualAddress_1 == IBusCachedPlugin_mmuBus_cmd_0_virtualAddress[31 : 22])) && (MmuPlugin_ports_0_cache_0_superPage || (MmuPlugin_ports_0_cache_0_virtualAddress_0 == IBusCachedPlugin_mmuBus_cmd_0_virtualAddress[21 : 12])));
    MmuPlugin_ports_0_cacheHitsCalc[1] = ((MmuPlugin_ports_0_cache_1_valid && (MmuPlugin_ports_0_cache_1_virtualAddress_1 == IBusCachedPlugin_mmuBus_cmd_0_virtualAddress[31 : 22])) && (MmuPlugin_ports_0_cache_1_superPage || (MmuPlugin_ports_0_cache_1_virtualAddress_0 == IBusCachedPlugin_mmuBus_cmd_0_virtualAddress[21 : 12])));
    MmuPlugin_ports_0_cacheHitsCalc[2] = ((MmuPlugin_ports_0_cache_2_valid && (MmuPlugin_ports_0_cache_2_virtualAddress_1 == IBusCachedPlugin_mmuBus_cmd_0_virtualAddress[31 : 22])) && (MmuPlugin_ports_0_cache_2_superPage || (MmuPlugin_ports_0_cache_2_virtualAddress_0 == IBusCachedPlugin_mmuBus_cmd_0_virtualAddress[21 : 12])));
    MmuPlugin_ports_0_cacheHitsCalc[3] = ((MmuPlugin_ports_0_cache_3_valid && (MmuPlugin_ports_0_cache_3_virtualAddress_1 == IBusCachedPlugin_mmuBus_cmd_0_virtualAddress[31 : 22])) && (MmuPlugin_ports_0_cache_3_superPage || (MmuPlugin_ports_0_cache_3_virtualAddress_0 == IBusCachedPlugin_mmuBus_cmd_0_virtualAddress[21 : 12])));
  end

  assign MmuPlugin_ports_0_cacheHit = (MmuPlugin_ports_0_cacheHitsCalc != 4'b0000);
  assign _zz_133 = MmuPlugin_ports_0_cacheHitsCalc[3];
  assign _zz_134 = (MmuPlugin_ports_0_cacheHitsCalc[1] || _zz_133);
  assign _zz_135 = (MmuPlugin_ports_0_cacheHitsCalc[2] || _zz_133);
  assign _zz_136 = {_zz_135,_zz_134};
  assign MmuPlugin_ports_0_cacheLine_valid = _zz_209;
  assign MmuPlugin_ports_0_cacheLine_exception = _zz_210;
  assign MmuPlugin_ports_0_cacheLine_superPage = _zz_211;
  assign MmuPlugin_ports_0_cacheLine_virtualAddress_0 = _zz_212;
  assign MmuPlugin_ports_0_cacheLine_virtualAddress_1 = _zz_213;
  assign MmuPlugin_ports_0_cacheLine_physicalAddress_0 = _zz_214;
  assign MmuPlugin_ports_0_cacheLine_physicalAddress_1 = _zz_215;
  assign MmuPlugin_ports_0_cacheLine_allowRead = _zz_216;
  assign MmuPlugin_ports_0_cacheLine_allowWrite = _zz_217;
  assign MmuPlugin_ports_0_cacheLine_allowExecute = _zz_218;
  assign MmuPlugin_ports_0_cacheLine_allowUser = _zz_219;
  always @ (*) begin
    MmuPlugin_ports_0_entryToReplace_willIncrement = 1'b0;
    if(_zz_262)begin
      if(_zz_263)begin
        MmuPlugin_ports_0_entryToReplace_willIncrement = 1'b1;
      end
    end
  end

  assign MmuPlugin_ports_0_entryToReplace_willClear = 1'b0;
  assign MmuPlugin_ports_0_entryToReplace_willOverflowIfInc = (MmuPlugin_ports_0_entryToReplace_value == 2'b11);
  assign MmuPlugin_ports_0_entryToReplace_willOverflow = (MmuPlugin_ports_0_entryToReplace_willOverflowIfInc && MmuPlugin_ports_0_entryToReplace_willIncrement);
  always @ (*) begin
    MmuPlugin_ports_0_entryToReplace_valueNext = (MmuPlugin_ports_0_entryToReplace_value + _zz_387);
    if(MmuPlugin_ports_0_entryToReplace_willClear)begin
      MmuPlugin_ports_0_entryToReplace_valueNext = 2'b00;
    end
  end

  always @ (*) begin
    if(MmuPlugin_ports_0_requireMmuLockupCalc)begin
      IBusCachedPlugin_mmuBus_rsp_physicalAddress = {{MmuPlugin_ports_0_cacheLine_physicalAddress_1,(MmuPlugin_ports_0_cacheLine_superPage ? IBusCachedPlugin_mmuBus_cmd_0_virtualAddress[21 : 12] : MmuPlugin_ports_0_cacheLine_physicalAddress_0)},IBusCachedPlugin_mmuBus_cmd_0_virtualAddress[11 : 0]};
    end else begin
      IBusCachedPlugin_mmuBus_rsp_physicalAddress = IBusCachedPlugin_mmuBus_cmd_0_virtualAddress;
    end
  end

  always @ (*) begin
    if(MmuPlugin_ports_0_requireMmuLockupCalc)begin
      IBusCachedPlugin_mmuBus_rsp_allowRead = (MmuPlugin_ports_0_cacheLine_allowRead || (MmuPlugin_status_mxr && MmuPlugin_ports_0_cacheLine_allowExecute));
    end else begin
      IBusCachedPlugin_mmuBus_rsp_allowRead = 1'b1;
    end
  end

  always @ (*) begin
    if(MmuPlugin_ports_0_requireMmuLockupCalc)begin
      IBusCachedPlugin_mmuBus_rsp_allowWrite = MmuPlugin_ports_0_cacheLine_allowWrite;
    end else begin
      IBusCachedPlugin_mmuBus_rsp_allowWrite = 1'b1;
    end
  end

  always @ (*) begin
    if(MmuPlugin_ports_0_requireMmuLockupCalc)begin
      IBusCachedPlugin_mmuBus_rsp_allowExecute = MmuPlugin_ports_0_cacheLine_allowExecute;
    end else begin
      IBusCachedPlugin_mmuBus_rsp_allowExecute = 1'b1;
    end
  end

  always @ (*) begin
    if(MmuPlugin_ports_0_requireMmuLockupCalc)begin
      IBusCachedPlugin_mmuBus_rsp_exception = (((! MmuPlugin_ports_0_dirty) && MmuPlugin_ports_0_cacheHit) && ((MmuPlugin_ports_0_cacheLine_exception || ((MmuPlugin_ports_0_cacheLine_allowUser && (CsrPlugin_privilege == 2'b01)) && (! MmuPlugin_status_sum))) || ((! MmuPlugin_ports_0_cacheLine_allowUser) && (CsrPlugin_privilege == 2'b00))));
    end else begin
      IBusCachedPlugin_mmuBus_rsp_exception = 1'b0;
    end
  end

  always @ (*) begin
    if(MmuPlugin_ports_0_requireMmuLockupCalc)begin
      IBusCachedPlugin_mmuBus_rsp_refilling = (MmuPlugin_ports_0_dirty || (! MmuPlugin_ports_0_cacheHit));
    end else begin
      IBusCachedPlugin_mmuBus_rsp_refilling = 1'b0;
    end
  end

  assign IBusCachedPlugin_mmuBus_rsp_isIoAccess = IBusCachedPlugin_mmuBus_rsp_physicalAddress[31];
  assign IBusCachedPlugin_mmuBus_rsp_bypassTranslation = (! MmuPlugin_ports_0_requireMmuLockupCalc);
  assign IBusCachedPlugin_mmuBus_rsp_ways_0_sel = MmuPlugin_ports_0_cacheHitsCalc[0];
  assign IBusCachedPlugin_mmuBus_rsp_ways_0_physical = {{MmuPlugin_ports_0_cache_0_physicalAddress_1,(MmuPlugin_ports_0_cache_0_superPage ? IBusCachedPlugin_mmuBus_cmd_0_virtualAddress[21 : 12] : MmuPlugin_ports_0_cache_0_physicalAddress_0)},IBusCachedPlugin_mmuBus_cmd_0_virtualAddress[11 : 0]};
  assign IBusCachedPlugin_mmuBus_rsp_ways_1_sel = MmuPlugin_ports_0_cacheHitsCalc[1];
  assign IBusCachedPlugin_mmuBus_rsp_ways_1_physical = {{MmuPlugin_ports_0_cache_1_physicalAddress_1,(MmuPlugin_ports_0_cache_1_superPage ? IBusCachedPlugin_mmuBus_cmd_0_virtualAddress[21 : 12] : MmuPlugin_ports_0_cache_1_physicalAddress_0)},IBusCachedPlugin_mmuBus_cmd_0_virtualAddress[11 : 0]};
  assign IBusCachedPlugin_mmuBus_rsp_ways_2_sel = MmuPlugin_ports_0_cacheHitsCalc[2];
  assign IBusCachedPlugin_mmuBus_rsp_ways_2_physical = {{MmuPlugin_ports_0_cache_2_physicalAddress_1,(MmuPlugin_ports_0_cache_2_superPage ? IBusCachedPlugin_mmuBus_cmd_0_virtualAddress[21 : 12] : MmuPlugin_ports_0_cache_2_physicalAddress_0)},IBusCachedPlugin_mmuBus_cmd_0_virtualAddress[11 : 0]};
  assign IBusCachedPlugin_mmuBus_rsp_ways_3_sel = MmuPlugin_ports_0_cacheHitsCalc[3];
  assign IBusCachedPlugin_mmuBus_rsp_ways_3_physical = {{MmuPlugin_ports_0_cache_3_physicalAddress_1,(MmuPlugin_ports_0_cache_3_superPage ? IBusCachedPlugin_mmuBus_cmd_0_virtualAddress[21 : 12] : MmuPlugin_ports_0_cache_3_physicalAddress_0)},IBusCachedPlugin_mmuBus_cmd_0_virtualAddress[11 : 0]};
  assign MmuPlugin_ports_1_dirty = 1'b0;
  always @ (*) begin
    MmuPlugin_ports_1_requireMmuLockupCalc = ((1'b1 && (! DBusCachedPlugin_mmuBus_cmd_0_bypassTranslation)) && MmuPlugin_satp_mode);
    if(((! MmuPlugin_status_mprv) && (CsrPlugin_privilege == 2'b11)))begin
      MmuPlugin_ports_1_requireMmuLockupCalc = 1'b0;
    end
    if((CsrPlugin_privilege == 2'b11))begin
      if(((! MmuPlugin_status_mprv) || (CsrPlugin_mstatus_MPP == 2'b11)))begin
        MmuPlugin_ports_1_requireMmuLockupCalc = 1'b0;
      end
    end
  end

  always @ (*) begin
    MmuPlugin_ports_1_cacheHitsCalc[0] = ((MmuPlugin_ports_1_cache_0_valid && (MmuPlugin_ports_1_cache_0_virtualAddress_1 == DBusCachedPlugin_mmuBus_cmd_0_virtualAddress[31 : 22])) && (MmuPlugin_ports_1_cache_0_superPage || (MmuPlugin_ports_1_cache_0_virtualAddress_0 == DBusCachedPlugin_mmuBus_cmd_0_virtualAddress[21 : 12])));
    MmuPlugin_ports_1_cacheHitsCalc[1] = ((MmuPlugin_ports_1_cache_1_valid && (MmuPlugin_ports_1_cache_1_virtualAddress_1 == DBusCachedPlugin_mmuBus_cmd_0_virtualAddress[31 : 22])) && (MmuPlugin_ports_1_cache_1_superPage || (MmuPlugin_ports_1_cache_1_virtualAddress_0 == DBusCachedPlugin_mmuBus_cmd_0_virtualAddress[21 : 12])));
    MmuPlugin_ports_1_cacheHitsCalc[2] = ((MmuPlugin_ports_1_cache_2_valid && (MmuPlugin_ports_1_cache_2_virtualAddress_1 == DBusCachedPlugin_mmuBus_cmd_0_virtualAddress[31 : 22])) && (MmuPlugin_ports_1_cache_2_superPage || (MmuPlugin_ports_1_cache_2_virtualAddress_0 == DBusCachedPlugin_mmuBus_cmd_0_virtualAddress[21 : 12])));
    MmuPlugin_ports_1_cacheHitsCalc[3] = ((MmuPlugin_ports_1_cache_3_valid && (MmuPlugin_ports_1_cache_3_virtualAddress_1 == DBusCachedPlugin_mmuBus_cmd_0_virtualAddress[31 : 22])) && (MmuPlugin_ports_1_cache_3_superPage || (MmuPlugin_ports_1_cache_3_virtualAddress_0 == DBusCachedPlugin_mmuBus_cmd_0_virtualAddress[21 : 12])));
  end

  assign MmuPlugin_ports_1_cacheHit = (MmuPlugin_ports_1_cacheHitsCalc != 4'b0000);
  assign _zz_137 = MmuPlugin_ports_1_cacheHitsCalc[3];
  assign _zz_138 = (MmuPlugin_ports_1_cacheHitsCalc[1] || _zz_137);
  assign _zz_139 = (MmuPlugin_ports_1_cacheHitsCalc[2] || _zz_137);
  assign _zz_140 = {_zz_139,_zz_138};
  assign MmuPlugin_ports_1_cacheLine_valid = _zz_220;
  assign MmuPlugin_ports_1_cacheLine_exception = _zz_221;
  assign MmuPlugin_ports_1_cacheLine_superPage = _zz_222;
  assign MmuPlugin_ports_1_cacheLine_virtualAddress_0 = _zz_223;
  assign MmuPlugin_ports_1_cacheLine_virtualAddress_1 = _zz_224;
  assign MmuPlugin_ports_1_cacheLine_physicalAddress_0 = _zz_225;
  assign MmuPlugin_ports_1_cacheLine_physicalAddress_1 = _zz_226;
  assign MmuPlugin_ports_1_cacheLine_allowRead = _zz_227;
  assign MmuPlugin_ports_1_cacheLine_allowWrite = _zz_228;
  assign MmuPlugin_ports_1_cacheLine_allowExecute = _zz_229;
  assign MmuPlugin_ports_1_cacheLine_allowUser = _zz_230;
  always @ (*) begin
    MmuPlugin_ports_1_entryToReplace_willIncrement = 1'b0;
    if(_zz_262)begin
      if(_zz_264)begin
        MmuPlugin_ports_1_entryToReplace_willIncrement = 1'b1;
      end
    end
  end

  assign MmuPlugin_ports_1_entryToReplace_willClear = 1'b0;
  assign MmuPlugin_ports_1_entryToReplace_willOverflowIfInc = (MmuPlugin_ports_1_entryToReplace_value == 2'b11);
  assign MmuPlugin_ports_1_entryToReplace_willOverflow = (MmuPlugin_ports_1_entryToReplace_willOverflowIfInc && MmuPlugin_ports_1_entryToReplace_willIncrement);
  always @ (*) begin
    MmuPlugin_ports_1_entryToReplace_valueNext = (MmuPlugin_ports_1_entryToReplace_value + _zz_389);
    if(MmuPlugin_ports_1_entryToReplace_willClear)begin
      MmuPlugin_ports_1_entryToReplace_valueNext = 2'b00;
    end
  end

  always @ (*) begin
    if(MmuPlugin_ports_1_requireMmuLockupCalc)begin
      DBusCachedPlugin_mmuBus_rsp_physicalAddress = {{MmuPlugin_ports_1_cacheLine_physicalAddress_1,(MmuPlugin_ports_1_cacheLine_superPage ? DBusCachedPlugin_mmuBus_cmd_0_virtualAddress[21 : 12] : MmuPlugin_ports_1_cacheLine_physicalAddress_0)},DBusCachedPlugin_mmuBus_cmd_0_virtualAddress[11 : 0]};
    end else begin
      DBusCachedPlugin_mmuBus_rsp_physicalAddress = DBusCachedPlugin_mmuBus_cmd_0_virtualAddress;
    end
  end

  always @ (*) begin
    if(MmuPlugin_ports_1_requireMmuLockupCalc)begin
      DBusCachedPlugin_mmuBus_rsp_allowRead = (MmuPlugin_ports_1_cacheLine_allowRead || (MmuPlugin_status_mxr && MmuPlugin_ports_1_cacheLine_allowExecute));
    end else begin
      DBusCachedPlugin_mmuBus_rsp_allowRead = 1'b1;
    end
  end

  always @ (*) begin
    if(MmuPlugin_ports_1_requireMmuLockupCalc)begin
      DBusCachedPlugin_mmuBus_rsp_allowWrite = MmuPlugin_ports_1_cacheLine_allowWrite;
    end else begin
      DBusCachedPlugin_mmuBus_rsp_allowWrite = 1'b1;
    end
  end

  always @ (*) begin
    if(MmuPlugin_ports_1_requireMmuLockupCalc)begin
      DBusCachedPlugin_mmuBus_rsp_allowExecute = MmuPlugin_ports_1_cacheLine_allowExecute;
    end else begin
      DBusCachedPlugin_mmuBus_rsp_allowExecute = 1'b1;
    end
  end

  always @ (*) begin
    if(MmuPlugin_ports_1_requireMmuLockupCalc)begin
      DBusCachedPlugin_mmuBus_rsp_exception = (((! MmuPlugin_ports_1_dirty) && MmuPlugin_ports_1_cacheHit) && ((MmuPlugin_ports_1_cacheLine_exception || ((MmuPlugin_ports_1_cacheLine_allowUser && (CsrPlugin_privilege == 2'b01)) && (! MmuPlugin_status_sum))) || ((! MmuPlugin_ports_1_cacheLine_allowUser) && (CsrPlugin_privilege == 2'b00))));
    end else begin
      DBusCachedPlugin_mmuBus_rsp_exception = 1'b0;
    end
  end

  always @ (*) begin
    if(MmuPlugin_ports_1_requireMmuLockupCalc)begin
      DBusCachedPlugin_mmuBus_rsp_refilling = (MmuPlugin_ports_1_dirty || (! MmuPlugin_ports_1_cacheHit));
    end else begin
      DBusCachedPlugin_mmuBus_rsp_refilling = 1'b0;
    end
  end

  assign DBusCachedPlugin_mmuBus_rsp_isIoAccess = DBusCachedPlugin_mmuBus_rsp_physicalAddress[31];
  assign DBusCachedPlugin_mmuBus_rsp_bypassTranslation = (! MmuPlugin_ports_1_requireMmuLockupCalc);
  assign DBusCachedPlugin_mmuBus_rsp_ways_0_sel = MmuPlugin_ports_1_cacheHitsCalc[0];
  assign DBusCachedPlugin_mmuBus_rsp_ways_0_physical = {{MmuPlugin_ports_1_cache_0_physicalAddress_1,(MmuPlugin_ports_1_cache_0_superPage ? DBusCachedPlugin_mmuBus_cmd_0_virtualAddress[21 : 12] : MmuPlugin_ports_1_cache_0_physicalAddress_0)},DBusCachedPlugin_mmuBus_cmd_0_virtualAddress[11 : 0]};
  assign DBusCachedPlugin_mmuBus_rsp_ways_1_sel = MmuPlugin_ports_1_cacheHitsCalc[1];
  assign DBusCachedPlugin_mmuBus_rsp_ways_1_physical = {{MmuPlugin_ports_1_cache_1_physicalAddress_1,(MmuPlugin_ports_1_cache_1_superPage ? DBusCachedPlugin_mmuBus_cmd_0_virtualAddress[21 : 12] : MmuPlugin_ports_1_cache_1_physicalAddress_0)},DBusCachedPlugin_mmuBus_cmd_0_virtualAddress[11 : 0]};
  assign DBusCachedPlugin_mmuBus_rsp_ways_2_sel = MmuPlugin_ports_1_cacheHitsCalc[2];
  assign DBusCachedPlugin_mmuBus_rsp_ways_2_physical = {{MmuPlugin_ports_1_cache_2_physicalAddress_1,(MmuPlugin_ports_1_cache_2_superPage ? DBusCachedPlugin_mmuBus_cmd_0_virtualAddress[21 : 12] : MmuPlugin_ports_1_cache_2_physicalAddress_0)},DBusCachedPlugin_mmuBus_cmd_0_virtualAddress[11 : 0]};
  assign DBusCachedPlugin_mmuBus_rsp_ways_3_sel = MmuPlugin_ports_1_cacheHitsCalc[3];
  assign DBusCachedPlugin_mmuBus_rsp_ways_3_physical = {{MmuPlugin_ports_1_cache_3_physicalAddress_1,(MmuPlugin_ports_1_cache_3_superPage ? DBusCachedPlugin_mmuBus_cmd_0_virtualAddress[21 : 12] : MmuPlugin_ports_1_cache_3_physicalAddress_0)},DBusCachedPlugin_mmuBus_cmd_0_virtualAddress[11 : 0]};
  assign MmuPlugin_shared_dBusRsp_pte_V = _zz_390[0];
  assign MmuPlugin_shared_dBusRsp_pte_R = _zz_391[0];
  assign MmuPlugin_shared_dBusRsp_pte_W = _zz_392[0];
  assign MmuPlugin_shared_dBusRsp_pte_X = _zz_393[0];
  assign MmuPlugin_shared_dBusRsp_pte_U = _zz_394[0];
  assign MmuPlugin_shared_dBusRsp_pte_G = _zz_395[0];
  assign MmuPlugin_shared_dBusRsp_pte_A = _zz_396[0];
  assign MmuPlugin_shared_dBusRsp_pte_D = _zz_397[0];
  assign MmuPlugin_shared_dBusRsp_pte_RSW = MmuPlugin_shared_dBusRspStaged_payload_data[9 : 8];
  assign MmuPlugin_shared_dBusRsp_pte_PPN0 = MmuPlugin_shared_dBusRspStaged_payload_data[19 : 10];
  assign MmuPlugin_shared_dBusRsp_pte_PPN1 = MmuPlugin_shared_dBusRspStaged_payload_data[31 : 20];
  assign MmuPlugin_shared_dBusRsp_exception = (((! MmuPlugin_shared_dBusRsp_pte_V) || ((! MmuPlugin_shared_dBusRsp_pte_R) && MmuPlugin_shared_dBusRsp_pte_W)) || MmuPlugin_shared_dBusRspStaged_payload_error);
  assign MmuPlugin_shared_dBusRsp_leaf = (MmuPlugin_shared_dBusRsp_pte_R || MmuPlugin_shared_dBusRsp_pte_X);
  always @ (*) begin
    MmuPlugin_dBusAccess_cmd_valid = 1'b0;
    case(MmuPlugin_shared_state_1)
      `MmuPlugin_shared_State_defaultEncoding_IDLE : begin
      end
      `MmuPlugin_shared_State_defaultEncoding_L1_CMD : begin
        MmuPlugin_dBusAccess_cmd_valid = 1'b1;
      end
      `MmuPlugin_shared_State_defaultEncoding_L1_RSP : begin
      end
      `MmuPlugin_shared_State_defaultEncoding_L0_CMD : begin
        MmuPlugin_dBusAccess_cmd_valid = 1'b1;
      end
      default : begin
      end
    endcase
  end

  assign MmuPlugin_dBusAccess_cmd_payload_write = 1'b0;
  assign MmuPlugin_dBusAccess_cmd_payload_size = 2'b10;
  always @ (*) begin
    MmuPlugin_dBusAccess_cmd_payload_address = 32'h0;
    case(MmuPlugin_shared_state_1)
      `MmuPlugin_shared_State_defaultEncoding_IDLE : begin
      end
      `MmuPlugin_shared_State_defaultEncoding_L1_CMD : begin
        MmuPlugin_dBusAccess_cmd_payload_address = {{MmuPlugin_satp_ppn,MmuPlugin_shared_vpn_1},2'b00};
      end
      `MmuPlugin_shared_State_defaultEncoding_L1_RSP : begin
      end
      `MmuPlugin_shared_State_defaultEncoding_L0_CMD : begin
        MmuPlugin_dBusAccess_cmd_payload_address = {{{MmuPlugin_shared_pteBuffer_PPN1[9 : 0],MmuPlugin_shared_pteBuffer_PPN0},MmuPlugin_shared_vpn_0},2'b00};
      end
      default : begin
      end
    endcase
  end

  assign MmuPlugin_dBusAccess_cmd_payload_data = 32'h0;
  assign MmuPlugin_dBusAccess_cmd_payload_writeMask = 4'bxxxx;
  always @ (*) begin
    _zz_141[0] = (((IBusCachedPlugin_mmuBus_cmd_0_isValid && MmuPlugin_ports_0_requireMmuLockupCalc) && (! MmuPlugin_ports_0_dirty)) && (! MmuPlugin_ports_0_cacheHit));
    _zz_141[1] = (((DBusCachedPlugin_mmuBus_cmd_0_isValid && MmuPlugin_ports_1_requireMmuLockupCalc) && (! MmuPlugin_ports_1_dirty)) && (! MmuPlugin_ports_1_cacheHit));
  end

  assign _zz_142 = _zz_141;
  always @ (*) begin
    _zz_143[0] = _zz_142[1];
    _zz_143[1] = _zz_142[0];
  end

  assign _zz_144 = (_zz_143 & (~ _zz_398));
  always @ (*) begin
    _zz_145[0] = _zz_144[1];
    _zz_145[1] = _zz_144[0];
  end

  assign MmuPlugin_shared_refills = _zz_145;
  assign _zz_146 = (MmuPlugin_shared_refills[0] ? IBusCachedPlugin_mmuBus_cmd_0_virtualAddress : DBusCachedPlugin_mmuBus_cmd_0_virtualAddress);
  assign IBusCachedPlugin_mmuBus_busy = ((MmuPlugin_shared_state_1 != `MmuPlugin_shared_State_defaultEncoding_IDLE) && MmuPlugin_shared_portSortedOh[0]);
  assign DBusCachedPlugin_mmuBus_busy = ((MmuPlugin_shared_state_1 != `MmuPlugin_shared_State_defaultEncoding_IDLE) && MmuPlugin_shared_portSortedOh[1]);
  assign _zz_31 = _zz_43;
  assign _zz_19 = decode_ALU_CTRL;
  assign _zz_17 = _zz_42;
  assign _zz_32 = decode_to_execute_ALU_CTRL;
  assign _zz_29 = _zz_41;
  assign _zz_16 = decode_ALU_BITWISE_CTRL;
  assign _zz_14 = _zz_40;
  assign _zz_33 = decode_to_execute_ALU_BITWISE_CTRL;
  assign _zz_13 = decode_SHIFT_CTRL;
  assign _zz_11 = _zz_39;
  assign _zz_26 = decode_to_execute_SHIFT_CTRL;
  assign _zz_10 = decode_ENV_CTRL;
  assign _zz_7 = execute_ENV_CTRL;
  assign _zz_5 = memory_ENV_CTRL;
  assign _zz_8 = _zz_38;
  assign _zz_22 = decode_to_execute_ENV_CTRL;
  assign _zz_21 = execute_to_memory_ENV_CTRL;
  assign _zz_23 = memory_to_writeBack_ENV_CTRL;
  assign _zz_3 = decode_BRANCH_CTRL;
  assign _zz_1 = _zz_37;
  assign _zz_20 = decode_to_execute_BRANCH_CTRL;
  assign decode_arbitration_isFlushed = (({writeBack_arbitration_flushNext,{memory_arbitration_flushNext,execute_arbitration_flushNext}} != 3'b000) || ({writeBack_arbitration_flushIt,{memory_arbitration_flushIt,{execute_arbitration_flushIt,decode_arbitration_flushIt}}} != 4'b0000));
  assign execute_arbitration_isFlushed = (({writeBack_arbitration_flushNext,memory_arbitration_flushNext} != 2'b00) || ({writeBack_arbitration_flushIt,{memory_arbitration_flushIt,execute_arbitration_flushIt}} != 3'b000));
  assign memory_arbitration_isFlushed = ((writeBack_arbitration_flushNext != 1'b0) || ({writeBack_arbitration_flushIt,memory_arbitration_flushIt} != 2'b00));
  assign writeBack_arbitration_isFlushed = (1'b0 || (writeBack_arbitration_flushIt != 1'b0));
  assign decode_arbitration_isStuckByOthers = (decode_arbitration_haltByOther || (((1'b0 || execute_arbitration_isStuck) || memory_arbitration_isStuck) || writeBack_arbitration_isStuck));
  assign decode_arbitration_isStuck = (decode_arbitration_haltItself || decode_arbitration_isStuckByOthers);
  assign decode_arbitration_isMoving = ((! decode_arbitration_isStuck) && (! decode_arbitration_removeIt));
  assign decode_arbitration_isFiring = ((decode_arbitration_isValid && (! decode_arbitration_isStuck)) && (! decode_arbitration_removeIt));
  assign execute_arbitration_isStuckByOthers = (execute_arbitration_haltByOther || ((1'b0 || memory_arbitration_isStuck) || writeBack_arbitration_isStuck));
  assign execute_arbitration_isStuck = (execute_arbitration_haltItself || execute_arbitration_isStuckByOthers);
  assign execute_arbitration_isMoving = ((! execute_arbitration_isStuck) && (! execute_arbitration_removeIt));
  assign execute_arbitration_isFiring = ((execute_arbitration_isValid && (! execute_arbitration_isStuck)) && (! execute_arbitration_removeIt));
  assign memory_arbitration_isStuckByOthers = (memory_arbitration_haltByOther || (1'b0 || writeBack_arbitration_isStuck));
  assign memory_arbitration_isStuck = (memory_arbitration_haltItself || memory_arbitration_isStuckByOthers);
  assign memory_arbitration_isMoving = ((! memory_arbitration_isStuck) && (! memory_arbitration_removeIt));
  assign memory_arbitration_isFiring = ((memory_arbitration_isValid && (! memory_arbitration_isStuck)) && (! memory_arbitration_removeIt));
  assign writeBack_arbitration_isStuckByOthers = (writeBack_arbitration_haltByOther || 1'b0);
  assign writeBack_arbitration_isStuck = (writeBack_arbitration_haltItself || writeBack_arbitration_isStuckByOthers);
  assign writeBack_arbitration_isMoving = ((! writeBack_arbitration_isStuck) && (! writeBack_arbitration_removeIt));
  assign writeBack_arbitration_isFiring = ((writeBack_arbitration_isValid && (! writeBack_arbitration_isStuck)) && (! writeBack_arbitration_removeIt));
  always @ (*) begin
    _zz_147 = 32'h0;
    if(execute_CsrPlugin_csr_769)begin
      _zz_147[31 : 30] = CsrPlugin_misa_base;
      _zz_147[25 : 0] = CsrPlugin_misa_extensions;
    end
  end

  always @ (*) begin
    _zz_148 = 32'h0;
    if(execute_CsrPlugin_csr_768)begin
      _zz_148[12 : 11] = CsrPlugin_mstatus_MPP;
      _zz_148[7 : 7] = CsrPlugin_mstatus_MPIE;
      _zz_148[3 : 3] = CsrPlugin_mstatus_MIE;
      _zz_148[8 : 8] = CsrPlugin_sstatus_SPP;
      _zz_148[5 : 5] = CsrPlugin_sstatus_SPIE;
      _zz_148[1 : 1] = CsrPlugin_sstatus_SIE;
      _zz_148[19 : 19] = MmuPlugin_status_mxr;
      _zz_148[18 : 18] = MmuPlugin_status_sum;
      _zz_148[17 : 17] = MmuPlugin_status_mprv;
    end
  end

  always @ (*) begin
    _zz_149 = 32'h0;
    if(execute_CsrPlugin_csr_836)begin
      _zz_149[11 : 11] = CsrPlugin_mip_MEIP;
      _zz_149[7 : 7] = CsrPlugin_mip_MTIP;
      _zz_149[3 : 3] = CsrPlugin_mip_MSIP;
      _zz_149[5 : 5] = CsrPlugin_sip_STIP;
      _zz_149[1 : 1] = CsrPlugin_sip_SSIP;
      _zz_149[9 : 9] = CsrPlugin_sip_SEIP_OR;
    end
  end

  always @ (*) begin
    _zz_150 = 32'h0;
    if(execute_CsrPlugin_csr_772)begin
      _zz_150[11 : 11] = CsrPlugin_mie_MEIE;
      _zz_150[7 : 7] = CsrPlugin_mie_MTIE;
      _zz_150[3 : 3] = CsrPlugin_mie_MSIE;
      _zz_150[9 : 9] = CsrPlugin_sie_SEIE;
      _zz_150[5 : 5] = CsrPlugin_sie_STIE;
      _zz_150[1 : 1] = CsrPlugin_sie_SSIE;
    end
  end

  always @ (*) begin
    _zz_151 = 32'h0;
    if(execute_CsrPlugin_csr_773)begin
      _zz_151[31 : 2] = CsrPlugin_mtvec_base;
      _zz_151[1 : 0] = CsrPlugin_mtvec_mode;
    end
  end

  always @ (*) begin
    _zz_152 = 32'h0;
    if(execute_CsrPlugin_csr_833)begin
      _zz_152[31 : 0] = CsrPlugin_mepc;
    end
  end

  always @ (*) begin
    _zz_153 = 32'h0;
    if(execute_CsrPlugin_csr_832)begin
      _zz_153[31 : 0] = CsrPlugin_mscratch;
    end
  end

  always @ (*) begin
    _zz_154 = 32'h0;
    if(execute_CsrPlugin_csr_834)begin
      _zz_154[31 : 31] = CsrPlugin_mcause_interrupt;
      _zz_154[3 : 0] = CsrPlugin_mcause_exceptionCode;
    end
  end

  always @ (*) begin
    _zz_155 = 32'h0;
    if(execute_CsrPlugin_csr_835)begin
      _zz_155[31 : 0] = CsrPlugin_mtval;
    end
  end

  always @ (*) begin
    _zz_156 = 32'h0;
    if(execute_CsrPlugin_csr_770)begin
      _zz_156[0 : 0] = CsrPlugin_medeleg_IAM;
      _zz_156[1 : 1] = CsrPlugin_medeleg_IAF;
      _zz_156[2 : 2] = CsrPlugin_medeleg_II;
      _zz_156[4 : 4] = CsrPlugin_medeleg_LAM;
      _zz_156[5 : 5] = CsrPlugin_medeleg_LAF;
      _zz_156[6 : 6] = CsrPlugin_medeleg_SAM;
      _zz_156[7 : 7] = CsrPlugin_medeleg_SAF;
      _zz_156[8 : 8] = CsrPlugin_medeleg_EU;
      _zz_156[9 : 9] = CsrPlugin_medeleg_ES;
      _zz_156[12 : 12] = CsrPlugin_medeleg_IPF;
      _zz_156[13 : 13] = CsrPlugin_medeleg_LPF;
      _zz_156[15 : 15] = CsrPlugin_medeleg_SPF;
    end
  end

  always @ (*) begin
    _zz_157 = 32'h0;
    if(execute_CsrPlugin_csr_771)begin
      _zz_157[9 : 9] = CsrPlugin_mideleg_SE;
      _zz_157[5 : 5] = CsrPlugin_mideleg_ST;
      _zz_157[1 : 1] = CsrPlugin_mideleg_SS;
    end
  end

  always @ (*) begin
    _zz_158 = 32'h0;
    if(execute_CsrPlugin_csr_256)begin
      _zz_158[8 : 8] = CsrPlugin_sstatus_SPP;
      _zz_158[5 : 5] = CsrPlugin_sstatus_SPIE;
      _zz_158[1 : 1] = CsrPlugin_sstatus_SIE;
      _zz_158[19 : 19] = MmuPlugin_status_mxr;
      _zz_158[18 : 18] = MmuPlugin_status_sum;
      _zz_158[17 : 17] = MmuPlugin_status_mprv;
    end
  end

  always @ (*) begin
    _zz_159 = 32'h0;
    if(execute_CsrPlugin_csr_324)begin
      _zz_159[5 : 5] = CsrPlugin_sip_STIP;
      _zz_159[1 : 1] = CsrPlugin_sip_SSIP;
      _zz_159[9 : 9] = CsrPlugin_sip_SEIP_OR;
    end
  end

  always @ (*) begin
    _zz_160 = 32'h0;
    if(execute_CsrPlugin_csr_260)begin
      _zz_160[9 : 9] = CsrPlugin_sie_SEIE;
      _zz_160[5 : 5] = CsrPlugin_sie_STIE;
      _zz_160[1 : 1] = CsrPlugin_sie_SSIE;
    end
  end

  always @ (*) begin
    _zz_161 = 32'h0;
    if(execute_CsrPlugin_csr_261)begin
      _zz_161[31 : 2] = CsrPlugin_stvec_base;
      _zz_161[1 : 0] = CsrPlugin_stvec_mode;
    end
  end

  always @ (*) begin
    _zz_162 = 32'h0;
    if(execute_CsrPlugin_csr_321)begin
      _zz_162[31 : 0] = CsrPlugin_sepc;
    end
  end

  always @ (*) begin
    _zz_163 = 32'h0;
    if(execute_CsrPlugin_csr_320)begin
      _zz_163[31 : 0] = CsrPlugin_sscratch;
    end
  end

  always @ (*) begin
    _zz_164 = 32'h0;
    if(execute_CsrPlugin_csr_322)begin
      _zz_164[31 : 31] = CsrPlugin_scause_interrupt;
      _zz_164[3 : 0] = CsrPlugin_scause_exceptionCode;
    end
  end

  always @ (*) begin
    _zz_165 = 32'h0;
    if(execute_CsrPlugin_csr_323)begin
      _zz_165[31 : 0] = CsrPlugin_stval;
    end
  end

  always @ (*) begin
    _zz_166 = 32'h0;
    if(execute_CsrPlugin_csr_384)begin
      _zz_166[31 : 31] = MmuPlugin_satp_mode;
      _zz_166[19 : 0] = MmuPlugin_satp_ppn;
    end
  end

  assign execute_CsrPlugin_readData = (((((_zz_640 | _zz_641) | (_zz_642 | _zz_643)) | ((_zz_147 | _zz_148) | (_zz_149 | _zz_150))) | (((_zz_151 | _zz_152) | (_zz_153 | _zz_154)) | ((_zz_155 | _zz_156) | (_zz_157 | _zz_158)))) | (((_zz_159 | _zz_160) | (_zz_161 | _zz_162)) | ((_zz_163 | _zz_164) | (_zz_165 | _zz_166))));
  assign _zz_202 = (_zz_36 && 1'b1);
  assign _zz_203 = 1'b1;
  assign _zz_204 = (1'b1 && 1'b1);
  assign _zz_205 = (_zz_36 && 1'b1);
  assign _zz_206 = 1'b1;
  assign _zz_207 = (1'b1 && 1'b1);
  always @ (posedge clk or negedge resetn) begin
    if (!resetn) begin
      IBusCachedPlugin_fetchPc_pcReg <= 32'h0;
      IBusCachedPlugin_fetchPc_correctionReg <= 1'b0;
      IBusCachedPlugin_fetchPc_booted <= 1'b0;
      IBusCachedPlugin_fetchPc_inc <= 1'b0;
      _zz_58 <= 1'b0;
      _zz_60 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_0 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_4 <= 1'b0;
      IBusCachedPlugin_rspCounter <= _zz_62;
      IBusCachedPlugin_rspCounter <= 32'h0;
      dataCache_1_io_mem_cmd_s2mPipe_rValid <= 1'b0;
      dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rValid <= 1'b0;
      dBus_rsp_regNext_valid <= 1'b0;
      DBusCachedPlugin_rspCounter <= _zz_63;
      DBusCachedPlugin_rspCounter <= 32'h0;
      _zz_86 <= 1'b1;
      _zz_98 <= 1'b0;
      memory_MulDivIterativePlugin_mul_counter_value <= 3'b000;
      memory_MulDivIterativePlugin_div_counter_value <= 6'h0;
      _zz_112 <= 2'b11;
      CsrPlugin_mstatus_MIE <= 1'b0;
      CsrPlugin_mstatus_MPIE <= 1'b0;
      CsrPlugin_mstatus_MPP <= 2'b11;
      CsrPlugin_mie_MEIE <= 1'b0;
      CsrPlugin_mie_MTIE <= 1'b0;
      CsrPlugin_mie_MSIE <= 1'b0;
      CsrPlugin_medeleg_IAM <= 1'b0;
      CsrPlugin_medeleg_IAF <= 1'b0;
      CsrPlugin_medeleg_II <= 1'b0;
      CsrPlugin_medeleg_LAM <= 1'b0;
      CsrPlugin_medeleg_LAF <= 1'b0;
      CsrPlugin_medeleg_SAM <= 1'b0;
      CsrPlugin_medeleg_SAF <= 1'b0;
      CsrPlugin_medeleg_EU <= 1'b0;
      CsrPlugin_medeleg_ES <= 1'b0;
      CsrPlugin_medeleg_IPF <= 1'b0;
      CsrPlugin_medeleg_LPF <= 1'b0;
      CsrPlugin_medeleg_SPF <= 1'b0;
      CsrPlugin_mideleg_ST <= 1'b0;
      CsrPlugin_mideleg_SE <= 1'b0;
      CsrPlugin_mideleg_SS <= 1'b0;
      CsrPlugin_sstatus_SIE <= 1'b0;
      CsrPlugin_sstatus_SPIE <= 1'b0;
      CsrPlugin_sstatus_SPP <= 1'b1;
      CsrPlugin_sip_SEIP_SOFT <= 1'b0;
      CsrPlugin_sip_STIP <= 1'b0;
      CsrPlugin_sip_SSIP <= 1'b0;
      CsrPlugin_sie_SEIE <= 1'b0;
      CsrPlugin_sie_STIE <= 1'b0;
      CsrPlugin_sie_SSIE <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= 1'b0;
      CsrPlugin_interrupt_valid <= 1'b0;
      CsrPlugin_lastStageWasWfi <= 1'b0;
      CsrPlugin_pipelineLiberator_pcValids_0 <= 1'b0;
      CsrPlugin_pipelineLiberator_pcValids_1 <= 1'b0;
      CsrPlugin_pipelineLiberator_pcValids_2 <= 1'b0;
      CsrPlugin_hadException <= 1'b0;
      execute_CsrPlugin_wfiWake <= 1'b0;
      MmuPlugin_status_sum <= 1'b0;
      MmuPlugin_status_mxr <= 1'b0;
      MmuPlugin_status_mprv <= 1'b0;
      MmuPlugin_satp_mode <= 1'b0;
      MmuPlugin_ports_0_cache_0_valid <= 1'b0;
      MmuPlugin_ports_0_cache_1_valid <= 1'b0;
      MmuPlugin_ports_0_cache_2_valid <= 1'b0;
      MmuPlugin_ports_0_cache_3_valid <= 1'b0;
      MmuPlugin_ports_0_entryToReplace_value <= 2'b00;
      MmuPlugin_ports_1_cache_0_valid <= 1'b0;
      MmuPlugin_ports_1_cache_1_valid <= 1'b0;
      MmuPlugin_ports_1_cache_2_valid <= 1'b0;
      MmuPlugin_ports_1_cache_3_valid <= 1'b0;
      MmuPlugin_ports_1_entryToReplace_value <= 2'b00;
      MmuPlugin_shared_state_1 <= `MmuPlugin_shared_State_defaultEncoding_IDLE;
      MmuPlugin_shared_dBusRspStaged_valid <= 1'b0;
      execute_arbitration_isValid <= 1'b0;
      memory_arbitration_isValid <= 1'b0;
      writeBack_arbitration_isValid <= 1'b0;
      execute_to_memory_IS_DBUS_SHARING <= 1'b0;
      memory_to_writeBack_IS_DBUS_SHARING <= 1'b0;
      memory_to_writeBack_REGFILE_WRITE_DATA <= 32'h0;
      memory_to_writeBack_INSTRUCTION <= 32'h0;
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
        _zz_58 <= 1'b0;
      end
      if(_zz_56)begin
        _zz_58 <= (IBusCachedPlugin_iBusRsp_stages_0_output_valid && (! 1'b0));
      end
      if(IBusCachedPlugin_iBusRsp_flush)begin
        _zz_60 <= 1'b0;
      end
      if(IBusCachedPlugin_iBusRsp_stages_1_output_ready)begin
        _zz_60 <= (IBusCachedPlugin_iBusRsp_stages_1_output_valid && (! IBusCachedPlugin_iBusRsp_flush));
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
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_4 <= 1'b0;
      end
      if((! writeBack_arbitration_isStuck))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_4 <= IBusCachedPlugin_injector_nextPcCalc_valids_3;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_4 <= 1'b0;
      end
      if(iBus_rsp_valid)begin
        IBusCachedPlugin_rspCounter <= (IBusCachedPlugin_rspCounter + 32'h00000001);
      end
      if(dataCache_1_io_mem_cmd_s2mPipe_ready)begin
        dataCache_1_io_mem_cmd_s2mPipe_rValid <= 1'b0;
      end
      if(_zz_265)begin
        dataCache_1_io_mem_cmd_s2mPipe_rValid <= dataCache_1_io_mem_cmd_valid;
      end
      if(dataCache_1_io_mem_cmd_s2mPipe_ready)begin
        dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rValid <= dataCache_1_io_mem_cmd_s2mPipe_valid;
      end
      dBus_rsp_regNext_valid <= dBus_rsp_valid;
      if(dBus_rsp_valid)begin
        DBusCachedPlugin_rspCounter <= (DBusCachedPlugin_rspCounter + 32'h00000001);
      end
      _zz_86 <= 1'b0;
      _zz_98 <= (_zz_35 && writeBack_arbitration_isFiring);
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
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= CsrPlugin_exceptionPortCtrl_exceptionValids_memory;
      end
      if((! writeBack_arbitration_isStuck))begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= (CsrPlugin_exceptionPortCtrl_exceptionValids_memory && (! memory_arbitration_isStuck));
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= 1'b0;
      end
      CsrPlugin_interrupt_valid <= 1'b0;
      if(_zz_266)begin
        if(_zz_267)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_268)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_269)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
      end
      if(_zz_270)begin
        if(_zz_271)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_272)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_273)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_274)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_275)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_276)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
      end
      CsrPlugin_lastStageWasWfi <= (writeBack_arbitration_isFiring && (writeBack_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_WFI));
      if(CsrPlugin_pipelineLiberator_active)begin
        if((! execute_arbitration_isStuck))begin
          CsrPlugin_pipelineLiberator_pcValids_0 <= 1'b1;
        end
        if((! memory_arbitration_isStuck))begin
          CsrPlugin_pipelineLiberator_pcValids_1 <= CsrPlugin_pipelineLiberator_pcValids_0;
        end
        if((! writeBack_arbitration_isStuck))begin
          CsrPlugin_pipelineLiberator_pcValids_2 <= CsrPlugin_pipelineLiberator_pcValids_1;
        end
      end
      if(((! CsrPlugin_pipelineLiberator_active) || decode_arbitration_removeIt))begin
        CsrPlugin_pipelineLiberator_pcValids_0 <= 1'b0;
        CsrPlugin_pipelineLiberator_pcValids_1 <= 1'b0;
        CsrPlugin_pipelineLiberator_pcValids_2 <= 1'b0;
      end
      if(CsrPlugin_interruptJump)begin
        CsrPlugin_interrupt_valid <= 1'b0;
      end
      CsrPlugin_hadException <= CsrPlugin_exception;
      if(_zz_246)begin
        _zz_112 <= CsrPlugin_targetPrivilege;
        case(CsrPlugin_targetPrivilege)
          2'b01 : begin
            CsrPlugin_sstatus_SIE <= 1'b0;
            CsrPlugin_sstatus_SPIE <= CsrPlugin_sstatus_SIE;
            CsrPlugin_sstatus_SPP <= CsrPlugin_privilege[0 : 0];
          end
          2'b11 : begin
            CsrPlugin_mstatus_MIE <= 1'b0;
            CsrPlugin_mstatus_MPIE <= CsrPlugin_mstatus_MIE;
            CsrPlugin_mstatus_MPP <= CsrPlugin_privilege;
          end
          default : begin
          end
        endcase
      end
      if(_zz_247)begin
        case(_zz_248)
          2'b11 : begin
            CsrPlugin_mstatus_MPP <= 2'b00;
            CsrPlugin_mstatus_MIE <= CsrPlugin_mstatus_MPIE;
            CsrPlugin_mstatus_MPIE <= 1'b1;
            _zz_112 <= CsrPlugin_mstatus_MPP;
          end
          2'b01 : begin
            CsrPlugin_sstatus_SPP <= 1'b0;
            CsrPlugin_sstatus_SIE <= CsrPlugin_sstatus_SPIE;
            CsrPlugin_sstatus_SPIE <= 1'b1;
            _zz_112 <= {1'b0,CsrPlugin_sstatus_SPP};
          end
          default : begin
          end
        endcase
      end
      execute_CsrPlugin_wfiWake <= (({_zz_118,{_zz_117,{_zz_116,{_zz_115,{_zz_114,_zz_113}}}}} != 6'h0) || CsrPlugin_thirdPartyWake);
      MmuPlugin_ports_0_entryToReplace_value <= MmuPlugin_ports_0_entryToReplace_valueNext;
      if(contextSwitching)begin
        if(MmuPlugin_ports_0_cache_0_exception)begin
          MmuPlugin_ports_0_cache_0_valid <= 1'b0;
        end
        if(MmuPlugin_ports_0_cache_1_exception)begin
          MmuPlugin_ports_0_cache_1_valid <= 1'b0;
        end
        if(MmuPlugin_ports_0_cache_2_exception)begin
          MmuPlugin_ports_0_cache_2_valid <= 1'b0;
        end
        if(MmuPlugin_ports_0_cache_3_exception)begin
          MmuPlugin_ports_0_cache_3_valid <= 1'b0;
        end
      end
      MmuPlugin_ports_1_entryToReplace_value <= MmuPlugin_ports_1_entryToReplace_valueNext;
      if(contextSwitching)begin
        if(MmuPlugin_ports_1_cache_0_exception)begin
          MmuPlugin_ports_1_cache_0_valid <= 1'b0;
        end
        if(MmuPlugin_ports_1_cache_1_exception)begin
          MmuPlugin_ports_1_cache_1_valid <= 1'b0;
        end
        if(MmuPlugin_ports_1_cache_2_exception)begin
          MmuPlugin_ports_1_cache_2_valid <= 1'b0;
        end
        if(MmuPlugin_ports_1_cache_3_exception)begin
          MmuPlugin_ports_1_cache_3_valid <= 1'b0;
        end
      end
      MmuPlugin_shared_dBusRspStaged_valid <= MmuPlugin_dBusAccess_rsp_valid;
      case(MmuPlugin_shared_state_1)
        `MmuPlugin_shared_State_defaultEncoding_IDLE : begin
          if(_zz_277)begin
            MmuPlugin_shared_state_1 <= `MmuPlugin_shared_State_defaultEncoding_L1_CMD;
          end
        end
        `MmuPlugin_shared_State_defaultEncoding_L1_CMD : begin
          if(MmuPlugin_dBusAccess_cmd_ready)begin
            MmuPlugin_shared_state_1 <= `MmuPlugin_shared_State_defaultEncoding_L1_RSP;
          end
        end
        `MmuPlugin_shared_State_defaultEncoding_L1_RSP : begin
          if(MmuPlugin_shared_dBusRspStaged_valid)begin
            MmuPlugin_shared_state_1 <= `MmuPlugin_shared_State_defaultEncoding_L0_CMD;
            if((MmuPlugin_shared_dBusRsp_leaf || MmuPlugin_shared_dBusRsp_exception))begin
              MmuPlugin_shared_state_1 <= `MmuPlugin_shared_State_defaultEncoding_IDLE;
            end
            if(MmuPlugin_shared_dBusRspStaged_payload_redo)begin
              MmuPlugin_shared_state_1 <= `MmuPlugin_shared_State_defaultEncoding_L1_CMD;
            end
          end
        end
        `MmuPlugin_shared_State_defaultEncoding_L0_CMD : begin
          if(MmuPlugin_dBusAccess_cmd_ready)begin
            MmuPlugin_shared_state_1 <= `MmuPlugin_shared_State_defaultEncoding_L0_RSP;
          end
        end
        default : begin
          if(MmuPlugin_shared_dBusRspStaged_valid)begin
            MmuPlugin_shared_state_1 <= `MmuPlugin_shared_State_defaultEncoding_IDLE;
            if(MmuPlugin_shared_dBusRspStaged_payload_redo)begin
              MmuPlugin_shared_state_1 <= `MmuPlugin_shared_State_defaultEncoding_L0_CMD;
            end
          end
        end
      endcase
      if(_zz_262)begin
        if(_zz_263)begin
          if(_zz_278)begin
            MmuPlugin_ports_0_cache_0_valid <= 1'b1;
          end
          if(_zz_279)begin
            MmuPlugin_ports_0_cache_1_valid <= 1'b1;
          end
          if(_zz_280)begin
            MmuPlugin_ports_0_cache_2_valid <= 1'b1;
          end
          if(_zz_281)begin
            MmuPlugin_ports_0_cache_3_valid <= 1'b1;
          end
        end
        if(_zz_264)begin
          if(_zz_282)begin
            MmuPlugin_ports_1_cache_0_valid <= 1'b1;
          end
          if(_zz_283)begin
            MmuPlugin_ports_1_cache_1_valid <= 1'b1;
          end
          if(_zz_284)begin
            MmuPlugin_ports_1_cache_2_valid <= 1'b1;
          end
          if(_zz_285)begin
            MmuPlugin_ports_1_cache_3_valid <= 1'b1;
          end
        end
      end
      if((writeBack_arbitration_isValid && writeBack_IS_SFENCE_VMA))begin
        MmuPlugin_ports_0_cache_0_valid <= 1'b0;
        MmuPlugin_ports_0_cache_1_valid <= 1'b0;
        MmuPlugin_ports_0_cache_2_valid <= 1'b0;
        MmuPlugin_ports_0_cache_3_valid <= 1'b0;
        MmuPlugin_ports_1_cache_0_valid <= 1'b0;
        MmuPlugin_ports_1_cache_1_valid <= 1'b0;
        MmuPlugin_ports_1_cache_2_valid <= 1'b0;
        MmuPlugin_ports_1_cache_3_valid <= 1'b0;
      end
      if((! writeBack_arbitration_isStuck))begin
        memory_to_writeBack_INSTRUCTION <= memory_INSTRUCTION;
      end
      if((! memory_arbitration_isStuck))begin
        execute_to_memory_IS_DBUS_SHARING <= execute_IS_DBUS_SHARING;
      end
      if((! writeBack_arbitration_isStuck))begin
        memory_to_writeBack_IS_DBUS_SHARING <= memory_IS_DBUS_SHARING;
      end
      if((! writeBack_arbitration_isStuck))begin
        memory_to_writeBack_REGFILE_WRITE_DATA <= _zz_24;
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
      if(((! writeBack_arbitration_isStuck) || writeBack_arbitration_removeIt))begin
        writeBack_arbitration_isValid <= 1'b0;
      end
      if(((! memory_arbitration_isStuck) && (! memory_arbitration_removeIt)))begin
        writeBack_arbitration_isValid <= memory_arbitration_isValid;
      end
      if(MmuPlugin_dBusAccess_rsp_valid)begin
        memory_to_writeBack_IS_DBUS_SHARING <= 1'b0;
      end
      if(execute_CsrPlugin_csr_768)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_mstatus_MPP <= execute_CsrPlugin_writeData[12 : 11];
          CsrPlugin_mstatus_MPIE <= _zz_399[0];
          CsrPlugin_mstatus_MIE <= _zz_400[0];
          CsrPlugin_sstatus_SPP <= execute_CsrPlugin_writeData[8 : 8];
          CsrPlugin_sstatus_SPIE <= _zz_401[0];
          CsrPlugin_sstatus_SIE <= _zz_402[0];
          MmuPlugin_status_mxr <= _zz_403[0];
          MmuPlugin_status_sum <= _zz_404[0];
          MmuPlugin_status_mprv <= _zz_405[0];
        end
      end
      if(execute_CsrPlugin_csr_836)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_sip_STIP <= _zz_407[0];
          CsrPlugin_sip_SSIP <= _zz_408[0];
          CsrPlugin_sip_SEIP_SOFT <= _zz_409[0];
        end
      end
      if(execute_CsrPlugin_csr_772)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_mie_MEIE <= _zz_410[0];
          CsrPlugin_mie_MTIE <= _zz_411[0];
          CsrPlugin_mie_MSIE <= _zz_412[0];
          CsrPlugin_sie_SEIE <= _zz_413[0];
          CsrPlugin_sie_STIE <= _zz_414[0];
          CsrPlugin_sie_SSIE <= _zz_415[0];
        end
      end
      if(execute_CsrPlugin_csr_770)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_medeleg_IAM <= _zz_416[0];
          CsrPlugin_medeleg_IAF <= _zz_417[0];
          CsrPlugin_medeleg_II <= _zz_418[0];
          CsrPlugin_medeleg_LAM <= _zz_419[0];
          CsrPlugin_medeleg_LAF <= _zz_420[0];
          CsrPlugin_medeleg_SAM <= _zz_421[0];
          CsrPlugin_medeleg_SAF <= _zz_422[0];
          CsrPlugin_medeleg_EU <= _zz_423[0];
          CsrPlugin_medeleg_ES <= _zz_424[0];
          CsrPlugin_medeleg_IPF <= _zz_425[0];
          CsrPlugin_medeleg_LPF <= _zz_426[0];
          CsrPlugin_medeleg_SPF <= _zz_427[0];
        end
      end
      if(execute_CsrPlugin_csr_771)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_mideleg_SE <= _zz_428[0];
          CsrPlugin_mideleg_ST <= _zz_429[0];
          CsrPlugin_mideleg_SS <= _zz_430[0];
        end
      end
      if(execute_CsrPlugin_csr_256)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_sstatus_SPP <= execute_CsrPlugin_writeData[8 : 8];
          CsrPlugin_sstatus_SPIE <= _zz_431[0];
          CsrPlugin_sstatus_SIE <= _zz_432[0];
          MmuPlugin_status_mxr <= _zz_433[0];
          MmuPlugin_status_sum <= _zz_434[0];
          MmuPlugin_status_mprv <= _zz_435[0];
        end
      end
      if(execute_CsrPlugin_csr_324)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_sip_STIP <= _zz_436[0];
          CsrPlugin_sip_SSIP <= _zz_437[0];
          CsrPlugin_sip_SEIP_SOFT <= _zz_438[0];
        end
      end
      if(execute_CsrPlugin_csr_260)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_sie_SEIE <= _zz_439[0];
          CsrPlugin_sie_STIE <= _zz_440[0];
          CsrPlugin_sie_SSIE <= _zz_441[0];
        end
      end
      if(execute_CsrPlugin_csr_384)begin
        if(execute_CsrPlugin_writeInstruction)begin
          MmuPlugin_ports_0_cache_0_valid <= 1'b0;
          MmuPlugin_ports_0_cache_1_valid <= 1'b0;
          MmuPlugin_ports_0_cache_2_valid <= 1'b0;
          MmuPlugin_ports_0_cache_3_valid <= 1'b0;
          MmuPlugin_ports_1_cache_0_valid <= 1'b0;
          MmuPlugin_ports_1_cache_1_valid <= 1'b0;
          MmuPlugin_ports_1_cache_2_valid <= 1'b0;
          MmuPlugin_ports_1_cache_3_valid <= 1'b0;
        end
        if(execute_CsrPlugin_writeEnable)begin
          MmuPlugin_satp_mode <= _zz_443[0];
        end
      end
    end
  end

  always @ (posedge clk) begin
    if(IBusCachedPlugin_iBusRsp_stages_1_output_ready)begin
      _zz_61 <= IBusCachedPlugin_iBusRsp_stages_1_output_payload;
    end
    if(IBusCachedPlugin_iBusRsp_stages_1_input_ready)begin
      IBusCachedPlugin_s1_tightlyCoupledHit <= IBusCachedPlugin_s0_tightlyCoupledHit;
    end
    if(IBusCachedPlugin_iBusRsp_stages_2_input_ready)begin
      IBusCachedPlugin_s2_tightlyCoupledHit <= IBusCachedPlugin_s1_tightlyCoupledHit;
    end
    if(_zz_265)begin
      dataCache_1_io_mem_cmd_s2mPipe_rData_wr <= dataCache_1_io_mem_cmd_payload_wr;
      dataCache_1_io_mem_cmd_s2mPipe_rData_uncached <= dataCache_1_io_mem_cmd_payload_uncached;
      dataCache_1_io_mem_cmd_s2mPipe_rData_address <= dataCache_1_io_mem_cmd_payload_address;
      dataCache_1_io_mem_cmd_s2mPipe_rData_data <= dataCache_1_io_mem_cmd_payload_data;
      dataCache_1_io_mem_cmd_s2mPipe_rData_mask <= dataCache_1_io_mem_cmd_payload_mask;
      dataCache_1_io_mem_cmd_s2mPipe_rData_length <= dataCache_1_io_mem_cmd_payload_length;
      dataCache_1_io_mem_cmd_s2mPipe_rData_last <= dataCache_1_io_mem_cmd_payload_last;
    end
    if(dataCache_1_io_mem_cmd_s2mPipe_ready)begin
      dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_wr <= dataCache_1_io_mem_cmd_s2mPipe_payload_wr;
      dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_uncached <= dataCache_1_io_mem_cmd_s2mPipe_payload_uncached;
      dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_address <= dataCache_1_io_mem_cmd_s2mPipe_payload_address;
      dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_data <= dataCache_1_io_mem_cmd_s2mPipe_payload_data;
      dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_mask <= dataCache_1_io_mem_cmd_s2mPipe_payload_mask;
      dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_length <= dataCache_1_io_mem_cmd_s2mPipe_payload_length;
      dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_last <= dataCache_1_io_mem_cmd_s2mPipe_payload_last;
    end
    dBus_rsp_regNext_payload_last <= dBus_rsp_payload_last;
    dBus_rsp_regNext_payload_data <= dBus_rsp_payload_data;
    dBus_rsp_regNext_payload_error <= dBus_rsp_payload_error;
    _zz_99 <= _zz_34[11 : 7];
    _zz_100 <= _zz_44;
    if(_zz_231)begin
      if(_zz_245)begin
        memory_MulDivIterativePlugin_rs2 <= (memory_MulDivIterativePlugin_rs2 >>> 8);
        memory_MulDivIterativePlugin_accumulator <= ({_zz_330,memory_MulDivIterativePlugin_accumulator[31 : 0]} >>> 8);
      end
    end
    if((memory_MulDivIterativePlugin_div_counter_value == 6'h20))begin
      memory_MulDivIterativePlugin_div_done <= 1'b1;
    end
    if((! memory_arbitration_isStuck))begin
      memory_MulDivIterativePlugin_div_done <= 1'b0;
    end
    if(_zz_232)begin
      if(_zz_258)begin
        memory_MulDivIterativePlugin_rs1[31 : 0] <= memory_MulDivIterativePlugin_div_stage_0_outNumerator;
        memory_MulDivIterativePlugin_accumulator[31 : 0] <= memory_MulDivIterativePlugin_div_stage_0_outRemainder;
        if((memory_MulDivIterativePlugin_div_counter_value == 6'h20))begin
          memory_MulDivIterativePlugin_div_result <= _zz_370[31:0];
        end
      end
    end
    if(_zz_259)begin
      memory_MulDivIterativePlugin_accumulator <= 65'h0;
      memory_MulDivIterativePlugin_rs1 <= ((_zz_110 ? (~ _zz_111) : _zz_111) + _zz_376);
      memory_MulDivIterativePlugin_rs2 <= ((_zz_109 ? (~ execute_RS2) : execute_RS2) + _zz_378);
      memory_MulDivIterativePlugin_div_needRevert <= ((_zz_110 ^ (_zz_109 && (! execute_INSTRUCTION[13]))) && (! (((execute_RS2 == 32'h0) && execute_IS_RS2_SIGNED) && (! execute_INSTRUCTION[13]))));
    end
    CsrPlugin_mip_MEIP <= externalInterrupt;
    CsrPlugin_mip_MTIP <= timerInterrupt;
    CsrPlugin_mip_MSIP <= softwareInterrupt;
    CsrPlugin_sip_SEIP_INPUT <= externalInterruptS;
    CsrPlugin_mcycle <= (CsrPlugin_mcycle + 64'h0000000000000001);
    if(writeBack_arbitration_isFiring)begin
      CsrPlugin_minstret <= (CsrPlugin_minstret + 64'h0000000000000001);
    end
    if(_zz_242)begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= (_zz_120 ? IBusCachedPlugin_decodeExceptionPort_payload_code : decodeExceptionPort_payload_code);
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= (_zz_120 ? IBusCachedPlugin_decodeExceptionPort_payload_badAddr : decodeExceptionPort_payload_badAddr);
    end
    if(_zz_244)begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= (_zz_122 ? CsrPlugin_selfException_payload_code : BranchPlugin_branchExceptionPort_payload_code);
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= (_zz_122 ? CsrPlugin_selfException_payload_badAddr : BranchPlugin_branchExceptionPort_payload_badAddr);
    end
    if(DBusCachedPlugin_exceptionBus_valid)begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= DBusCachedPlugin_exceptionBus_payload_code;
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= DBusCachedPlugin_exceptionBus_payload_badAddr;
    end
    if(_zz_266)begin
      if(_zz_267)begin
        CsrPlugin_interrupt_code <= 4'b0101;
        CsrPlugin_interrupt_targetPrivilege <= 2'b01;
      end
      if(_zz_268)begin
        CsrPlugin_interrupt_code <= 4'b0001;
        CsrPlugin_interrupt_targetPrivilege <= 2'b01;
      end
      if(_zz_269)begin
        CsrPlugin_interrupt_code <= 4'b1001;
        CsrPlugin_interrupt_targetPrivilege <= 2'b01;
      end
    end
    if(_zz_270)begin
      if(_zz_271)begin
        CsrPlugin_interrupt_code <= 4'b0101;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
      if(_zz_272)begin
        CsrPlugin_interrupt_code <= 4'b0001;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
      if(_zz_273)begin
        CsrPlugin_interrupt_code <= 4'b1001;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
      if(_zz_274)begin
        CsrPlugin_interrupt_code <= 4'b0111;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
      if(_zz_275)begin
        CsrPlugin_interrupt_code <= 4'b0011;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
      if(_zz_276)begin
        CsrPlugin_interrupt_code <= 4'b1011;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
    end
    if(_zz_246)begin
      case(CsrPlugin_targetPrivilege)
        2'b01 : begin
          CsrPlugin_scause_interrupt <= (! CsrPlugin_hadException);
          CsrPlugin_scause_exceptionCode <= CsrPlugin_trapCause;
          CsrPlugin_sepc <= writeBack_PC;
          if(CsrPlugin_hadException)begin
            CsrPlugin_stval <= CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr;
          end
        end
        2'b11 : begin
          CsrPlugin_mcause_interrupt <= (! CsrPlugin_hadException);
          CsrPlugin_mcause_exceptionCode <= CsrPlugin_trapCause;
          CsrPlugin_mepc <= writeBack_PC;
          if(CsrPlugin_hadException)begin
            CsrPlugin_mtval <= CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr;
          end
        end
        default : begin
        end
      endcase
    end
    MmuPlugin_shared_dBusRspStaged_payload_data <= MmuPlugin_dBusAccess_rsp_payload_data;
    MmuPlugin_shared_dBusRspStaged_payload_error <= MmuPlugin_dBusAccess_rsp_payload_error;
    MmuPlugin_shared_dBusRspStaged_payload_redo <= MmuPlugin_dBusAccess_rsp_payload_redo;
    if((MmuPlugin_shared_dBusRspStaged_valid && (! MmuPlugin_shared_dBusRspStaged_payload_redo)))begin
      MmuPlugin_shared_pteBuffer_V <= MmuPlugin_shared_dBusRsp_pte_V;
      MmuPlugin_shared_pteBuffer_R <= MmuPlugin_shared_dBusRsp_pte_R;
      MmuPlugin_shared_pteBuffer_W <= MmuPlugin_shared_dBusRsp_pte_W;
      MmuPlugin_shared_pteBuffer_X <= MmuPlugin_shared_dBusRsp_pte_X;
      MmuPlugin_shared_pteBuffer_U <= MmuPlugin_shared_dBusRsp_pte_U;
      MmuPlugin_shared_pteBuffer_G <= MmuPlugin_shared_dBusRsp_pte_G;
      MmuPlugin_shared_pteBuffer_A <= MmuPlugin_shared_dBusRsp_pte_A;
      MmuPlugin_shared_pteBuffer_D <= MmuPlugin_shared_dBusRsp_pte_D;
      MmuPlugin_shared_pteBuffer_RSW <= MmuPlugin_shared_dBusRsp_pte_RSW;
      MmuPlugin_shared_pteBuffer_PPN0 <= MmuPlugin_shared_dBusRsp_pte_PPN0;
      MmuPlugin_shared_pteBuffer_PPN1 <= MmuPlugin_shared_dBusRsp_pte_PPN1;
    end
    case(MmuPlugin_shared_state_1)
      `MmuPlugin_shared_State_defaultEncoding_IDLE : begin
        if(_zz_277)begin
          MmuPlugin_shared_portSortedOh <= MmuPlugin_shared_refills;
          MmuPlugin_shared_vpn_1 <= _zz_146[31 : 22];
          MmuPlugin_shared_vpn_0 <= _zz_146[21 : 12];
        end
      end
      `MmuPlugin_shared_State_defaultEncoding_L1_CMD : begin
      end
      `MmuPlugin_shared_State_defaultEncoding_L1_RSP : begin
      end
      `MmuPlugin_shared_State_defaultEncoding_L0_CMD : begin
      end
      default : begin
      end
    endcase
    if(_zz_262)begin
      if(_zz_263)begin
        if(_zz_278)begin
          MmuPlugin_ports_0_cache_0_exception <= (MmuPlugin_shared_dBusRsp_exception || ((MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP) && (MmuPlugin_shared_dBusRsp_pte_PPN0 != 10'h0)));
          MmuPlugin_ports_0_cache_0_virtualAddress_0 <= MmuPlugin_shared_vpn_0;
          MmuPlugin_ports_0_cache_0_virtualAddress_1 <= MmuPlugin_shared_vpn_1;
          MmuPlugin_ports_0_cache_0_physicalAddress_0 <= MmuPlugin_shared_dBusRsp_pte_PPN0;
          MmuPlugin_ports_0_cache_0_physicalAddress_1 <= MmuPlugin_shared_dBusRsp_pte_PPN1[9 : 0];
          MmuPlugin_ports_0_cache_0_allowRead <= MmuPlugin_shared_dBusRsp_pte_R;
          MmuPlugin_ports_0_cache_0_allowWrite <= MmuPlugin_shared_dBusRsp_pte_W;
          MmuPlugin_ports_0_cache_0_allowExecute <= MmuPlugin_shared_dBusRsp_pte_X;
          MmuPlugin_ports_0_cache_0_allowUser <= MmuPlugin_shared_dBusRsp_pte_U;
          MmuPlugin_ports_0_cache_0_superPage <= (MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP);
        end
        if(_zz_279)begin
          MmuPlugin_ports_0_cache_1_exception <= (MmuPlugin_shared_dBusRsp_exception || ((MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP) && (MmuPlugin_shared_dBusRsp_pte_PPN0 != 10'h0)));
          MmuPlugin_ports_0_cache_1_virtualAddress_0 <= MmuPlugin_shared_vpn_0;
          MmuPlugin_ports_0_cache_1_virtualAddress_1 <= MmuPlugin_shared_vpn_1;
          MmuPlugin_ports_0_cache_1_physicalAddress_0 <= MmuPlugin_shared_dBusRsp_pte_PPN0;
          MmuPlugin_ports_0_cache_1_physicalAddress_1 <= MmuPlugin_shared_dBusRsp_pte_PPN1[9 : 0];
          MmuPlugin_ports_0_cache_1_allowRead <= MmuPlugin_shared_dBusRsp_pte_R;
          MmuPlugin_ports_0_cache_1_allowWrite <= MmuPlugin_shared_dBusRsp_pte_W;
          MmuPlugin_ports_0_cache_1_allowExecute <= MmuPlugin_shared_dBusRsp_pte_X;
          MmuPlugin_ports_0_cache_1_allowUser <= MmuPlugin_shared_dBusRsp_pte_U;
          MmuPlugin_ports_0_cache_1_superPage <= (MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP);
        end
        if(_zz_280)begin
          MmuPlugin_ports_0_cache_2_exception <= (MmuPlugin_shared_dBusRsp_exception || ((MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP) && (MmuPlugin_shared_dBusRsp_pte_PPN0 != 10'h0)));
          MmuPlugin_ports_0_cache_2_virtualAddress_0 <= MmuPlugin_shared_vpn_0;
          MmuPlugin_ports_0_cache_2_virtualAddress_1 <= MmuPlugin_shared_vpn_1;
          MmuPlugin_ports_0_cache_2_physicalAddress_0 <= MmuPlugin_shared_dBusRsp_pte_PPN0;
          MmuPlugin_ports_0_cache_2_physicalAddress_1 <= MmuPlugin_shared_dBusRsp_pte_PPN1[9 : 0];
          MmuPlugin_ports_0_cache_2_allowRead <= MmuPlugin_shared_dBusRsp_pte_R;
          MmuPlugin_ports_0_cache_2_allowWrite <= MmuPlugin_shared_dBusRsp_pte_W;
          MmuPlugin_ports_0_cache_2_allowExecute <= MmuPlugin_shared_dBusRsp_pte_X;
          MmuPlugin_ports_0_cache_2_allowUser <= MmuPlugin_shared_dBusRsp_pte_U;
          MmuPlugin_ports_0_cache_2_superPage <= (MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP);
        end
        if(_zz_281)begin
          MmuPlugin_ports_0_cache_3_exception <= (MmuPlugin_shared_dBusRsp_exception || ((MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP) && (MmuPlugin_shared_dBusRsp_pte_PPN0 != 10'h0)));
          MmuPlugin_ports_0_cache_3_virtualAddress_0 <= MmuPlugin_shared_vpn_0;
          MmuPlugin_ports_0_cache_3_virtualAddress_1 <= MmuPlugin_shared_vpn_1;
          MmuPlugin_ports_0_cache_3_physicalAddress_0 <= MmuPlugin_shared_dBusRsp_pte_PPN0;
          MmuPlugin_ports_0_cache_3_physicalAddress_1 <= MmuPlugin_shared_dBusRsp_pte_PPN1[9 : 0];
          MmuPlugin_ports_0_cache_3_allowRead <= MmuPlugin_shared_dBusRsp_pte_R;
          MmuPlugin_ports_0_cache_3_allowWrite <= MmuPlugin_shared_dBusRsp_pte_W;
          MmuPlugin_ports_0_cache_3_allowExecute <= MmuPlugin_shared_dBusRsp_pte_X;
          MmuPlugin_ports_0_cache_3_allowUser <= MmuPlugin_shared_dBusRsp_pte_U;
          MmuPlugin_ports_0_cache_3_superPage <= (MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP);
        end
      end
      if(_zz_264)begin
        if(_zz_282)begin
          MmuPlugin_ports_1_cache_0_exception <= (MmuPlugin_shared_dBusRsp_exception || ((MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP) && (MmuPlugin_shared_dBusRsp_pte_PPN0 != 10'h0)));
          MmuPlugin_ports_1_cache_0_virtualAddress_0 <= MmuPlugin_shared_vpn_0;
          MmuPlugin_ports_1_cache_0_virtualAddress_1 <= MmuPlugin_shared_vpn_1;
          MmuPlugin_ports_1_cache_0_physicalAddress_0 <= MmuPlugin_shared_dBusRsp_pte_PPN0;
          MmuPlugin_ports_1_cache_0_physicalAddress_1 <= MmuPlugin_shared_dBusRsp_pte_PPN1[9 : 0];
          MmuPlugin_ports_1_cache_0_allowRead <= MmuPlugin_shared_dBusRsp_pte_R;
          MmuPlugin_ports_1_cache_0_allowWrite <= MmuPlugin_shared_dBusRsp_pte_W;
          MmuPlugin_ports_1_cache_0_allowExecute <= MmuPlugin_shared_dBusRsp_pte_X;
          MmuPlugin_ports_1_cache_0_allowUser <= MmuPlugin_shared_dBusRsp_pte_U;
          MmuPlugin_ports_1_cache_0_superPage <= (MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP);
        end
        if(_zz_283)begin
          MmuPlugin_ports_1_cache_1_exception <= (MmuPlugin_shared_dBusRsp_exception || ((MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP) && (MmuPlugin_shared_dBusRsp_pte_PPN0 != 10'h0)));
          MmuPlugin_ports_1_cache_1_virtualAddress_0 <= MmuPlugin_shared_vpn_0;
          MmuPlugin_ports_1_cache_1_virtualAddress_1 <= MmuPlugin_shared_vpn_1;
          MmuPlugin_ports_1_cache_1_physicalAddress_0 <= MmuPlugin_shared_dBusRsp_pte_PPN0;
          MmuPlugin_ports_1_cache_1_physicalAddress_1 <= MmuPlugin_shared_dBusRsp_pte_PPN1[9 : 0];
          MmuPlugin_ports_1_cache_1_allowRead <= MmuPlugin_shared_dBusRsp_pte_R;
          MmuPlugin_ports_1_cache_1_allowWrite <= MmuPlugin_shared_dBusRsp_pte_W;
          MmuPlugin_ports_1_cache_1_allowExecute <= MmuPlugin_shared_dBusRsp_pte_X;
          MmuPlugin_ports_1_cache_1_allowUser <= MmuPlugin_shared_dBusRsp_pte_U;
          MmuPlugin_ports_1_cache_1_superPage <= (MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP);
        end
        if(_zz_284)begin
          MmuPlugin_ports_1_cache_2_exception <= (MmuPlugin_shared_dBusRsp_exception || ((MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP) && (MmuPlugin_shared_dBusRsp_pte_PPN0 != 10'h0)));
          MmuPlugin_ports_1_cache_2_virtualAddress_0 <= MmuPlugin_shared_vpn_0;
          MmuPlugin_ports_1_cache_2_virtualAddress_1 <= MmuPlugin_shared_vpn_1;
          MmuPlugin_ports_1_cache_2_physicalAddress_0 <= MmuPlugin_shared_dBusRsp_pte_PPN0;
          MmuPlugin_ports_1_cache_2_physicalAddress_1 <= MmuPlugin_shared_dBusRsp_pte_PPN1[9 : 0];
          MmuPlugin_ports_1_cache_2_allowRead <= MmuPlugin_shared_dBusRsp_pte_R;
          MmuPlugin_ports_1_cache_2_allowWrite <= MmuPlugin_shared_dBusRsp_pte_W;
          MmuPlugin_ports_1_cache_2_allowExecute <= MmuPlugin_shared_dBusRsp_pte_X;
          MmuPlugin_ports_1_cache_2_allowUser <= MmuPlugin_shared_dBusRsp_pte_U;
          MmuPlugin_ports_1_cache_2_superPage <= (MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP);
        end
        if(_zz_285)begin
          MmuPlugin_ports_1_cache_3_exception <= (MmuPlugin_shared_dBusRsp_exception || ((MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP) && (MmuPlugin_shared_dBusRsp_pte_PPN0 != 10'h0)));
          MmuPlugin_ports_1_cache_3_virtualAddress_0 <= MmuPlugin_shared_vpn_0;
          MmuPlugin_ports_1_cache_3_virtualAddress_1 <= MmuPlugin_shared_vpn_1;
          MmuPlugin_ports_1_cache_3_physicalAddress_0 <= MmuPlugin_shared_dBusRsp_pte_PPN0;
          MmuPlugin_ports_1_cache_3_physicalAddress_1 <= MmuPlugin_shared_dBusRsp_pte_PPN1[9 : 0];
          MmuPlugin_ports_1_cache_3_allowRead <= MmuPlugin_shared_dBusRsp_pte_R;
          MmuPlugin_ports_1_cache_3_allowWrite <= MmuPlugin_shared_dBusRsp_pte_W;
          MmuPlugin_ports_1_cache_3_allowExecute <= MmuPlugin_shared_dBusRsp_pte_X;
          MmuPlugin_ports_1_cache_3_allowUser <= MmuPlugin_shared_dBusRsp_pte_U;
          MmuPlugin_ports_1_cache_3_superPage <= (MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP);
        end
      end
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_PC <= _zz_27;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_PC <= execute_PC;
    end
    if(((! writeBack_arbitration_isStuck) && (! CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack)))begin
      memory_to_writeBack_PC <= memory_PC;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_INSTRUCTION <= decode_INSTRUCTION;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_INSTRUCTION <= execute_INSTRUCTION;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_FORMAL_PC_NEXT <= decode_FORMAL_PC_NEXT;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_FORMAL_PC_NEXT <= _zz_47;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_FORMAL_PC_NEXT <= memory_FORMAL_PC_NEXT;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_MEMORY_FORCE_CONSTISTENCY <= decode_MEMORY_FORCE_CONSTISTENCY;
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
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MEMORY_ENABLE <= memory_MEMORY_ENABLE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_ALU_CTRL <= _zz_18;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_REGFILE_WRITE_VALID <= decode_REGFILE_WRITE_VALID;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_REGFILE_WRITE_VALID <= execute_REGFILE_WRITE_VALID;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_REGFILE_WRITE_VALID <= memory_REGFILE_WRITE_VALID;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_BYPASSABLE_EXECUTE_STAGE <= decode_BYPASSABLE_EXECUTE_STAGE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_BYPASSABLE_MEMORY_STAGE <= decode_BYPASSABLE_MEMORY_STAGE;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_BYPASSABLE_MEMORY_STAGE <= execute_BYPASSABLE_MEMORY_STAGE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_MEMORY_WR <= decode_MEMORY_WR;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MEMORY_WR <= execute_MEMORY_WR;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MEMORY_WR <= memory_MEMORY_WR;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_MEMORY_LRSC <= decode_MEMORY_LRSC;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_MEMORY_AMO <= decode_MEMORY_AMO;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_MEMORY_MANAGMENT <= decode_MEMORY_MANAGMENT;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC_LESS_UNSIGNED <= decode_SRC_LESS_UNSIGNED;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_ALU_BITWISE_CTRL <= _zz_15;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SHIFT_CTRL <= _zz_12;
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
      decode_to_execute_ENV_CTRL <= _zz_9;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_ENV_CTRL <= _zz_6;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_ENV_CTRL <= _zz_4;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_BRANCH_CTRL <= _zz_2;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_SFENCE_VMA <= decode_IS_SFENCE_VMA;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_IS_SFENCE_VMA <= execute_IS_SFENCE_VMA;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_IS_SFENCE_VMA <= memory_IS_SFENCE_VMA;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_RS1 <= _zz_30;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_RS2 <= _zz_28;
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
      execute_to_memory_MEMORY_ADDRESS_LOW <= execute_MEMORY_ADDRESS_LOW;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MEMORY_ADDRESS_LOW <= memory_MEMORY_ADDRESS_LOW;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_REGFILE_WRITE_DATA <= _zz_25;
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
      execute_CsrPlugin_csr_770 <= (decode_INSTRUCTION[31 : 20] == 12'h302);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_771 <= (decode_INSTRUCTION[31 : 20] == 12'h303);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_256 <= (decode_INSTRUCTION[31 : 20] == 12'h100);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_324 <= (decode_INSTRUCTION[31 : 20] == 12'h144);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_260 <= (decode_INSTRUCTION[31 : 20] == 12'h104);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_261 <= (decode_INSTRUCTION[31 : 20] == 12'h105);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_321 <= (decode_INSTRUCTION[31 : 20] == 12'h141);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_320 <= (decode_INSTRUCTION[31 : 20] == 12'h140);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_322 <= (decode_INSTRUCTION[31 : 20] == 12'h142);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_323 <= (decode_INSTRUCTION[31 : 20] == 12'h143);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_384 <= (decode_INSTRUCTION[31 : 20] == 12'h180);
    end
    if(execute_CsrPlugin_csr_836)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_mip_MSIP <= _zz_406[0];
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
    if(execute_CsrPlugin_csr_261)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_stvec_base <= execute_CsrPlugin_writeData[31 : 2];
        CsrPlugin_stvec_mode <= execute_CsrPlugin_writeData[1 : 0];
      end
    end
    if(execute_CsrPlugin_csr_321)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_sepc <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_320)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_sscratch <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_322)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_scause_interrupt <= _zz_442[0];
        CsrPlugin_scause_exceptionCode <= execute_CsrPlugin_writeData[3 : 0];
      end
    end
    if(execute_CsrPlugin_csr_323)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_stval <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_384)begin
      if(execute_CsrPlugin_writeEnable)begin
        MmuPlugin_satp_ppn <= execute_CsrPlugin_writeData[19 : 0];
      end
    end
  end


endmodule

module DataCache (
  input               io_cpu_execute_isValid,
  input      [31:0]   io_cpu_execute_address,
  output              io_cpu_execute_haltIt,
  input               io_cpu_execute_args_wr,
  input      [31:0]   io_cpu_execute_args_data,
  input      [1:0]    io_cpu_execute_args_size,
  input               io_cpu_execute_args_isLrsc,
  input               io_cpu_execute_args_isAmo,
  input               io_cpu_execute_args_amoCtrl_swap,
  input      [2:0]    io_cpu_execute_args_amoCtrl_alu,
  input               io_cpu_execute_args_totalyConsistent,
  input               io_cpu_memory_isValid,
  input               io_cpu_memory_isStuck,
  output              io_cpu_memory_isWrite,
  input      [31:0]   io_cpu_memory_address,
  input      [31:0]   io_cpu_memory_mmuRsp_physicalAddress,
  input               io_cpu_memory_mmuRsp_isIoAccess,
  input               io_cpu_memory_mmuRsp_allowRead,
  input               io_cpu_memory_mmuRsp_allowWrite,
  input               io_cpu_memory_mmuRsp_allowExecute,
  input               io_cpu_memory_mmuRsp_exception,
  input               io_cpu_memory_mmuRsp_refilling,
  input               io_cpu_memory_mmuRsp_bypassTranslation,
  input               io_cpu_memory_mmuRsp_ways_0_sel,
  input      [31:0]   io_cpu_memory_mmuRsp_ways_0_physical,
  input               io_cpu_memory_mmuRsp_ways_1_sel,
  input      [31:0]   io_cpu_memory_mmuRsp_ways_1_physical,
  input               io_cpu_memory_mmuRsp_ways_2_sel,
  input      [31:0]   io_cpu_memory_mmuRsp_ways_2_physical,
  input               io_cpu_memory_mmuRsp_ways_3_sel,
  input      [31:0]   io_cpu_memory_mmuRsp_ways_3_physical,
  input               io_cpu_writeBack_isValid,
  input               io_cpu_writeBack_isStuck,
  input               io_cpu_writeBack_isUser,
  output reg          io_cpu_writeBack_haltIt,
  output              io_cpu_writeBack_isWrite,
  output reg [31:0]   io_cpu_writeBack_data,
  input      [31:0]   io_cpu_writeBack_address,
  output              io_cpu_writeBack_mmuException,
  output              io_cpu_writeBack_unalignedAccess,
  output reg          io_cpu_writeBack_accessError,
  output              io_cpu_writeBack_keepMemRspData,
  input               io_cpu_writeBack_fence_SW,
  input               io_cpu_writeBack_fence_SR,
  input               io_cpu_writeBack_fence_SO,
  input               io_cpu_writeBack_fence_SI,
  input               io_cpu_writeBack_fence_PW,
  input               io_cpu_writeBack_fence_PR,
  input               io_cpu_writeBack_fence_PO,
  input               io_cpu_writeBack_fence_PI,
  input      [3:0]    io_cpu_writeBack_fence_FM,
  output reg          io_cpu_redo,
  input               io_cpu_flush_valid,
  output reg          io_cpu_flush_ready,
  output reg          io_mem_cmd_valid,
  input               io_mem_cmd_ready,
  output reg          io_mem_cmd_payload_wr,
  output              io_mem_cmd_payload_uncached,
  output reg [31:0]   io_mem_cmd_payload_address,
  output     [31:0]   io_mem_cmd_payload_data,
  output     [3:0]    io_mem_cmd_payload_mask,
  output reg [3:0]    io_mem_cmd_payload_length,
  output              io_mem_cmd_payload_last,
  input               io_mem_rsp_valid,
  input               io_mem_rsp_payload_last,
  input      [31:0]   io_mem_rsp_payload_data,
  input               io_mem_rsp_payload_error,
  input               clk,
  input               resetn
);
  wire                _zz_15;
  wire       [0:0]    _zz_16;
  wire       [22:0]   _zz_17;
  wire                _zz_18;
  wire                _zz_19;
  wire                _zz_20;
  wire       [0:0]    _zz_21;
  wire       [22:0]   _zz_22;
  wire                _zz_23;
  wire                _zz_24;
  wire       [22:0]   ways_0_tags_rd_data;
  wire       [31:0]   ways_0_data_rd_data;
  wire       [22:0]   ways_1_tags_rd_data;
  wire       [31:0]   ways_1_data_rd_data;
  wire                _zz_25;
  wire                _zz_26;
  wire                _zz_27;
  wire                _zz_28;
  wire                _zz_29;
  wire                _zz_30;
  wire                _zz_31;
  wire                _zz_32;
  wire                _zz_33;
  wire                _zz_34;
  wire                _zz_35;
  wire       [2:0]    _zz_36;
  wire       [0:0]    _zz_37;
  wire       [0:0]    _zz_38;
  wire       [0:0]    _zz_39;
  wire       [0:0]    _zz_40;
  wire       [31:0]   _zz_41;
  wire       [31:0]   _zz_42;
  wire       [31:0]   _zz_43;
  wire       [31:0]   _zz_44;
  wire       [1:0]    _zz_45;
  wire       [31:0]   _zz_46;
  wire       [1:0]    _zz_47;
  wire       [1:0]    _zz_48;
  wire       [0:0]    _zz_49;
  wire       [0:0]    _zz_50;
  wire       [0:0]    _zz_51;
  wire       [3:0]    _zz_52;
  wire       [2:0]    _zz_53;
  reg                 _zz_1;
  reg                 _zz_2;
  reg                 _zz_3;
  reg                 _zz_4;
  wire                haltCpu;
  reg                 tagsReadCmd_valid;
  reg        [4:0]    tagsReadCmd_payload;
  reg                 tagsWriteCmd_valid;
  reg        [1:0]    tagsWriteCmd_payload_way;
  reg        [4:0]    tagsWriteCmd_payload_address;
  reg                 tagsWriteCmd_payload_data_valid;
  reg                 tagsWriteCmd_payload_data_error;
  reg        [20:0]   tagsWriteCmd_payload_data_address;
  reg                 tagsWriteLastCmd_valid;
  reg        [1:0]    tagsWriteLastCmd_payload_way;
  reg        [4:0]    tagsWriteLastCmd_payload_address;
  reg                 tagsWriteLastCmd_payload_data_valid;
  reg                 tagsWriteLastCmd_payload_data_error;
  reg        [20:0]   tagsWriteLastCmd_payload_data_address;
  reg                 dataReadCmd_valid;
  reg        [8:0]    dataReadCmd_payload;
  reg                 dataWriteCmd_valid;
  reg        [1:0]    dataWriteCmd_payload_way;
  reg        [8:0]    dataWriteCmd_payload_address;
  reg        [31:0]   dataWriteCmd_payload_data;
  reg        [3:0]    dataWriteCmd_payload_mask;
  reg        [4:0]    tagsReadCmd_payload_regNextWhen;
  wire                ways_0_tagsReadRsp_valid;
  wire                ways_0_tagsReadRsp_error;
  wire       [20:0]   ways_0_tagsReadRsp_address;
  wire       [22:0]   _zz_5;
  wire       [31:0]   ways_0_dataReadRspMem;
  wire       [31:0]   ways_0_dataReadRsp;
  reg        [4:0]    tagsReadCmd_payload_regNextWhen_1;
  wire                ways_1_tagsReadRsp_valid;
  wire                ways_1_tagsReadRsp_error;
  wire       [20:0]   ways_1_tagsReadRsp_address;
  wire       [22:0]   _zz_6;
  wire       [31:0]   ways_1_dataReadRspMem;
  wire       [31:0]   ways_1_dataReadRsp;
  wire                rspSync;
  wire                rspLast;
  reg                 memCmdSent;
  reg        [3:0]    _zz_7;
  wire       [3:0]    stage0_mask;
  reg        [1:0]    stage0_dataColisions;
  wire       [8:0]    _zz_8;
  wire       [3:0]    _zz_9;
  wire       [1:0]    stage0_wayInvalidate;
  reg                 stageA_request_wr;
  reg        [31:0]   stageA_request_data;
  reg        [1:0]    stageA_request_size;
  reg                 stageA_request_isLrsc;
  reg                 stageA_request_isAmo;
  reg                 stageA_request_amoCtrl_swap;
  reg        [2:0]    stageA_request_amoCtrl_alu;
  reg                 stageA_request_totalyConsistent;
  reg        [3:0]    stageA_mask;
  wire       [1:0]    stageA_wayHits;
  reg        [1:0]    _zz_10;
  reg        [1:0]    stageA_wayInvalidate;
  reg        [1:0]    stage0_dataColisions_regNextWhen;
  reg        [1:0]    _zz_11;
  wire       [8:0]    _zz_12;
  wire       [3:0]    _zz_13;
  wire       [1:0]    stageA_dataColisions;
  reg                 stageB_request_wr;
  reg        [31:0]   stageB_request_data;
  reg        [1:0]    stageB_request_size;
  reg                 stageB_request_isLrsc;
  reg                 stageB_request_isAmo;
  reg                 stageB_request_amoCtrl_swap;
  reg        [2:0]    stageB_request_amoCtrl_alu;
  reg                 stageB_request_totalyConsistent;
  reg                 stageB_mmuRspFreeze;
  reg        [31:0]   stageB_mmuRsp_physicalAddress;
  reg                 stageB_mmuRsp_isIoAccess;
  reg                 stageB_mmuRsp_allowRead;
  reg                 stageB_mmuRsp_allowWrite;
  reg                 stageB_mmuRsp_allowExecute;
  reg                 stageB_mmuRsp_exception;
  reg                 stageB_mmuRsp_refilling;
  reg                 stageB_mmuRsp_bypassTranslation;
  reg                 stageB_mmuRsp_ways_0_sel;
  reg        [31:0]   stageB_mmuRsp_ways_0_physical;
  reg                 stageB_mmuRsp_ways_1_sel;
  reg        [31:0]   stageB_mmuRsp_ways_1_physical;
  reg                 stageB_mmuRsp_ways_2_sel;
  reg        [31:0]   stageB_mmuRsp_ways_2_physical;
  reg                 stageB_mmuRsp_ways_3_sel;
  reg        [31:0]   stageB_mmuRsp_ways_3_physical;
  reg                 stageB_tagsReadRsp_0_valid;
  reg                 stageB_tagsReadRsp_0_error;
  reg        [20:0]   stageB_tagsReadRsp_0_address;
  reg                 stageB_tagsReadRsp_1_valid;
  reg                 stageB_tagsReadRsp_1_error;
  reg        [20:0]   stageB_tagsReadRsp_1_address;
  reg        [31:0]   stageB_dataReadRsp_0;
  reg        [31:0]   stageB_dataReadRsp_1;
  reg        [1:0]    stageB_wayInvalidate;
  wire                stageB_consistancyHazard;
  reg        [1:0]    stageB_dataColisions;
  reg        [1:0]    stageB_waysHitsBeforeInvalidate;
  wire       [1:0]    stageB_waysHits;
  wire                stageB_waysHit;
  wire       [31:0]   stageB_dataMux;
  reg        [3:0]    stageB_mask;
  reg                 stageB_loaderValid;
  wire       [31:0]   stageB_ioMemRspMuxed;
  reg                 stageB_flusher_valid;
  wire                stageB_flusher_hold;
  reg                 stageB_flusher_start;
  reg                 stageB_lrSc_reserved;
  wire                stageB_isExternalLsrc;
  wire                stageB_isExternalAmo;
  reg        [31:0]   stageB_requestDataBypass;
  wire                stageB_amo_compare;
  wire                stageB_amo_unsigned;
  wire       [31:0]   stageB_amo_addSub;
  wire                stageB_amo_less;
  wire                stageB_amo_selectRf;
  reg        [31:0]   stageB_amo_result;
  reg        [31:0]   stageB_amo_resultReg;
  reg                 stageB_amo_internal_resultRegValid;
  reg                 stageB_cpuWriteToCache;
  wire                stageB_bypassCache;
  reg        [1:0]    _zz_14;
  reg                 loader_valid;
  reg                 loader_counter_willIncrement;
  wire                loader_counter_willClear;
  reg        [3:0]    loader_counter_valueNext;
  reg        [3:0]    loader_counter_value;
  wire                loader_counter_willOverflowIfInc;
  wire                loader_counter_willOverflow;
  reg        [1:0]    loader_waysAllocator;
  reg                 loader_error;
  wire                loader_kill;
  reg                 loader_killReg;
  wire                loader_done;

  assign _zz_25 = (io_cpu_execute_isValid && (! io_cpu_memory_isStuck));
  assign _zz_26 = ((((stageB_consistancyHazard || stageB_mmuRsp_refilling) || io_cpu_writeBack_accessError) || io_cpu_writeBack_mmuException) || io_cpu_writeBack_unalignedAccess);
  assign _zz_27 = (stageB_mmuRsp_isIoAccess || stageB_isExternalLsrc);
  assign _zz_28 = (stageB_waysHit || (stageB_request_wr && (! stageB_request_isAmo)));
  assign _zz_29 = (! stageB_amo_internal_resultRegValid);
  assign _zz_30 = (stageB_request_isLrsc && (! stageB_lrSc_reserved));
  assign _zz_31 = ((loader_valid && io_mem_rsp_valid) && rspLast);
  assign _zz_32 = (stageB_request_isLrsc && (! stageB_lrSc_reserved));
  assign _zz_33 = (((! stageB_request_wr) || stageB_request_isAmo) && ((stageB_dataColisions & stageB_waysHits) != 2'b00));
  assign _zz_34 = (! stageB_flusher_hold);
  assign _zz_35 = (stageB_mmuRsp_physicalAddress[10 : 6] != 5'h1f);
  assign _zz_36 = (stageB_request_amoCtrl_alu | {stageB_request_amoCtrl_swap,2'b00});
  assign _zz_37 = _zz_5[0 : 0];
  assign _zz_38 = _zz_5[1 : 1];
  assign _zz_39 = _zz_6[0 : 0];
  assign _zz_40 = _zz_6[1 : 1];
  assign _zz_41 = ($signed(_zz_42) + $signed(_zz_46));
  assign _zz_42 = ($signed(_zz_43) + $signed(_zz_44));
  assign _zz_43 = stageB_request_data;
  assign _zz_44 = (stageB_amo_compare ? (~ stageB_dataMux) : stageB_dataMux);
  assign _zz_45 = (stageB_amo_compare ? _zz_47 : _zz_48);
  assign _zz_46 = {{30{_zz_45[1]}}, _zz_45};
  assign _zz_47 = 2'b01;
  assign _zz_48 = 2'b00;
  assign _zz_49 = 1'b1;
  assign _zz_50 = (! stageB_lrSc_reserved);
  assign _zz_51 = loader_counter_willIncrement;
  assign _zz_52 = {3'd0, _zz_51};
  assign _zz_53 = {loader_waysAllocator,loader_waysAllocator[1]};
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
    .clk        (clk                                   ), //i
    .wr_en      (_zz_15                                ), //i
    .wr_mask    (_zz_16                                ), //i
    .wr_addr    (tagsWriteCmd_payload_address[4:0]     ), //i
    .wr_data    (_zz_17[22:0]                          ), //i
    .rd_addr    (tagsReadCmd_payload_regNextWhen[4:0]  ), //i
    .rd_data    (ways_0_tags_rd_data[22:0]             )  //o
  );
  Ram_1w_1rs #(
    .wordCount(512),
    .wordWidth(32),
    .clockCrossing(1'b0),
    .technology("auto"),
    .readUnderWrite("dontCare"),
    .wrAddressWidth(9),
    .wrDataWidth(32),
    .wrMaskWidth(4),
    .wrMaskEnable(1'b1),
    .rdAddressWidth(9),
    .rdDataWidth(32) 
  ) ways_0_data (
    .wr_clk     (clk                                ), //i
    .wr_en      (_zz_18                             ), //i
    .wr_mask    (dataWriteCmd_payload_mask[3:0]     ), //i
    .wr_addr    (dataWriteCmd_payload_address[8:0]  ), //i
    .wr_data    (dataWriteCmd_payload_data[31:0]    ), //i
    .rd_clk     (clk                                ), //i
    .rd_en      (_zz_19                             ), //i
    .rd_addr    (dataReadCmd_payload[8:0]           ), //i
    .rd_data    (ways_0_data_rd_data[31:0]          )  //o
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
    .clk        (clk                                     ), //i
    .wr_en      (_zz_20                                  ), //i
    .wr_mask    (_zz_21                                  ), //i
    .wr_addr    (tagsWriteCmd_payload_address[4:0]       ), //i
    .wr_data    (_zz_22[22:0]                            ), //i
    .rd_addr    (tagsReadCmd_payload_regNextWhen_1[4:0]  ), //i
    .rd_data    (ways_1_tags_rd_data[22:0]               )  //o
  );
  Ram_1w_1rs #(
    .wordCount(512),
    .wordWidth(32),
    .clockCrossing(1'b0),
    .technology("auto"),
    .readUnderWrite("dontCare"),
    .wrAddressWidth(9),
    .wrDataWidth(32),
    .wrMaskWidth(4),
    .wrMaskEnable(1'b1),
    .rdAddressWidth(9),
    .rdDataWidth(32) 
  ) ways_1_data (
    .wr_clk     (clk                                ), //i
    .wr_en      (_zz_23                             ), //i
    .wr_mask    (dataWriteCmd_payload_mask[3:0]     ), //i
    .wr_addr    (dataWriteCmd_payload_address[8:0]  ), //i
    .wr_data    (dataWriteCmd_payload_data[31:0]    ), //i
    .rd_clk     (clk                                ), //i
    .rd_en      (_zz_24                             ), //i
    .rd_addr    (dataReadCmd_payload[8:0]           ), //i
    .rd_data    (ways_1_data_rd_data[31:0]          )  //o
  );
  always @ (*) begin
    _zz_1 = 1'b0;
    if((dataWriteCmd_valid && dataWriteCmd_payload_way[1]))begin
      _zz_1 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_2 = 1'b0;
    if((tagsWriteCmd_valid && tagsWriteCmd_payload_way[1]))begin
      _zz_2 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_3 = 1'b0;
    if((dataWriteCmd_valid && dataWriteCmd_payload_way[0]))begin
      _zz_3 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_4 = 1'b0;
    if((tagsWriteCmd_valid && tagsWriteCmd_payload_way[0]))begin
      _zz_4 = 1'b1;
    end
  end

  assign haltCpu = 1'b0;
  assign _zz_5 = ways_0_tags_rd_data;
  assign ways_0_tagsReadRsp_valid = _zz_37[0];
  assign ways_0_tagsReadRsp_error = _zz_38[0];
  assign ways_0_tagsReadRsp_address = _zz_5[22 : 2];
  assign ways_0_dataReadRspMem = ways_0_data_rd_data;
  assign ways_0_dataReadRsp = ways_0_dataReadRspMem[31 : 0];
  assign _zz_6 = ways_1_tags_rd_data;
  assign ways_1_tagsReadRsp_valid = _zz_39[0];
  assign ways_1_tagsReadRsp_error = _zz_40[0];
  assign ways_1_tagsReadRsp_address = _zz_6[22 : 2];
  assign ways_1_dataReadRspMem = ways_1_data_rd_data;
  assign ways_1_dataReadRsp = ways_1_dataReadRspMem[31 : 0];
  always @ (*) begin
    tagsReadCmd_valid = 1'b0;
    if(_zz_25)begin
      tagsReadCmd_valid = 1'b1;
    end
  end

  always @ (*) begin
    tagsReadCmd_payload = 5'h0;
    if(_zz_25)begin
      tagsReadCmd_payload = io_cpu_execute_address[10 : 6];
    end
  end

  always @ (*) begin
    dataReadCmd_valid = 1'b0;
    if(_zz_25)begin
      dataReadCmd_valid = 1'b1;
    end
  end

  always @ (*) begin
    dataReadCmd_payload = 9'h0;
    if(_zz_25)begin
      dataReadCmd_payload = io_cpu_execute_address[10 : 2];
    end
  end

  always @ (*) begin
    tagsWriteCmd_valid = 1'b0;
    if(stageB_flusher_valid)begin
      tagsWriteCmd_valid = stageB_flusher_valid;
    end
    if(_zz_26)begin
      tagsWriteCmd_valid = 1'b0;
    end
    if(loader_done)begin
      tagsWriteCmd_valid = 1'b1;
    end
  end

  always @ (*) begin
    tagsWriteCmd_payload_way = 2'bxx;
    if(stageB_flusher_valid)begin
      tagsWriteCmd_payload_way = 2'b11;
    end
    if(loader_done)begin
      tagsWriteCmd_payload_way = loader_waysAllocator;
    end
  end

  always @ (*) begin
    tagsWriteCmd_payload_address = 5'h0;
    if(stageB_flusher_valid)begin
      tagsWriteCmd_payload_address = stageB_mmuRsp_physicalAddress[10 : 6];
    end
    if(loader_done)begin
      tagsWriteCmd_payload_address = stageB_mmuRsp_physicalAddress[10 : 6];
    end
  end

  always @ (*) begin
    tagsWriteCmd_payload_data_valid = 1'bx;
    if(stageB_flusher_valid)begin
      tagsWriteCmd_payload_data_valid = 1'b0;
    end
    if(loader_done)begin
      tagsWriteCmd_payload_data_valid = (! (loader_kill || loader_killReg));
    end
  end

  always @ (*) begin
    tagsWriteCmd_payload_data_error = 1'bx;
    if(loader_done)begin
      tagsWriteCmd_payload_data_error = (loader_error || (io_mem_rsp_valid && io_mem_rsp_payload_error));
    end
  end

  always @ (*) begin
    tagsWriteCmd_payload_data_address = 21'h0;
    if(loader_done)begin
      tagsWriteCmd_payload_data_address = stageB_mmuRsp_physicalAddress[31 : 11];
    end
  end

  always @ (*) begin
    dataWriteCmd_valid = 1'b0;
    if(stageB_cpuWriteToCache)begin
      if((stageB_request_wr && stageB_waysHit))begin
        dataWriteCmd_valid = 1'b1;
      end
    end
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_isExternalAmo) begin
        if(! _zz_27) begin
          if(_zz_28)begin
            if(stageB_request_isAmo)begin
              if(_zz_29)begin
                dataWriteCmd_valid = 1'b0;
              end
            end
            if(_zz_30)begin
              dataWriteCmd_valid = 1'b0;
            end
          end
        end
      end
    end
    if(_zz_26)begin
      dataWriteCmd_valid = 1'b0;
    end
    if(_zz_31)begin
      dataWriteCmd_valid = 1'b1;
    end
  end

  always @ (*) begin
    dataWriteCmd_payload_way = 2'bxx;
    if(stageB_cpuWriteToCache)begin
      dataWriteCmd_payload_way = stageB_waysHits;
    end
    if(_zz_31)begin
      dataWriteCmd_payload_way = loader_waysAllocator;
    end
  end

  always @ (*) begin
    dataWriteCmd_payload_address = 9'h0;
    if(stageB_cpuWriteToCache)begin
      dataWriteCmd_payload_address = stageB_mmuRsp_physicalAddress[10 : 2];
    end
    if(_zz_31)begin
      dataWriteCmd_payload_address = {stageB_mmuRsp_physicalAddress[10 : 6],loader_counter_value};
    end
  end

  always @ (*) begin
    dataWriteCmd_payload_data = 32'h0;
    if(stageB_cpuWriteToCache)begin
      dataWriteCmd_payload_data[31 : 0] = stageB_requestDataBypass;
    end
    if(_zz_31)begin
      dataWriteCmd_payload_data = io_mem_rsp_payload_data;
    end
  end

  always @ (*) begin
    dataWriteCmd_payload_mask = 4'bxxxx;
    if(stageB_cpuWriteToCache)begin
      dataWriteCmd_payload_mask = 4'b0000;
      if(_zz_49[0])begin
        dataWriteCmd_payload_mask[3 : 0] = stageB_mask;
      end
    end
    if(_zz_31)begin
      dataWriteCmd_payload_mask = 4'b1111;
    end
  end

  assign io_cpu_execute_haltIt = 1'b0;
  assign rspSync = 1'b1;
  assign rspLast = 1'b1;
  always @ (*) begin
    case(io_cpu_execute_args_size)
      2'b00 : begin
        _zz_7 = 4'b0001;
      end
      2'b01 : begin
        _zz_7 = 4'b0011;
      end
      default : begin
        _zz_7 = 4'b1111;
      end
    endcase
  end

  assign stage0_mask = (_zz_7 <<< io_cpu_execute_address[1 : 0]);
  assign _zz_8 = (io_cpu_execute_address[10 : 2] >>> 0);
  assign _zz_9 = dataWriteCmd_payload_mask[3 : 0];
  always @ (*) begin
    stage0_dataColisions[0] = (((dataWriteCmd_valid && dataWriteCmd_payload_way[0]) && (dataWriteCmd_payload_address == _zz_8)) && ((stage0_mask & _zz_9) != 4'b0000));
    stage0_dataColisions[1] = (((dataWriteCmd_valid && dataWriteCmd_payload_way[1]) && (dataWriteCmd_payload_address == _zz_8)) && ((stage0_mask & _zz_9) != 4'b0000));
  end

  assign stage0_wayInvalidate = 2'b00;
  assign io_cpu_memory_isWrite = stageA_request_wr;
  always @ (*) begin
    _zz_10[0] = ((io_cpu_memory_mmuRsp_physicalAddress[31 : 11] == ways_0_tagsReadRsp_address) && ways_0_tagsReadRsp_valid);
    _zz_10[1] = ((io_cpu_memory_mmuRsp_physicalAddress[31 : 11] == ways_1_tagsReadRsp_address) && ways_1_tagsReadRsp_valid);
  end

  assign stageA_wayHits = _zz_10;
  assign _zz_12 = (io_cpu_memory_address[10 : 2] >>> 0);
  assign _zz_13 = dataWriteCmd_payload_mask[3 : 0];
  always @ (*) begin
    _zz_11[0] = (((dataWriteCmd_valid && dataWriteCmd_payload_way[0]) && (dataWriteCmd_payload_address == _zz_12)) && ((stageA_mask & _zz_13) != 4'b0000));
    _zz_11[1] = (((dataWriteCmd_valid && dataWriteCmd_payload_way[1]) && (dataWriteCmd_payload_address == _zz_12)) && ((stageA_mask & _zz_13) != 4'b0000));
  end

  assign stageA_dataColisions = (stage0_dataColisions_regNextWhen | _zz_11);
  always @ (*) begin
    stageB_mmuRspFreeze = 1'b0;
    if((stageB_loaderValid || loader_valid))begin
      stageB_mmuRspFreeze = 1'b1;
    end
  end

  assign stageB_consistancyHazard = 1'b0;
  assign stageB_waysHits = (stageB_waysHitsBeforeInvalidate & (~ stageB_wayInvalidate));
  assign stageB_waysHit = (stageB_waysHits != 2'b00);
  assign stageB_dataMux = (stageB_waysHits[0] ? stageB_dataReadRsp_0 : stageB_dataReadRsp_1);
  always @ (*) begin
    stageB_loaderValid = 1'b0;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_isExternalAmo) begin
        if(! _zz_27) begin
          if(! _zz_28) begin
            if(io_mem_cmd_ready)begin
              stageB_loaderValid = 1'b1;
            end
          end
        end
      end
    end
    if(_zz_26)begin
      stageB_loaderValid = 1'b0;
    end
  end

  assign stageB_ioMemRspMuxed = io_mem_rsp_payload_data[31 : 0];
  always @ (*) begin
    io_cpu_writeBack_haltIt = io_cpu_writeBack_isValid;
    if(stageB_flusher_valid)begin
      io_cpu_writeBack_haltIt = 1'b1;
    end
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_isExternalAmo) begin
        if(_zz_27)begin
          if(((! stageB_request_wr) ? (io_mem_rsp_valid && rspSync) : io_mem_cmd_ready))begin
            io_cpu_writeBack_haltIt = 1'b0;
          end
          if(_zz_32)begin
            io_cpu_writeBack_haltIt = 1'b0;
          end
        end else begin
          if(_zz_28)begin
            if(((! stageB_request_wr) || io_mem_cmd_ready))begin
              io_cpu_writeBack_haltIt = 1'b0;
            end
            if(stageB_request_isAmo)begin
              if(_zz_29)begin
                io_cpu_writeBack_haltIt = 1'b1;
              end
            end
            if(_zz_30)begin
              io_cpu_writeBack_haltIt = 1'b0;
            end
          end
        end
      end
    end
    if(_zz_26)begin
      io_cpu_writeBack_haltIt = 1'b0;
    end
  end

  assign stageB_flusher_hold = 1'b0;
  always @ (*) begin
    io_cpu_flush_ready = 1'b0;
    if(stageB_flusher_start)begin
      io_cpu_flush_ready = 1'b1;
    end
  end

  assign stageB_isExternalLsrc = 1'b0;
  assign stageB_isExternalAmo = 1'b0;
  always @ (*) begin
    stageB_requestDataBypass = stageB_request_data;
    if(stageB_request_isAmo)begin
      stageB_requestDataBypass = stageB_amo_resultReg;
    end
  end

  assign stageB_amo_compare = stageB_request_amoCtrl_alu[2];
  assign stageB_amo_unsigned = (stageB_request_amoCtrl_alu[2 : 1] == 2'b11);
  assign stageB_amo_addSub = _zz_41;
  assign stageB_amo_less = ((stageB_request_data[31] == stageB_dataMux[31]) ? stageB_amo_addSub[31] : (stageB_amo_unsigned ? stageB_dataMux[31] : stageB_request_data[31]));
  assign stageB_amo_selectRf = (stageB_request_amoCtrl_swap ? 1'b1 : (stageB_request_amoCtrl_alu[0] ^ stageB_amo_less));
  always @ (*) begin
    case(_zz_36)
      3'b000 : begin
        stageB_amo_result = stageB_amo_addSub;
      end
      3'b001 : begin
        stageB_amo_result = (stageB_request_data ^ stageB_dataMux);
      end
      3'b010 : begin
        stageB_amo_result = (stageB_request_data | stageB_dataMux);
      end
      3'b011 : begin
        stageB_amo_result = (stageB_request_data & stageB_dataMux);
      end
      default : begin
        stageB_amo_result = (stageB_amo_selectRf ? stageB_request_data : stageB_dataMux);
      end
    endcase
  end

  always @ (*) begin
    stageB_cpuWriteToCache = 1'b0;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_isExternalAmo) begin
        if(! _zz_27) begin
          if(_zz_28)begin
            stageB_cpuWriteToCache = 1'b1;
          end
        end
      end
    end
  end

  always @ (*) begin
    io_cpu_redo = 1'b0;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_isExternalAmo) begin
        if(! _zz_27) begin
          if(_zz_28)begin
            if(_zz_33)begin
              io_cpu_redo = 1'b1;
            end
          end
        end
      end
    end
    if((io_cpu_writeBack_isValid && (stageB_mmuRsp_refilling || stageB_consistancyHazard)))begin
      io_cpu_redo = 1'b1;
    end
    if(loader_valid)begin
      io_cpu_redo = 1'b1;
    end
  end

  always @ (*) begin
    io_cpu_writeBack_accessError = 1'b0;
    if(stageB_bypassCache)begin
      io_cpu_writeBack_accessError = ((((! stageB_request_wr) && 1'b1) && io_mem_rsp_valid) && io_mem_rsp_payload_error);
    end else begin
      io_cpu_writeBack_accessError = ((stageB_waysHits & _zz_14) != 2'b00);
    end
  end

  assign io_cpu_writeBack_mmuException = (io_cpu_writeBack_isValid && ((stageB_mmuRsp_exception || ((! stageB_mmuRsp_allowWrite) && stageB_request_wr)) || ((! stageB_mmuRsp_allowRead) && ((! stageB_request_wr) || stageB_request_isAmo))));
  assign io_cpu_writeBack_unalignedAccess = (io_cpu_writeBack_isValid && (((stageB_request_size == 2'b10) && (stageB_mmuRsp_physicalAddress[1 : 0] != 2'b00)) || ((stageB_request_size == 2'b01) && (stageB_mmuRsp_physicalAddress[0 : 0] != 1'b0))));
  assign io_cpu_writeBack_isWrite = stageB_request_wr;
  always @ (*) begin
    io_mem_cmd_valid = 1'b0;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_isExternalAmo) begin
        if(_zz_27)begin
          io_mem_cmd_valid = (! memCmdSent);
          if(_zz_32)begin
            io_mem_cmd_valid = 1'b0;
          end
        end else begin
          if(_zz_28)begin
            if(stageB_request_wr)begin
              io_mem_cmd_valid = 1'b1;
            end
            if(stageB_request_isAmo)begin
              if(_zz_29)begin
                io_mem_cmd_valid = 1'b0;
              end
            end
            if(_zz_33)begin
              io_mem_cmd_valid = 1'b0;
            end
            if(_zz_30)begin
              io_mem_cmd_valid = 1'b0;
            end
          end else begin
            if((! memCmdSent))begin
              io_mem_cmd_valid = 1'b1;
            end
          end
        end
      end
    end
    if(_zz_26)begin
      io_mem_cmd_valid = 1'b0;
    end
  end

  always @ (*) begin
    io_mem_cmd_payload_address = {stageB_mmuRsp_physicalAddress[31 : 2],2'b00};
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_isExternalAmo) begin
        if(! _zz_27) begin
          if(_zz_28)begin
            io_mem_cmd_payload_address = {stageB_mmuRsp_physicalAddress[31 : 2],2'b00};
          end else begin
            io_mem_cmd_payload_address = {stageB_mmuRsp_physicalAddress[31 : 6],6'h0};
          end
        end
      end
    end
  end

  always @ (*) begin
    io_mem_cmd_payload_length = 4'b0000;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_isExternalAmo) begin
        if(! _zz_27) begin
          if(_zz_28)begin
            io_mem_cmd_payload_length = 4'b0000;
          end else begin
            io_mem_cmd_payload_length = 4'b1111;
          end
        end
      end
    end
  end

  assign io_mem_cmd_payload_last = 1'b1;
  always @ (*) begin
    io_mem_cmd_payload_wr = stageB_request_wr;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_isExternalAmo) begin
        if(! _zz_27) begin
          if(! _zz_28) begin
            io_mem_cmd_payload_wr = 1'b0;
          end
        end
      end
    end
  end

  assign io_mem_cmd_payload_mask = stageB_mask;
  assign io_mem_cmd_payload_data = stageB_requestDataBypass;
  assign io_mem_cmd_payload_uncached = stageB_mmuRsp_isIoAccess;
  assign stageB_bypassCache = ((stageB_mmuRsp_isIoAccess || stageB_isExternalLsrc) || stageB_isExternalAmo);
  assign io_cpu_writeBack_keepMemRspData = 1'b0;
  always @ (*) begin
    if(stageB_bypassCache)begin
      io_cpu_writeBack_data = stageB_ioMemRspMuxed;
    end else begin
      io_cpu_writeBack_data = stageB_dataMux;
    end
    if((stageB_request_isLrsc && stageB_request_wr))begin
      io_cpu_writeBack_data = {31'd0, _zz_50};
    end
  end

  always @ (*) begin
    _zz_14[0] = stageB_tagsReadRsp_0_error;
    _zz_14[1] = stageB_tagsReadRsp_1_error;
  end

  always @ (*) begin
    loader_counter_willIncrement = 1'b0;
    if(_zz_31)begin
      loader_counter_willIncrement = 1'b1;
    end
  end

  assign loader_counter_willClear = 1'b0;
  assign loader_counter_willOverflowIfInc = (loader_counter_value == 4'b1111);
  assign loader_counter_willOverflow = (loader_counter_willOverflowIfInc && loader_counter_willIncrement);
  always @ (*) begin
    loader_counter_valueNext = (loader_counter_value + _zz_52);
    if(loader_counter_willClear)begin
      loader_counter_valueNext = 4'b0000;
    end
  end

  assign loader_kill = 1'b0;
  assign loader_done = loader_counter_willOverflow;
  assign _zz_15 = (_zz_4 && 1'b1);
  assign _zz_17 = {tagsWriteCmd_payload_data_address,{tagsWriteCmd_payload_data_error,tagsWriteCmd_payload_data_valid}};
  assign _zz_16 = 1'b1;
  assign _zz_18 = (_zz_3 && 1'b1);
  assign _zz_19 = ((dataReadCmd_valid && (! io_cpu_memory_isStuck)) && 1'b1);
  assign _zz_20 = (_zz_2 && 1'b1);
  assign _zz_22 = {tagsWriteCmd_payload_data_address,{tagsWriteCmd_payload_data_error,tagsWriteCmd_payload_data_valid}};
  assign _zz_21 = 1'b1;
  assign _zz_23 = (_zz_1 && 1'b1);
  assign _zz_24 = ((dataReadCmd_valid && (! io_cpu_memory_isStuck)) && 1'b1);
  always @ (posedge clk) begin
    tagsWriteLastCmd_valid <= tagsWriteCmd_valid;
    tagsWriteLastCmd_payload_way <= tagsWriteCmd_payload_way;
    tagsWriteLastCmd_payload_address <= tagsWriteCmd_payload_address;
    tagsWriteLastCmd_payload_data_valid <= tagsWriteCmd_payload_data_valid;
    tagsWriteLastCmd_payload_data_error <= tagsWriteCmd_payload_data_error;
    tagsWriteLastCmd_payload_data_address <= tagsWriteCmd_payload_data_address;
    if((io_cpu_execute_isValid && (! io_cpu_memory_isStuck)))begin
      tagsReadCmd_payload_regNextWhen <= tagsReadCmd_payload;
    end
    if((io_cpu_execute_isValid && (! io_cpu_memory_isStuck)))begin
      tagsReadCmd_payload_regNextWhen_1 <= tagsReadCmd_payload;
    end
    if((! io_cpu_memory_isStuck))begin
      stageA_request_wr <= io_cpu_execute_args_wr;
      stageA_request_data <= io_cpu_execute_args_data;
      stageA_request_size <= io_cpu_execute_args_size;
      stageA_request_isLrsc <= io_cpu_execute_args_isLrsc;
      stageA_request_isAmo <= io_cpu_execute_args_isAmo;
      stageA_request_amoCtrl_swap <= io_cpu_execute_args_amoCtrl_swap;
      stageA_request_amoCtrl_alu <= io_cpu_execute_args_amoCtrl_alu;
      stageA_request_totalyConsistent <= io_cpu_execute_args_totalyConsistent;
    end
    if((! io_cpu_memory_isStuck))begin
      stageA_mask <= stage0_mask;
    end
    if((! io_cpu_memory_isStuck))begin
      stageA_wayInvalidate <= stage0_wayInvalidate;
    end
    if((! io_cpu_memory_isStuck))begin
      stage0_dataColisions_regNextWhen <= stage0_dataColisions;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_request_wr <= stageA_request_wr;
      stageB_request_data <= stageA_request_data;
      stageB_request_size <= stageA_request_size;
      stageB_request_isLrsc <= stageA_request_isLrsc;
      stageB_request_isAmo <= stageA_request_isAmo;
      stageB_request_amoCtrl_swap <= stageA_request_amoCtrl_swap;
      stageB_request_amoCtrl_alu <= stageA_request_amoCtrl_alu;
      stageB_request_totalyConsistent <= stageA_request_totalyConsistent;
    end
    if(((! io_cpu_writeBack_isStuck) && (! stageB_mmuRspFreeze)))begin
      stageB_mmuRsp_physicalAddress <= io_cpu_memory_mmuRsp_physicalAddress;
      stageB_mmuRsp_isIoAccess <= io_cpu_memory_mmuRsp_isIoAccess;
      stageB_mmuRsp_allowRead <= io_cpu_memory_mmuRsp_allowRead;
      stageB_mmuRsp_allowWrite <= io_cpu_memory_mmuRsp_allowWrite;
      stageB_mmuRsp_allowExecute <= io_cpu_memory_mmuRsp_allowExecute;
      stageB_mmuRsp_exception <= io_cpu_memory_mmuRsp_exception;
      stageB_mmuRsp_refilling <= io_cpu_memory_mmuRsp_refilling;
      stageB_mmuRsp_bypassTranslation <= io_cpu_memory_mmuRsp_bypassTranslation;
      stageB_mmuRsp_ways_0_sel <= io_cpu_memory_mmuRsp_ways_0_sel;
      stageB_mmuRsp_ways_0_physical <= io_cpu_memory_mmuRsp_ways_0_physical;
      stageB_mmuRsp_ways_1_sel <= io_cpu_memory_mmuRsp_ways_1_sel;
      stageB_mmuRsp_ways_1_physical <= io_cpu_memory_mmuRsp_ways_1_physical;
      stageB_mmuRsp_ways_2_sel <= io_cpu_memory_mmuRsp_ways_2_sel;
      stageB_mmuRsp_ways_2_physical <= io_cpu_memory_mmuRsp_ways_2_physical;
      stageB_mmuRsp_ways_3_sel <= io_cpu_memory_mmuRsp_ways_3_sel;
      stageB_mmuRsp_ways_3_physical <= io_cpu_memory_mmuRsp_ways_3_physical;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_tagsReadRsp_0_valid <= ways_0_tagsReadRsp_valid;
      stageB_tagsReadRsp_0_error <= ways_0_tagsReadRsp_error;
      stageB_tagsReadRsp_0_address <= ways_0_tagsReadRsp_address;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_tagsReadRsp_1_valid <= ways_1_tagsReadRsp_valid;
      stageB_tagsReadRsp_1_error <= ways_1_tagsReadRsp_error;
      stageB_tagsReadRsp_1_address <= ways_1_tagsReadRsp_address;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_dataReadRsp_0 <= ways_0_dataReadRsp;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_dataReadRsp_1 <= ways_1_dataReadRsp;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_wayInvalidate <= stageA_wayInvalidate;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_dataColisions <= stageA_dataColisions;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_waysHitsBeforeInvalidate <= stageA_wayHits;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_mask <= stageA_mask;
    end
    if(stageB_flusher_valid)begin
      if(_zz_34)begin
        if(_zz_35)begin
          stageB_mmuRsp_physicalAddress[10 : 6] <= (stageB_mmuRsp_physicalAddress[10 : 6] + 5'h01);
        end
      end
    end
    if(stageB_flusher_start)begin
      stageB_mmuRsp_physicalAddress[10 : 6] <= 5'h0;
    end
    stageB_amo_internal_resultRegValid <= io_cpu_writeBack_isStuck;
    stageB_amo_resultReg <= stageB_amo_result;
    `ifndef SYNTHESIS
      `ifdef FORMAL
        assert((! ((io_cpu_writeBack_isValid && (! io_cpu_writeBack_haltIt)) && io_cpu_writeBack_isStuck)))
      `else
        if(!(! ((io_cpu_writeBack_isValid && (! io_cpu_writeBack_haltIt)) && io_cpu_writeBack_isStuck))) begin
          $display("FAILURE writeBack stuck by another plugin is not allowed");
          $finish;
        end
      `endif
    `endif
  end

  always @ (posedge clk or negedge resetn) begin
    if (!resetn) begin
      memCmdSent <= 1'b0;
      stageB_flusher_valid <= 1'b0;
      stageB_flusher_start <= 1'b1;
      stageB_lrSc_reserved <= 1'b0;
      loader_valid <= 1'b0;
      loader_counter_value <= 4'b0000;
      loader_waysAllocator <= 2'b01;
      loader_error <= 1'b0;
      loader_killReg <= 1'b0;
    end else begin
      if(io_mem_cmd_ready)begin
        memCmdSent <= 1'b1;
      end
      if((! io_cpu_writeBack_isStuck))begin
        memCmdSent <= 1'b0;
      end
      if(stageB_flusher_valid)begin
        if(_zz_34)begin
          if(! _zz_35) begin
            stageB_flusher_valid <= 1'b0;
          end
        end
      end
      stageB_flusher_start <= ((((((! stageB_flusher_start) && io_cpu_flush_valid) && (! io_cpu_execute_isValid)) && (! io_cpu_memory_isValid)) && (! io_cpu_writeBack_isValid)) && (! io_cpu_redo));
      if(stageB_flusher_start)begin
        stageB_flusher_valid <= 1'b1;
      end
      if(((io_cpu_writeBack_isValid && (! io_cpu_writeBack_isStuck)) && stageB_request_isLrsc))begin
        stageB_lrSc_reserved <= (! stageB_request_wr);
      end
      if(_zz_26)begin
        stageB_lrSc_reserved <= stageB_lrSc_reserved;
      end
      if(stageB_loaderValid)begin
        loader_valid <= 1'b1;
      end
      loader_counter_value <= loader_counter_valueNext;
      if(loader_kill)begin
        loader_killReg <= 1'b1;
      end
      if(_zz_31)begin
        loader_error <= (loader_error || io_mem_rsp_payload_error);
      end
      if(loader_done)begin
        loader_valid <= 1'b0;
        loader_error <= 1'b0;
        loader_killReg <= 1'b0;
      end
      if((! loader_valid))begin
        loader_waysAllocator <= _zz_53[1:0];
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
  input               io_cpu_fetch_mmuRsp_ways_0_sel,
  input      [31:0]   io_cpu_fetch_mmuRsp_ways_0_physical,
  input               io_cpu_fetch_mmuRsp_ways_1_sel,
  input      [31:0]   io_cpu_fetch_mmuRsp_ways_1_physical,
  input               io_cpu_fetch_mmuRsp_ways_2_sel,
  input      [31:0]   io_cpu_fetch_mmuRsp_ways_2_physical,
  input               io_cpu_fetch_mmuRsp_ways_3_sel,
  input      [31:0]   io_cpu_fetch_mmuRsp_ways_3_physical,
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
  reg                 decodeStage_mmuRsp_ways_0_sel;
  reg        [31:0]   decodeStage_mmuRsp_ways_0_physical;
  reg                 decodeStage_mmuRsp_ways_1_sel;
  reg        [31:0]   decodeStage_mmuRsp_ways_1_physical;
  reg                 decodeStage_mmuRsp_ways_2_sel;
  reg        [31:0]   decodeStage_mmuRsp_ways_2_physical;
  reg                 decodeStage_mmuRsp_ways_3_sel;
  reg        [31:0]   decodeStage_mmuRsp_ways_3_physical;
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
      decodeStage_mmuRsp_ways_0_sel <= io_cpu_fetch_mmuRsp_ways_0_sel;
      decodeStage_mmuRsp_ways_0_physical <= io_cpu_fetch_mmuRsp_ways_0_physical;
      decodeStage_mmuRsp_ways_1_sel <= io_cpu_fetch_mmuRsp_ways_1_sel;
      decodeStage_mmuRsp_ways_1_physical <= io_cpu_fetch_mmuRsp_ways_1_physical;
      decodeStage_mmuRsp_ways_2_sel <= io_cpu_fetch_mmuRsp_ways_2_sel;
      decodeStage_mmuRsp_ways_2_physical <= io_cpu_fetch_mmuRsp_ways_2_physical;
      decodeStage_mmuRsp_ways_3_sel <= io_cpu_fetch_mmuRsp_ways_3_sel;
      decodeStage_mmuRsp_ways_3_physical <= io_cpu_fetch_mmuRsp_ways_3_physical;
    end
    if((! io_cpu_decode_isStuck))begin
      decodeStage_hit_valid <= fetchStage_hit_valid;
    end
    if((! io_cpu_decode_isStuck))begin
      decodeStage_hit_error <= fetchStage_hit_error;
    end
  end


endmodule
