subss %xmm2, %xmm7
subss (%r10), %xmm0

vsubss 0x10(%r10,%r12,1),  %xmm31, %xmm10
vsubss 0x10(%r10,%r12,1),  %xmm5,  %xmm3
vsubss 0x10(%r10,%r12,1),  %xmm5,  %xmm3

vsubss %xmm7,%xmm25,%xmm10
