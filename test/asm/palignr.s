palignr $1, %mm1, %mm7
palignr $11, (%r9), %mm7
palignr $121, (%r9), %mm7
palignr $221, (%r9), %mm7

palignr $1, %xmm1, %xmm7
palignr $1, %xmm11, %xmm7
palignr $11, (%r9), %xmm7
palignr $121, (%r9), %xmm7
palignr $221, (%r9), %xmm7

vpalignr $1, %xmm1, %xmm2, %xmm5
vpalignr $1, %xmm5, %xmm6, %xmm9
vpalignr $1, %xmm9, %xmm10, %xmm13
vpalignr $1, %xmm13, %xmm14, %xmm17
vpalignr $1, %xmm17, %xmm18, %xmm21
vpalignr $1, %xmm21, %xmm22, %xmm25
vpalignr $1, %xmm25, %xmm26, %xmm29
vpalignr $1, %xmm29, %xmm30, %xmm31

vpalignr $11, (%r9), %xmm1, %xmm9
vpalignr $121, (%r9), %xmm7, %xmm19
vpalignr $221, (%r9), %xmm13, %xmm23
vpalignr $11, (%r9), %xmm27, %xmm31

vpalignr $1, %ymm1, %ymm7, %ymm9
vpalignr $1, %ymm11, %ymm7, %ymm9
vpalignr $1, %ymm21, %ymm27, %ymm9
vpalignr $11, (%r9), %ymm27, %ymm9
vpalignr $11, (%r9), %ymm7, %ymm9
vpalignr $121, (%r9), %ymm7, %ymm9
vpalignr $221, (%r9), %ymm7, %ymm9

vpalignr $1, %zmm1, %zmm7, %zmm9
vpalignr $1, %zmm11, %zmm7, %zmm9
vpalignr $1, %zmm21, %zmm27, %zmm9
vpalignr $11, (%r9), %zmm27, %zmm9
vpalignr $11, (%r9), %zmm7, %zmm9
vpalignr $121, (%r9), %zmm7, %zmm9
vpalignr $221, (%r9), %zmm7, %zmm9

vpalignr $1, %xmm1, %xmm7, %xmm9{%k4}
vpalignr $1, %xmm11, %xmm7, %xmm9{%k4}
vpalignr $1, %xmm21, %xmm27, %xmm9{%k4}
vpalignr $11, (%r9), %xmm27, %xmm9{%k4}
vpalignr $11, (%r9), %xmm7, %xmm9{%k4}
vpalignr $121, (%r9), %xmm7, %xmm9{%k4}
vpalignr $221, (%r9), %xmm7, %xmm9{%k4}

vpalignr $1, %ymm1, %ymm7, %ymm9{%k4}
vpalignr $1, %ymm11, %ymm7, %ymm9{%k4}
vpalignr $1, %ymm21, %ymm27, %ymm9{%k4}
vpalignr $11, (%r9), %ymm27, %ymm9{%k4}
vpalignr $11, (%r9), %ymm7, %ymm9{%k4}
vpalignr $121, (%r9), %ymm7, %ymm9{%k4}
vpalignr $221, (%r9), %ymm7, %ymm9{%k4}

vpalignr $1, %zmm1, %zmm7, %zmm9{%k4}
vpalignr $1, %zmm11, %zmm7, %zmm9{%k4}
vpalignr $1, %zmm21, %zmm27, %zmm9{%k4}
vpalignr $11, (%r9), %zmm27, %zmm9{%k4}
vpalignr $11, (%r9), %zmm7, %zmm9{%k4}
vpalignr $121, (%r9), %zmm7, %zmm9{%k4}
vpalignr $221, (%r9), %zmm7, %zmm9{%k4}
