package pyfive

import spinal.core._
import vexriscv.ip.{DataCacheConfig, InstructionCacheConfig}
import vexriscv.{Riscv, VexRiscv, VexRiscvConfig, plugin}
import vexriscv.plugin._

object PyFive extends App{
  def GenerationConfig = SpinalConfig(
    mode = Verilog,
    defaultConfigForClockDomains = ClockDomainConfig(
      resetActiveLevel = LOW,
      resetKind = spinal.core.ASYNC
    )
  ).addStandardMemBlackboxing(blackboxAllWhatsYouCan)

  def linuxConfig = VexRiscvConfig(
    withMemoryStage = true,
    withWriteBackStage = true,
    List(
      new IBusCachedPlugin(
        resetVector = 0,
        compressedGen = false,
        prediction = vexriscv.plugin.NONE,
        injectorStage = false,
        config = InstructionCacheConfig(
          cacheSize = 4096,
          bytePerLine = 64,
          wayCount = 2,
          addressWidth = 32,
          cpuDataWidth = 32,
          memDataWidth = 32,
          catchIllegalAccess = true,
          catchAccessFault = true,
          asyncTagMemory = true,
          twoCycleRam = false,
          twoCycleCache = true
        ),
        memoryTranslatorPortConfig = MmuPortConfig(
          portTlbSize = 4
        )
      ),
      new DBusCachedPlugin(
        dBusCmdMasterPipe = true,
        dBusCmdSlavePipe = true,
        dBusRspSlavePipe = true,
        config = new DataCacheConfig(
          cacheSize         = 4096,
          bytePerLine       = 64,
          wayCount          = 2,
          addressWidth      = 32,
          cpuDataWidth      = 32,
          memDataWidth      = 32,
          catchAccessError  = true,
          catchIllegal      = true,
          catchUnaligned    = true,
          asyncTagMemory = true,
          withLrSc = true,
          withAmo = true
          //          )
        ),
        memoryTranslatorPortConfig = MmuPortConfig(
          portTlbSize = 4
        )
      ),
      new DecoderSimplePlugin(
        catchIllegalInstruction = true
      ),
      new RegFilePlugin(
        regFileReadyKind = plugin.SYNC,
        zeroBoot = false,
        x0Init = true
      ),
      new IntAluPlugin,
      new SrcPlugin(
        separatedAddSub = false
      ),
      new FullBarrelShifterPlugin(earlyInjection = true),
      new HazardSimplePlugin(
        bypassExecute           = true,
        bypassMemory            = true,
        bypassWriteBack         = true,
        bypassWriteBackBuffer   = true,
        pessimisticUseSrc       = false,
        pessimisticWriteRegFile = false,
        pessimisticAddressMatch = false
      ),
      new MulDivIterativePlugin(
        genMul = true,
        genDiv = true,
        mulUnrollFactor = 8,
        divUnrollFactor = 1
      ),
      new CsrPlugin(CsrPluginConfig.openSbi(0,Riscv.misaToInt("imas")).copy(ebreakGen = false, mtvecAccess = CsrAccess.READ_WRITE)), //mtvecAccess read required by freertos

      new BranchPlugin(
        earlyBranch = true,
        catchAddressMisaligned = true,
        fenceiGenAsAJump = false
      ),
      new MmuPlugin(
        ioRange = (x => x(31))
      ),
      new YamlPlugin("cpu0.yaml")
    )
  )

  def baremetalConfig(withInstructionCache : Boolean) = VexRiscvConfig(
    withMemoryStage = true,
    withWriteBackStage = false,
    List(
      withInstructionCache match {
        case false => new IBusSimplePlugin(
          resetVector = 0x80000000l,
          cmdForkOnSecondStage = false,
          cmdForkPersistence = false,
          prediction = NONE,
          catchAccessFault = true,
          compressedGen = false,
          injectorStage = true
        )
        case true => new IBusCachedPlugin(
          resetVector = 0,
          compressedGen = false,
          prediction = vexriscv.plugin.NONE,
          injectorStage = false,
          config = InstructionCacheConfig(
            cacheSize = 4096,
            bytePerLine = 64,
            wayCount = 2,
            addressWidth = 32,
            cpuDataWidth = 32,
            memDataWidth = 32,
            catchIllegalAccess = true,
            catchAccessFault = true,
            asyncTagMemory = true,
            twoCycleRam = false,
            twoCycleCache = true
          )
        )
      },
      new DBusSimplePlugin(
        catchAddressMisaligned = true,
        catchAccessFault = true
      ),

      new DecoderSimplePlugin(
        catchIllegalInstruction = true
      ),
      new RegFilePlugin(
        regFileReadyKind = plugin.SYNC,
        zeroBoot = false,
        x0Init = true
      ),
      new IntAluPlugin,
      new SrcPlugin(
        separatedAddSub = false
      ),
      new FullBarrelShifterPlugin(earlyInjection = true),
      new HazardSimplePlugin(
        bypassExecute           = true,
        bypassMemory            = true,
        bypassWriteBack         = true,
        bypassWriteBackBuffer   = true,
        pessimisticUseSrc       = false,
        pessimisticWriteRegFile = false,
        pessimisticAddressMatch = false
      ),
      new MulDivIterativePlugin(
        genMul = true,
        genDiv = true,
        mulUnrollFactor = 4,
        divUnrollFactor = 1
      ),
      new CsrPlugin(CsrPluginConfig.all(mtvecInit=null)),
      new BranchPlugin(
        earlyBranch = true,
        catchAddressMisaligned = true,
        fenceiGenAsAJump = false
      ),
      new YamlPlugin("cpu0.yaml")
    )
  )

  GenerationConfig.generate(new VexRiscv(linuxConfig).setDefinitionName("VexRiscvMsuI4D4"))
  GenerationConfig.generate(new VexRiscv(baremetalConfig(withInstructionCache = false)).setDefinitionName("VexRiscvBm"))
  GenerationConfig.generate(new VexRiscv(baremetalConfig(withInstructionCache = true)).setDefinitionName("VexRiscvBmI4"))
}
