roundps $1, %xmm1, %xmm2
roundps $11, %xmm15, %xmm2

roundps $1, (%r10), %xmm2
roundps $11, (%r11), %xmm2
roundps $111, (%r12), %xmm2

vroundps $1, %xmm1, %xmm2
vroundps $11, %xmm15, %xmm2

vroundps $1, (%r10), %xmm2
vroundps $11, (%r11), %xmm2
vroundps $111, (%r12), %xmm2

vroundps $1, %ymm1, %ymm2
vroundps $11, %ymm15, %ymm2

vroundps $1, (%r10), %ymm2
vroundps $11, (%r11), %ymm2
vroundps $111, (%r12), %ymm2
