
ELF := ../bin/elf

ENC_TESTS := \
test.elfo \
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
test.hlt \
test.ins \
test.int \
test.invd \
test.mov \
test.or \
test.pop \
test.push \
test.rcl \
 \
test.rcr \
test.rol \
test.ror \
test.sar \
test.sbb \
test.shl \
test.shld \
test.shr \
test.shrd \
test.stc \
 \
test.sub \
test.sysret \
test.test \
test.wait \
test.xor

SRC := $(patsubst test.%,asm/%.s,$(ENC))

OBJS:= $(patsubst asm/%.s,obj/%.o,$(SRC))

#######################################################

all: $(ENC_TESTS)

clean:
	rm -f out core
	rm -f *.e
	rm -rf obj/*.o

.PHONY: all clean $(ENC_TESTS)

#######################################################

test.adc: obj/adc.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.adcx: obj/adcx.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.add : obj/add.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.adox : obj/adox.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.and : obj/and.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.bsf : obj/bsf.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.bt : obj/bt.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.btc : obj/btc.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.btr : obj/btr.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.bts : obj/bts.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.cbw : obj/cbw.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.cdq: obj/cdq.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.clac: obj/clac.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.clc: obj/clc.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.cld: obj/cld.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.cli: obj/cli.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.clts: obj/clts.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.cmc: obj/cmc.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.cmovCC: obj/cmovCC.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.cmp: obj/cmp.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.cpuid: obj/cpuid.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.hlt: obj/hlt.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.ins: obj/ins.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.int: obj/int.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.invd: obj/invd.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.mov: obj/mov.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.or: obj/or.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.pop: obj/pop.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.push: obj/push.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.rcl: obj/rcl.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.rcr: obj/rcr.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.rol: obj/rol.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.ror: obj/ror.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.sar: obj/sar.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.sbb: obj/sbb.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.shl: obj/shl.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.shld: obj/shld.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.shr: obj/shr.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.shrd: obj/shrd.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.stc: obj/stc.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.sub: obj/sub.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.sysret: obj/sysret.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.test: obj/test.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.wait: obj/wait.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.xor: obj/xor.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)


$(ENC_TEST): test.%: obj/%.o | $(ELF)
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
	sed 's/adc/and/' < $< > $@

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

