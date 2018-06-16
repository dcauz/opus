pmulhuw %xmm9, %xmm3
pmulhuw (%r10), %xmm5

vpmulhuw %xmm2, %xmm5, %xmm25
vpmulhuw %xmm2, %xmm5, %xmm7
vpmulhuw (%r10), %xmm5, %xmm2
vpmulhuw (%r10), %xmm5, %xmm25
vpmulhuw (%r10), %xmm25, %xmm20
vpmulhuw (%r10), %xmm25, %xmm2

vpmulhuw %ymm2, %ymm5, %ymm25
vpmulhuw %ymm2, %ymm5, %ymm7
vpmulhuw (%r10), %ymm5, %ymm2
vpmulhuw (%r10), %ymm5, %ymm25
vpmulhuw (%r10), %ymm25, %ymm20
vpmulhuw (%r10), %ymm25, %ymm2

vpmulhuw %zmm3, %zmm5, %zmm25
vpmulhuw (%r10), %zmm5, %zmm25
vpmulhuw (%r10), %zmm25, %zmm20
vpmulhuw (%r10), %zmm25, %zmm2


