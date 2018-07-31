hsubps %xmm1, %xmm2
hsubps %xmm8, %xmm2
hsubps %xmm1, %xmm12
hsubps %xmm8, %xmm12

hsubps (%r10), %xmm2
hsubps (%r10), %xmm2
hsubps (%r10), %xmm12
hsubps (%r10), %xmm12

vhsubps %xmm1, %xmm2,%xmm3
vhsubps %xmm8, %xmm2,%xmm13
vhsubps %xmm8, %xmm12,%xmm3

vhsubps (%r10), %xmm2,%xmm3
vhsubps (%r10), %xmm2,%xmm13
vhsubps (%r10), %xmm12,%xmm3


vhsubps %ymm1, %ymm2,%ymm3
vhsubps %ymm8, %ymm2,%ymm13
vhsubps %ymm8, %ymm12,%ymm3

vhsubps (%r10), %ymm2,%ymm3
vhsubps (%r10), %ymm2,%ymm13
vhsubps (%r10), %ymm12,%ymm3
