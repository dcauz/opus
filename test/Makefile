TEST_FILES := \
alias.op \
collections.op \
do.op \
enum.op \
expr.op \
for.op \
function.op \
if.op \
literal.op \
namespace.op \
object.op \
pointers.op \
pureFun.op \
select.op \
switch.op \
try.op \
type.op \
while.op


IL_FILES := $(patsubst %.op,%.il,$(TEST_FILES))

test: $(IL_FILES)


aliast:       alias.il
collectionst: collections.il
dot:          do.il
enumt:        enum.il
exprt:        expr.il
fort:         for.il
functiont:    function.il
ift:          if.il
literalt:     literal.il
namespacet:   namespace.il
object:       object.il
pointerst:    pointers.il
purFunt:      pureFun.il
selectt:      select.il
switcht:      switch.il
tryt:         try.il
typet:        type.il
whilet:       while.il


%.il: %.op
	../bin/opus -d $<
