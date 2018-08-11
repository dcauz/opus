pmulld %xmm2, %xmm6
pmulld (%r10), %xmm6

vpmulld %xmm2, %xmm6, %xmm10
vpmulld %xmm2, %xmm16, %xmm10
vpmulld (%r10), %xmm6, %xmm10
vpmulld (%r10), %xmm16, %xmm10

vpmullq %xmm2, %xmm6, %xmm10
vpmullq %xmm2, %xmm16, %xmm10
vpmullq (%r10), %xmm6, %xmm10
vpmullq (%r10), %xmm16, %xmm10

vpmulld %ymm2, %ymm6, %ymm10
vpmulld %ymm2, %ymm16, %ymm10
vpmulld (%r10), %ymm6, %ymm10
vpmulld (%r10), %ymm16, %ymm10

vpmullq %ymm2, %ymm6, %ymm10
vpmullq %ymm2, %ymm16, %ymm10
vpmullq (%r10), %ymm6, %ymm10
vpmullq (%r10), %ymm16, %ymm10

vpmulld %zmm2, %zmm6, %zmm10
vpmulld %zmm2, %zmm16, %zmm10
vpmulld (%r10), %zmm6, %zmm10
vpmulld (%r10), %zmm16, %zmm10

vpmullq %zmm2, %zmm6, %zmm10
vpmullq %zmm2, %zmm16, %zmm10
vpmullq (%r10), %zmm6, %zmm10
vpmullq (%r10), %zmm16, %zmm10

vpmulld %xmm2, %xmm6, %xmm10{%k5}
vpmulld %xmm2, %xmm16, %xmm10{%k5}
vpmulld (%r10), %xmm6, %xmm10{%k5}
vpmulld (%r10), %xmm16, %xmm10{%k5}

vpmullq %xmm2, %xmm6, %xmm10{%k5}
vpmullq %xmm2, %xmm16, %xmm10{%k5}
vpmullq (%r10), %xmm6, %xmm10{%k5}
vpmullq (%r10), %xmm16, %xmm10{%k5}

vpmulld %ymm2, %ymm6, %ymm10{%k5}
vpmulld %ymm2, %ymm16, %ymm10{%k5}
vpmulld (%r10), %ymm6, %ymm10{%k5}
vpmulld (%r10), %ymm16, %ymm10{%k5}

vpmullq %ymm2, %ymm6, %ymm10{%k5}
vpmullq %ymm2, %ymm16, %ymm10{%k5}
vpmullq (%r10), %ymm6, %ymm10{%k5}
vpmullq (%r10), %ymm16, %ymm10{%k5}

vpmulld %zmm2, %zmm6, %zmm10{%k5}
vpmulld %zmm2, %zmm16, %zmm10{%k5}
vpmulld (%r10), %zmm6, %zmm10{%k5}
vpmulld (%r10), %zmm16, %zmm10{%k5}

vpmullq %zmm2, %zmm6, %zmm10{%k5}
vpmullq %zmm2, %zmm16, %zmm10{%k5}
vpmullq (%r10), %zmm6, %zmm10{%k5}
vpmullq (%r10), %zmm16, %zmm10{%k5}
