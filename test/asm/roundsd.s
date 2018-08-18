roundsd $1, %xmm1, %xmm2
roundsd $11, %xmm15, %xmm2

roundsd $1, (%r10), %xmm2
roundsd $11, (%r11), %xmm2
roundsd $111, (%r12), %xmm2

vroundsd $1, %xmm1, %xmm2, %xmm8
vroundsd $11, %xmm15, %xmm2, %xmm8

vroundsd $1, (%r10), %xmm2, %xmm8
vroundsd $11, (%r11), %xmm2, %xmm8
vroundsd $111, (%r12), %xmm2, %xmm8
