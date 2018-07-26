##
## Auto Generated makefile by CDK
## Do not modify this file, and any manual changes will be erased!!!   
##
## BuildSet
ProjectName            :=ch2201-BareMetal
ConfigurationName      :=BuildSet
WorkspacePath          :=C:/Users/chenlf/AppData/Roaming/cdk/default_workspace17/
ProjectPath            :=C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/
IntermediateDirectory  :=Obj
OutDir                 :=$(IntermediateDirectory)
User                   :=chenlf
Date                   :=26/07/2018
CDKPath                :=D:/C-Sky/C-Sky Development Kit
LinkerName             :=csky-elfabiv2-gcc
LinkerNameoption       :=
SIZE                   :=csky-elfabiv2-size
READELF                :=csky-elfabiv2-readelf
CHECKSUM               :=crc32
SharedObjectLinkerName :=
ObjectSuffix           :=.o
DependSuffix           :=.d
PreprocessSuffix       :=.i
DisassemSuffix         :=.asm
IHexSuffix             :=.ihex
BinSuffix              :=.bin
ExeSuffix              :=.elf
LibSuffix              :=.a
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
ElfInfoSwitch          :=-hlS
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
UnPreprocessorSwitch   :=-U
SourceSwitch           :=-c 
ObjdumpSwitch          :=-S
ObjcopySwitch          :=-O ihex
ObjcopyBinSwitch       :=-O binary
OutputFile             :=$(ProjectName)
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="ch2201-BareMetal.txt"
MakeDirCommand         :=mkdir
LinkOptions            :=-mcpu=ck802  -nostartfiles -Wl,--gc-sections -Wl,-zmax-page-size=1024 -T"$(ProjectPath)/board/cb2201/gcc_csky.ld"
IncludeCPath           :=$(IncludeSwitch)"$(ProjectPath)" $(IncludeSwitch)"$(ProjectPath)/csi_core/include" $(IncludeSwitch)"$(ProjectPath)/csi_driver/include" $(IncludeSwitch)"$(ProjectPath)/libs/include" $(IncludeSwitch)"$(ProjectPath)/csi_driver/ch2201/include" $(IncludeSwitch)"$(ProjectPath)/board/cb2201/include" $(IncludeSwitch)"$(ProjectPath)/configs" 
IncludeAPath           :=$(IncludeSwitch)"$(ProjectPath)" -Wa,$(IncludeSwitch)"$(ProjectPath)" $(IncludeSwitch)"$(ProjectPath)/configs" -Wa,$(IncludeSwitch)"$(ProjectPath)/configs" 
Libs                   :=$(LibrarySwitch)m 
ArLibs                 := "m" 
LibPath                :=

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       :=csky-elfabiv2-ar rcu
CXX      :=csky-elfabiv2-g++
CC       :=csky-elfabiv2-gcc
AS       :=csky-elfabiv2-gcc
OBJDUMP  :=csky-elfabiv2-objdump
OBJCOPY  :=csky-elfabiv2-objcopy
CXXFLAGS :=-mcpu=ck802    -Os  -g3  -Wall -ffunction-sections -fdata-sections 
CFLAGS   :=-mcpu=ck802    -Os  -g3  -Wall -ffunction-sections -fdata-sections 
ASFLAGS  :=-mcpu=ck802    -Wa,--gdwarf2    


Objects0=$(IntermediateDirectory)/main$(ObjectSuffix) $(IntermediateDirectory)/flashtester$(ObjectSuffix) $(IntermediateDirectory)/memtester$(ObjectSuffix) $(IntermediateDirectory)/tests$(ObjectSuffix) $(IntermediateDirectory)/cb2201_board_init$(ObjectSuffix) $(IntermediateDirectory)/ch2201_vectors$(ObjectSuffix) $(IntermediateDirectory)/ch2201_power_manager$(ObjectSuffix) $(IntermediateDirectory)/ch2201_lib$(ObjectSuffix) $(IntermediateDirectory)/ch2201_dw_usart$(ObjectSuffix) $(IntermediateDirectory)/ch2201_isr$(ObjectSuffix) \
	$(IntermediateDirectory)/ch2201_devices$(ObjectSuffix) $(IntermediateDirectory)/ch2201_startup$(ObjectSuffix) $(IntermediateDirectory)/ch2201_pinmux$(ObjectSuffix) $(IntermediateDirectory)/ch2201_trap_c$(ObjectSuffix) $(IntermediateDirectory)/ch2201_novic_irq_tbl$(ObjectSuffix) $(IntermediateDirectory)/ch2201_sys_freq$(ObjectSuffix) $(IntermediateDirectory)/ch2201_lpm_arch_reg_save$(ObjectSuffix) $(IntermediateDirectory)/ch2201_system$(ObjectSuffix) $(IntermediateDirectory)/ch2201_ck_eflash$(ObjectSuffix) $(IntermediateDirectory)/libc_minilibc_port$(ObjectSuffix) \
	$(IntermediateDirectory)/libc_malloc$(ObjectSuffix) $(IntermediateDirectory)/libc_lib_printf$(ObjectSuffix) $(IntermediateDirectory)/mm_mm_addfreechunk$(ObjectSuffix) $(IntermediateDirectory)/mm_lib_mallinfo$(ObjectSuffix) $(IntermediateDirectory)/mm_dq_addlast$(ObjectSuffix) $(IntermediateDirectory)/mm_mm_mallinfo$(ObjectSuffix) $(IntermediateDirectory)/mm_dq_rem$(ObjectSuffix) $(IntermediateDirectory)/mm_mm_free$(ObjectSuffix) $(IntermediateDirectory)/mm_mm_malloc$(ObjectSuffix) $(IntermediateDirectory)/mm_mm_leak$(ObjectSuffix) \
	$(IntermediateDirectory)/mm_mm_size2ndx$(ObjectSuffix) $(IntermediateDirectory)/mm_mm_initialize$(ObjectSuffix) $(IntermediateDirectory)/__rt_entry$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PostBuild MakeIntermediateDirs
all: $(IntermediateDirectory)/$(OutputFile)

$(IntermediateDirectory)/$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	@echo linking...
	@$(LinkerName) $(OutputSwitch)"$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix)" $(LinkerNameoption) @$(ObjectsFileList)  $(LibPath) $(Libs)  -Wl,--whole-archive  -Wl,--no-whole-archive $(LinkOptions)
	@echo size of target:
	@$(SIZE) "$(ProjectPath)$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix)" 
	@echo -n "checksum value of target:  "
	@$(CHECKSUM) "$(ProjectPath)/$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix)" 
	
PostBuild:
	@echo Executing Post Build commands ...
	@"C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal//utilities/elf2hex/hex/aft_build.sh"
	@echo Done

MakeIntermediateDirs:
	@test -d Obj || $(MakeDirCommand) Obj

	@test -d Lst || $(MakeDirCommand) Lst

$(IntermediateDirectory)/.d:
	@test -d Obj || $(MakeDirCommand) Obj
	@test -d Lst || $(MakeDirCommand) Lst


PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/main.c  
	@echo compiling main.c...
	@$(CC) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/main.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/main$(ObjectSuffix) -MF$(IntermediateDirectory)/main$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/main.c"

Lst/main$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/main.c
	@echo generating preprocess file of main.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/main$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/main.c"

$(IntermediateDirectory)/flashtester$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/flashtester.c  
	@echo compiling flashtester.c...
	@$(CC) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/flashtester.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/flashtester$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/flashtester$(ObjectSuffix) -MF$(IntermediateDirectory)/flashtester$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/flashtester.c"

Lst/flashtester$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/flashtester.c
	@echo generating preprocess file of flashtester.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/flashtester$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/flashtester.c"

$(IntermediateDirectory)/memtester$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/memtester.c  
	@echo compiling memtester.c...
	@$(CC) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/memtester.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/memtester$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/memtester$(ObjectSuffix) -MF$(IntermediateDirectory)/memtester$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/memtester.c"

Lst/memtester$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/memtester.c
	@echo generating preprocess file of memtester.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/memtester$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/memtester.c"

$(IntermediateDirectory)/tests$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/tests.c  
	@echo compiling tests.c...
	@$(CC) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/tests.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/tests$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/tests$(ObjectSuffix) -MF$(IntermediateDirectory)/tests$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/tests.c"

Lst/tests$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/tests.c
	@echo generating preprocess file of tests.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/tests$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/tests.c"

$(IntermediateDirectory)/cb2201_board_init$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/board/cb2201/board_init.c  
	@echo compiling board_init.c...
	@$(CC) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/board/cb2201/board_init.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/cb2201_board_init$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/cb2201_board_init$(ObjectSuffix) -MF$(IntermediateDirectory)/cb2201_board_init$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/board/cb2201/board_init.c"

Lst/cb2201_board_init$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/board/cb2201/board_init.c
	@echo generating preprocess file of board_init.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/cb2201_board_init$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/board/cb2201/board_init.c"

$(IntermediateDirectory)/ch2201_vectors$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/vectors.S  
	@echo assembling vectors.S...
	@$(AS) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/vectors.S" $(ASFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_vectors$(ObjectSuffix) $(IncludeAPath)
	@$(CC) $(CFLAGS) $(IncludeAPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_vectors$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_vectors$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/vectors.S"

Lst/ch2201_vectors$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/vectors.S
	@echo generating preprocess file of vectors.S...
	@$(CC) $(CFLAGS)$(IncludeAPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_vectors$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/vectors.S"

$(IntermediateDirectory)/ch2201_power_manager$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/power_manager.c  
	@echo compiling power_manager.c...
	@$(CC) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/power_manager.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_power_manager$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_power_manager$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_power_manager$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/power_manager.c"

Lst/ch2201_power_manager$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/power_manager.c
	@echo generating preprocess file of power_manager.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_power_manager$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/power_manager.c"

$(IntermediateDirectory)/ch2201_lib$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/lib.c  
	@echo compiling lib.c...
	@$(CC) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/lib.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_lib$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_lib$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_lib$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/lib.c"

Lst/ch2201_lib$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/lib.c
	@echo generating preprocess file of lib.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_lib$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/lib.c"

$(IntermediateDirectory)/ch2201_dw_usart$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/dw_usart.c  
	@echo compiling dw_usart.c...
	@$(CC) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/dw_usart.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_dw_usart$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_dw_usart$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_dw_usart$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/dw_usart.c"

Lst/ch2201_dw_usart$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/dw_usart.c
	@echo generating preprocess file of dw_usart.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_dw_usart$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/dw_usart.c"

$(IntermediateDirectory)/ch2201_isr$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/isr.c  
	@echo compiling isr.c...
	@$(CC) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/isr.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_isr$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_isr$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_isr$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/isr.c"

Lst/ch2201_isr$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/isr.c
	@echo generating preprocess file of isr.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_isr$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/isr.c"

$(IntermediateDirectory)/ch2201_devices$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/devices.c  
	@echo compiling devices.c...
	@$(CC) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/devices.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_devices$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_devices$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_devices$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/devices.c"

Lst/ch2201_devices$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/devices.c
	@echo generating preprocess file of devices.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_devices$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/devices.c"

$(IntermediateDirectory)/ch2201_startup$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/startup.S  
	@echo assembling startup.S...
	@$(AS) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/startup.S" $(ASFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_startup$(ObjectSuffix) $(IncludeAPath)
	@$(CC) $(CFLAGS) $(IncludeAPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_startup$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_startup$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/startup.S"

Lst/ch2201_startup$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/startup.S
	@echo generating preprocess file of startup.S...
	@$(CC) $(CFLAGS)$(IncludeAPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_startup$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/startup.S"

$(IntermediateDirectory)/ch2201_pinmux$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/pinmux.c  
	@echo compiling pinmux.c...
	@$(CC) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/pinmux.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_pinmux$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_pinmux$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_pinmux$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/pinmux.c"

Lst/ch2201_pinmux$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/pinmux.c
	@echo generating preprocess file of pinmux.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_pinmux$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/pinmux.c"

$(IntermediateDirectory)/ch2201_trap_c$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/trap_c.c  
	@echo compiling trap_c.c...
	@$(CC) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/trap_c.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_trap_c$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_trap_c$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_trap_c$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/trap_c.c"

Lst/ch2201_trap_c$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/trap_c.c
	@echo generating preprocess file of trap_c.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_trap_c$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/trap_c.c"

$(IntermediateDirectory)/ch2201_novic_irq_tbl$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/novic_irq_tbl.c  
	@echo compiling novic_irq_tbl.c...
	@$(CC) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/novic_irq_tbl.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_novic_irq_tbl$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_novic_irq_tbl$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_novic_irq_tbl$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/novic_irq_tbl.c"

Lst/ch2201_novic_irq_tbl$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/novic_irq_tbl.c
	@echo generating preprocess file of novic_irq_tbl.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_novic_irq_tbl$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/novic_irq_tbl.c"

$(IntermediateDirectory)/ch2201_sys_freq$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/sys_freq.c  
	@echo compiling sys_freq.c...
	@$(CC) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/sys_freq.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_sys_freq$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_sys_freq$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_sys_freq$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/sys_freq.c"

Lst/ch2201_sys_freq$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/sys_freq.c
	@echo generating preprocess file of sys_freq.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_sys_freq$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/sys_freq.c"

$(IntermediateDirectory)/ch2201_lpm_arch_reg_save$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/lpm_arch_reg_save.S  
	@echo assembling lpm_arch_reg_save.S...
	@$(AS) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/lpm_arch_reg_save.S" $(ASFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_lpm_arch_reg_save$(ObjectSuffix) $(IncludeAPath)
	@$(CC) $(CFLAGS) $(IncludeAPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_lpm_arch_reg_save$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_lpm_arch_reg_save$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/lpm_arch_reg_save.S"

Lst/ch2201_lpm_arch_reg_save$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/lpm_arch_reg_save.S
	@echo generating preprocess file of lpm_arch_reg_save.S...
	@$(CC) $(CFLAGS)$(IncludeAPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_lpm_arch_reg_save$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/lpm_arch_reg_save.S"

$(IntermediateDirectory)/ch2201_system$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/system.c  
	@echo compiling system.c...
	@$(CC) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/system.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_system$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_system$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_system$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/system.c"

Lst/ch2201_system$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/system.c
	@echo generating preprocess file of system.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_system$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/system.c"

$(IntermediateDirectory)/ch2201_ck_eflash$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/ck_eflash.c  
	@echo compiling ck_eflash.c...
	@$(CC) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/ck_eflash.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_ck_eflash$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_ck_eflash$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_ck_eflash$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/ck_eflash.c"

Lst/ch2201_ck_eflash$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/ck_eflash.c
	@echo generating preprocess file of ck_eflash.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_ck_eflash$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/csi_driver/ch2201/ck_eflash.c"

$(IntermediateDirectory)/libc_minilibc_port$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/libc/minilibc_port.c  
	@echo compiling minilibc_port.c...
	@$(CC) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/libc/minilibc_port.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/libc_minilibc_port$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/libc_minilibc_port$(ObjectSuffix) -MF$(IntermediateDirectory)/libc_minilibc_port$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/libc/minilibc_port.c"

Lst/libc_minilibc_port$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/libc/minilibc_port.c
	@echo generating preprocess file of minilibc_port.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/libc_minilibc_port$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/libc/minilibc_port.c"

$(IntermediateDirectory)/libc_malloc$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/libc/malloc.c  
	@echo compiling malloc.c...
	@$(CC) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/libc/malloc.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/libc_malloc$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/libc_malloc$(ObjectSuffix) -MF$(IntermediateDirectory)/libc_malloc$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/libc/malloc.c"

Lst/libc_malloc$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/libc/malloc.c
	@echo generating preprocess file of malloc.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/libc_malloc$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/libc/malloc.c"

$(IntermediateDirectory)/libc_lib_printf$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/libc/lib_printf.c  
	@echo compiling lib_printf.c...
	@$(CC) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/libc/lib_printf.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/libc_lib_printf$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/libc_lib_printf$(ObjectSuffix) -MF$(IntermediateDirectory)/libc_lib_printf$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/libc/lib_printf.c"

Lst/libc_lib_printf$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/libc/lib_printf.c
	@echo generating preprocess file of lib_printf.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/libc_lib_printf$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/libc/lib_printf.c"

$(IntermediateDirectory)/mm_mm_addfreechunk$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_addfreechunk.c  
	@echo compiling mm_addfreechunk.c...
	@$(CC) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_addfreechunk.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/mm_mm_addfreechunk$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/mm_mm_addfreechunk$(ObjectSuffix) -MF$(IntermediateDirectory)/mm_mm_addfreechunk$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_addfreechunk.c"

Lst/mm_mm_addfreechunk$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_addfreechunk.c
	@echo generating preprocess file of mm_addfreechunk.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/mm_mm_addfreechunk$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_addfreechunk.c"

$(IntermediateDirectory)/mm_lib_mallinfo$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/lib_mallinfo.c  
	@echo compiling lib_mallinfo.c...
	@$(CC) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/lib_mallinfo.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/mm_lib_mallinfo$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/mm_lib_mallinfo$(ObjectSuffix) -MF$(IntermediateDirectory)/mm_lib_mallinfo$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/lib_mallinfo.c"

Lst/mm_lib_mallinfo$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/lib_mallinfo.c
	@echo generating preprocess file of lib_mallinfo.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/mm_lib_mallinfo$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/lib_mallinfo.c"

$(IntermediateDirectory)/mm_dq_addlast$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/dq_addlast.c  
	@echo compiling dq_addlast.c...
	@$(CC) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/dq_addlast.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/mm_dq_addlast$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/mm_dq_addlast$(ObjectSuffix) -MF$(IntermediateDirectory)/mm_dq_addlast$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/dq_addlast.c"

Lst/mm_dq_addlast$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/dq_addlast.c
	@echo generating preprocess file of dq_addlast.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/mm_dq_addlast$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/dq_addlast.c"

$(IntermediateDirectory)/mm_mm_mallinfo$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_mallinfo.c  
	@echo compiling mm_mallinfo.c...
	@$(CC) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_mallinfo.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/mm_mm_mallinfo$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/mm_mm_mallinfo$(ObjectSuffix) -MF$(IntermediateDirectory)/mm_mm_mallinfo$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_mallinfo.c"

Lst/mm_mm_mallinfo$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_mallinfo.c
	@echo generating preprocess file of mm_mallinfo.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/mm_mm_mallinfo$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_mallinfo.c"

$(IntermediateDirectory)/mm_dq_rem$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/dq_rem.c  
	@echo compiling dq_rem.c...
	@$(CC) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/dq_rem.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/mm_dq_rem$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/mm_dq_rem$(ObjectSuffix) -MF$(IntermediateDirectory)/mm_dq_rem$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/dq_rem.c"

Lst/mm_dq_rem$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/dq_rem.c
	@echo generating preprocess file of dq_rem.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/mm_dq_rem$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/dq_rem.c"

$(IntermediateDirectory)/mm_mm_free$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_free.c  
	@echo compiling mm_free.c...
	@$(CC) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_free.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/mm_mm_free$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/mm_mm_free$(ObjectSuffix) -MF$(IntermediateDirectory)/mm_mm_free$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_free.c"

Lst/mm_mm_free$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_free.c
	@echo generating preprocess file of mm_free.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/mm_mm_free$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_free.c"

$(IntermediateDirectory)/mm_mm_malloc$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_malloc.c  
	@echo compiling mm_malloc.c...
	@$(CC) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_malloc.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/mm_mm_malloc$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/mm_mm_malloc$(ObjectSuffix) -MF$(IntermediateDirectory)/mm_mm_malloc$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_malloc.c"

Lst/mm_mm_malloc$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_malloc.c
	@echo generating preprocess file of mm_malloc.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/mm_mm_malloc$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_malloc.c"

$(IntermediateDirectory)/mm_mm_leak$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_leak.c  
	@echo compiling mm_leak.c...
	@$(CC) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_leak.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/mm_mm_leak$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/mm_mm_leak$(ObjectSuffix) -MF$(IntermediateDirectory)/mm_mm_leak$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_leak.c"

Lst/mm_mm_leak$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_leak.c
	@echo generating preprocess file of mm_leak.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/mm_mm_leak$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_leak.c"

$(IntermediateDirectory)/mm_mm_size2ndx$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_size2ndx.c  
	@echo compiling mm_size2ndx.c...
	@$(CC) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_size2ndx.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/mm_mm_size2ndx$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/mm_mm_size2ndx$(ObjectSuffix) -MF$(IntermediateDirectory)/mm_mm_size2ndx$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_size2ndx.c"

Lst/mm_mm_size2ndx$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_size2ndx.c
	@echo generating preprocess file of mm_size2ndx.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/mm_mm_size2ndx$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_size2ndx.c"

$(IntermediateDirectory)/mm_mm_initialize$(ObjectSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_initialize.c  
	@echo compiling mm_initialize.c...
	@$(CC) $(SourceSwitch) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_initialize.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/mm_mm_initialize$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/mm_mm_initialize$(ObjectSuffix) -MF$(IntermediateDirectory)/mm_mm_initialize$(DependSuffix) -MM "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_initialize.c"

Lst/mm_mm_initialize$(PreprocessSuffix): C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_initialize.c
	@echo generating preprocess file of mm_initialize.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/mm_mm_initialize$(PreprocessSuffix) "C:/Users/chenlf/Desktop/memtest/CB2201-BareMetal/libs/mm/mm_initialize.c"


$(IntermediateDirectory)/__rt_entry$(ObjectSuffix): $(IntermediateDirectory)/__rt_entry$(DependSuffix)
	@$(AS) $(SourceSwitch) "$(ProjectPath)/$(IntermediateDirectory)/__rt_entry.S" $(ASFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/__rt_entry$(ObjectSuffix) $(IncludeAPath)
	@rm -f $(IntermediateDirectory)/__rt_entry.S
$(IntermediateDirectory)/__rt_entry$(DependSuffix):
	@$(CC) $(CFLAGS) $(IncludeAPath) -MG -MP -MT$(IntermediateDirectory)/__rt_entry$(ObjectSuffix) -MF$(IntermediateDirectory)/__rt_entry$(DependSuffix) -MM "$(ProjectPath)/$(IntermediateDirectory)/__rt_entry.S"

-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	@echo Cleaning target...
	@rm -rf $(IntermediateDirectory)/ $(ObjectsFileList) ch2201-BareMetal.mk Lst/

clean_internal:
	@rm -rf $(IntermediateDirectory)/*.o $(IntermediateDirectory)/.d $(IntermediateDirectory)/*.d $(IntermediateDirectory)/*.a $(IntermediateDirectory)/*.elf $(IntermediateDirectory)/*.ihex Lst/

