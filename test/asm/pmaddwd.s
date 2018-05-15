pmaddwd %mm0, %mm1
pmaddwd %mm2, %mm7
pmaddwd %mm7, %mm5

pmaddwd (%r10), %mm0
pmaddwd (%r10,%rdx,4), %mm0
pmaddwd 0x10(%r10,%rdx,4), %mm0

pmaddwd (%r10), %mm4
pmaddwd (%r10,%rdx,4), %mm5
pmaddwd 0x10(%r10,%rdx,4), %mm6

vpmaddwd %xmm0,%xmm3,%xmm1
vpmaddwd %xmm1,%xmm2,%xmm11
vpmaddwd %xmm2,%xmm1,%xmm22
vpmaddwd %xmm3,%xmm12,%xmm1
vpmaddwd %xmm4,%xmm13,%xmm15
vpmaddwd %xmm5,%xmm14,%xmm23
vpmaddwd %xmm6,%xmm24,%xmm2
vpmaddwd %xmm7,%xmm25,%xmm10
vpmaddwd %xmm0,%xmm26,%xmm27

vpmaddwd %xmm11,%xmm0,%xmm3
vpmaddwd %xmm12,%xmm0,%xmm11
vpmaddwd %xmm13,%xmm0,%xmm28
vpmaddwd %xmm14,%xmm10,%xmm4
vpmaddwd %xmm15,%xmm12,%xmm11
vpmaddwd %xmm11,%xmm13,%xmm29
vpmaddwd %xmm12,%xmm30,%xmm5
vpmaddwd %xmm13,%xmm31,%xmm11
vpmaddwd %xmm14,%xmm22,%xmm24

vpmaddwd %xmm20,%xmm0,%xmm6
vpmaddwd %xmm21,%xmm0,%xmm11
vpmaddwd %xmm22,%xmm0,%xmm30
vpmaddwd %xmm23,%xmm12,%xmm7
vpmaddwd %xmm24,%xmm13,%xmm10
vpmaddwd %xmm25,%xmm14,%xmm31
vpmaddwd %xmm26,%xmm22,%xmm1
vpmaddwd %xmm27,%xmm21,%xmm14
vpmaddwd %xmm28,%xmm20,%xmm29

vpmaddwd (%r10),             %xmm5, %xmm1
vpmaddwd (%r10,%r12,1),      %xmm5, %xmm2
vpmaddwd 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpmaddwd 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpmaddwd 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpmaddwd (%r10),             %xmm5, %xmm10
vpmaddwd (%r10,%r12,1),      %xmm5, %xmm11
vpmaddwd 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpmaddwd 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpmaddwd 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpmaddwd (%r10),             %xmm1, %xmm20
vpmaddwd (%r10,%r12,1),      %xmm2, %xmm31
vpmaddwd 0x10(%r10,%r12,1),  %xmm3, %xmm30
vpmaddwd 0x11(%r10,%r12,2),  %xmm4, %xmm25
vpmaddwd 0x3567(%r10,%r12,4),%xmm5, %xmm29

vpmaddwd (%r10),             %xmm15, %xmm3
vpmaddwd (%r10,%r12,1),      %xmm15, %xmm3
vpmaddwd 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpmaddwd 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpmaddwd 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpmaddwd (%r10),             %xmm14, %xmm10
vpmaddwd (%r10,%r12,1),      %xmm14, %xmm10
vpmaddwd 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpmaddwd 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpmaddwd 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpmaddwd (%r10),             %xmm11, %xmm20
vpmaddwd (%r10,%r12,1),      %xmm12, %xmm31
vpmaddwd 0x10(%r10,%r12,1),  %xmm13, %xmm30
vpmaddwd 0x11(%r10,%r12,2),  %xmm14, %xmm25
vpmaddwd 0x3567(%r10,%r12,4),%xmm15, %xmm29

vpmaddwd (%r10),             %xmm25, %xmm3
vpmaddwd (%r10,%r12,1),      %xmm25, %xmm3
vpmaddwd 0x10(%r10,%r12,1),  %xmm24, %xmm3
vpmaddwd 0x11(%r10,%r12,2),  %xmm24, %xmm3
vpmaddwd 0x3567(%r10,%r12,4),%xmm23, %xmm3

vpmaddwd (%r10),             %xmm24, %xmm10
vpmaddwd (%r10,%r12,1),      %xmm24, %xmm10
vpmaddwd 0x10(%r10,%r12,1),  %xmm25, %xmm10
vpmaddwd 0x11(%r10,%r12,2),  %xmm21, %xmm10
vpmaddwd 0x3567(%r10,%r12,4),%xmm21, %xmm10

vpmaddwd (%r10),             %xmm21, %xmm20
vpmaddwd (%r10,%r12,1),      %xmm22, %xmm31
vpmaddwd 0x10(%r10,%r12,1),  %xmm23, %xmm30
vpmaddwd 0x11(%r10,%r12,2),  %xmm24, %xmm25
vpmaddwd 0x3567(%r10,%r12,4),%xmm25, %xmm29

vpmaddwd %ymm0,%ymm3,%ymm1
vpmaddwd %ymm1,%ymm2,%ymm11
vpmaddwd %ymm2,%ymm1,%ymm22
vpmaddwd %ymm3,%ymm12,%ymm1
vpmaddwd %ymm4,%ymm13,%ymm15
vpmaddwd %ymm5,%ymm14,%ymm23
vpmaddwd %ymm6,%ymm24,%ymm2
vpmaddwd %ymm7,%ymm25,%ymm10
vpmaddwd %ymm0,%ymm26,%ymm27

vpmaddwd %ymm11,%ymm0,%ymm3
vpmaddwd %ymm12,%ymm0,%ymm11
vpmaddwd %ymm13,%ymm0,%ymm28
vpmaddwd %ymm14,%ymm10,%ymm4
vpmaddwd %ymm15,%ymm12,%ymm11
vpmaddwd %ymm11,%ymm13,%ymm29
vpmaddwd %ymm12,%ymm30,%ymm5
vpmaddwd %ymm13,%ymm31,%ymm11
vpmaddwd %ymm14,%ymm22,%ymm24

vpmaddwd %ymm20,%ymm0,%ymm6
vpmaddwd %ymm21,%ymm0,%ymm11
vpmaddwd %ymm22,%ymm0,%ymm30
vpmaddwd %ymm23,%ymm12,%ymm7
vpmaddwd %ymm24,%ymm13,%ymm10
vpmaddwd %ymm25,%ymm14,%ymm31
vpmaddwd %ymm26,%ymm22,%ymm1
vpmaddwd %ymm27,%ymm21,%ymm14
vpmaddwd %ymm28,%ymm20,%ymm29

vpmaddwd (%r10),             %ymm5, %ymm1
vpmaddwd (%r10,%r12,1),      %ymm5, %ymm2
vpmaddwd 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpmaddwd 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpmaddwd 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpmaddwd (%r10),             %ymm5, %ymm10
vpmaddwd (%r10,%r12,1),      %ymm5, %ymm11
vpmaddwd 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpmaddwd 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpmaddwd 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpmaddwd (%r10),             %ymm1, %ymm20
vpmaddwd (%r10,%r12,1),      %ymm2, %ymm31
vpmaddwd 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpmaddwd 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpmaddwd 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpmaddwd (%r10),             %ymm15, %ymm3
vpmaddwd (%r10,%r12,1),      %ymm15, %ymm3
vpmaddwd 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpmaddwd 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpmaddwd 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpmaddwd (%r10),             %ymm14, %ymm10
vpmaddwd (%r10,%r12,1),      %ymm14, %ymm10
vpmaddwd 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpmaddwd 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpmaddwd 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpmaddwd (%r10),             %ymm11, %ymm20
vpmaddwd (%r10,%r12,1),      %ymm12, %ymm31
vpmaddwd 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpmaddwd 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpmaddwd 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpmaddwd (%r10),             %ymm25, %ymm3
vpmaddwd (%r10,%r12,1),      %ymm25, %ymm3
vpmaddwd 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpmaddwd 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpmaddwd 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpmaddwd (%r10),             %ymm24, %ymm10
vpmaddwd (%r10,%r12,1),      %ymm24, %ymm10
vpmaddwd 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpmaddwd 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpmaddwd 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpmaddwd (%r10),             %ymm21, %ymm20
vpmaddwd (%r10,%r12,1),      %ymm22, %ymm31
vpmaddwd 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpmaddwd 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpmaddwd 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpmaddwd %ymm0,%ymm3,%ymm1
vpmaddwd %ymm1,%ymm2,%ymm11
vpmaddwd %ymm2,%ymm1,%ymm22
vpmaddwd %ymm3,%ymm12,%ymm1
vpmaddwd %ymm4,%ymm13,%ymm15
vpmaddwd %ymm5,%ymm14,%ymm23
vpmaddwd %ymm6,%ymm24,%ymm2
vpmaddwd %ymm7,%ymm25,%ymm10
vpmaddwd %ymm0,%ymm26,%ymm27

vpmaddwd %ymm11,%ymm0,%ymm3
vpmaddwd %ymm12,%ymm0,%ymm11
vpmaddwd %ymm13,%ymm0,%ymm28
vpmaddwd %ymm14,%ymm10,%ymm4
vpmaddwd %ymm15,%ymm12,%ymm11
vpmaddwd %ymm11,%ymm13,%ymm29
vpmaddwd %ymm12,%ymm30,%ymm5
vpmaddwd %ymm13,%ymm31,%ymm11
vpmaddwd %ymm14,%ymm22,%ymm24

vpmaddwd %ymm20,%ymm0,%ymm6
vpmaddwd %ymm21,%ymm0,%ymm11
vpmaddwd %ymm22,%ymm0,%ymm30
vpmaddwd %ymm23,%ymm12,%ymm7
vpmaddwd %ymm24,%ymm13,%ymm10
vpmaddwd %ymm25,%ymm14,%ymm31
vpmaddwd %ymm26,%ymm22,%ymm1
vpmaddwd %ymm27,%ymm21,%ymm14
vpmaddwd %ymm28,%ymm20,%ymm29

vpmaddwd (%r10),             %ymm5, %ymm1
vpmaddwd (%r10,%r12,1),      %ymm5, %ymm2
vpmaddwd 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpmaddwd 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpmaddwd 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpmaddwd (%r10),             %ymm5, %ymm10
vpmaddwd (%r10,%r12,1),      %ymm5, %ymm11
vpmaddwd 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpmaddwd 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpmaddwd 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpmaddwd (%r10),             %ymm1, %ymm20
vpmaddwd (%r10,%r12,1),      %ymm2, %ymm31
vpmaddwd 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpmaddwd 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpmaddwd 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpmaddwd (%r10),             %ymm15, %ymm3
vpmaddwd (%r10,%r12,1),      %ymm15, %ymm3
vpmaddwd 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpmaddwd 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpmaddwd 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpmaddwd (%r10),             %ymm14, %ymm10
vpmaddwd (%r10,%r12,1),      %ymm14, %ymm10
vpmaddwd 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpmaddwd 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpmaddwd 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpmaddwd (%r10),             %ymm11, %ymm20
vpmaddwd (%r10,%r12,1),      %ymm12, %ymm31
vpmaddwd 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpmaddwd 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpmaddwd 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpmaddwd (%r10),             %ymm25, %ymm3
vpmaddwd (%r10,%r12,1),      %ymm25, %ymm3
vpmaddwd 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpmaddwd 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpmaddwd 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpmaddwd (%r10),             %ymm24, %ymm10
vpmaddwd (%r10,%r12,1),      %ymm24, %ymm10
vpmaddwd 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpmaddwd 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpmaddwd 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpmaddwd (%r10),             %ymm21, %ymm20
vpmaddwd (%r10,%r12,1),      %ymm22, %ymm31
vpmaddwd 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpmaddwd 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpmaddwd 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpmaddwd %zmm0,%zmm3,%zmm1
vpmaddwd %zmm1,%zmm2,%zmm11
vpmaddwd %zmm2,%zmm1,%zmm22
vpmaddwd %zmm3,%zmm12,%zmm1
vpmaddwd %zmm4,%zmm13,%zmm15
vpmaddwd %zmm5,%zmm14,%zmm23
vpmaddwd %zmm6,%zmm24,%zmm2
vpmaddwd %zmm7,%zmm25,%zmm10
vpmaddwd %zmm0,%zmm26,%zmm27

vpmaddwd %zmm11,%zmm0,%zmm3
vpmaddwd %zmm12,%zmm0,%zmm11
vpmaddwd %zmm13,%zmm0,%zmm28
vpmaddwd %zmm14,%zmm10,%zmm4
vpmaddwd %zmm15,%zmm12,%zmm11
vpmaddwd %zmm11,%zmm13,%zmm29
vpmaddwd %zmm12,%zmm30,%zmm5
vpmaddwd %zmm13,%zmm31,%zmm11
vpmaddwd %zmm14,%zmm22,%zmm24

vpmaddwd %zmm20,%zmm0,%zmm6
vpmaddwd %zmm21,%zmm0,%zmm11
vpmaddwd %zmm22,%zmm0,%zmm30
vpmaddwd %zmm23,%zmm12,%zmm7
vpmaddwd %zmm24,%zmm13,%zmm10
vpmaddwd %zmm25,%zmm14,%zmm31
vpmaddwd %zmm26,%zmm22,%zmm1
vpmaddwd %zmm27,%zmm21,%zmm14
vpmaddwd %zmm28,%zmm20,%zmm29

vpmaddwd (%r10),             %zmm5, %zmm1
vpmaddwd (%r10,%r12,1),      %zmm5, %zmm2
vpmaddwd 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpmaddwd 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpmaddwd 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpmaddwd (%r10),             %zmm5, %zmm10
vpmaddwd (%r10,%r12,1),      %zmm5, %zmm11
vpmaddwd 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpmaddwd 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpmaddwd 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpmaddwd (%r10),             %zmm1, %zmm20
vpmaddwd (%r10,%r12,1),      %zmm2, %zmm31
vpmaddwd 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpmaddwd 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpmaddwd 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpmaddwd (%r10),             %zmm15, %zmm3
vpmaddwd (%r10,%r12,1),      %zmm15, %zmm3
vpmaddwd 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpmaddwd 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpmaddwd 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpmaddwd (%r10),             %zmm14, %zmm10
vpmaddwd (%r10,%r12,1),      %zmm14, %zmm10
vpmaddwd 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpmaddwd 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpmaddwd 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpmaddwd (%r10),             %zmm11, %zmm20
vpmaddwd (%r10,%r12,1),      %zmm12, %zmm31
vpmaddwd 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpmaddwd 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpmaddwd 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpmaddwd (%r10),             %zmm25, %zmm3
vpmaddwd (%r10,%r12,1),      %zmm25, %zmm3
vpmaddwd 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpmaddwd 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpmaddwd 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpmaddwd (%r10),             %zmm24, %zmm10
vpmaddwd (%r10,%r12,1),      %zmm24, %zmm10
vpmaddwd 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpmaddwd 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpmaddwd 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpmaddwd (%r10),             %zmm21, %zmm20
vpmaddwd (%r10,%r12,1),      %zmm22, %zmm31
vpmaddwd 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpmaddwd 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpmaddwd 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpmaddwd %zmm0,%zmm3,%zmm1
vpmaddwd %zmm1,%zmm2,%zmm11
vpmaddwd %zmm2,%zmm1,%zmm22
vpmaddwd %zmm3,%zmm12,%zmm1
vpmaddwd %zmm4,%zmm13,%zmm15
vpmaddwd %zmm5,%zmm14,%zmm23
vpmaddwd %zmm6,%zmm24,%zmm2
vpmaddwd %zmm7,%zmm25,%zmm10
vpmaddwd %zmm0,%zmm26,%zmm27

vpmaddwd %zmm11,%zmm0,%zmm3
vpmaddwd %zmm12,%zmm0,%zmm11
vpmaddwd %zmm13,%zmm0,%zmm28
vpmaddwd %zmm14,%zmm10,%zmm4
vpmaddwd %zmm15,%zmm12,%zmm11
vpmaddwd %zmm11,%zmm13,%zmm29
vpmaddwd %zmm12,%zmm30,%zmm5
vpmaddwd %zmm13,%zmm31,%zmm11
vpmaddwd %zmm14,%zmm22,%zmm24

vpmaddwd %zmm20,%zmm0,%zmm6
vpmaddwd %zmm21,%zmm0,%zmm11
vpmaddwd %zmm22,%zmm0,%zmm30
vpmaddwd %zmm23,%zmm12,%zmm7
vpmaddwd %zmm24,%zmm13,%zmm10
vpmaddwd %zmm25,%zmm14,%zmm31
vpmaddwd %zmm26,%zmm22,%zmm1
vpmaddwd %zmm27,%zmm21,%zmm14
vpmaddwd %zmm28,%zmm20,%zmm29

vpmaddwd (%r10),             %zmm5, %zmm1
vpmaddwd (%r10,%r12,1),      %zmm5, %zmm2
vpmaddwd 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpmaddwd 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpmaddwd 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpmaddwd (%r10),             %zmm5, %zmm10
vpmaddwd (%r10,%r12,1),      %zmm5, %zmm11
vpmaddwd 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpmaddwd 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpmaddwd 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpmaddwd (%r10),             %zmm1, %zmm20
vpmaddwd (%r10,%r12,1),      %zmm2, %zmm31
vpmaddwd 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpmaddwd 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpmaddwd 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpmaddwd (%r10),             %zmm15, %zmm3
vpmaddwd (%r10,%r12,1),      %zmm15, %zmm3
vpmaddwd 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpmaddwd 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpmaddwd 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpmaddwd (%r10),             %zmm14, %zmm10
vpmaddwd (%r10,%r12,1),      %zmm14, %zmm10
vpmaddwd 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpmaddwd 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpmaddwd 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpmaddwd (%r10),             %zmm11, %zmm20
vpmaddwd (%r10,%r12,1),      %zmm12, %zmm31
vpmaddwd 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpmaddwd 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpmaddwd 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpmaddwd (%r10),             %zmm25, %zmm3
vpmaddwd (%r10,%r12,1),      %zmm25, %zmm3
vpmaddwd 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpmaddwd 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpmaddwd 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpmaddwd (%r10),             %zmm24, %zmm10
vpmaddwd (%r10,%r12,1),      %zmm24, %zmm10
vpmaddwd 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpmaddwd 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpmaddwd 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpmaddwd (%r10),             %zmm21, %zmm20
vpmaddwd (%r10,%r12,1),      %zmm22, %zmm31
vpmaddwd 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpmaddwd 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpmaddwd 0x3567(%r10,%r12,4),%zmm25, %zmm29
