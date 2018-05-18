packuswb %mm0, %mm1
packuswb %mm2, %mm7
packuswb %mm7, %mm5

packuswb (%r10), %mm0
packuswb (%r10,%rdx,4), %mm0
packuswb 0x10(%r10,%rdx,4), %mm0

packuswb (%r10), %mm4
packuswb (%r10,%rdx,4), %mm5
packuswb 0x10(%r10,%rdx,4), %mm6

vpackuswb %xmm0,%xmm3,%xmm1
vpackuswb %xmm1,%xmm2,%xmm11
vpackuswb %xmm2,%xmm1,%xmm22
vpackuswb %xmm3,%xmm12,%xmm1
vpackuswb %xmm4,%xmm13,%xmm15
vpackuswb %xmm5,%xmm14,%xmm23
vpackuswb %xmm6,%xmm24,%xmm2
vpackuswb %xmm7,%xmm25,%xmm10
vpackuswb %xmm0,%xmm26,%xmm27

vpackuswb %xmm11,%xmm0,%xmm3
vpackuswb %xmm12,%xmm0,%xmm11
vpackuswb %xmm13,%xmm0,%xmm28
vpackuswb %xmm14,%xmm10,%xmm4
vpackuswb %xmm15,%xmm12,%xmm11
vpackuswb %xmm11,%xmm13,%xmm29
vpackuswb %xmm12,%xmm30,%xmm5
vpackuswb %xmm13,%xmm31,%xmm11
vpackuswb %xmm14,%xmm22,%xmm24

vpackuswb %xmm20,%xmm0,%xmm6
vpackuswb %xmm21,%xmm0,%xmm11
vpackuswb %xmm22,%xmm0,%xmm30
vpackuswb %xmm23,%xmm12,%xmm7
vpackuswb %xmm24,%xmm13,%xmm10
vpackuswb %xmm25,%xmm14,%xmm31
vpackuswb %xmm26,%xmm22,%xmm1
vpackuswb %xmm27,%xmm21,%xmm14
vpackuswb %xmm28,%xmm20,%xmm29

vpackuswb (%r10),             %xmm5, %xmm1
vpackuswb (%r10,%r12,1),      %xmm5, %xmm2
vpackuswb 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpackuswb 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpackuswb 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpackuswb (%r10),             %xmm5, %xmm10
vpackuswb (%r10,%r12,1),      %xmm5, %xmm11
vpackuswb 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpackuswb 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpackuswb 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpackuswb (%r10),             %xmm1, %xmm20
vpackuswb (%r10,%r12,1),      %xmm2, %xmm31
vpackuswb 0x10(%r10,%r12,1),  %xmm3, %xmm30
vpackuswb 0x11(%r10,%r12,2),  %xmm4, %xmm25
vpackuswb 0x3567(%r10,%r12,4),%xmm5, %xmm29

vpackuswb (%r10),             %xmm15, %xmm3
vpackuswb (%r10,%r12,1),      %xmm15, %xmm3
vpackuswb 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpackuswb 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpackuswb 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpackuswb (%r10),             %xmm14, %xmm10
vpackuswb (%r10,%r12,1),      %xmm14, %xmm10
vpackuswb 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpackuswb 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpackuswb 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpackuswb (%r10),             %xmm11, %xmm20
vpackuswb (%r10,%r12,1),      %xmm12, %xmm31
vpackuswb 0x10(%r10,%r12,1),  %xmm13, %xmm30
vpackuswb 0x11(%r10,%r12,2),  %xmm14, %xmm25
vpackuswb 0x3567(%r10,%r12,4),%xmm15, %xmm29

vpackuswb (%r10),             %xmm25, %xmm3
vpackuswb (%r10,%r12,1),      %xmm25, %xmm3
vpackuswb 0x10(%r10,%r12,1),  %xmm24, %xmm3
vpackuswb 0x11(%r10,%r12,2),  %xmm24, %xmm3
vpackuswb 0x3567(%r10,%r12,4),%xmm23, %xmm3

vpackuswb (%r10),             %xmm24, %xmm10
vpackuswb (%r10,%r12,1),      %xmm24, %xmm10
vpackuswb 0x10(%r10,%r12,1),  %xmm25, %xmm10
vpackuswb 0x11(%r10,%r12,2),  %xmm21, %xmm10
vpackuswb 0x3567(%r10,%r12,4),%xmm21, %xmm10

vpackuswb (%r10),             %xmm21, %xmm20
vpackuswb (%r10,%r12,1),      %xmm22, %xmm31
vpackuswb 0x10(%r10,%r12,1),  %xmm23, %xmm30
vpackuswb 0x11(%r10,%r12,2),  %xmm24, %xmm25
vpackuswb 0x3567(%r10,%r12,4),%xmm25, %xmm29

vpackuswb %ymm0,%ymm3,%ymm1
vpackuswb %ymm1,%ymm2,%ymm11
vpackuswb %ymm2,%ymm1,%ymm22
vpackuswb %ymm3,%ymm12,%ymm1
vpackuswb %ymm4,%ymm13,%ymm15
vpackuswb %ymm5,%ymm14,%ymm23
vpackuswb %ymm6,%ymm24,%ymm2
vpackuswb %ymm7,%ymm25,%ymm10
vpackuswb %ymm0,%ymm26,%ymm27

vpackuswb %ymm11,%ymm0,%ymm3
vpackuswb %ymm12,%ymm0,%ymm11
vpackuswb %ymm13,%ymm0,%ymm28
vpackuswb %ymm14,%ymm10,%ymm4
vpackuswb %ymm15,%ymm12,%ymm11
vpackuswb %ymm11,%ymm13,%ymm29
vpackuswb %ymm12,%ymm30,%ymm5
vpackuswb %ymm13,%ymm31,%ymm11
vpackuswb %ymm14,%ymm22,%ymm24

vpackuswb %ymm20,%ymm0,%ymm6
vpackuswb %ymm21,%ymm0,%ymm11
vpackuswb %ymm22,%ymm0,%ymm30
vpackuswb %ymm23,%ymm12,%ymm7
vpackuswb %ymm24,%ymm13,%ymm10
vpackuswb %ymm25,%ymm14,%ymm31
vpackuswb %ymm26,%ymm22,%ymm1
vpackuswb %ymm27,%ymm21,%ymm14
vpackuswb %ymm28,%ymm20,%ymm29

vpackuswb (%r10),             %ymm5, %ymm1
vpackuswb (%r10,%r12,1),      %ymm5, %ymm2
vpackuswb 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpackuswb 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpackuswb 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpackuswb (%r10),             %ymm5, %ymm10
vpackuswb (%r10,%r12,1),      %ymm5, %ymm11
vpackuswb 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpackuswb 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpackuswb 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpackuswb (%r10),             %ymm1, %ymm20
vpackuswb (%r10,%r12,1),      %ymm2, %ymm31
vpackuswb 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpackuswb 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpackuswb 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpackuswb (%r10),             %ymm15, %ymm3
vpackuswb (%r10,%r12,1),      %ymm15, %ymm3
vpackuswb 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpackuswb 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpackuswb 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpackuswb (%r10),             %ymm14, %ymm10
vpackuswb (%r10,%r12,1),      %ymm14, %ymm10
vpackuswb 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpackuswb 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpackuswb 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpackuswb (%r10),             %ymm11, %ymm20
vpackuswb (%r10,%r12,1),      %ymm12, %ymm31
vpackuswb 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpackuswb 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpackuswb 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpackuswb (%r10),             %ymm25, %ymm3
vpackuswb (%r10,%r12,1),      %ymm25, %ymm3
vpackuswb 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpackuswb 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpackuswb 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpackuswb (%r10),             %ymm24, %ymm10
vpackuswb (%r10,%r12,1),      %ymm24, %ymm10
vpackuswb 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpackuswb 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpackuswb 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpackuswb (%r10),             %ymm21, %ymm20
vpackuswb (%r10,%r12,1),      %ymm22, %ymm31
vpackuswb 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpackuswb 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpackuswb 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpackuswb %ymm0,%ymm3,%ymm1
vpackuswb %ymm1,%ymm2,%ymm11
vpackuswb %ymm2,%ymm1,%ymm22
vpackuswb %ymm3,%ymm12,%ymm1
vpackuswb %ymm4,%ymm13,%ymm15
vpackuswb %ymm5,%ymm14,%ymm23
vpackuswb %ymm6,%ymm24,%ymm2
vpackuswb %ymm7,%ymm25,%ymm10
vpackuswb %ymm0,%ymm26,%ymm27

vpackuswb %ymm11,%ymm0,%ymm3
vpackuswb %ymm12,%ymm0,%ymm11
vpackuswb %ymm13,%ymm0,%ymm28
vpackuswb %ymm14,%ymm10,%ymm4
vpackuswb %ymm15,%ymm12,%ymm11
vpackuswb %ymm11,%ymm13,%ymm29
vpackuswb %ymm12,%ymm30,%ymm5
vpackuswb %ymm13,%ymm31,%ymm11
vpackuswb %ymm14,%ymm22,%ymm24

vpackuswb %ymm20,%ymm0,%ymm6
vpackuswb %ymm21,%ymm0,%ymm11
vpackuswb %ymm22,%ymm0,%ymm30
vpackuswb %ymm23,%ymm12,%ymm7
vpackuswb %ymm24,%ymm13,%ymm10
vpackuswb %ymm25,%ymm14,%ymm31
vpackuswb %ymm26,%ymm22,%ymm1
vpackuswb %ymm27,%ymm21,%ymm14
vpackuswb %ymm28,%ymm20,%ymm29

vpackuswb (%r10),             %ymm5, %ymm1
vpackuswb (%r10,%r12,1),      %ymm5, %ymm2
vpackuswb 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpackuswb 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpackuswb 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpackuswb (%r10),             %ymm5, %ymm10
vpackuswb (%r10,%r12,1),      %ymm5, %ymm11
vpackuswb 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpackuswb 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpackuswb 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpackuswb (%r10),             %ymm1, %ymm20
vpackuswb (%r10,%r12,1),      %ymm2, %ymm31
vpackuswb 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpackuswb 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpackuswb 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpackuswb (%r10),             %ymm15, %ymm3
vpackuswb (%r10,%r12,1),      %ymm15, %ymm3
vpackuswb 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpackuswb 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpackuswb 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpackuswb (%r10),             %ymm14, %ymm10
vpackuswb (%r10,%r12,1),      %ymm14, %ymm10
vpackuswb 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpackuswb 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpackuswb 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpackuswb (%r10),             %ymm11, %ymm20
vpackuswb (%r10,%r12,1),      %ymm12, %ymm31
vpackuswb 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpackuswb 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpackuswb 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpackuswb (%r10),             %ymm25, %ymm3
vpackuswb (%r10,%r12,1),      %ymm25, %ymm3
vpackuswb 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpackuswb 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpackuswb 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpackuswb (%r10),             %ymm24, %ymm10
vpackuswb (%r10,%r12,1),      %ymm24, %ymm10
vpackuswb 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpackuswb 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpackuswb 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpackuswb (%r10),             %ymm21, %ymm20
vpackuswb (%r10,%r12,1),      %ymm22, %ymm31
vpackuswb 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpackuswb 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpackuswb 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpackuswb %zmm0,%zmm3,%zmm1
vpackuswb %zmm1,%zmm2,%zmm11
vpackuswb %zmm2,%zmm1,%zmm22
vpackuswb %zmm3,%zmm12,%zmm1
vpackuswb %zmm4,%zmm13,%zmm15
vpackuswb %zmm5,%zmm14,%zmm23
vpackuswb %zmm6,%zmm24,%zmm2
vpackuswb %zmm7,%zmm25,%zmm10
vpackuswb %zmm0,%zmm26,%zmm27

vpackuswb %zmm11,%zmm0,%zmm3
vpackuswb %zmm12,%zmm0,%zmm11
vpackuswb %zmm13,%zmm0,%zmm28
vpackuswb %zmm14,%zmm10,%zmm4
vpackuswb %zmm15,%zmm12,%zmm11
vpackuswb %zmm11,%zmm13,%zmm29
vpackuswb %zmm12,%zmm30,%zmm5
vpackuswb %zmm13,%zmm31,%zmm11
vpackuswb %zmm14,%zmm22,%zmm24

vpackuswb %zmm20,%zmm0,%zmm6
vpackuswb %zmm21,%zmm0,%zmm11
vpackuswb %zmm22,%zmm0,%zmm30
vpackuswb %zmm23,%zmm12,%zmm7
vpackuswb %zmm24,%zmm13,%zmm10
vpackuswb %zmm25,%zmm14,%zmm31
vpackuswb %zmm26,%zmm22,%zmm1
vpackuswb %zmm27,%zmm21,%zmm14
vpackuswb %zmm28,%zmm20,%zmm29

vpackuswb (%r10),             %zmm5, %zmm1
vpackuswb (%r10,%r12,1),      %zmm5, %zmm2
vpackuswb 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpackuswb 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpackuswb 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpackuswb (%r10),             %zmm5, %zmm10
vpackuswb (%r10,%r12,1),      %zmm5, %zmm11
vpackuswb 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpackuswb 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpackuswb 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpackuswb (%r10),             %zmm1, %zmm20
vpackuswb (%r10,%r12,1),      %zmm2, %zmm31
vpackuswb 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpackuswb 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpackuswb 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpackuswb (%r10),             %zmm15, %zmm3
vpackuswb (%r10,%r12,1),      %zmm15, %zmm3
vpackuswb 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpackuswb 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpackuswb 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpackuswb (%r10),             %zmm14, %zmm10
vpackuswb (%r10,%r12,1),      %zmm14, %zmm10
vpackuswb 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpackuswb 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpackuswb 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpackuswb (%r10),             %zmm11, %zmm20
vpackuswb (%r10,%r12,1),      %zmm12, %zmm31
vpackuswb 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpackuswb 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpackuswb 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpackuswb (%r10),             %zmm25, %zmm3
vpackuswb (%r10,%r12,1),      %zmm25, %zmm3
vpackuswb 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpackuswb 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpackuswb 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpackuswb (%r10),             %zmm24, %zmm10
vpackuswb (%r10,%r12,1),      %zmm24, %zmm10
vpackuswb 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpackuswb 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpackuswb 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpackuswb (%r10),             %zmm21, %zmm20
vpackuswb (%r10,%r12,1),      %zmm22, %zmm31
vpackuswb 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpackuswb 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpackuswb 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpackuswb %zmm0,%zmm3,%zmm1
vpackuswb %zmm1,%zmm2,%zmm11
vpackuswb %zmm2,%zmm1,%zmm22
vpackuswb %zmm3,%zmm12,%zmm1
vpackuswb %zmm4,%zmm13,%zmm15
vpackuswb %zmm5,%zmm14,%zmm23
vpackuswb %zmm6,%zmm24,%zmm2
vpackuswb %zmm7,%zmm25,%zmm10
vpackuswb %zmm0,%zmm26,%zmm27

vpackuswb %zmm11,%zmm0,%zmm3
vpackuswb %zmm12,%zmm0,%zmm11
vpackuswb %zmm13,%zmm0,%zmm28
vpackuswb %zmm14,%zmm10,%zmm4
vpackuswb %zmm15,%zmm12,%zmm11
vpackuswb %zmm11,%zmm13,%zmm29
vpackuswb %zmm12,%zmm30,%zmm5
vpackuswb %zmm13,%zmm31,%zmm11
vpackuswb %zmm14,%zmm22,%zmm24

vpackuswb %zmm20,%zmm0,%zmm6
vpackuswb %zmm21,%zmm0,%zmm11
vpackuswb %zmm22,%zmm0,%zmm30
vpackuswb %zmm23,%zmm12,%zmm7
vpackuswb %zmm24,%zmm13,%zmm10
vpackuswb %zmm25,%zmm14,%zmm31
vpackuswb %zmm26,%zmm22,%zmm1
vpackuswb %zmm27,%zmm21,%zmm14
vpackuswb %zmm28,%zmm20,%zmm29

vpackuswb (%r10),             %zmm5, %zmm1
vpackuswb (%r10,%r12,1),      %zmm5, %zmm2
vpackuswb 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpackuswb 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpackuswb 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpackuswb (%r10),             %zmm5, %zmm10
vpackuswb (%r10,%r12,1),      %zmm5, %zmm11
vpackuswb 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpackuswb 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpackuswb 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpackuswb (%r10),             %zmm1, %zmm20
vpackuswb (%r10,%r12,1),      %zmm2, %zmm31
vpackuswb 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpackuswb 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpackuswb 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpackuswb (%r10),             %zmm15, %zmm3
vpackuswb (%r10,%r12,1),      %zmm15, %zmm3
vpackuswb 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpackuswb 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpackuswb 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpackuswb (%r10),             %zmm14, %zmm10
vpackuswb (%r10,%r12,1),      %zmm14, %zmm10
vpackuswb 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpackuswb 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpackuswb 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpackuswb (%r10),             %zmm11, %zmm20
vpackuswb (%r10,%r12,1),      %zmm12, %zmm31
vpackuswb 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpackuswb 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpackuswb 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpackuswb (%r10),             %zmm25, %zmm3
vpackuswb (%r10,%r12,1),      %zmm25, %zmm3
vpackuswb 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpackuswb 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpackuswb 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpackuswb (%r10),             %zmm24, %zmm10
vpackuswb (%r10,%r12,1),      %zmm24, %zmm10
vpackuswb 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpackuswb 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpackuswb 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpackuswb (%r10),             %zmm21, %zmm20
vpackuswb (%r10,%r12,1),      %zmm22, %zmm31
vpackuswb 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpackuswb 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpackuswb 0x3567(%r10,%r12,4),%zmm25, %zmm29
