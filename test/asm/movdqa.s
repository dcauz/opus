movdqa %xmm3, %xmm4
movdqa (%r10), %xmm4
movdqa %xmm3, (%r12)

vmovdqa %xmm3, %xmm4
vmovdqa (%r10), %xmm4
vmovdqa %xmm3, (%r12)

vmovdqa %ymm3, %ymm4
vmovdqa (%r10), %ymm4
vmovdqa %ymm3, (%r12)

vmovdqa32 %xmm3, %xmm4
vmovdqa32 %xmm30, %xmm4
vmovdqa32 %xmm3, %xmm24
vmovdqa32 %xmm30, %xmm24
vmovdqa32 (%r10), %xmm4
vmovdqa32 %xmm3, (%r12)
vmovdqa32 (%r10), %xmm24
vmovdqa32 %xmm31, (%r12)

vmovdqa32 %xmm3, %xmm4 {%k1}
vmovdqa32 %xmm30, %xmm4 {%k1}
vmovdqa32 %xmm3, %xmm24 {%k1}
vmovdqa32 %xmm30, %xmm24 {%k1}
vmovdqa32 (%r10), %xmm4 {%k1}
vmovdqa32 %xmm3, (%r12) {%k1}
vmovdqa32 (%r10), %xmm24 {%k1}
vmovdqa32 %xmm31, (%r12) {%k1}

vmovdqa64 %xmm3, %xmm4
vmovdqa64 %xmm30, %xmm4
vmovdqa64 %xmm3, %xmm24
vmovdqa64 %xmm30, %xmm24
vmovdqa64 (%r10), %xmm4
vmovdqa64 %xmm3, (%r12)
vmovdqa64 (%r10), %xmm24
vmovdqa64 %xmm31, (%r12)

vmovdqa64 %xmm3, %xmm4 {%k1}
vmovdqa64 %xmm30, %xmm4 {%k1}
vmovdqa64 %xmm3, %xmm24 {%k1}
vmovdqa64 %xmm30, %xmm24 {%k1}
vmovdqa64 (%r10), %xmm4 {%k1}
vmovdqa64 %xmm3, (%r12) {%k1}
vmovdqa64 (%r10), %xmm24 {%k1}
vmovdqa64 %xmm31, (%r12) {%k1}

vmovdqa32 %ymm3, %ymm4
vmovdqa32 %ymm30, %ymm4
vmovdqa32 %ymm3, %ymm24
vmovdqa32 %ymm30, %ymm24
vmovdqa32 (%r10), %ymm4
vmovdqa32 %ymm3, (%r12)
vmovdqa32 (%r10), %ymm24
vmovdqa32 %ymm31, (%r12)

vmovdqa32 %ymm3, %ymm4 {%k1}
vmovdqa32 %ymm30, %ymm4 {%k1}
vmovdqa32 %ymm3, %ymm24 {%k1}
vmovdqa32 %ymm30, %ymm24 {%k1}
vmovdqa32 (%r10), %ymm4 {%k1}
vmovdqa32 %ymm3, (%r12) {%k1}
vmovdqa32 (%r10), %ymm24 {%k1}
vmovdqa32 %ymm31, (%r12) {%k1}

vmovdqa64 %ymm3, %ymm4
vmovdqa64 %ymm30, %ymm4
vmovdqa64 %ymm3, %ymm24
vmovdqa64 %ymm30, %ymm24
vmovdqa64 (%r10), %ymm4
vmovdqa64 %ymm3, (%r12)
vmovdqa64 (%r10), %ymm24
vmovdqa64 %ymm31, (%r12)

vmovdqa64 %ymm3, %ymm4 {%k1}
vmovdqa64 %ymm30, %ymm4 {%k1}
vmovdqa64 %ymm3, %ymm24 {%k1}
vmovdqa64 %ymm30, %ymm24 {%k1}
vmovdqa64 (%r10), %ymm4 {%k1}
vmovdqa64 %ymm3, (%r12) {%k1}
vmovdqa64 (%r10), %ymm24 {%k1}
vmovdqa64 %ymm31, (%r12) {%k1}

vmovdqa32 %zmm3, %zmm4
vmovdqa32 %zmm30, %zmm4
vmovdqa32 %zmm3, %zmm24
vmovdqa32 %zmm30, %zmm24
vmovdqa32 (%r10), %zmm4
vmovdqa32 %zmm3, (%r12)
vmovdqa32 (%r10), %zmm24
vmovdqa32 %zmm31, (%r12)

vmovdqa32 %zmm3, %zmm4 {%k1}
vmovdqa32 %zmm30, %zmm4 {%k1}
vmovdqa32 %zmm3, %zmm24 {%k1}
vmovdqa32 %zmm30, %zmm24 {%k1}
vmovdqa32 (%r10), %zmm4 {%k1}
vmovdqa32 %zmm3, (%r12) {%k1}
vmovdqa32 (%r10), %zmm24 {%k1}
vmovdqa32 %zmm31, (%r12) {%k1}

vmovdqa64 %zmm3, %zmm4
vmovdqa64 %zmm30, %zmm4
vmovdqa64 %zmm3, %zmm24
vmovdqa64 %zmm30, %zmm24
vmovdqa64 (%r10), %zmm4
vmovdqa64 %zmm3, (%r12)
vmovdqa64 (%r10), %zmm24
vmovdqa64 %zmm31, (%r12)

vmovdqa64 %zmm3, %zmm4 {%k1}
vmovdqa64 %zmm30, %zmm4 {%k1}
vmovdqa64 %zmm3, %zmm24 {%k1}
vmovdqa64 %zmm30, %zmm24 {%k1}
vmovdqa64 (%r10), %zmm4 {%k1}
vmovdqa64 %zmm3, (%r12) {%k1}
vmovdqa64 (%r10), %zmm24 {%k1}
vmovdqa64 %zmm31, (%r12) {%k1}
