hsubpd %xmm1, %xmm2
hsubpd %xmm8, %xmm2
hsubpd %xmm1, %xmm12
hsubpd %xmm8, %xmm12

hsubpd (%r10), %xmm2
hsubpd (%r10), %xmm2
hsubpd (%r10), %xmm12
hsubpd (%r10), %xmm12

vhsubpd %xmm1, %xmm2,%xmm3
vhsubpd %xmm8, %xmm2,%xmm13
vhsubpd %xmm8, %xmm12,%xmm3

vhsubpd (%r10), %xmm2,%xmm3
vhsubpd (%r10), %xmm2,%xmm13
vhsubpd (%r10), %xmm12,%xmm3


vhsubpd %ymm1, %ymm2,%ymm3
vhsubpd %ymm8, %ymm2,%ymm13
vhsubpd %ymm8, %ymm12,%ymm3

vhsubpd (%r10), %ymm2,%ymm3
vhsubpd (%r10), %ymm2,%ymm13
vhsubpd (%r10), %ymm12,%ymm3
