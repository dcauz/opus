
ELF := ../bin/elf

INST_TESTS := \
 \
test.adc \
test.adcx \
test.add \
test.adox \
test.and \
test.bsf \
test.bt \
test.btc \
test.btr \
test.bts \
 \
test.cbw \
test.cdq \
test.clac \
test.clc \
test.cld \
test.cli \
test.clts \
test.cmc \
test.cmovCC \
test.cmp \
 \
test.cpuid \
test.div \
test.hlt \
test.in \
test.ins \
test.int \
test.invd \
test.iret \
test.leave \
test.mov \
 \
test.mul \
test.nop \
test.or \
test.pop \
test.push \
test.rcl \
test.rcr \
test.ret \
test.rol \
test.ror \
 \
test.sar \
test.sbb \
test.shl \
test.shld \
test.shr \
test.shrd \
test.stc \
test.std \
test.sti \
test.sub \
 \
test.sysret \
test.test \
test.wait \
test.xadd \
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

#######################################################

obj:
	mkdir $@

