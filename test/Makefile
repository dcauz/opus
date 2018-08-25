
ELF := ../bin/elf

GP_INST_TESTS := \
test.adc \
test.adcx \
test.add \
test.adox \
test.and \
test.bsf \
test.bsr \
test.bswap \
test.bt \
test.btc \
test.btr \
test.bts \
test.call \
test.cbw \
test.cdq \
test.clc \
test.cld \
test.cli \
test.cmc \
test.cmovCC \
test.cmp \
test.cmps \
test.cmpxchg \
test.cpuid \
test.dec \
test.div \
test.enter \
test.idiv \
test.imul \
test.in \
test.inc \
test.ins \
test.int \
test.iret \
test.jCC \
test.jmp \
test.l_s \
test.lea \
test.leave \
test.lods \
test.loop \
test.mov \
test.movbe \
test.mov.dr \
test.mov.sr \
test.movs \
test.movsx \
test.mul \
test.neg \
test.nop \
test.not \
test.or \
test.out \
test.outs \
test.pop \
test.popf \
test.pop.seg \
test.push \
test.pushf \
test.push.seg \
test.rcl \
test.rcr \
test.rep \
test.ret \
test.rol \
test.ror \
test.sar \
test.sbb \
test.scas \
test.setCC \
test.shl \
test.shld \
test.shr \
test.shrd \
test.stc \
test.std \
test.sti \
test.stos \
test.sub \
test.test \
test.ud2 \
test.wait \
test.xadd \
test.xchg \
test.xlat \
test.xor

FPU_INST_TESTS := \
test.f2xm1 \
test.fabs \
test.fadd \
test.fbld \
test.fbstp \
test.fchs \
test.fclex \
test.fcmovCC \
test.fcom \
test.fcomi \
test.fcos \
test.fdecstp \
test.fdiv \
test.fdivr \
test.ffree \
test.ficom \
test.fild \
test.fincstp \
test.finit \
test.fist \
test.fld1 \
test.fldcw \
test.fldenv \
test.fld \
test.fmul \
test.fnop \
test.fpatan \
test.fprem \
test.fprem1 \
test.fptan \
test.frndint \
test.frstor \
test.fsave \
test.fscale \
test.fsincos \
test.fsin \
test.fsqrt \
test.fstcw \
test.fstenv \
test.fst \
test.fstsw \
test.fsub \
test.fsubr \
test.ftst \
test.fucom \
test.fxam \
test.fxch \
test.fxtract \
test.fyl2xp1 \
test.fyl2x

FPU_SIMD_INST_TESTS := \
test.fxsave \
test.fxrstor

MM_INST_TESTS := \
test.movd \
test.packsswb \
test.packuswb \
test.punpckhbw \
test.punpcklbw \
test.paddb \
test.paddsb \
test.paddusb \
test.psubb \
test.psubsb \
test.psubusb \
test.pmulhw \
test.pmullw \
test.pmaddwd \
test.pcmpeqb \
test.pcmpgtb \
test.pand \
test.pandn \
test.por \
test.pxor \
test.pslld \
test.psrld \
test.psrad \
test.emms

SSE_INST_TESTS := \
test.movaps \
test.movups \
test.movhps \
test.movhlps \
test.movlps \
test.movlhps \
test.movmskps \
test.movss \
test.addps \
test.addss \
test.subps \
test.subss \
test.mulps \
test.mulss \
test.divps \
test.divss \
test.rcpps \
test.rcpss \
test.sqrtps \
test.sqrtss \
test.rsqrtps \
test.rsqrtss \
test.maxps \
test.maxss \
test.minps \
test.minss \
test.cmpps \
test.cmpss \
test.comiss \
test.ucomiss \
test.andps \
test.andnps \
test.orps \
test.xorps \
test.shufps \
test.unpckhps \
test.unpcklps \
test.cvtpi2ps \
test.cvtsi2ss \
test.cvtps2pi \
test.cvttps2pi \
test.cvtss2si \
test.cvttss2si \
test.ldmxcsr \
test.stmxcsr \
test.pavgb \
test.pextrw \
test.pinsrw \
test.pmaxub \
test.pmaxsb \
test.pminub \
test.pminsb \
test.pmovmskb \
test.pmulhuw \
test.psadbw \
test.pshufw \
test.maskmovq \
test.movntq \
test.movntps \
test.prefetchh \
test.sfence

SSE2_INST_TESTS := \
test.movapd \
test.movupd \
test.movhpd \
test.movlpd \
test.movmskpd \
test.addpd \
test.addsd \
test.subpd \
test.subsd \
test.mulpd \
test.mulsd \
test.divpd \
test.divsd \
test.sqrtpd \
test.sqrtsd \
test.maxpd \
test.maxsd \
test.minpd \
test.minsd \
test.andpd \
test.andnpd \
test.orpd \
test.xorpd \
test.cmppd \
test.comisd \
test.ucomisd \
test.shufpd \
test.unpckhpd \
test.unpcklpd \
test.cvtpd2pi \
test.cvttpd2pi \
test.cvtpi2pd \
test.cvtpd2dq \
test.cvttpd2dq \
test.cvtdq2pd \
test.cvtps2pd \
test.cvtpd2ps \
test.cvtss2sd \
test.cvtsd2ss \
test.cvtsd2si \
test.cvttsd2si \
test.cvtsi2sd \
test.cvtdq2ps \
test.cvtps2dq \
test.cvttps2dq \
test.movdqa \
test.movdqu \
test.movq2dq \
test.movdq2q \
test.pmuludq \
test.pshuflw \
test.pshufhw \
test.pshufd \
test.pslldq \
test.psrldq \
test.clflush \
test.lfence \
test.mfence \
test.pause \
test.maskmovdqu \
test.movntpd \
test.movntdq \
test.movnti

SSE3_INST_TESTS := \
test.fisttp \
test.lddqu \
test.addsubps \
test.addsubpd \
test.haddps \
test.hsubps \
test.haddpd \
test.hsubpd \
test.movshdup \
test.movsldup \
test.movddup \
test.monitor \
test.mwait

SSSE3_INST_TESTS := \
test.phaddw \
test.phaddsw \
test.phsubw \
test.phsubsw \
test.pabsb \
test.pmaddubsw \
test.pmulhrsw \
test.pshufb \
test.psignb \
test.palignr

SSE4_INST_TESTS := \
test.pmulld \
test.dppd \
test.dpps \
test.movntdqa \
test.blendpd \
test.blendps \
test.blendvpd \
test.blendvps \
test.pblendvb \
test.pblendw \
test.pminud \
test.pmaxud \
test.roundps \
test.roundpd \
test.roundss \
test.roundsd \
test.extractps \
test.insertps \
test.pmovsx \
test.pmovzx \
test.mpsadbw \
test.phminposuw \
test.ptest \
test.packusdw \
test.pcmpestri \
test.pcmpestrm \
test.pcmpistri \
test.pcmpistrm \
test.aesdec \
test.aesdeclast \
test.aesenc \
test.aesenclast \
test.aesimc \
test.aeskeygenassist \
test.pclmulqdq

AVX_INST_TESTS := \
test.vcvtph2ps \
test.vcvtps2ph

TSX_INST_TESTS := \
test.xabort \
test.xacquire \
test.xrelease \
test.xbegin \
test.xtest

SYSTEM_INST_TESTS := \
test.clac \
test.clts \
test.hlt \
test.invd \
test.invlpg \
test.invpcid \
test.lar \
test.lgdt \
test.lldt \
test.lmsw \
test.lsl \
test.ltr \
test.mov.cr \
test.rdfsbase \
test.rdmsr \
test.rdpmc \
test.rdtsc \
test.rsm \
test.sgdt \
test.sldt \
test.smsw \
test.stac \
test.str \
test.sysenter \
test.sysexit \
test.verr \
test.wbinvd \
test.wrfsbase \
test.wrmsr \
test.xgetbv \
test.xrstor \
test.xsave \
test.xsaveopt \
test.xsetbv

_64BIT_MODE_INST_TESTS := \
test.movzx \
test.swapgs \
test.syscall \
test.sysret

VM_INST_TESTS := \
test.invept \
test.invvpid \
test.vmclear \
test.vmfunc \
test.vmlaunch \
test.vmptrld \
test.vmread \
test.vmresume \
test.vmwrite \
test.vmxoff \
test.vmxon \
test.vmcall

SAFER_MODE_INST_TESTS := \
test.getsec

INST_TESTS := \
$(GP_INST_TESTS) \
$(FPU_INST_TESTS) \
$(FPU_SIMD_INST_TESTS) \
$(MM_INST_TESTS) \
$(SSE_INST_TESTS) \
$(SSE2_INST_TESTS) \
$(SSE3_INST_TESTS) \
$(SSSE3_INST_TESTS) \
$(SSE4_INST_TESTS) \
$(AVX_INST_TESTS) \
$(TSX_INST_TESTS) \
$(SYSTEM_INST_TESTS) \
$(_64BIT_MODE_INST_TESTS) \
$(VM_INST_TESTS) \
$(SAFER_MODE_INST_TESTS)

ENC_TESTS	:= \
test.elfo \
$(sort $(INST_TESTS))

SRC 		:= $(patsubst test.%,asm/%.s,$(ENC))
OBJS		:= $(patsubst asm/%.s,obj/%.o,$(SRC))

#######################################################

all: $(ENC_TESTS)

clean:
	rm -f out core
	rm -f *.e
	rm -rf obj/*.o

.PHONY: all clean $(ENC_TESTS)

#######################################################

alpha:
	@echo $(ENC_TESTS)

gen: $(GP_INST_TESTS)

fpu: $(FPU_INST_TESTS)

fpu.smid: $(FPU_SIMD_INST_TESTS)

mm: $(MM_INST_TESTS)

sse: $(SSE_INST_TESTS)

sse2: $(SSE2_INST_TESTS)

sse3: $(SSE3_INST_TESTS)

ssse3: $(SSSE3_INST_TESTS)

sse4: $(SSE4_INST_TESTS)

avx: $(AVX_INST_TESTS)

tsx: $(TSX_INST_TESTS)

system: $(SYSTEM_INST_TESTS)

64bit: $(_64BIT_MODE_INST_TESTS)

vm: $(VM_INST_TESTS)

safer: $(SAFER_MODE_INST_TESTS)

$(INST_TESTS):test.%: obj/%.o | $(ELF)
	$(ELF) $< > out; diff out $(patsubst obj/%.o,expected/%.e,$<)

%.e: obj/%.o
	objdump -d $< > $@

obj/%.o: asm/%.s | obj
	as $< -o $@

test.elfo: ../obj/elf/elf.o | $(ELF)
	$(ELF) ../obj/elf/elf.o > out;diff out expected/elf.e
	
#######################################################

asm/add.s: asm/adc.s
	sed 's/adc/add/' < $< > $@

asm/and.s: asm/adc.s
	sed 's/adc/add/' < $< > $@

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


asm/not.s: asm/neg.s
	sed 's/neg/not/' < $< > $@

asm/inc.s: asm/neg.s
	sed 's/neg/inc/' < $< > $@

asm/dec.s: asm/neg.s
	sed 's/neg/dec/' < $< > $@

#######################################################

obj:
	mkdir $@

