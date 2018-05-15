pmulhw %mm0, %mm1
pmulhw %mm2, %mm7
pmulhw %mm7, %mm5

pmulhw (%r10), %mm0
pmulhw (%r10,%rdx,4), %mm0
pmulhw 0x10(%r10,%rdx,4), %mm0

pmulhw (%r10), %mm4
pmulhw (%r10,%rdx,4), %mm5
pmulhw 0x10(%r10,%rdx,4), %mm6

vpmulhw %xmm0,%xmm3,%xmm1
vpmulhw %xmm1,%xmm2,%xmm11
vpmulhw %xmm2,%xmm1,%xmm22
vpmulhw %xmm3,%xmm12,%xmm1
vpmulhw %xmm4,%xmm13,%xmm15
vpmulhw %xmm5,%xmm14,%xmm23
vpmulhw %xmm6,%xmm24,%xmm2
vpmulhw %xmm7,%xmm25,%xmm10
vpmulhw %xmm0,%xmm26,%xmm27

vpmulhw %xmm11,%xmm0,%xmm3
vpmulhw %xmm12,%xmm0,%xmm11
vpmulhw %xmm13,%xmm0,%xmm28
vpmulhw %xmm14,%xmm10,%xmm4
vpmulhw %xmm15,%xmm12,%xmm11
vpmulhw %xmm11,%xmm13,%xmm29
vpmulhw %xmm12,%xmm30,%xmm5
vpmulhw %xmm13,%xmm31,%xmm11
vpmulhw %xmm14,%xmm22,%xmm24

vpmulhw %xmm20,%xmm0,%xmm6
vpmulhw %xmm21,%xmm0,%xmm11
vpmulhw %xmm22,%xmm0,%xmm30
vpmulhw %xmm23,%xmm12,%xmm7
vpmulhw %xmm24,%xmm13,%xmm10
vpmulhw %xmm25,%xmm14,%xmm31
vpmulhw %xmm26,%xmm22,%xmm1
vpmulhw %xmm27,%xmm21,%xmm14
vpmulhw %xmm28,%xmm20,%xmm29

vpmulhw (%r10),             %xmm5, %xmm1
vpmulhw (%r10,%r12,1),      %xmm5, %xmm2
vpmulhw 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpmulhw 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpmulhw 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpmulhw (%r10),             %xmm5, %xmm10
vpmulhw (%r10,%r12,1),      %xmm5, %xmm11
vpmulhw 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpmulhw 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpmulhw 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpmulhw (%r10),             %xmm1, %xmm20
vpmulhw (%r10,%r12,1),      %xmm2, %xmm31
vpmulhw 0x10(%r10,%r12,1),  %xmm3, %xmm30
vpmulhw 0x11(%r10,%r12,2),  %xmm4, %xmm25
vpmulhw 0x3567(%r10,%r12,4),%xmm5, %xmm29

vpmulhw (%r10),             %xmm15, %xmm3
vpmulhw (%r10,%r12,1),      %xmm15, %xmm3
vpmulhw 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpmulhw 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpmulhw 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpmulhw (%r10),             %xmm14, %xmm10
vpmulhw (%r10,%r12,1),      %xmm14, %xmm10
vpmulhw 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpmulhw 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpmulhw 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpmulhw (%r10),             %xmm11, %xmm20
vpmulhw (%r10,%r12,1),      %xmm12, %xmm31
vpmulhw 0x10(%r10,%r12,1),  %xmm13, %xmm30
vpmulhw 0x11(%r10,%r12,2),  %xmm14, %xmm25
vpmulhw 0x3567(%r10,%r12,4),%xmm15, %xmm29

vpmulhw (%r10),             %xmm25, %xmm3
vpmulhw (%r10,%r12,1),      %xmm25, %xmm3
vpmulhw 0x10(%r10,%r12,1),  %xmm24, %xmm3
vpmulhw 0x11(%r10,%r12,2),  %xmm24, %xmm3
vpmulhw 0x3567(%r10,%r12,4),%xmm23, %xmm3

vpmulhw (%r10),             %xmm24, %xmm10
vpmulhw (%r10,%r12,1),      %xmm24, %xmm10
vpmulhw 0x10(%r10,%r12,1),  %xmm25, %xmm10
vpmulhw 0x11(%r10,%r12,2),  %xmm21, %xmm10
vpmulhw 0x3567(%r10,%r12,4),%xmm21, %xmm10

vpmulhw (%r10),             %xmm21, %xmm20
vpmulhw (%r10,%r12,1),      %xmm22, %xmm31
vpmulhw 0x10(%r10,%r12,1),  %xmm23, %xmm30
vpmulhw 0x11(%r10,%r12,2),  %xmm24, %xmm25
vpmulhw 0x3567(%r10,%r12,4),%xmm25, %xmm29

vpmulhw %ymm0,%ymm3,%ymm1
vpmulhw %ymm1,%ymm2,%ymm11
vpmulhw %ymm2,%ymm1,%ymm22
vpmulhw %ymm3,%ymm12,%ymm1
vpmulhw %ymm4,%ymm13,%ymm15
vpmulhw %ymm5,%ymm14,%ymm23
vpmulhw %ymm6,%ymm24,%ymm2
vpmulhw %ymm7,%ymm25,%ymm10
vpmulhw %ymm0,%ymm26,%ymm27

vpmulhw %ymm11,%ymm0,%ymm3
vpmulhw %ymm12,%ymm0,%ymm11
vpmulhw %ymm13,%ymm0,%ymm28
vpmulhw %ymm14,%ymm10,%ymm4
vpmulhw %ymm15,%ymm12,%ymm11
vpmulhw %ymm11,%ymm13,%ymm29
vpmulhw %ymm12,%ymm30,%ymm5
vpmulhw %ymm13,%ymm31,%ymm11
vpmulhw %ymm14,%ymm22,%ymm24

vpmulhw %ymm20,%ymm0,%ymm6
vpmulhw %ymm21,%ymm0,%ymm11
vpmulhw %ymm22,%ymm0,%ymm30
vpmulhw %ymm23,%ymm12,%ymm7
vpmulhw %ymm24,%ymm13,%ymm10
vpmulhw %ymm25,%ymm14,%ymm31
vpmulhw %ymm26,%ymm22,%ymm1
vpmulhw %ymm27,%ymm21,%ymm14
vpmulhw %ymm28,%ymm20,%ymm29

vpmulhw (%r10),             %ymm5, %ymm1
vpmulhw (%r10,%r12,1),      %ymm5, %ymm2
vpmulhw 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpmulhw 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpmulhw 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpmulhw (%r10),             %ymm5, %ymm10
vpmulhw (%r10,%r12,1),      %ymm5, %ymm11
vpmulhw 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpmulhw 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpmulhw 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpmulhw (%r10),             %ymm1, %ymm20
vpmulhw (%r10,%r12,1),      %ymm2, %ymm31
vpmulhw 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpmulhw 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpmulhw 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpmulhw (%r10),             %ymm15, %ymm3
vpmulhw (%r10,%r12,1),      %ymm15, %ymm3
vpmulhw 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpmulhw 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpmulhw 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpmulhw (%r10),             %ymm14, %ymm10
vpmulhw (%r10,%r12,1),      %ymm14, %ymm10
vpmulhw 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpmulhw 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpmulhw 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpmulhw (%r10),             %ymm11, %ymm20
vpmulhw (%r10,%r12,1),      %ymm12, %ymm31
vpmulhw 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpmulhw 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpmulhw 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpmulhw (%r10),             %ymm25, %ymm3
vpmulhw (%r10,%r12,1),      %ymm25, %ymm3
vpmulhw 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpmulhw 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpmulhw 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpmulhw (%r10),             %ymm24, %ymm10
vpmulhw (%r10,%r12,1),      %ymm24, %ymm10
vpmulhw 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpmulhw 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpmulhw 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpmulhw (%r10),             %ymm21, %ymm20
vpmulhw (%r10,%r12,1),      %ymm22, %ymm31
vpmulhw 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpmulhw 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpmulhw 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpmulhw %ymm0,%ymm3,%ymm1
vpmulhw %ymm1,%ymm2,%ymm11
vpmulhw %ymm2,%ymm1,%ymm22
vpmulhw %ymm3,%ymm12,%ymm1
vpmulhw %ymm4,%ymm13,%ymm15
vpmulhw %ymm5,%ymm14,%ymm23
vpmulhw %ymm6,%ymm24,%ymm2
vpmulhw %ymm7,%ymm25,%ymm10
vpmulhw %ymm0,%ymm26,%ymm27

vpmulhw %ymm11,%ymm0,%ymm3
vpmulhw %ymm12,%ymm0,%ymm11
vpmulhw %ymm13,%ymm0,%ymm28
vpmulhw %ymm14,%ymm10,%ymm4
vpmulhw %ymm15,%ymm12,%ymm11
vpmulhw %ymm11,%ymm13,%ymm29
vpmulhw %ymm12,%ymm30,%ymm5
vpmulhw %ymm13,%ymm31,%ymm11
vpmulhw %ymm14,%ymm22,%ymm24

vpmulhw %ymm20,%ymm0,%ymm6
vpmulhw %ymm21,%ymm0,%ymm11
vpmulhw %ymm22,%ymm0,%ymm30
vpmulhw %ymm23,%ymm12,%ymm7
vpmulhw %ymm24,%ymm13,%ymm10
vpmulhw %ymm25,%ymm14,%ymm31
vpmulhw %ymm26,%ymm22,%ymm1
vpmulhw %ymm27,%ymm21,%ymm14
vpmulhw %ymm28,%ymm20,%ymm29

vpmulhw (%r10),             %ymm5, %ymm1
vpmulhw (%r10,%r12,1),      %ymm5, %ymm2
vpmulhw 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpmulhw 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpmulhw 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpmulhw (%r10),             %ymm5, %ymm10
vpmulhw (%r10,%r12,1),      %ymm5, %ymm11
vpmulhw 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpmulhw 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpmulhw 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpmulhw (%r10),             %ymm1, %ymm20
vpmulhw (%r10,%r12,1),      %ymm2, %ymm31
vpmulhw 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpmulhw 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpmulhw 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpmulhw (%r10),             %ymm15, %ymm3
vpmulhw (%r10,%r12,1),      %ymm15, %ymm3
vpmulhw 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpmulhw 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpmulhw 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpmulhw (%r10),             %ymm14, %ymm10
vpmulhw (%r10,%r12,1),      %ymm14, %ymm10
vpmulhw 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpmulhw 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpmulhw 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpmulhw (%r10),             %ymm11, %ymm20
vpmulhw (%r10,%r12,1),      %ymm12, %ymm31
vpmulhw 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpmulhw 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpmulhw 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpmulhw (%r10),             %ymm25, %ymm3
vpmulhw (%r10,%r12,1),      %ymm25, %ymm3
vpmulhw 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpmulhw 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpmulhw 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpmulhw (%r10),             %ymm24, %ymm10
vpmulhw (%r10,%r12,1),      %ymm24, %ymm10
vpmulhw 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpmulhw 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpmulhw 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpmulhw (%r10),             %ymm21, %ymm20
vpmulhw (%r10,%r12,1),      %ymm22, %ymm31
vpmulhw 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpmulhw 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpmulhw 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpmulhw %zmm0,%zmm3,%zmm1
vpmulhw %zmm1,%zmm2,%zmm11
vpmulhw %zmm2,%zmm1,%zmm22
vpmulhw %zmm3,%zmm12,%zmm1
vpmulhw %zmm4,%zmm13,%zmm15
vpmulhw %zmm5,%zmm14,%zmm23
vpmulhw %zmm6,%zmm24,%zmm2
vpmulhw %zmm7,%zmm25,%zmm10
vpmulhw %zmm0,%zmm26,%zmm27

vpmulhw %zmm11,%zmm0,%zmm3
vpmulhw %zmm12,%zmm0,%zmm11
vpmulhw %zmm13,%zmm0,%zmm28
vpmulhw %zmm14,%zmm10,%zmm4
vpmulhw %zmm15,%zmm12,%zmm11
vpmulhw %zmm11,%zmm13,%zmm29
vpmulhw %zmm12,%zmm30,%zmm5
vpmulhw %zmm13,%zmm31,%zmm11
vpmulhw %zmm14,%zmm22,%zmm24

vpmulhw %zmm20,%zmm0,%zmm6
vpmulhw %zmm21,%zmm0,%zmm11
vpmulhw %zmm22,%zmm0,%zmm30
vpmulhw %zmm23,%zmm12,%zmm7
vpmulhw %zmm24,%zmm13,%zmm10
vpmulhw %zmm25,%zmm14,%zmm31
vpmulhw %zmm26,%zmm22,%zmm1
vpmulhw %zmm27,%zmm21,%zmm14
vpmulhw %zmm28,%zmm20,%zmm29

vpmulhw (%r10),             %zmm5, %zmm1
vpmulhw (%r10,%r12,1),      %zmm5, %zmm2
vpmulhw 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpmulhw 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpmulhw 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpmulhw (%r10),             %zmm5, %zmm10
vpmulhw (%r10,%r12,1),      %zmm5, %zmm11
vpmulhw 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpmulhw 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpmulhw 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpmulhw (%r10),             %zmm1, %zmm20
vpmulhw (%r10,%r12,1),      %zmm2, %zmm31
vpmulhw 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpmulhw 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpmulhw 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpmulhw (%r10),             %zmm15, %zmm3
vpmulhw (%r10,%r12,1),      %zmm15, %zmm3
vpmulhw 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpmulhw 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpmulhw 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpmulhw (%r10),             %zmm14, %zmm10
vpmulhw (%r10,%r12,1),      %zmm14, %zmm10
vpmulhw 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpmulhw 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpmulhw 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpmulhw (%r10),             %zmm11, %zmm20
vpmulhw (%r10,%r12,1),      %zmm12, %zmm31
vpmulhw 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpmulhw 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpmulhw 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpmulhw (%r10),             %zmm25, %zmm3
vpmulhw (%r10,%r12,1),      %zmm25, %zmm3
vpmulhw 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpmulhw 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpmulhw 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpmulhw (%r10),             %zmm24, %zmm10
vpmulhw (%r10,%r12,1),      %zmm24, %zmm10
vpmulhw 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpmulhw 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpmulhw 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpmulhw (%r10),             %zmm21, %zmm20
vpmulhw (%r10,%r12,1),      %zmm22, %zmm31
vpmulhw 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpmulhw 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpmulhw 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpmulhw %zmm0,%zmm3,%zmm1
vpmulhw %zmm1,%zmm2,%zmm11
vpmulhw %zmm2,%zmm1,%zmm22
vpmulhw %zmm3,%zmm12,%zmm1
vpmulhw %zmm4,%zmm13,%zmm15
vpmulhw %zmm5,%zmm14,%zmm23
vpmulhw %zmm6,%zmm24,%zmm2
vpmulhw %zmm7,%zmm25,%zmm10
vpmulhw %zmm0,%zmm26,%zmm27

vpmulhw %zmm11,%zmm0,%zmm3
vpmulhw %zmm12,%zmm0,%zmm11
vpmulhw %zmm13,%zmm0,%zmm28
vpmulhw %zmm14,%zmm10,%zmm4
vpmulhw %zmm15,%zmm12,%zmm11
vpmulhw %zmm11,%zmm13,%zmm29
vpmulhw %zmm12,%zmm30,%zmm5
vpmulhw %zmm13,%zmm31,%zmm11
vpmulhw %zmm14,%zmm22,%zmm24

vpmulhw %zmm20,%zmm0,%zmm6
vpmulhw %zmm21,%zmm0,%zmm11
vpmulhw %zmm22,%zmm0,%zmm30
vpmulhw %zmm23,%zmm12,%zmm7
vpmulhw %zmm24,%zmm13,%zmm10
vpmulhw %zmm25,%zmm14,%zmm31
vpmulhw %zmm26,%zmm22,%zmm1
vpmulhw %zmm27,%zmm21,%zmm14
vpmulhw %zmm28,%zmm20,%zmm29

vpmulhw (%r10),             %zmm5, %zmm1
vpmulhw (%r10,%r12,1),      %zmm5, %zmm2
vpmulhw 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpmulhw 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpmulhw 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpmulhw (%r10),             %zmm5, %zmm10
vpmulhw (%r10,%r12,1),      %zmm5, %zmm11
vpmulhw 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpmulhw 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpmulhw 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpmulhw (%r10),             %zmm1, %zmm20
vpmulhw (%r10,%r12,1),      %zmm2, %zmm31
vpmulhw 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpmulhw 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpmulhw 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpmulhw (%r10),             %zmm15, %zmm3
vpmulhw (%r10,%r12,1),      %zmm15, %zmm3
vpmulhw 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpmulhw 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpmulhw 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpmulhw (%r10),             %zmm14, %zmm10
vpmulhw (%r10,%r12,1),      %zmm14, %zmm10
vpmulhw 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpmulhw 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpmulhw 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpmulhw (%r10),             %zmm11, %zmm20
vpmulhw (%r10,%r12,1),      %zmm12, %zmm31
vpmulhw 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpmulhw 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpmulhw 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpmulhw (%r10),             %zmm25, %zmm3
vpmulhw (%r10,%r12,1),      %zmm25, %zmm3
vpmulhw 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpmulhw 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpmulhw 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpmulhw (%r10),             %zmm24, %zmm10
vpmulhw (%r10,%r12,1),      %zmm24, %zmm10
vpmulhw 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpmulhw 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpmulhw 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpmulhw (%r10),             %zmm21, %zmm20
vpmulhw (%r10,%r12,1),      %zmm22, %zmm31
vpmulhw 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpmulhw 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpmulhw 0x3567(%r10,%r12,4),%zmm25, %zmm29
