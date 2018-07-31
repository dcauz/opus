haddps %xmm1, %xmm2
haddps %xmm8, %xmm2
haddps %xmm1, %xmm12
haddps %xmm8, %xmm12

haddps (%r10), %xmm2
haddps (%r10), %xmm2
haddps (%r10), %xmm12
haddps (%r10), %xmm12

vhaddps %xmm1, %xmm2,%xmm3
vhaddps %xmm8, %xmm2,%xmm13
vhaddps %xmm8, %xmm12,%xmm3

vhaddps (%r10), %xmm2,%xmm3
vhaddps (%r10), %xmm2,%xmm13
vhaddps (%r10), %xmm12,%xmm3


vhaddps %ymm1, %ymm2,%ymm3
vhaddps %ymm8, %ymm2,%ymm13
vhaddps %ymm8, %ymm12,%ymm3

vhaddps (%r10), %ymm2,%ymm3
vhaddps (%r10), %ymm2,%ymm13
vhaddps (%r10), %ymm12,%ymm3
