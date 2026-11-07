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

literalt:     literal.il
exprt:        expr.il
ift:          if.il
whilet:       while.il
fort:         for.il
switcht:      switch.il
tryt:         try.il
enumt:        enum.il
dot:          do.il
objectt:      object.il
classt:				class.il

functiont:    function.il


aliast:       alias.il
collectionst: collections.il
namespacet:   namespace.il
pointerst:    pointers.il
purFunt:      pureFun.il
selectt:      select.il
typet:        type.il


%.il: %.op
	@echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
	@echo ">>>>>>>>>>>>>>>>>>> " $@
	@echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
	../bin/opus -d $<
