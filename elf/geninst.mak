
SRC := \
adc.s \
adcx.s \
add.s \
adox.s \
and.s \
cbw.s \
clc.s \
clac.s \
cld.s \
cmc.s \
cmovCC.s \
cmp.s \
mov.s \
or.s \
pop.s \
push.s \
sbb.s \
sub.s \
xor.s 

OBJ := \
adc.o \
adcx.o \
add.o \
adox.o \
and.o \
cbw.o \
clc.o \
clac.o \
cld.o \
cmc.o \
cmovCC.o \
cmp.o \
mov.o \
or.o \
pop.o \
push.o \
sbb.o \
sub.o \
xor.o 

ENC := \
adc.e \
adcx.e \
add.e \
adox.e \
and.e \
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
xor.e 


all: all.e

adc.e: adc.o
	objdump -d $< > $@

adcx.e: adcx.o
	objdump -d $< > $@

add.e: add.o
	objdump -d $< > $@

adox.e: adox.o
	objdump -d $< > $@

and.e: and.o
	objdump -d $< > $@

clac.e: clac.o
	objdump -d $< > $@

cbw.e: cbw.o
	objdump -d $< > $@

clc.e: clc.o
	objdump -d $< > $@

cld.e: cld.o
	objdump -d $< > $@

cmc.e: cmc.o
	objdump -d $< > $@

cmovCC.e: cmovCC.o
	objdump -d $< > $@

cmp.e: cmp.o
	objdump -d $< > $@

mov.e: mov.o
	objdump -d $< > $@

or.e: or.o
	objdump -d $< > $@

push.e: push.o
	objdump -d $< > $@

pop.e: pop.o
	objdump -d $< > $@

sbb.e: sbb.o
	objdump -d $< > $@

sub.e: sub.o
	objdump -d $< > $@

xor.e: xor.o
	objdump -d $< > $@

all.e: $(ENC)
	cat $^ | sed 's/......//' | sort -u > $@

adc.o: adc.s
	as $< -o $@

adcx.o: adcx.s
	as $< -o $@

add.o: add.s
	as $< -o $@

adox.o: adox.s
	as $< -o $@

and.o: and.s
	as $< -o $@

cmovCC.o: cmovCC.s
	as $< -o $@

cmp.o: cmp.s
	as $< -o $@

clac.o: clac.s
	as $< -o $@

cbw.o: cbw.s
	as $< -o $@

clc.o: clc.s
	as $< -o $@

cld.o: cld.s
	as $< -o $@

cmc.o: cmc.s
	as $< -o $@

mov.o: mov.s
	as $< -o $@

or.o: or.s
	as $< -o $@

pop.o: pop.s
	as $< -o $@

push.o: push.s
	as $< -o $@

sbb.o: sbb.s
	as $< -o $@

sub.o: sub.s
	as $< -o $@

xor.o: xor.s
	as $< -o $@


add.s: adc.s
	sed 's/adc/add/' < $< > $@

and.s: adc.s
	sed 's/adc/and/' < $< > $@

cmp.s: adc.s
	sed 's/adc/cmp/' < $< > $@

mov.s: adc.s
	sed 's/adc/mov/' < $< > $@

or.s: adc.s
	sed 's/adc/or/' < $< > $@

sbb.s: adc.s
	sed 's/adc/sbb/' < $< > $@

sub.s: adc.s
	sed 's/adc/sub/' < $< > $@

xor.s: adc.s
	sed 's/adc/xor/' < $< > $@

