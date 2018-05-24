addss %xmm2, %xmm7
addss (%r10), %xmm0

vaddss 0x10(%r10,%r12,1),  %xmm31, %xmm10
vaddss 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vaddss 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vaddss %xmm7,%xmm25,%xmm10
