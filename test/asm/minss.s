minss %xmm2, %xmm7
minss (%r10), %xmm0

vminss 0x10(%r10,%r12,1),  %xmm31, %xmm10
vminss 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vminss 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vminss %xmm7,%xmm25,%xmm10
