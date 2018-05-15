

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
elf/evex.cpp \
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
	g++ -g -std=c++11 -o $@ $(OPUS_OBJS) -pthread

bin/elf: $(ELF_OBJS) | bin
	g++ -g -std=c++11 -o $@ $(ELF_OBJS) -pthread

########################################

opl.cpp opl.hpp: opl.b
	bison --name-prefix=opus -d -v -o opl.cpp opl.b

html.cpp html.hpp: html.b
	bison --name-prefix=html -d -v -o html.cpp html.b

opl.h: opl.hpp

html.h: html.hpp

$(patsubst %.cpp,.d/%.d,$(OPUS_SRC)): html.hpp opl.hpp

########################################

obj/%.o: %.cpp .d/%.d | obj .d
	g++ -g -std=c++11 -c -o $@ $<

obj/elf/%.o: elf/%.cpp .d/elf/%.d | obj/elf .d/elf
	g++ -g -std=c++11 -c -o $@ $<

.d/%.d: %.cpp | .d obj
	g++ -std=c++11 -c -MMD -MP -MT obj/$(patsubst %.cpp,%.o,$<) -o obj/$(patsubst %.cpp,%.o,$<) -MF .d/$*.Td $<
	mv -f .d/$*.Td $@

.d/elf/%.d: elf/%.cpp | .d/elf elf/obj
	g++ -std=c++11 -c -MMD -MP -o obj/$(patsubst %.cpp,%.o,$<) -MT obj/$(patsubst %.cpp,%.o,$<) -MF .d/elf/$*.Td $<
	mv -f .d/elf/$*.Td $@

obj obj/elf bin .d .d/elf:
	mkdir -p $@


.PHONY: test

test: bin/opus
	cd test; make

ifneq ($(MAKECMDGOALS), clobber)
ifneq ($(MAKECMDGOALS), clean)
-include $(patsubst %.cpp,.d/%.d,$(OPUS_SRC))
-include $(patsubst %.cpp,.d/%.d,$(ELF_SRC))
endif
endif
