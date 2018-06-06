pavgb %mm0, %mm1
pavgb %mm7, %mm3
pavgb (%r10), %mm4

pavgb %xmm0, %xmm1
pavgb %xmm7, %xmm3
pavgb (%r10), %xmm4

pavgw %mm0, %mm1
pavgw %mm7, %mm3
pavgw (%r10), %mm4

pavgw %xmm0, %xmm1
pavgw %xmm7, %xmm3
pavgw (%r10), %xmm4

vpavgb %xmm1, %xmm3, %xmm6
vpavgb (%r10), %xmm3, %xmm6

vpavgb %xmm16, %xmm30, %xmm16
vpavgb (%r10), %xmm31, %xmm26

vpavgb %ymm1, %ymm3, %ymm6
vpavgb (%r10), %ymm3, %ymm6

vpavgb %ymm16, %ymm30, %ymm16
vpavgb (%r10), %ymm31, %ymm26

vpavgw %xmm1, %xmm3, %xmm6
vpavgw (%r10), %xmm3, %xmm6

vpavgw %xmm16, %xmm30, %xmm16
vpavgw (%r10), %xmm31, %xmm26

vpavgw %ymm1, %ymm3, %ymm6
vpavgw (%r10), %ymm3, %ymm6

vpavgw %ymm16, %ymm30, %ymm16
vpavgw (%r10), %ymm31, %ymm26
