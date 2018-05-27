maxss %xmm2, %xmm7
maxss (%r10), %xmm0

vmaxss 0x10(%r10,%r12,1),  %xmm31, %xmm10
vmaxss 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vmaxss 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vmaxss %xmm7,%xmm25,%xmm10
