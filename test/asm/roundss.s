roundss $1, %xmm1, %xmm2
roundss $11, %xmm15, %xmm2

roundss $1, (%r10), %xmm2
roundss $11, (%r11), %xmm2
roundss $111, (%r12), %xmm2

vroundss $1, %xmm1, %xmm2, %xmm8
vroundss $11, %xmm15, %xmm2, %xmm8

vroundss $1, (%r10), %xmm2, %xmm8
vroundss $11, (%r11), %xmm2, %xmm8
vroundss $111, (%r12), %xmm2, %xmm8
