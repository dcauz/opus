divss %xmm2, %xmm7
divss (%r10), %xmm0

vdivss 0x10(%r10,%r12,1),  %xmm31, %xmm10
vdivss 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vdivss 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vdivss %xmm7,%xmm25,%xmm10
