
TARGETS = \
bin/opus.exe

SRC =  \
src/auto.cc \
src/bool.cc \
src/char.cc \
src/class.cc \
src/complex.cc \
src/date.cc \
src/datetime.cc \
src/dqueue.cc \
src/duration.cc \
src/enum.cc \
src/expr.cc \
src/float.cc \
src/functions.cc \
src/gencodecontext.cc \
src/heap.cc \
src/il.cc \
src/integer.cc \
src/interface.cc \
src/lex.cc \
src/list.cc \
src/log.cc \
src/log_msgs.cc \
src/main.cc \
src/map.cc \
src/mmap.cc \
src/matrix.cc \
src/multiset.cc \
src/mutex.cc \
src/nodes.cc \
src/object.cc \
src/parser.cc \
src/parseAlias.cc \
src/parseArgs.cc \
src/parseBlock.cc \
src/parseBreak.cc \
src/parseCase.cc \
src/parseClass.cc \
src/parseCatch.cc \
src/parseContinue.cc \
src/parseDefault.cc \
src/parseDo.cc \
src/parseEnum.cc \
src/parseExpr.cc \
src/parserError.cc \
src/parseExprStatement.cc \
src/parseExprTypes.cc \
src/parseFor.cc \
src/parseIf.cc \
src/parseInterface.cc \
src/parseNamespace.cc \
src/parsePureFunction.cc \
src/parseReturn.cc \
src/parseSelect.cc \
src/parseStatement.cc \
src/parseSwitch.cc \
src/parseTypeParams.cc \
src/parseTry.cc \
src/parseType.cc \
src/parseTypeDef.cc \
src/parseUnion.cc \
src/parseUsing.cc \
src/parseVarDefOrExpr.cc \
src/parseVarFuncDef.cc \
src/parseVariableDef.cc \
src/parseWhile.cc \
src/program.cc \
src/queue.cc \
src/rational.cc \
src/real.cc \
src/regex.cc \
src/semaphore.cc \
src/semchkcontext.cc \
src/set.cc \
src/stack.cc \
src/statement.cc \
src/string.cc \
src/symtbl.cc \
src/time.cc \
src/token.cc \
src/tuple.cc \
src/type.cc \
src/union.cc \
src/value.cc \
src/void.cc 

OBJS = $(patsubst src/%.cc,obj/%.o,$(SRC))

########################################

.PHONY: all clean clobber test

all: $(TARGETS)

clean:
	rm -fr obj
	rm -fr .d

clobber: clean
	rm -rf bin

test test1: bin/opus.exe
	cd test; make $@

########################################

bin/opus.exe: $(OBJS) | bin
	rm -f $@
	g++ -save-temps -std=c++17 -g -Wall -Wextra -o $@ $(OBJS)

obj/%.o: src/%.cc .d/%.d | obj
	g++ -save-temps -std=c++17 -g -Wall -Wextra -c -o $@ $<

.d/%.d: src/%.cc | .d 
	g++ -save-temps -std=c++17 -MF"$@" -MG -MM -MP -MT"$@" "$<"

obj bin .d:
	mkdir $@

########################################

ifneq ($(MAKECMDGOALS), clobber)
ifneq ($(MAKECMDGOALS), clean)
-include $(patsubst src/%.cc,.d/%.d,$(SRC))
endif
endif
