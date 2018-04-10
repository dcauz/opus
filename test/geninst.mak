
SRC := \
asm/adc.s \
asm/adcx.s \
asm/add.s \
asm/adox.s \
asm/and.s \
asm/bsf.s \
asm/bt.s \
asm/btc.s \
asm/btr.s \
asm/bts.s \
asm/cbw.s \
asm/cdq.s \
asm/clc.s \
asm/clac.s \
asm/cld.s \
asm/cmc.s \
asm/cmovCC.s \
asm/cmp.s \
asm/mov.s \
asm/or.s \
asm/pop.s \
asm/push.s \
asm/rcl.s \
asm/rcr.s \
asm/rol.s \
asm/ror.s \
asm/sal.s \
asm/sar.s \
asm/shl.s \
asm/shld.s \
asm/shr.s \
asm/shrd.s \
asm/sbb.s \
asm/sub.s \
asm/test.s \
asm/xor.s 

OBJ := \
obj/adc.o \
obj/adcx.o \
obj/add.o \
obj/adox.o \
obj/and.o \
obj/bsf.o \
asm/bt.o \
asm/btc.o \
asm/btr.o \
asm/bts.o \
obj/cbw.o \
obj/cdq.o \
obj/clc.o \
obj/clac.o \
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
obj/sal.o \
obj/sar.o \
obj/shl.o \
obj/shld.o \
obj/shr.o \
obj/shrd.o \
obj/sbb.o \
obj/sub.o \
obj/test.o \
obj/xor.o 

ENC := \
adc.e \
adcx.e \
add.e \
adox.e \
and.e \
bsf.e \
bt.e \
btc.e \
btr.e \
bts.e \
cbw.e \
cdq.e \
clc.e \
clac.e \
cld.e \
cmc.e \
cmovCC.e \
cmp.e \
mov.e \
or.e \
pop.e \
push.e \
rcl.e \
rcr.e \
rol.e \
ror.e \
sal.e \
sar.e \
shl.e \
shld.e \
shr.e \
shrd.e \
sbb.e \
sub.e \
test.e \
xor.e 


all: $(OBJ)

adc.e: obj/adc.o
	objdump -d $< > $@

adcx.e: obj/adcx.o
	objdump -d $< > $@

add.e: obj/add.o
	objdump -d $< > $@

adox.e: obj/adox.o
	objdump -d $< > $@

and.e: obj/and.o
	objdump -d $< > $@

bsf.e: obj/bsf.o
	objdump -d $< > $@

bt.e: obj/bt.o
	objdump -d $< > $@

btc.e: obj/btc.o
	objdump -d $< > $@

btr.e: obj/btr.o
	objdump -d $< > $@

bts.e: obj/bts.o
	objdump -d $< > $@

clac.e: obj/clac.o
	objdump -d $< > $@

cbw.e: obj/cbw.o
	objdump -d $< > $@

cdq.e: obj/cdq.o
	objdump -d $< > $@

clc.e: obj/clc.o
	objdump -d $< > $@

cld.e: obj/cld.o
	objdump -d $< > $@

cmc.e: obj/cmc.o
	objdump -d $< > $@

cmovCC.e: obj/cmovCC.o
	objdump -d $< > $@

cmp.e: obj/cmp.o
	objdump -d $< > $@

mov.e: obj/mov.o
	objdump -d $< > $@

or.e: obj/or.o
	objdump -d $< > $@

push.e: obj/push.o
	objdump -d $< > $@

pop.e: obj/pop.o
	objdump -d $< > $@

rcl.e: obj/rcl.o
	objdump -d $< > $@

rcr.e: obj/rcr.o
	objdump -d $< > $@

rol.e: obj/rol.o
	objdump -d $< > $@

ror.e: obj/ror.o
	objdump -d $< > $@

sal.e: obj/sal.o
	objdump -d $< > $@

sar.e: obj/sar.o
	objdump -d $< > $@

shl.e: obj/shl.o
	objdump -d $< > $@

shld.e: obj/shld.o
	objdump -d $< > $@

shr.e: obj/shr.o
	objdump -d $< > $@

shrd.e: obj/shrd.o
	objdump -d $< > $@

sbb.e: obj/sbb.o
	objdump -d $< > $@

sub.e: obj/sub.o
	objdump -d $< > $@

test.e: obj/test.o
	objdump -d $< > $@

xor.e: obj/xor.o
	objdump -d $< > $@

all.e: $(ENC)
	cat $^ | sed 's/......//' | sort -u > $@

obj/adc.o: asm/adc.s | obj
	as $< -o $@

obj/adcx.o: asm/adcx.s | obj
	as $< -o $@

obj/add.o: asm/add.s | obj
	as $< -o $@

obj/adox.o: asm/adox.s | obj
	as $< -o $@

obj/and.o: asm/and.s | obj
	as $< -o $@

obj/bsf.o: asm/bsf.s | obj
	as $< -o $@

obj/bt.o: asm/bt.s | obj
	as $< -o $@

obj/btc.o: asm/btc.s | obj
	as $< -o $@

obj/btr.o: asm/btr.s | obj
	as $< -o $@

obj/bts.o: asm/bts.s | obj
	as $< -o $@

obj/cmovCC.o: asm/cmovCC.s | obj
	as $< -o $@

obj/cmp.o: asm/cmp.s | obj
	as $< -o $@

obj/clac.o: asm/clac.s | obj
	as $< -o $@

obj/cbw.o: asm/cbw.s | obj
	as $< -o $@

obj/cdq.o: asm/cdq.s | obj
	as $< -o $@

obj/clc.o: asm/clc.s | obj
	as $< -o $@

obj/cld.o: asm/cld.s | obj
	as $< -o $@

obj/cmc.o: asm/cmc.s | obj
	as $< -o $@

obj/mov.o: asm/mov.s | obj
	as $< -o $@

obj/or.o: asm/or.s | obj
	as $< -o $@

obj/pop.o: asm/pop.s | obj
	as $< -o $@

obj/push.o: asm/push.s | obj
	as $< -o $@

obj/rcl.o: asm/rcl.s | obj
	as $< -o $@

obj/rcr.o: asm/rcr.s | obj
	as $< -o $@

obj/rol.o: asm/rol.s | obj
	as $< -o $@

obj/ror.o: asm/ror.s | obj
	as $< -o $@

obj/shl.o: asm/shl.s | obj
	as $< -o $@

obj/shld.o: asm/shld.s | obj
	as $< -o $@

obj/shr.o: asm/shr.s | obj
	as $< -o $@

obj/shrd.o: asm/shrd.s | obj
	as $< -o $@

obj/sal.o: asm/sal.s | obj
	as $< -o $@

obj/sar.o: asm/sar.s | obj
	as $< -o $@

obj/sbb.o: asm/sbb.s | obj
	as $< -o $@

obj/sub.o: asm/sub.s | obj
	as $< -o $@

obj/test.o: asm/test.s | obj
	as $< -o $@

obj/xor.o: asm/xor.s | obj
	as $< -o $@


asm/add.s: asm/adc.s
	sed 's/adc/add/' < $< > $@

asm/and.s: asm/adc.s
	sed 's/adc/and/' < $< > $@

asm/cmp.s: asm/adc.s
	sed 's/adc/cmp/' < $< > $@

asm/mov.s: asm/adc.s
	sed 's/adc/mov/' < $< > $@

asm/or.s: asm/adc.s
	sed 's/adc/or/' < $< > $@

asm/sbb.s: asm/adc.s
	sed 's/adc/sbb/' < $< > $@

asm/sub.s: asm/adc.s
	sed 's/adc/sub/' < $< > $@

asm/test.s: asm/adc.s
	sed 's/adc/test/' < $< > $@

asm/xor.s: asm/adc.s
	sed 's/adc/xor/' < $< > $@


asm/rcl.s: asm/sar.s
	sed 's/sar/rcl/' < $< > $@

asm/rcr.s: asm/sar.s
	sed 's/sar/rcr/' < $< > $@

asm/rol.s: asm/sar.s
	sed 's/sar/rol/' < $< > $@

asm/ror.s: asm/sar.s
	sed 's/sar/ror/' < $< > $@

asm/sal.s: asm/sar.s
	sed 's/sar/sal/' < $< > $@

asm/shl.s: asm/sar.s
	sed 's/sar/shl/' < $< > $@

asm/shr.s: asm/sar.s
	sed 's/sar/shr/' < $< > $@


asm/btc.s: asm/bt.s
	sed 's/bt/btc/' < $< > $@

asm/btr.s: asm/bt.s
	sed 's/bt/btr/' < $< > $@

asm/bts.s: asm/bt.s
	sed 's/bt/bts/' < $< > $@

obj:
	mkdir $@
