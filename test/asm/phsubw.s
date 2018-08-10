phsubw %mm0, %mm7
phsubw (%r8), %mm7
phsubw %xmm0, %xmm7
phsubw (%r8), %xmm7

phsubd %mm0, %mm7
phsubd (%r8), %mm7
phsubd %xmm0, %xmm7
phsubd (%r8), %xmm7

vphsubw %xmm0, %xmm7,%xmm15
vphsubw (%r8), %xmm7,%xmm15

vphsubd %xmm0, %xmm7,%xmm15
vphsubd (%r8), %xmm7,%xmm15

vphsubw %ymm0, %ymm7,%ymm15
vphsubw (%r8), %ymm7,%ymm15

vphsubd %ymm0, %ymm7,%ymm15
vphsubd (%r8), %ymm7,%ymm15

