
ELF := ../bin/elf

ENC_TESTS := \
test.elfo \
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
test.cbw \
test.cdq \
test.clac \
test.clc \
test.cld \
test.cli \
test.cmc \
test.cmovCC \
test.cmp \
test.cpuid \
test.hlt \
test.int \
test.mov \
test.or \
test.pop \
test.push \
test.rcl \
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
test.sub \
test.test \
test.wait \
test.xor

SRC := \
asm/adc.s \
asm/adcx.s \
asm/add.s \
asm/adox.s \
asm/and.s \
asm/bsf.s \
asm/bt.s \
asm/btc.s \
asm/btr.s \
asm/bts.s \
asm/cbw.s \
asm/cdq.s \
asm/clc.s \
asm/clac.s \
asm/cld.s \
asm/cli.s \
asm/cmc.s \
asm/cmovCC.s \
asm/cmp.s \
asm/cpuid.s \
asm/hlt.s \
asm/int.s \
asm/mov.s \
asm/or.s \
asm/pop.s \
asm/push.s \
asm/rcl.s \
asm/rcr.s \
asm/rol.s \
asm/ror.s \
asm/sal.s \
asm/sar.s \
asm/sbb.s \
asm/shl.s \
asm/shld.s \
asm/shr.s \
asm/shrd.s \
asm/stc.s \
asm/sub.s \
asm/test.s \
asm/wait.s \
asm/xor.s 

#######################################################

test.elf: $(ENC_TESTS)

clean:
	rm -f out core
	rm -rf obj

#######################################################

test.adc: obj/adc.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)
	
test.adcx: obj/adcx.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)
	
test.add: obj/add.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)
	
test.adox: obj/adox.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)
	
test.and: obj/and.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.bsf: obj/bsf.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.bt: obj/bt.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.btc: obj/btc.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.btr: obj/btr.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.bts: obj/bts.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.cbw: obj/cbw.o | $(ELF)
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

test.int: obj/int.o | $(ELF)
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

test.shl: obj/shl.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.shld: obj/shld.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.shr: obj/shr.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.shrd: obj/shrd.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.sar: obj/sar.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.sbb: obj/sbb.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.stc: obj/stc.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.sub: obj/sub.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.test: obj/test.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.wait: obj/wait.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

test.xor: obj/xor.o | $(ELF)
	$(ELF)  $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)
	

test.elfo: ../obj/elf/elf.o | $(ELF)
	$(ELF) ../obj/elf/elf.o > out;diff out expected/elf.e
	
#######################################################

adc.e: obj/adc.o
	objdump -d $< > $@

adcx.e: obj/adcx.o
	objdump -d $< > $@

add.e: obj/add.o
	objdump -d $< > $@

adox.e: obj/adox.o
	objdump -d $< > $@

and.e: obj/and.o
	objdump -d $< > $@

bsf.e: obj/bsf.o
	objdump -d $< > $@

bt.e: obj/bt.o
	objdump -d $< > $@

btc.e: obj/btc.o
	objdump -d $< > $@

btr.e: obj/btr.o
	objdump -d $< > $@

bts.e: obj/bts.o
	objdump -d $< > $@

clac.e: obj/clac.o
	objdump -d $< > $@

cbw.e: obj/cbw.o
	objdump -d $< > $@

cdq.e: obj/cdq.o
	objdump -d $< > $@

clc.e: obj/clc.o
	objdump -d $< > $@

cld.e: obj/cld.o
	objdump -d $< > $@

cli.e: obj/cli.o
	objdump -d $< > $@

cmc.e: obj/cmc.o
	objdump -d $< > $@

cmovCC.e: obj/cmovCC.o
	objdump -d $< > $@

cmp.e: obj/cmp.o
	objdump -d $< > $@

cpuid.e: obj/cpuid.o
	objdump -d $< > $@

hlt.e: obj/hlt.o
	objdump -d $< > $@

int.e: obj/int.o
	objdump -d $< > $@

mov.e: obj/mov.o
	objdump -d $< > $@

or.e: obj/or.o
	objdump -d $< > $@

push.e: obj/push.o
	objdump -d $< > $@

pop.e: obj/pop.o
	objdump -d $< > $@

rcl.e: obj/rcl.o
	objdump -d $< > $@

rcr.e: obj/rcr.o
	objdump -d $< > $@

rol.e: obj/rol.o
	objdump -d $< > $@

ror.e: obj/ror.o
	objdump -d $< > $@

sal.e: obj/sal.o
	objdump -d $< > $@

sar.e: obj/sar.o
	objdump -d $< > $@

shl.e: obj/shl.o
	objdump -d $< > $@

shld.e: obj/shld.o
	objdump -d $< > $@

shr.e: obj/shr.o
	objdump -d $< > $@

shrd.e: obj/shrd.o
	objdump -d $< > $@

sbb.e: obj/sbb.o
	objdump -d $< > $@

stc.e: obj/stc.o
	objdump -d $< > $@

sub.e: obj/sub.o
	objdump -d $< > $@

test.e: obj/test.o
	objdump -d $< > $@

wait.e: obj/wait.o
	objdump -d $< > $@

xor.e: obj/xor.o
	objdump -d $< > $@

#######################################################

obj/adc.o: asm/adc.s | obj
	as $< -o $@

obj/adcx.o: asm/adcx.s | obj
	as $< -o $@

obj/add.o: asm/add.s | obj
	as $< -o $@

obj/adox.o: asm/adox.s | obj
	as $< -o $@

obj/and.o: asm/and.s | obj
	as $< -o $@

obj/bsf.o: asm/bsf.s | obj
	as $< -o $@

obj/bt.o: asm/bt.s | obj
	as $< -o $@

obj/btc.o: asm/btc.s | obj
	as $< -o $@

obj/btr.o: asm/btr.s | obj
	as $< -o $@

obj/bts.o: asm/bts.s | obj
	as $< -o $@

obj/cmovCC.o: asm/cmovCC.s | obj
	as $< -o $@

obj/cmp.o: asm/cmp.s | obj
	as $< -o $@

obj/cpuid.o: asm/cpuid.s | obj
	as $< -o $@

obj/clac.o: asm/clac.s | obj
	as $< -o $@

obj/cbw.o: asm/cbw.s | obj
	as $< -o $@

obj/cdq.o: asm/cdq.s | obj
	as $< -o $@

obj/clc.o: asm/clc.s | obj
	as $< -o $@

obj/cld.o: asm/cld.s | obj
	as $< -o $@

obj/cli.o: asm/cli.s | obj
	as $< -o $@

obj/cmc.o: asm/cmc.s | obj
	as $< -o $@

obj/hlt.o: asm/hlt.s | obj
	as $< -o $@

obj/int.o: asm/int.s | obj
	as $< -o $@

obj/mov.o: asm/mov.s | obj
	as $< -o $@

obj/or.o: asm/or.s | obj
	as $< -o $@

obj/pop.o: asm/pop.s | obj
	as $< -o $@

obj/push.o: asm/push.s | obj
	as $< -o $@

obj/rcl.o: asm/rcl.s | obj
	as $< -o $@

obj/rcr.o: asm/rcr.s | obj
	as $< -o $@

obj/rol.o: asm/rol.s | obj
	as $< -o $@

obj/ror.o: asm/ror.s | obj
	as $< -o $@

obj/shl.o: asm/shl.s | obj
	as $< -o $@

obj/shld.o: asm/shld.s | obj
	as $< -o $@

obj/shr.o: asm/shr.s | obj
	as $< -o $@

obj/shrd.o: asm/shrd.s | obj
	as $< -o $@

obj/sal.o: asm/sal.s | obj
	as $< -o $@

obj/sar.o: asm/sar.s | obj
	as $< -o $@

obj/sbb.o: asm/sbb.s | obj
	as $< -o $@

obj/stc.o: asm/stc.s | obj
	as $< -o $@

obj/sub.o: asm/sub.s | obj
	as $< -o $@

obj/test.o: asm/test.s | obj
	as $< -o $@

obj/wait.o: asm/wait.s | obj
	as $< -o $@

obj/xor.o: asm/xor.s | obj
	as $< -o $@

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

