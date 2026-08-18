TEST_FILES := \
literal.op \
alias.op \
basicTypes.op \
collections.op \
do.op \
enum.op \
expr.op \
for.op \
function.op \
if.op \
Makefile \
minimal.op \
namespace.op \
object.op \
operators.op \
pointers.op \
pureFun.op \
select.op \
switch.op \
try.op \
type.op \
while.op

IL_FILES := $(patsubst %.op,%.il,$(TEST_FILES))

test1: literal.il

test: $(IL_FILES)

%.il: %.op
	../bin/opus -d $<
