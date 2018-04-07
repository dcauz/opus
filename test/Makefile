.PHONY: test

ELF := ../bin/elf

ENC_TESTS := \
test.elfo \
test.adc \
test.adcx \
test.add \
test.adox \
test.and \
test.bsf \
test.cbw \
test.clac \
test.clc \
test.cld \
test.cmc \
test.cmovCC \
test.cmp \
test.mov \
test.or \
test.pop \
test.push \
test.sbb \
test.sub \
test.test \
test.xor

TEST_OBJS := \
elf/adc.o \
elf/adcx.o \
elf/add.o \
elf/adox.o \
elf/and.o \
elf/bsf.o \
elf/cbw.o \
elf/clac.o \
elf/clc.o \
elf/cld.o \
elf/cmc.o \
elf/cmovCC.o \
elf/cmp.o \
elf/mov.o \
elf/or.o \
elf/pop.o \
elf/push.o \
elf/sbb.o \
elf/sub.o \
elf/test.o \
elf/xor.o


test.elf: $(ENC_TESTS)

test.elfo: $(ELF) obj/elf/elf.o
	$(ELF)  obj/elf/elf.o > out;diff out elf.e
	
test.adc: $(ELF) elf/adc.o
	$(ELF)  elf/adc.o > out; diff out adc.e
	
test.adcx: $(ELF) elf/adcx.o
	$(ELF)  elf/adcx.o > out; diff out adcx.e
	
test.add: $(ELF) elf/add.o
	$(ELF)  elf/add.o > out; diff out add.e
	
test.adox: $(ELF) elf/adox.o
	$(ELF)  elf/adox.o > out; diff out adox.e
	
test.and: $(ELF) elf/and.o
	$(ELF)  elf/and.o > out; diff out and.e

test.bsf: $(ELF) elf/bsf.o
	$(ELF)  elf/bsf.o > out; diff out bsf.e

test.cbw: $(ELF) elf/cbw.o
	$(ELF)  elf/cbw.o > out; diff out cbw.e

test.clac: $(ELF) elf/clac.o
	$(ELF)  elf/clac.o > out; diff out clac.e

test.clc: $(ELF) elf/clc.o
	$(ELF)  elf/clc.o > out; diff out clc.e

test.cld: $(ELF) elf/cld.o
	$(ELF)  elf/cld.o > out; diff out cld.e

test.cmc: $(ELF) elf/cmc.o
	$(ELF)  elf/cmc.o > out; diff out cmc.e

test.cmovCC: $(ELF) elf/cmovCC.o
	$(ELF)  elf/cmovCC.o > out; diff out cmovCC.e

test.cmp: $(ELF) elf/cmp.o
	$(ELF)  elf/cmp.o > out; diff out cmp.e

test.mov: $(ELF) elf/mov.o
	$(ELF)  elf/mov.o > out; diff out mov.e

test.or: $(ELF) elf/or.o
	$(ELF)  elf/or.o > out; diff out or.e

test.pop: $(ELF) elf/pop.o
	$(ELF)  elf/pop.o > out; diff out pop.e

test.push: $(ELF) elf/push.o
	$(ELF)  elf/push.o > out; diff out push.e

test.sbb: $(ELF) elf/sbb.o
	$(ELF)  elf/sbb.o > out; diff out sbb.e

test.sub: $(ELF) elf/sub.o
	$(ELF)  elf/sub.o > out; diff out sub.e

test.test: $(ELF) elf/test.o
	$(ELF)  elf/test.o > out; diff out test.e

test.xor: $(ELF) elf/xor.o
	$(ELF)  elf/xor.o > out; diff out xor.e
	

$(TEST_OBJS):
	cd ../elf;make -f geninst.mak
