
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


test.elf: $(ENC_TESTS)

test.adc: $(ELF) obj/adc.o
	$(ELF)  obj/adc.o > out; diff out expected/adc.e
	
test.adcx: $(ELF) obj/adcx.o
	$(ELF)  obj/adcx.o > out; diff out expected/adcx.e
	
test.add: $(ELF) obj/add.o
	$(ELF)  obj/add.o > out; diff out expected/add.e
	
test.adox: $(ELF) obj/adox.o
	$(ELF)  obj/adox.o > out; diff out expected/adox.e
	
test.and: $(ELF) obj/and.o
	$(ELF)  obj/and.o > out; diff out expected/and.e

test.bsf: $(ELF) obj/bsf.o
	$(ELF)  obj/bsf.o > out; diff out expected/bsf.e

test.bt: $(ELF) obj/bt.o
	$(ELF)  obj/bt.o > out; diff out expected/bt.e

test.btc: $(ELF) obj/btc.o
	$(ELF)  obj/btc.o > out; diff out expected/btc.e

test.btr: $(ELF) obj/btr.o
	$(ELF)  obj/btr.o > out; diff out expected/btr.e

test.bts: $(ELF) obj/bts.o
	$(ELF)  obj/bts.o > out; diff out expected/bts.e

test.cbw: $(ELF) obj/cbw.o
	$(ELF)  obj/cbw.o > out; diff out expected/cbw.e

test.cdq: $(ELF) obj/cdq.o
	$(ELF)  obj/cdq.o > out; diff out expected/cdq.e

test.clac: $(ELF) obj/clac.o
	$(ELF)  obj/clac.o > out; diff out expected/clac.e

test.clc: $(ELF) obj/clc.o
	$(ELF)  obj/clc.o > out; diff out expected/clc.e

test.cld: $(ELF) obj/cld.o
	$(ELF)  obj/cld.o > out; diff out expected/cld.e

test.cli: $(ELF) obj/cli.o
	$(ELF)  obj/cli.o > out; diff out expected/cli.e

test.cmc: $(ELF) obj/cmc.o
	$(ELF)  obj/cmc.o > out; diff out expected/cmc.e

test.cmovCC: $(ELF) obj/cmovCC.o
	$(ELF)  obj/cmovCC.o > out; diff out expected/cmovCC.e

test.cmp: $(ELF) obj/cmp.o
	$(ELF)  obj/cmp.o > out; diff out expected/cmp.e

test.cpuid: $(ELF) obj/cpuid.o
	$(ELF)  obj/cpuid.o > out; diff out expected/cpuid.e

test.hlt: $(ELF) obj/hlt.o
	$(ELF)  obj/hlt.o > out; diff out expected/hlt.e

test.mov: $(ELF) obj/mov.o
	$(ELF)  obj/mov.o > out; diff out expected/mov.e

test.or: $(ELF) obj/or.o
	$(ELF)  obj/or.o > out; diff out expected/or.e

test.pop: $(ELF) obj/pop.o
	$(ELF)  obj/pop.o > out; diff out expected/pop.e

test.push: $(ELF) obj/push.o
	$(ELF)  obj/push.o > out; diff out expected/push.e

test.rcl: $(ELF) obj/rcl.o
	$(ELF)  obj/rcl.o > out; diff out expected/rcl.e

test.rcr: $(ELF) obj/rcr.o
	$(ELF)  obj/rcr.o > out; diff out expected/rcr.e

test.rol: $(ELF) obj/rol.o
	$(ELF)  obj/rol.o > out; diff out expected/rol.e

test.ror: $(ELF) obj/ror.o
	$(ELF)  obj/ror.o > out; diff out expected/ror.e

test.shl: $(ELF) obj/shl.o
	$(ELF)  obj/shl.o > out; diff out expected/shl.e

test.shld: $(ELF) obj/shld.o
	$(ELF)  obj/shld.o > out; diff out expected/shld.e

test.shr: $(ELF) obj/shr.o
	$(ELF)  obj/shr.o > out; diff out expected/shr.e

test.shrd: $(ELF) obj/shrd.o
	$(ELF)  obj/shrd.o > out; diff out expected/shrd.e

test.sar: $(ELF) obj/sar.o
	$(ELF)  obj/sar.o > out; diff out expected/sar.e

test.sbb: $(ELF) obj/sbb.o
	$(ELF)  obj/sbb.o > out; diff out expected/sbb.e

test.stc: $(ELF) obj/stc.o
	$(ELF)  obj/stc.o > out; diff out expected/stc.e

test.sub: $(ELF) obj/sub.o
	$(ELF)  obj/sub.o > out; diff out expected/sub.e

test.test: $(ELF) obj/test.o
	$(ELF)  obj/test.o > out; diff out expected/test.e

test.wait: $(ELF) obj/wait.o
	$(ELF)  obj/wait.o > out; diff out expected/wait.e

test.xor: $(ELF) obj/xor.o
	$(ELF)  obj/xor.o > out; diff out expected/xor.e
	
clean:
	rm -f out core
	rm -rf obj

test.elfo: $(ELF) ../obj/elf/elf.o
	$(ELF)  ../obj/elf/elf.o > out;diff out expected/elf.e
	

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

obj:
	mkdir $@
