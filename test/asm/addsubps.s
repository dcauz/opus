addsubps %xmm1, %xmm2
addsubps %xmm8, %xmm2
addsubps %xmm1, %xmm12
addsubps %xmm8, %xmm12

addsubps (%r10), %xmm2
addsubps (%r10), %xmm2
addsubps (%r10), %xmm12
addsubps (%r10), %xmm12

vaddsubps %xmm1, %xmm2,%xmm3
vaddsubps %xmm8, %xmm2,%xmm13
vaddsubps %xmm8, %xmm12,%xmm3

vaddsubps (%r10), %xmm2,%xmm3
vaddsubps (%r10), %xmm2,%xmm13
vaddsubps (%r10), %xmm12,%xmm3


vaddsubps %ymm1, %ymm2,%ymm3
vaddsubps %ymm8, %ymm2,%ymm13
vaddsubps %ymm8, %ymm12,%ymm3

vaddsubps (%r10), %ymm2,%ymm3
vaddsubps (%r10), %ymm2,%ymm13
vaddsubps (%r10), %ymm12,%ymm3
