psadbw %xmm9, %xmm3
psadbw (%r10), %xmm5

vpsadbw %xmm2, %xmm5, %xmm25
vpsadbw %xmm2, %xmm5, %xmm7
vpsadbw (%r10), %xmm5, %xmm2
vpsadbw (%r10), %xmm5, %xmm25
vpsadbw (%r10), %xmm25, %xmm20
vpsadbw (%r10), %xmm25, %xmm2

vpsadbw %ymm2, %ymm5, %ymm25
vpsadbw %ymm2, %ymm5, %ymm7
vpsadbw (%r10), %ymm5, %ymm2
vpsadbw (%r10), %ymm5, %ymm25
vpsadbw (%r10), %ymm25, %ymm20
vpsadbw (%r10), %ymm25, %ymm2

vpsadbw %zmm3, %zmm5, %zmm25
vpsadbw (%r10), %zmm5, %zmm25
vpsadbw (%r10), %zmm25, %zmm20
vpsadbw (%r10), %zmm25, %zmm2

