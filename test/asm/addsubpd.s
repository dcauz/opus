addsubpd %xmm1, %xmm2
addsubpd %xmm8, %xmm2
addsubpd %xmm1, %xmm12
addsubpd %xmm8, %xmm12

addsubpd (%r10), %xmm2
addsubpd (%r10), %xmm2
addsubpd (%r10), %xmm12
addsubpd (%r10), %xmm12

vaddsubpd %xmm1, %xmm2,%xmm3
vaddsubpd %xmm8, %xmm2,%xmm13
vaddsubpd %xmm8, %xmm12,%xmm3

vaddsubpd (%r10), %xmm2,%xmm3
vaddsubpd (%r10), %xmm2,%xmm13
vaddsubpd (%r10), %xmm12,%xmm3


vaddsubpd %ymm1, %ymm2,%ymm3
vaddsubpd %ymm8, %ymm2,%ymm13
vaddsubpd %ymm8, %ymm12,%ymm3

vaddsubpd (%r10), %ymm2,%ymm3
vaddsubpd (%r10), %ymm2,%ymm13
vaddsubpd (%r10), %ymm12,%ymm3
