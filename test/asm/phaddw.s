phaddw %mm0, %mm7
phaddw (%r8), %mm7
phaddw %xmm0, %xmm7
phaddw (%r8), %xmm7

phaddd %mm0, %mm7
phaddd (%r8), %mm7
phaddd %xmm0, %xmm7
phaddd (%r8), %xmm7

vphaddw %xmm0, %xmm7,%xmm15
vphaddw (%r8), %xmm7,%xmm15

vphaddd %xmm0, %xmm7,%xmm15
vphaddd (%r8), %xmm7,%xmm15

vphaddw %ymm0, %ymm7,%ymm15
vphaddw (%r8), %ymm7,%ymm15

vphaddd %ymm0, %ymm7,%ymm15
vphaddd (%r8), %ymm7,%ymm15

