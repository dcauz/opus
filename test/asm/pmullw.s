pmullw %mm0, %mm1
pmullw %mm2, %mm7
pmullw %mm7, %mm5

pmullw (%r10), %mm0
pmullw (%r10,%rdx,4), %mm0
pmullw 0x10(%r10,%rdx,4), %mm0

pmullw (%r10), %mm4
pmullw (%r10,%rdx,4), %mm5
pmullw 0x10(%r10,%rdx,4), %mm6

vpmullw %xmm0,%xmm3,%xmm1
vpmullw %xmm1,%xmm2,%xmm11
vpmullw %xmm2,%xmm1,%xmm22
vpmullw %xmm3,%xmm12,%xmm1
vpmullw %xmm4,%xmm13,%xmm15
vpmullw %xmm5,%xmm14,%xmm23
vpmullw %xmm6,%xmm24,%xmm2
vpmullw %xmm7,%xmm25,%xmm10
vpmullw %xmm0,%xmm26,%xmm27

vpmullw %xmm11,%xmm0,%xmm3
vpmullw %xmm12,%xmm0,%xmm11
vpmullw %xmm13,%xmm0,%xmm28
vpmullw %xmm14,%xmm10,%xmm4
vpmullw %xmm15,%xmm12,%xmm11
vpmullw %xmm11,%xmm13,%xmm29
vpmullw %xmm12,%xmm30,%xmm5
vpmullw %xmm13,%xmm31,%xmm11
vpmullw %xmm14,%xmm22,%xmm24

vpmullw %xmm20,%xmm0,%xmm6
vpmullw %xmm21,%xmm0,%xmm11
vpmullw %xmm22,%xmm0,%xmm30
vpmullw %xmm23,%xmm12,%xmm7
vpmullw %xmm24,%xmm13,%xmm10
vpmullw %xmm25,%xmm14,%xmm31
vpmullw %xmm26,%xmm22,%xmm1
vpmullw %xmm27,%xmm21,%xmm14
vpmullw %xmm28,%xmm20,%xmm29

vpmullw (%r10),             %xmm5, %xmm1
vpmullw (%r10,%r12,1),      %xmm5, %xmm2
vpmullw 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpmullw 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpmullw 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpmullw (%r10),             %xmm5, %xmm10
vpmullw (%r10,%r12,1),      %xmm5, %xmm11
vpmullw 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpmullw 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpmullw 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpmullw (%r10),             %xmm1, %xmm20
vpmullw (%r10,%r12,1),      %xmm2, %xmm31
vpmullw 0x10(%r10,%r12,1),  %xmm3, %xmm30
vpmullw 0x11(%r10,%r12,2),  %xmm4, %xmm25
vpmullw 0x3567(%r10,%r12,4),%xmm5, %xmm29

vpmullw (%r10),             %xmm15, %xmm3
vpmullw (%r10,%r12,1),      %xmm15, %xmm3
vpmullw 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpmullw 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpmullw 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpmullw (%r10),             %xmm14, %xmm10
vpmullw (%r10,%r12,1),      %xmm14, %xmm10
vpmullw 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpmullw 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpmullw 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpmullw (%r10),             %xmm11, %xmm20
vpmullw (%r10,%r12,1),      %xmm12, %xmm31
vpmullw 0x10(%r10,%r12,1),  %xmm13, %xmm30
vpmullw 0x11(%r10,%r12,2),  %xmm14, %xmm25
vpmullw 0x3567(%r10,%r12,4),%xmm15, %xmm29

vpmullw (%r10),             %xmm25, %xmm3
vpmullw (%r10,%r12,1),      %xmm25, %xmm3
vpmullw 0x10(%r10,%r12,1),  %xmm24, %xmm3
vpmullw 0x11(%r10,%r12,2),  %xmm24, %xmm3
vpmullw 0x3567(%r10,%r12,4),%xmm23, %xmm3

vpmullw (%r10),             %xmm24, %xmm10
vpmullw (%r10,%r12,1),      %xmm24, %xmm10
vpmullw 0x10(%r10,%r12,1),  %xmm25, %xmm10
vpmullw 0x11(%r10,%r12,2),  %xmm21, %xmm10
vpmullw 0x3567(%r10,%r12,4),%xmm21, %xmm10

vpmullw (%r10),             %xmm21, %xmm20
vpmullw (%r10,%r12,1),      %xmm22, %xmm31
vpmullw 0x10(%r10,%r12,1),  %xmm23, %xmm30
vpmullw 0x11(%r10,%r12,2),  %xmm24, %xmm25
vpmullw 0x3567(%r10,%r12,4),%xmm25, %xmm29

vpmullw %ymm0,%ymm3,%ymm1
vpmullw %ymm1,%ymm2,%ymm11
vpmullw %ymm2,%ymm1,%ymm22
vpmullw %ymm3,%ymm12,%ymm1
vpmullw %ymm4,%ymm13,%ymm15
vpmullw %ymm5,%ymm14,%ymm23
vpmullw %ymm6,%ymm24,%ymm2
vpmullw %ymm7,%ymm25,%ymm10
vpmullw %ymm0,%ymm26,%ymm27

vpmullw %ymm11,%ymm0,%ymm3
vpmullw %ymm12,%ymm0,%ymm11
vpmullw %ymm13,%ymm0,%ymm28
vpmullw %ymm14,%ymm10,%ymm4
vpmullw %ymm15,%ymm12,%ymm11
vpmullw %ymm11,%ymm13,%ymm29
vpmullw %ymm12,%ymm30,%ymm5
vpmullw %ymm13,%ymm31,%ymm11
vpmullw %ymm14,%ymm22,%ymm24

vpmullw %ymm20,%ymm0,%ymm6
vpmullw %ymm21,%ymm0,%ymm11
vpmullw %ymm22,%ymm0,%ymm30
vpmullw %ymm23,%ymm12,%ymm7
vpmullw %ymm24,%ymm13,%ymm10
vpmullw %ymm25,%ymm14,%ymm31
vpmullw %ymm26,%ymm22,%ymm1
vpmullw %ymm27,%ymm21,%ymm14
vpmullw %ymm28,%ymm20,%ymm29

vpmullw (%r10),             %ymm5, %ymm1
vpmullw (%r10,%r12,1),      %ymm5, %ymm2
vpmullw 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpmullw 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpmullw 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpmullw (%r10),             %ymm5, %ymm10
vpmullw (%r10,%r12,1),      %ymm5, %ymm11
vpmullw 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpmullw 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpmullw 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpmullw (%r10),             %ymm1, %ymm20
vpmullw (%r10,%r12,1),      %ymm2, %ymm31
vpmullw 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpmullw 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpmullw 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpmullw (%r10),             %ymm15, %ymm3
vpmullw (%r10,%r12,1),      %ymm15, %ymm3
vpmullw 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpmullw 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpmullw 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpmullw (%r10),             %ymm14, %ymm10
vpmullw (%r10,%r12,1),      %ymm14, %ymm10
vpmullw 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpmullw 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpmullw 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpmullw (%r10),             %ymm11, %ymm20
vpmullw (%r10,%r12,1),      %ymm12, %ymm31
vpmullw 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpmullw 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpmullw 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpmullw (%r10),             %ymm25, %ymm3
vpmullw (%r10,%r12,1),      %ymm25, %ymm3
vpmullw 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpmullw 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpmullw 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpmullw (%r10),             %ymm24, %ymm10
vpmullw (%r10,%r12,1),      %ymm24, %ymm10
vpmullw 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpmullw 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpmullw 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpmullw (%r10),             %ymm21, %ymm20
vpmullw (%r10,%r12,1),      %ymm22, %ymm31
vpmullw 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpmullw 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpmullw 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpmullw %ymm0,%ymm3,%ymm1
vpmullw %ymm1,%ymm2,%ymm11
vpmullw %ymm2,%ymm1,%ymm22
vpmullw %ymm3,%ymm12,%ymm1
vpmullw %ymm4,%ymm13,%ymm15
vpmullw %ymm5,%ymm14,%ymm23
vpmullw %ymm6,%ymm24,%ymm2
vpmullw %ymm7,%ymm25,%ymm10
vpmullw %ymm0,%ymm26,%ymm27

vpmullw %ymm11,%ymm0,%ymm3
vpmullw %ymm12,%ymm0,%ymm11
vpmullw %ymm13,%ymm0,%ymm28
vpmullw %ymm14,%ymm10,%ymm4
vpmullw %ymm15,%ymm12,%ymm11
vpmullw %ymm11,%ymm13,%ymm29
vpmullw %ymm12,%ymm30,%ymm5
vpmullw %ymm13,%ymm31,%ymm11
vpmullw %ymm14,%ymm22,%ymm24

vpmullw %ymm20,%ymm0,%ymm6
vpmullw %ymm21,%ymm0,%ymm11
vpmullw %ymm22,%ymm0,%ymm30
vpmullw %ymm23,%ymm12,%ymm7
vpmullw %ymm24,%ymm13,%ymm10
vpmullw %ymm25,%ymm14,%ymm31
vpmullw %ymm26,%ymm22,%ymm1
vpmullw %ymm27,%ymm21,%ymm14
vpmullw %ymm28,%ymm20,%ymm29

vpmullw (%r10),             %ymm5, %ymm1
vpmullw (%r10,%r12,1),      %ymm5, %ymm2
vpmullw 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpmullw 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpmullw 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpmullw (%r10),             %ymm5, %ymm10
vpmullw (%r10,%r12,1),      %ymm5, %ymm11
vpmullw 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpmullw 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpmullw 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpmullw (%r10),             %ymm1, %ymm20
vpmullw (%r10,%r12,1),      %ymm2, %ymm31
vpmullw 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpmullw 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpmullw 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpmullw (%r10),             %ymm15, %ymm3
vpmullw (%r10,%r12,1),      %ymm15, %ymm3
vpmullw 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpmullw 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpmullw 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpmullw (%r10),             %ymm14, %ymm10
vpmullw (%r10,%r12,1),      %ymm14, %ymm10
vpmullw 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpmullw 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpmullw 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpmullw (%r10),             %ymm11, %ymm20
vpmullw (%r10,%r12,1),      %ymm12, %ymm31
vpmullw 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpmullw 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpmullw 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpmullw (%r10),             %ymm25, %ymm3
vpmullw (%r10,%r12,1),      %ymm25, %ymm3
vpmullw 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpmullw 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpmullw 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpmullw (%r10),             %ymm24, %ymm10
vpmullw (%r10,%r12,1),      %ymm24, %ymm10
vpmullw 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpmullw 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpmullw 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpmullw (%r10),             %ymm21, %ymm20
vpmullw (%r10,%r12,1),      %ymm22, %ymm31
vpmullw 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpmullw 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpmullw 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpmullw %zmm0,%zmm3,%zmm1
vpmullw %zmm1,%zmm2,%zmm11
vpmullw %zmm2,%zmm1,%zmm22
vpmullw %zmm3,%zmm12,%zmm1
vpmullw %zmm4,%zmm13,%zmm15
vpmullw %zmm5,%zmm14,%zmm23
vpmullw %zmm6,%zmm24,%zmm2
vpmullw %zmm7,%zmm25,%zmm10
vpmullw %zmm0,%zmm26,%zmm27

vpmullw %zmm11,%zmm0,%zmm3
vpmullw %zmm12,%zmm0,%zmm11
vpmullw %zmm13,%zmm0,%zmm28
vpmullw %zmm14,%zmm10,%zmm4
vpmullw %zmm15,%zmm12,%zmm11
vpmullw %zmm11,%zmm13,%zmm29
vpmullw %zmm12,%zmm30,%zmm5
vpmullw %zmm13,%zmm31,%zmm11
vpmullw %zmm14,%zmm22,%zmm24

vpmullw %zmm20,%zmm0,%zmm6
vpmullw %zmm21,%zmm0,%zmm11
vpmullw %zmm22,%zmm0,%zmm30
vpmullw %zmm23,%zmm12,%zmm7
vpmullw %zmm24,%zmm13,%zmm10
vpmullw %zmm25,%zmm14,%zmm31
vpmullw %zmm26,%zmm22,%zmm1
vpmullw %zmm27,%zmm21,%zmm14
vpmullw %zmm28,%zmm20,%zmm29

vpmullw (%r10),             %zmm5, %zmm1
vpmullw (%r10,%r12,1),      %zmm5, %zmm2
vpmullw 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpmullw 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpmullw 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpmullw (%r10),             %zmm5, %zmm10
vpmullw (%r10,%r12,1),      %zmm5, %zmm11
vpmullw 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpmullw 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpmullw 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpmullw (%r10),             %zmm1, %zmm20
vpmullw (%r10,%r12,1),      %zmm2, %zmm31
vpmullw 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpmullw 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpmullw 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpmullw (%r10),             %zmm15, %zmm3
vpmullw (%r10,%r12,1),      %zmm15, %zmm3
vpmullw 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpmullw 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpmullw 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpmullw (%r10),             %zmm14, %zmm10
vpmullw (%r10,%r12,1),      %zmm14, %zmm10
vpmullw 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpmullw 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpmullw 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpmullw (%r10),             %zmm11, %zmm20
vpmullw (%r10,%r12,1),      %zmm12, %zmm31
vpmullw 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpmullw 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpmullw 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpmullw (%r10),             %zmm25, %zmm3
vpmullw (%r10,%r12,1),      %zmm25, %zmm3
vpmullw 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpmullw 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpmullw 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpmullw (%r10),             %zmm24, %zmm10
vpmullw (%r10,%r12,1),      %zmm24, %zmm10
vpmullw 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpmullw 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpmullw 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpmullw (%r10),             %zmm21, %zmm20
vpmullw (%r10,%r12,1),      %zmm22, %zmm31
vpmullw 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpmullw 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpmullw 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpmullw %zmm0,%zmm3,%zmm1
vpmullw %zmm1,%zmm2,%zmm11
vpmullw %zmm2,%zmm1,%zmm22
vpmullw %zmm3,%zmm12,%zmm1
vpmullw %zmm4,%zmm13,%zmm15
vpmullw %zmm5,%zmm14,%zmm23
vpmullw %zmm6,%zmm24,%zmm2
vpmullw %zmm7,%zmm25,%zmm10
vpmullw %zmm0,%zmm26,%zmm27

vpmullw %zmm11,%zmm0,%zmm3
vpmullw %zmm12,%zmm0,%zmm11
vpmullw %zmm13,%zmm0,%zmm28
vpmullw %zmm14,%zmm10,%zmm4
vpmullw %zmm15,%zmm12,%zmm11
vpmullw %zmm11,%zmm13,%zmm29
vpmullw %zmm12,%zmm30,%zmm5
vpmullw %zmm13,%zmm31,%zmm11
vpmullw %zmm14,%zmm22,%zmm24

vpmullw %zmm20,%zmm0,%zmm6
vpmullw %zmm21,%zmm0,%zmm11
vpmullw %zmm22,%zmm0,%zmm30
vpmullw %zmm23,%zmm12,%zmm7
vpmullw %zmm24,%zmm13,%zmm10
vpmullw %zmm25,%zmm14,%zmm31
vpmullw %zmm26,%zmm22,%zmm1
vpmullw %zmm27,%zmm21,%zmm14
vpmullw %zmm28,%zmm20,%zmm29

vpmullw (%r10),             %zmm5, %zmm1
vpmullw (%r10,%r12,1),      %zmm5, %zmm2
vpmullw 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpmullw 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpmullw 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpmullw (%r10),             %zmm5, %zmm10
vpmullw (%r10,%r12,1),      %zmm5, %zmm11
vpmullw 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpmullw 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpmullw 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpmullw (%r10),             %zmm1, %zmm20
vpmullw (%r10,%r12,1),      %zmm2, %zmm31
vpmullw 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpmullw 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpmullw 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpmullw (%r10),             %zmm15, %zmm3
vpmullw (%r10,%r12,1),      %zmm15, %zmm3
vpmullw 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpmullw 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpmullw 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpmullw (%r10),             %zmm14, %zmm10
vpmullw (%r10,%r12,1),      %zmm14, %zmm10
vpmullw 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpmullw 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpmullw 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpmullw (%r10),             %zmm11, %zmm20
vpmullw (%r10,%r12,1),      %zmm12, %zmm31
vpmullw 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpmullw 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpmullw 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpmullw (%r10),             %zmm25, %zmm3
vpmullw (%r10,%r12,1),      %zmm25, %zmm3
vpmullw 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpmullw 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpmullw 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpmullw (%r10),             %zmm24, %zmm10
vpmullw (%r10,%r12,1),      %zmm24, %zmm10
vpmullw 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpmullw 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpmullw 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpmullw (%r10),             %zmm21, %zmm20
vpmullw (%r10,%r12,1),      %zmm22, %zmm31
vpmullw 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpmullw 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpmullw 0x3567(%r10,%r12,4),%zmm25, %zmm29
