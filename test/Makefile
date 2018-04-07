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
obj/adc.o \
obj/adcx.o \
obj/add.o \
obj/adox.o \
obj/and.o \
obj/bsf.o \
obj/cbw.o \
obj/clac.o \
obj/clc.o \
obj/cld.o \
obj/cmc.o \
obj/cmovCC.o \
obj/cmp.o \
obj/mov.o \
obj/or.o \
obj/pop.o \
obj/push.o \
obj/sbb.o \
obj/sub.o \
obj/test.o \
obj/xor.o


test.elf: $(ENC_TESTS)

test.adc: $(ELF) obj/adc.o
	$(ELF)  obj/adc.o > out; diff out expected/adc.e; rm out
	
test.adcx: $(ELF) obj/adcx.o
	$(ELF)  obj/adcx.o > out; diff out expected/adcx.e; rm out
	
test.add: $(ELF) obj/add.o
	$(ELF)  obj/add.o > out; diff out expected/add.e; rm out
	
test.adox: $(ELF) obj/adox.o
	$(ELF)  obj/adox.o > out; diff out expected/adox.e; rm out
	
test.and: $(ELF) obj/and.o
	$(ELF)  obj/and.o > out; diff out expected/and.e; rm out

test.bsf: $(ELF) obj/bsf.o
	$(ELF)  obj/bsf.o > out; diff out expected/bsf.e; rm out

test.cbw: $(ELF) obj/cbw.o
	$(ELF)  obj/cbw.o > out; diff out expected/cbw.e; rm out

test.clac: $(ELF) obj/clac.o
	$(ELF)  obj/clac.o > out; diff out expected/clac.e; rm out

test.clc: $(ELF) obj/clc.o
	$(ELF)  obj/clc.o > out; diff out expected/clc.e; rm out

test.cld: $(ELF) obj/cld.o
	$(ELF)  obj/cld.o > out; diff out expected/cld.e; rm out

test.cmc: $(ELF) obj/cmc.o
	$(ELF)  obj/cmc.o > out; diff out expected/cmc.e; rm out

test.cmovCC: $(ELF) obj/cmovCC.o
	$(ELF)  obj/cmovCC.o > out; diff out expected/cmovCC.e; rm out

test.cmp: $(ELF) obj/cmp.o
	$(ELF)  obj/cmp.o > out; diff out expected/cmp.e; rm out

test.mov: $(ELF) obj/mov.o
	$(ELF)  obj/mov.o > out; diff out expected/mov.e; rm out

test.or: $(ELF) obj/or.o
	$(ELF)  obj/or.o > out; diff out expected/or.e; rm out

test.pop: $(ELF) obj/pop.o
	$(ELF)  obj/pop.o > out; diff out expected/pop.e; rm out

test.push: $(ELF) obj/push.o
	$(ELF)  obj/push.o > out; diff out expected/push.e; rm out

test.sbb: $(ELF) obj/sbb.o
	$(ELF)  obj/sbb.o > out; diff out expected/sbb.e; rm out

test.sub: $(ELF) obj/sub.o
	$(ELF)  obj/sub.o > out; diff out expected/sub.e; rm out

test.test: $(ELF) obj/test.o
	$(ELF)  obj/test.o > out; diff out expected/test.e; rm out

test.xor: $(ELF) obj/xor.o
	$(ELF)  obj/xor.o > out; diff out expected/xor.e; rm out
	

$(TEST_OBJS):
	make -f geninst.mak

test.elfo: $(ELF) ../obj/elf/elf.o
	$(ELF)  ../obj/elf/elf.o > out;diff out expected/elf.e
	
