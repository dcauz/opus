
ELF := ../bin/elf

INST_TESTS := \
 \
test.adc \
test.adcx \
test.add \
test.adox \
test.and \
test.bsf \
test.bsr \
test.bswap \
test.bt \
test.btc \
 \
test.btr \
test.bts \
test.call \
test.cbw \
test.cdq \
test.clac \
test.clc \
test.cld \
test.cli \
test.clts \
 \
test.cmc \
test.cmovCC \
test.cmp \
test.cmps \
test.cmpxchg \
test.cpuid \
test.dec \
test.div \
test.enter \
test.hlt \
 \
test.idiv \
test.imul \
test.in \
test.inc \
test.ins \
test.int \
test.invd \
test.invlpg \
test.iret \
test.jCC \
 \
test.l_s \
test.lar \
test.lea \
test.leave \
test.lgdt \
test.lldt \
test.lmsw \
test.lods \
test.loop \
test.lsl \
 \
test.ltr \
test.mov \
test.movbe \
test.movs \
test.movsx \
test.movzx \
test.mul \
test.neg \
test.nop \
test.not \
 \
test.or \
test.out \
test.outs \
test.pop \
test.popf \
test.pop.seg \
test.push \
test.pushf \
test.push.seg \
test.rcl \
 \
test.rcr \
test.rdmsr \
test.rdpmc \
test.rdtsc \
test.ret \
test.rol \
test.ror \
test.rsm \
test.sar \
test.sbb \
 \
test.scas \
test.setCC \
test.sgdt \
test.shl \
test.shld \
test.shr \
test.shrd \
test.sldt \
test.smsw \
test.stc \
 \
test.std \
test.sti \
test.stos \
test.str \
test.sub \
test.swapgs \
test.syscall \
test.sysret \
test.test \
test.ud2 \
 \
test.verr \
test.wait \
test.wbinvd \
test.wrmsr \
test.xadd \
test.xchg \
test.xlat \
test.xor

ENC_TESTS	:= test.elfo $(INST_TESTS)
SRC 		:= $(patsubst test.%,asm/%.s,$(ENC))
OBJS		:= $(patsubst asm/%.s,obj/%.o,$(SRC))

#######################################################

all: $(ENC_TESTS)

clean:
	rm -f out core
	rm -f *.e
	rm -rf obj/*.o

.PHONY: all clean $(ENC_TESTS)

#######################################################

$(INST_TESTS):test.%: obj/%.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

%.e: obj/%.o
	objdump -d $< > $@

obj/%.o: asm/%.s | obj
	as $< -o $@

test.elfo: ../obj/elf/elf.o | $(ELF)
	$(ELF) ../obj/elf/elf.o > out;diff out expected/elf.e
	
#######################################################

asm/add.s: asm/adc.s
	sed 's/adc/add/' < $< > $@

asm/and.s: asm/adc.s
	sed 's/adc/add/' < $< > $@

asm/cmp.s: asm/adc.s
	sed 's/adc/cmp/' < $< > $@

asm/mov.s: asm/adc.s
	sed 's/adc/mov/' < $< > $@

asm/or.s: asm/adc.s
	sed 's/adc/or/' < $< > $@

asm/sbb.s: asm/adc.s
	sed 's/adc/sbb/' < $< > $@

asm/sub.s: asm/adc.s
	sed 's/adc/sub/' < $< > $@

asm/test.s: asm/adc.s
	sed 's/adc/test/' < $< > $@

asm/xor.s: asm/adc.s
	sed 's/adc/xor/' < $< > $@


asm/rcl.s: asm/sar.s
	sed 's/sar/rcl/' < $< > $@

asm/rcr.s: asm/sar.s
	sed 's/sar/rcr/' < $< > $@

asm/rol.s: asm/sar.s
	sed 's/sar/rol/' < $< > $@

asm/ror.s: asm/sar.s
	sed 's/sar/ror/' < $< > $@

asm/sal.s: asm/sar.s
	sed 's/sar/sal/' < $< > $@

asm/shl.s: asm/sar.s
	sed 's/sar/shl/' < $< > $@

asm/shr.s: asm/sar.s
	sed 's/sar/shr/' < $< > $@


asm/btc.s: asm/bt.s
	sed 's/bt/btc/' < $< > $@

asm/btr.s: asm/bt.s
	sed 's/bt/btr/' < $< > $@

asm/bts.s: asm/bt.s
	sed 's/bt/bts/' < $< > $@


asm/not.s: asm/neg.s
	sed 's/neg/not/' < $< > $@

asm/inc.s: asm/neg.s
	sed 's/neg/inc/' < $< > $@

asm/dec.s: asm/neg.s
	sed 's/neg/dec/' < $< > $@

#######################################################

obj:
	mkdir $@

