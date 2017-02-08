TARGETS := \
opus

SRC := \
expr.cpp \
gencodecontext.cpp \
html.gram.cpp \
html_lex_context.cpp \
opus.gram.cpp \
il.cpp \
main.cpp \
nodes.cpp \
program.cpp \
semchkcontext.cpp \
statement.cpp \
symtbl.cpp \
type.cpp \
htmlerror.cpp \
htmllex.cpp \
yyerror.cpp \
yylex.cpp

OBJS := $(patsubst %.cpp,obj/%.o,$(SRC))

CPPFLAGS := -std=c++11

########################################

all: $(TARGETS)

clean:
	rm -fr obj .deps $(TARGETS)
	rm -f  html.gram.output html.gram.cpp html.gram.hpp
	rm -f  opus.gram.output opus.gram.cpp opus.gram.hpp

opus: $(OBJS)
	g++ -std=c++11 -o $@ $(OBJS)

########################################

opus.gram.cpp : opus.gram.b
	bison --name-prefix=opus -d -v -o $@ opus.gram.b

html.gram.cpp : html.gram.b
	bison --name-prefix=html -d -v -o $@ html.gram.b

########################################

obj/%.o: %.cpp .deps/%.d | obj
	g++ -std=c++11 -c -o $@ $<

.deps/%.d: %.cpp | .deps obj
	g++ -std=c++11 -c -MMD -MP -MF .deps/$*.Td -o obj/$*.o $<
	mv -f .deps/$*.Td $@

obj .deps:
	mkdir $@


run: opus
	./opus test/main.opus

ifneq ($(MAKECMDGOALS), clean)
-include $(patsubst %.cpp,.deps/%.d,$(SRC))
endif
