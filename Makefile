

TARGETS := \
bin/opus \
bin/elf

OPUS_SRC := \
bool.cpp \
complex.cpp \
constraints.cpp \
datetime.cpp \
dequeue.cpp \
dynamic.cpp \
enum.cpp \
expr.cpp \
float.cpp \
gencodecontext.cpp \
grammar.cpp \
html.cpp \
html_lex_context.cpp \
htmlerror.cpp \
htmllex.cpp \
il.cpp \
integer.cpp \
log.cpp \
main.cpp \
matrix.cpp \
multiset.cpp \
nodes.cpp \
object.cpp \
opl.cpp \
pqueue.cpp \
program.cpp \
queue.cpp \
rational.cpp \
real.cpp \
regex.cpp \
semchkcontext.cpp \
set.cpp \
statement.cpp \
symtbl.cpp \
type.cpp \
stack.cpp \
string.cpp \
tensor.cpp \
tuple.cpp \
vector.cpp \
void.cpp \
yyerror.cpp \
yylex.cpp

ELF_SRC := \
elf/elf.cpp \
elf/tostring.cpp \
elf/program.cpp \
elf/section.cpp \
elf/stringtbl.cpp \
elf/esymtbl.cpp \
elf/disassemble.cpp \
elf/file.cpp \
elf/operands.cpp

OPUS_OBJS := $(patsubst %.cpp,obj/%.o,$(OPUS_SRC))

ELF_OBJS := $(patsubst %.cpp,obj/%.o,$(ELF_SRC))

CPPFLAGS := -std=c++11

########################################

all: $(TARGETS)

clean:
	rm -fr obj .d $(TARGETS)
	rm -f  html.output html.cpp html.hpp
	rm -f  opl.output opl.cpp opl.hpp

clobber: clean
	rm -f bin/opus

bin/opus: $(OPUS_OBJS) | bin
	g++ -std=c++11 -o $@ $(OPUS_OBJS) -pthread

bin/elf: $(ELF_OBJS) | bin
	g++ -std=c++11 -o $@ $(ELF_OBJS) -pthread

########################################

opl.cpp opl.hpp: opl.b
	bison --name-prefix=opus -d -v -o opl.cpp opl.b

html.cpp html.hpp: html.b
	bison --name-prefix=html -d -v -o html.cpp html.b

opl.h: opl.hpp

html.h: html.hpp

########################################

obj/%.o: %.cpp .d/%.d | obj .d
	g++ -std=c++11 -c -o $@ $<

obj/elf/%.o: elf/%.cpp .d/elf/%.d | obj/elf .d/elf
	g++ -std=c++11 -c -o $@ $<

.d/%.d: %.cpp | .d obj
	g++ -std=c++11 -c -MMD -MP -MF .d/$*.Td -o obj/$*.o $<
	mv -f .d/$*.Td $@

obj obj/elf bin .d .d/elf:
	mkdir $@


.PHONY: test

test: bin/opus
	cd test; make

ENC_TESTS := \
test.elfo \
test.adc \
test.adcx \
test.add \
test.adox \
test.and \
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
test.xor

test.elf: $(ENC_TESTS)

test.elfo: obj/elf/elf.o
	bin/elf  obj/elf/elf.o > out;diff out elf.e
	
test.adc: obj/elf/elf.o
	bin/elf  elf/adc.o > out; diff out adc.e
	
test.adcx: obj/elf/elf.o
	bin/elf  elf/adcx.o > out; diff out adcx.e
	
test.add: obj/elf/elf.o
	bin/elf  elf/add.o > out; diff out add.e
	
test.adox: obj/elf/elf.o
	bin/elf  elf/adox.o > out; diff out adox.e
	
test.and: obj/elf/elf.o
	bin/elf  elf/and.o > out; diff out and.e

test.cbw: obj/elf/elf.o
	bin/elf  elf/cbw.o > out; diff out cbw.e

test.clac: obj/elf/elf.o
	bin/elf  elf/clac.o > out; diff out clac.e

test.clc: obj/elf/elf.o
	bin/elf  elf/clc.o > out; diff out clc.e

test.cld: obj/elf/elf.o
	bin/elf  elf/cld.o > out; diff out cld.e

test.cmc: obj/elf/elf.o
	bin/elf  elf/cmc.o > out; diff out cmc.e

test.cmovCC: obj/elf/elf.o
	bin/elf  elf/cmovCC.o > out; diff out cmovCC.e

test.cmp: obj/elf/elf.o
	bin/elf  elf/cmp.o > out; diff out cmp.e

test.mov: obj/elf/elf.o
	bin/elf  elf/mov.o > out; diff out mov.e

test.or: obj/elf/elf.o
	bin/elf  elf/or.o > out; diff out or.e

test.pop: obj/elf/elf.o
	bin/elf  elf/pop.o > out; diff out pop.e

test.push: obj/elf/elf.o
	bin/elf  elf/push.o > out; diff out push.e

test.sbb: obj/elf/elf.o
	bin/elf  elf/sbb.o > out; diff out sbb.e

test.sub: obj/elf/elf.o
	bin/elf  elf/sub.o > out; diff out sub.e

test.xor: obj/elf/elf.o
	bin/elf  elf/xor.o > out; diff out xor.e
	

ifneq ($(MAKECMDGOALS), clobber)
ifneq ($(MAKECMDGOALS), clean)
-include $(patsubst %.cpp,.d/%.d,$(OPUS_SRC))
endif
endif
