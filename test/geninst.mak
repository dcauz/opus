
SRC := \
asm/adc.s \
asm/adcx.s \
asm/add.s \
asm/adox.s \
asm/and.s \
asm/bsf.s \
asm/cbw.s \
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
obj/cbw.o \
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
cbw.e \
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

clac.e: obj/clac.o
	objdump -d $< > $@

cbw.e: obj/cbw.o
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

obj/cmovCC.o: asm/cmovCC.s | obj
	as $< -o $@

obj/cmp.o: asm/cmp.s | obj
	as $< -o $@

obj/clac.o: asm/clac.s | obj
	as $< -o $@

obj/cbw.o: asm/cbw.s | obj
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

obj:
	mkdir $@
