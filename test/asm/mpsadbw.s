mpsadbw $1, %xmm1, %xmm2
mpsadbw $1, (%r10), %xmm2
mpsadbw $1, %xmm11, %xmm12
mpsadbw $1, (%r10), %xmm12

vmpsadbw $1, %xmm1, %xmm2, %xmm3
vmpsadbw $1, (%r10), %xmm2, %xmm3
vmpsadbw $1, %xmm11, %xmm12, %xmm3
vmpsadbw $1, (%r10), %xmm12, %xmm3

vmpsadbw $1, %ymm1, %ymm2, %ymm3
vmpsadbw $1, (%r10), %ymm2, %ymm3
vmpsadbw $1, %ymm11, %ymm12, %ymm3
vmpsadbw $1, (%r10), %ymm12, %ymm3

