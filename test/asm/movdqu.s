movdqu %xmm3, %xmm4
movdqu (%r10), %xmm4
movdqu %xmm3, (%r12)

vmovdqu %xmm3, %xmm4
vmovdqu (%r10), %xmm4
vmovdqu %xmm3, (%r12)

vmovdqu %ymm3, %ymm4
vmovdqu (%r10), %ymm4
vmovdqu %ymm3, (%r12)

vmovdqu32 %xmm3, %xmm4
vmovdqu32 %xmm30, %xmm4
vmovdqu32 %xmm3, %xmm24
vmovdqu32 %xmm30, %xmm24
vmovdqu32 (%r10), %xmm4
vmovdqu32 %xmm3, (%r12)
vmovdqu32 (%r10), %xmm24
vmovdqu32 %xmm31, (%r12)

vmovdqu32 %xmm3, %xmm4 {%k1}
vmovdqu32 %xmm30, %xmm4 {%k1}
vmovdqu32 %xmm3, %xmm24 {%k1}
vmovdqu32 %xmm30, %xmm24 {%k1}
vmovdqu32 (%r10), %xmm4 {%k1}
vmovdqu32 %xmm3, (%r12) {%k1}
vmovdqu32 (%r10), %xmm24 {%k1}
vmovdqu32 %xmm31, (%r12) {%k1}

vmovdqu64 %xmm3, %xmm4
vmovdqu64 %xmm30, %xmm4
vmovdqu64 %xmm3, %xmm24
vmovdqu64 %xmm30, %xmm24
vmovdqu64 (%r10), %xmm4
vmovdqu64 %xmm3, (%r12)
vmovdqu64 (%r10), %xmm24
vmovdqu64 %xmm31, (%r12)

vmovdqu64 %xmm3, %xmm4 {%k1}
vmovdqu64 %xmm30, %xmm4 {%k1}
vmovdqu64 %xmm3, %xmm24 {%k1}
vmovdqu64 %xmm30, %xmm24 {%k1}
vmovdqu64 (%r10), %xmm4 {%k1}
vmovdqu64 %xmm3, (%r12) {%k1}
vmovdqu64 (%r10), %xmm24 {%k1}
vmovdqu64 %xmm31, (%r12) {%k1}

vmovdqu32 %ymm3, %ymm4
vmovdqu32 %ymm30, %ymm4
vmovdqu32 %ymm3, %ymm24
vmovdqu32 %ymm30, %ymm24
vmovdqu32 (%r10), %ymm4
vmovdqu32 %ymm3, (%r12)
vmovdqu32 (%r10), %ymm24
vmovdqu32 %ymm31, (%r12)

vmovdqu32 %ymm3, %ymm4 {%k1}
vmovdqu32 %ymm30, %ymm4 {%k1}
vmovdqu32 %ymm3, %ymm24 {%k1}
vmovdqu32 %ymm30, %ymm24 {%k1}
vmovdqu32 (%r10), %ymm4 {%k1}
vmovdqu32 %ymm3, (%r12) {%k1}
vmovdqu32 (%r10), %ymm24 {%k1}
vmovdqu32 %ymm31, (%r12) {%k1}

vmovdqu64 %ymm3, %ymm4
vmovdqu64 %ymm30, %ymm4
vmovdqu64 %ymm3, %ymm24
vmovdqu64 %ymm30, %ymm24
vmovdqu64 (%r10), %ymm4
vmovdqu64 %ymm3, (%r12)
vmovdqu64 (%r10), %ymm24
vmovdqu64 %ymm31, (%r12)

vmovdqu64 %ymm3, %ymm4 {%k1}
vmovdqu64 %ymm30, %ymm4 {%k1}
vmovdqu64 %ymm3, %ymm24 {%k1}
vmovdqu64 %ymm30, %ymm24 {%k1}
vmovdqu64 (%r10), %ymm4 {%k1}
vmovdqu64 %ymm3, (%r12) {%k1}
vmovdqu64 (%r10), %ymm24 {%k1}
vmovdqu64 %ymm31, (%r12) {%k1}

vmovdqu32 %zmm3, %zmm4
vmovdqu32 %zmm30, %zmm4
vmovdqu32 %zmm3, %zmm24
vmovdqu32 %zmm30, %zmm24
vmovdqu32 (%r10), %zmm4
vmovdqu32 %zmm3, (%r12)
vmovdqu32 (%r10), %zmm24
vmovdqu32 %zmm31, (%r12)

vmovdqu32 %zmm3, %zmm4 {%k1}
vmovdqu32 %zmm30, %zmm4 {%k1}
vmovdqu32 %zmm3, %zmm24 {%k1}
vmovdqu32 %zmm30, %zmm24 {%k1}
vmovdqu32 (%r10), %zmm4 {%k1}
vmovdqu32 %zmm3, (%r12) {%k1}
vmovdqu32 (%r10), %zmm24 {%k1}
vmovdqu32 %zmm31, (%r12) {%k1}

vmovdqu64 %zmm3, %zmm4
vmovdqu64 %zmm30, %zmm4
vmovdqu64 %zmm3, %zmm24
vmovdqu64 %zmm30, %zmm24
vmovdqu64 (%r10), %zmm4
vmovdqu64 %zmm3, (%r12)
vmovdqu64 (%r10), %zmm24
vmovdqu64 %zmm31, (%r12)

vmovdqu64 %zmm3, %zmm4 {%k1}
vmovdqu64 %zmm30, %zmm4 {%k1}
vmovdqu64 %zmm3, %zmm24 {%k1}
vmovdqu64 %zmm30, %zmm24 {%k1}
vmovdqu64 (%r10), %zmm4 {%k1}
vmovdqu64 %zmm3, (%r12) {%k1}
vmovdqu64 (%r10), %zmm24 {%k1}
vmovdqu64 %zmm31, (%r12) {%k1}
