TARGETS := \
opus

SRC := \
expr.cpp \
gencodecontext.cpp \
html.cpp \
html_lex_context.cpp \
il.cpp \
main.cpp \
nodes.cpp \
opl.cpp \
program.cpp \
semchkcontext.cpp \
statement.cpp \
symtbl.cpp \
htmlerror.cpp \
htmllex.cpp \
yyerror.cpp \
yylex.cpp \
type.cpp \
bool.cpp \
dequeue.cpp \
dynamic.cpp \
enum.cpp \
float.cpp \
integer.cpp \
matrix.cpp \
object.cpp \
pqueue.cpp \
queue.cpp \
rational.cpp \
real.cpp \
set.cpp \
stack.cpp \
string.cpp \
tensor.cpp \
vector.cpp \
void.cpp


OBJS := $(patsubst %.cpp,obj/%.o,$(SRC))

CPPFLAGS := -std=c++11

########################################

all: $(TARGETS)

clean:
	rm -fr obj .deps $(TARGETS)
	rm -f  html.output html.cpp html.hpp
	rm -f  opl.output opl.cpp opl.hpp

opus: $(OBJS)
	g++ -std=c++11 -o $@ $(OBJS)

########################################

opl.cpp opl.hpp: opl.b
	bison --name-prefix=opus -d -v -o opl.cpp opl.b

html.cpp html.hpp: html.b
	bison --name-prefix=html -d -v -o html.cpp html.b

opl.h: opl.hpp

html.h: html.hpp

########################################

obj/%.o: %.cpp .deps/%.d | obj
	g++ -std=c++11 -c -o $@ $<

.deps/%.d: %.cpp | .deps obj
	g++ -std=c++11 -c -MMD -MP -MF .deps/$*.Td -o obj/$*.o $<
	mv -f .deps/$*.Td $@

obj .deps:
	mkdir $@


.PHONY: test

test: opus
	cd test; make

ifneq ($(MAKECMDGOALS), clean)
-include $(patsubst %.cpp,.deps/%.d,$(SRC))
endif
