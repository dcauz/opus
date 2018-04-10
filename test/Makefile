
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
test.rcl \
test.rcr \
test.rol \
test.ror \
test.sar \
test.shl \
test.shld \
test.shr \
test.shrd \
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
obj/bt.o \
obj/btc.o \
obj/btr.o \
obj/bts.o \
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
obj/rcl.o \
obj/rcr.o \
obj/rol.o \
obj/ror.o \
obj/sar.o \
obj/shl.o \
obj/shld.o \
obj/shr.o \
obj/shrd.o \
obj/sbb.o \
obj/sub.o \
obj/test.o \
obj/xor.o


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

test.clac: $(ELF) obj/clac.o
	$(ELF)  obj/clac.o > out; diff out expected/clac.e

test.clc: $(ELF) obj/clc.o
	$(ELF)  obj/clc.o > out; diff out expected/clc.e

test.cld: $(ELF) obj/cld.o
	$(ELF)  obj/cld.o > out; diff out expected/cld.e

test.cmc: $(ELF) obj/cmc.o
	$(ELF)  obj/cmc.o > out; diff out expected/cmc.e

test.cmovCC: $(ELF) obj/cmovCC.o
	$(ELF)  obj/cmovCC.o > out; diff out expected/cmovCC.e

test.cmp: $(ELF) obj/cmp.o
	$(ELF)  obj/cmp.o > out; diff out expected/cmp.e

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

test.sub: $(ELF) obj/sub.o
	$(ELF)  obj/sub.o > out; diff out expected/sub.e

test.test: $(ELF) obj/test.o
	$(ELF)  obj/test.o > out; diff out expected/test.e

test.xor: $(ELF) obj/xor.o
	$(ELF)  obj/xor.o > out; diff out expected/xor.e
	
clean:
	rm -f out core
	rm -rf obj

$(TEST_OBJS):
	make -f geninst.mak

test.elfo: $(ELF) ../obj/elf/elf.o
	$(ELF)  ../obj/elf/elf.o > out;diff out expected/elf.e
	
