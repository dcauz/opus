haddpd %xmm1, %xmm2
haddpd %xmm8, %xmm2
haddpd %xmm1, %xmm12
haddpd %xmm8, %xmm12

haddpd (%r10), %xmm2
haddpd (%r10), %xmm2
haddpd (%r10), %xmm12
haddpd (%r10), %xmm12

vhaddpd %xmm1, %xmm2,%xmm3
vhaddpd %xmm8, %xmm2,%xmm13
vhaddpd %xmm8, %xmm12,%xmm3

vhaddpd (%r10), %xmm2,%xmm3
vhaddpd (%r10), %xmm2,%xmm13
vhaddpd (%r10), %xmm12,%xmm3


vhaddpd %ymm1, %ymm2,%ymm3
vhaddpd %ymm8, %ymm2,%ymm13
vhaddpd %ymm8, %ymm12,%ymm3

vhaddpd (%r10), %ymm2,%ymm3
vhaddpd (%r10), %ymm2,%ymm13
vhaddpd (%r10), %ymm12,%ymm3
