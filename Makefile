

TARGETS := \
bin/opus.exe

SRC := \
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


OBJS := $(patsubst %.cpp,obj/%.o,$(SRC))

CPPFLAGS := -std=c++11

########################################

all: $(TARGETS)

clean:
	rm -fr obj .d $(TARGETS)
	rm -f  html.output html.cpp html.hpp
	rm -f  opl.output opl.cpp opl.hpp

clobber: clean
	rm -f bin/opus.exe

bin/opus.exe: $(OBJS) | bin
	g++ -std=c++11 -o $@ $(OBJS) -pthread

########################################

opl.cpp opl.hpp: opl.b
	bison --name-prefix=opus -d -v -o opl.cpp opl.b

html.cpp html.hpp: html.b
	bison --name-prefix=html -d -v -o html.cpp html.b

opl.h: opl.hpp

html.h: html.hpp

########################################

obj/%.o: %.cpp .d/%.d | obj
	g++ -std=c++11 -c -o $@ $<

.d/%.d: %.cpp | .d obj
	g++ -std=c++11 -c -MMD -MP -MF .d/$*.Td -o obj/$*.o $<
	mv -f .d/$*.Td $@

obj bin .d:
	mkdir $@


.PHONY: test

test: bin/opus.exe
	cd test; make

ifneq ($(MAKECMDGOALS), clobber)
ifneq ($(MAKECMDGOALS), clean)
-include $(patsubst %.cpp,.d/%.d,$(SRC))
endif
endif
