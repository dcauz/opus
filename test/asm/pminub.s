pminub %xmm1, %xmm2
pminuw %xmm1, %xmm2
pminub %xmm15, %xmm2
pminuw %xmm15, %xmm2

pminub (%r10), %xmm2
pminuw (%r10), %xmm2
pminub (%r10), %xmm2
pminuw (%r10), %xmm2

pminub 2(%r10), %xmm2
pminuw 4(%r10), %xmm2
pminuw 8(%r10), %xmm2
pminub 5(%r10), %xmm2
pminuw 99(%r10), %xmm2

vpminub %xmm1, %xmm2, %xmm3
vpminuw %xmm1, %xmm2, %xmm3
vpminub %xmm15, %xmm2, %xmm3
vpminuw %xmm15, %xmm2, %xmm3

vpminub (%r10), %xmm2, %xmm3
vpminuw (%r10), %xmm2, %xmm3
vpminub (%r10), %xmm2, %xmm3
vpminuw (%r10), %xmm2, %xmm3

vpminub 2(%r10), %xmm2, %xmm3
vpminuw 4(%r10), %xmm2, %xmm3
vpminuw 8(%r10), %xmm2, %xmm3
vpminub 5(%r10), %xmm2, %xmm3
vpminuw 99(%r10), %xmm2, %xmm3

vpminub %xmm31, %xmm2, %xmm3
vpminuw %xmm31, %xmm2, %xmm3
vpminub %xmm15, %xmm2, %xmm3
vpminuw %xmm15, %xmm2, %xmm3

vpminub (%r10), %xmm2, %xmm31
vpminuw (%r10), %xmm2, %xmm31
vpminub (%r10), %xmm2, %xmm31
vpminuw (%r10), %xmm2, %xmm31

vpminub 2(%r10), %xmm2, %xmm31
vpminuw 4(%r10), %xmm2, %xmm31
vpminuw 8(%r10), %xmm2, %xmm31
vpminub 5(%r10), %xmm2, %xmm31
vpminuw 99(%r10), %xmm2, %xmm31

vpminub %ymm1, %ymm2, %ymm3
vpminuw %ymm1, %ymm2, %ymm3
vpminub %ymm15, %ymm2, %ymm3
vpminuw %ymm15, %ymm2, %ymm3

vpminub (%r10), %ymm2, %ymm3
vpminuw (%r10), %ymm2, %ymm3
vpminub (%r10), %ymm2, %ymm3
vpminuw (%r10), %ymm2, %ymm3

vpminub 2(%r10), %ymm2, %ymm3
vpminuw 4(%r10), %ymm2, %ymm3
vpminuw 8(%r10), %ymm2, %ymm3
vpminub 5(%r10), %ymm2, %ymm3
vpminuw 99(%r10), %ymm2, %ymm3

vpminub %ymm31, %ymm2, %ymm3
vpminuw %ymm31, %ymm2, %ymm3
vpminub %ymm15, %ymm2, %ymm3
vpminuw %ymm15, %ymm2, %ymm3

vpminub (%r10), %ymm2, %ymm31
vpminuw (%r10), %ymm2, %ymm31
vpminub (%r10), %ymm2, %ymm31
vpminuw (%r10), %ymm2, %ymm31

vpminub 2(%r10), %ymm2, %ymm31
vpminuw 4(%r10), %ymm2, %ymm31
vpminuw 8(%r10), %ymm2, %ymm31
vpminub 5(%r10), %ymm2, %ymm31
vpminuw 99(%r10), %ymm2, %ymm31

vpminub %zmm1, %zmm2, %zmm3
vpminuw %zmm1, %zmm2, %zmm3
vpminub %zmm15, %zmm2, %zmm3
vpminuw %zmm15, %zmm2, %zmm3

vpminub (%r10), %zmm2, %zmm3
vpminuw (%r10), %zmm2, %zmm3
vpminub (%r10), %zmm2, %zmm3
vpminuw (%r10), %zmm2, %zmm3

vpminub 2(%r10), %zmm2, %zmm3
vpminuw 4(%r10), %zmm2, %zmm3
vpminuw 8(%r10), %zmm2, %zmm3
vpminub 5(%r10), %zmm2, %zmm3
vpminuw 99(%r10), %zmm2, %zmm3

vpminub %zmm31, %zmm2, %zmm3
vpminuw %zmm31, %zmm2, %zmm3
vpminub %zmm15, %zmm2, %zmm3
vpminuw %zmm15, %zmm2, %zmm3

vpminub (%r10), %zmm2, %zmm31
vpminuw (%r10), %zmm2, %zmm31
vpminub (%r10), %zmm2, %zmm31
vpminuw (%r10), %zmm2, %zmm31

vpminub 2(%r10), %zmm2, %zmm31
vpminuw 4(%r10), %zmm2, %zmm31
vpminuw 8(%r10), %zmm2, %zmm31
vpminub 5(%r10), %zmm2, %zmm31
vpminuw 99(%r10), %zmm2, %zmm31
