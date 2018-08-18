roundpd $1, %xmm1, %xmm2
roundpd $11, %xmm15, %xmm2

roundpd $1, (%r10), %xmm2
roundpd $11, (%r11), %xmm2
roundpd $111, (%r12), %xmm2

vroundpd $1, %xmm1, %xmm2
vroundpd $11, %xmm15, %xmm2

vroundpd $1, (%r10), %xmm2
vroundpd $11, (%r11), %xmm2
vroundpd $111, (%r12), %xmm2

vroundpd $1, %ymm1, %ymm2
vroundpd $11, %ymm15, %ymm2

vroundpd $1, (%r10), %ymm2
vroundpd $11, (%r11), %ymm2
vroundpd $111, (%r12), %ymm2
