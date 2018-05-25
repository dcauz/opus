mulss %xmm2, %xmm7
mulss (%r10), %xmm0

vmulss 0x10(%r10,%r12,1),  %xmm31, %xmm10
vmulss 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vmulss 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vmulss %xmm7,%xmm25,%xmm10
