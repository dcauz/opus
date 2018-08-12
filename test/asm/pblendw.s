pblendw $1, (%rdx), %xmm1
pblendw $11, (%rdx), %xmm15

pblendw $1, %xmm7, %xmm1
pblendw $11, %xmm7, %xmm15

vpblendw $1, (%rdx), %xmm1, %xmm9
vpblendw $11, (%rdx), %xmm15, %xmm9

vpblendw $1, %xmm7, %xmm1, %xmm9
vpblendw $11, %xmm7, %xmm15, %xmm9

vpblendw $1, %ymm7, %ymm1, %ymm9
vpblendw $11, %ymm7, %ymm15, %ymm9

vpblendw $1, (%r10), %ymm1, %ymm9
vpblendw $11, (%r10), %ymm15, %ymm9

vpblendw $1, %ymm7, %ymm1, %ymm9
vpblendw $11, %ymm7, %ymm15, %ymm9

