por %mm0, %mm1
por %mm2, %mm7
por %mm7, %mm5

por (%r10), %mm0
por (%r10,%rdx,4), %mm0
por 0x10(%r10,%rdx,4), %mm0

por (%r10), %mm4
por (%r10,%rdx,4), %mm5
por 0x10(%r10,%rdx,4), %mm6

vpor %xmm0,%xmm3,%xmm1
vpor %xmm1,%xmm2,%xmm11
vpor %xmm3,%xmm12,%xmm1
vpor %xmm4,%xmm13,%xmm15

vpor %xmm11,%xmm0,%xmm3
vpor %xmm12,%xmm0,%xmm11
vpor %xmm14,%xmm10,%xmm4
vpor %xmm15,%xmm12,%xmm11

vpor (%r10),             %xmm5, %xmm1
vpor (%r10,%r12,1),      %xmm5, %xmm2
vpor 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpor 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpor 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpor (%r10),             %xmm5, %xmm10
vpor (%r10,%r12,1),      %xmm5, %xmm11
vpor 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpor 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpor 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpor (%r10),             %xmm15, %xmm3
vpor (%r10,%r12,1),      %xmm15, %xmm3
vpor 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpor 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpor 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpor (%r10),             %xmm14, %xmm10
vpor (%r10,%r12,1),      %xmm14, %xmm10
vpor 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpor 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpor 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpor %ymm0,%ymm3,%ymm1
vpor %ymm1,%ymm2,%ymm11
vpor %ymm3,%ymm12,%ymm1
vpor %ymm4,%ymm13,%ymm15

vpor %ymm11,%ymm0,%ymm3
vpor %ymm12,%ymm0,%ymm11
vpor %ymm14,%ymm10,%ymm4
vpor %ymm15,%ymm12,%ymm11

vpor (%r10),             %ymm5, %ymm1
vpor (%r10,%r12,1),      %ymm5, %ymm2
vpor 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpor 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpor 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpor (%r10),             %ymm5, %ymm10
vpor (%r10,%r12,1),      %ymm5, %ymm11
vpor 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpor 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpor 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpor (%r10),             %ymm15, %ymm3
vpor (%r10,%r12,1),      %ymm15, %ymm3
vpor 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpor 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpor 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpor (%r10),             %ymm14, %ymm10
vpor (%r10,%r12,1),      %ymm14, %ymm10
vpor 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpor 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpor 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpor %ymm11,%ymm0,%ymm3
vpor %ymm12,%ymm0,%ymm11
vpor %ymm14,%ymm10,%ymm4
vpor %ymm15,%ymm12,%ymm11

vpor (%r10),             %ymm5, %ymm1
vpor (%r10,%r12,1),      %ymm5, %ymm2
vpor 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpor 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpor 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpor (%r10),             %ymm5, %ymm10
vpor (%r10,%r12,1),      %ymm5, %ymm11
vpor 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpor 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpor 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpor (%r10),             %ymm15, %ymm3
vpor (%r10,%r12,1),      %ymm15, %ymm3
vpor 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpor 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpor 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpor (%r10),             %ymm14, %ymm10
vpor (%r10,%r12,1),      %ymm14, %ymm10
vpor 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpor 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpor 0x3567(%r10,%r12,4),%ymm11, %ymm10


vpord %xmm0,%xmm3,%xmm1
vpord %xmm1,%xmm2,%xmm11
vpord %xmm2,%xmm1,%xmm22
vpord %xmm3,%xmm12,%xmm1
vpord %xmm4,%xmm13,%xmm15
vpord %xmm5,%xmm14,%xmm23
vpord %xmm6,%xmm24,%xmm2
vpord %xmm7,%xmm25,%xmm10
vpord %xmm0,%xmm26,%xmm27

vpord %xmm11,%xmm0,%xmm3
vpord %xmm12,%xmm0,%xmm11
vpord %xmm13,%xmm0,%xmm28
vpord %xmm14,%xmm10,%xmm4
vpord %xmm15,%xmm12,%xmm11
vpord %xmm11,%xmm13,%xmm29
vpord %xmm12,%xmm30,%xmm5
vpord %xmm13,%xmm31,%xmm11
vpord %xmm14,%xmm22,%xmm24

vpord %xmm20,%xmm0,%xmm6
vpord %xmm21,%xmm0,%xmm11
vpord %xmm22,%xmm0,%xmm30
vpord %xmm23,%xmm12,%xmm7
vpord %xmm24,%xmm13,%xmm10
vpord %xmm25,%xmm14,%xmm31
vpord %xmm26,%xmm22,%xmm1
vpord %xmm27,%xmm21,%xmm14
vpord %xmm28,%xmm20,%xmm29

vpord (%r10),             %xmm5, %xmm1
vpord (%r10,%r12,1),      %xmm5, %xmm2
vpord 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpord 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpord 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpord (%r10),             %xmm5, %xmm10
vpord (%r10,%r12,1),      %xmm5, %xmm11
vpord 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpord 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpord 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpord (%r10),             %xmm1, %xmm20
vpord (%r10,%r12,1),      %xmm2, %xmm31
vpord 0x10(%r10,%r12,1),  %xmm3, %xmm30
vpord 0x11(%r10,%r12,2),  %xmm4, %xmm25
vpord 0x3567(%r10,%r12,4),%xmm5, %xmm29

vpord (%r10),             %xmm15, %xmm3
vpord (%r10,%r12,1),      %xmm15, %xmm3
vpord 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpord 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpord 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpord (%r10),             %xmm14, %xmm10
vpord (%r10,%r12,1),      %xmm14, %xmm10
vpord 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpord 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpord 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpord (%r10),             %xmm11, %xmm20
vpord (%r10,%r12,1),      %xmm12, %xmm31
vpord 0x10(%r10,%r12,1),  %xmm13, %xmm30
vpord 0x11(%r10,%r12,2),  %xmm14, %xmm25
vpord 0x3567(%r10,%r12,4),%xmm15, %xmm29

vpord (%r10),             %xmm25, %xmm3
vpord (%r10,%r12,1),      %xmm25, %xmm3
vpord 0x10(%r10,%r12,1),  %xmm24, %xmm3
vpord 0x11(%r10,%r12,2),  %xmm24, %xmm3
vpord 0x3567(%r10,%r12,4),%xmm23, %xmm3

vpord (%r10),             %xmm24, %xmm10
vpord (%r10,%r12,1),      %xmm24, %xmm10
vpord 0x10(%r10,%r12,1),  %xmm25, %xmm10
vpord 0x11(%r10,%r12,2),  %xmm21, %xmm10
vpord 0x3567(%r10,%r12,4),%xmm21, %xmm10

vpord (%r10),             %xmm21, %xmm20
vpord (%r10,%r12,1),      %xmm22, %xmm31
vpord 0x10(%r10,%r12,1),  %xmm23, %xmm30
vpord 0x11(%r10,%r12,2),  %xmm24, %xmm25
vpord 0x3567(%r10,%r12,4),%xmm25, %xmm29

vpord %ymm0,%ymm3,%ymm1
vpord %ymm1,%ymm2,%ymm11
vpord %ymm2,%ymm1,%ymm22
vpord %ymm3,%ymm12,%ymm1
vpord %ymm4,%ymm13,%ymm15
vpord %ymm5,%ymm14,%ymm23
vpord %ymm6,%ymm24,%ymm2
vpord %ymm7,%ymm25,%ymm10
vpord %ymm0,%ymm26,%ymm27

vpord %ymm11,%ymm0,%ymm3
vpord %ymm12,%ymm0,%ymm11
vpord %ymm13,%ymm0,%ymm28
vpord %ymm14,%ymm10,%ymm4
vpord %ymm15,%ymm12,%ymm11
vpord %ymm11,%ymm13,%ymm29
vpord %ymm12,%ymm30,%ymm5
vpord %ymm13,%ymm31,%ymm11
vpord %ymm14,%ymm22,%ymm24

vpord %ymm20,%ymm0,%ymm6
vpord %ymm21,%ymm0,%ymm11
vpord %ymm22,%ymm0,%ymm30
vpord %ymm23,%ymm12,%ymm7
vpord %ymm24,%ymm13,%ymm10
vpord %ymm25,%ymm14,%ymm31
vpord %ymm26,%ymm22,%ymm1
vpord %ymm27,%ymm21,%ymm14
vpord %ymm28,%ymm20,%ymm29

vpord (%r10),             %ymm5, %ymm1
vpord (%r10,%r12,1),      %ymm5, %ymm2
vpord 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpord 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpord 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpord (%r10),             %ymm5, %ymm10
vpord (%r10,%r12,1),      %ymm5, %ymm11
vpord 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpord 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpord 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpord (%r10),             %ymm1, %ymm20
vpord (%r10,%r12,1),      %ymm2, %ymm31
vpord 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpord 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpord 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpord (%r10),             %ymm15, %ymm3
vpord (%r10,%r12,1),      %ymm15, %ymm3
vpord 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpord 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpord 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpord (%r10),             %ymm14, %ymm10
vpord (%r10,%r12,1),      %ymm14, %ymm10
vpord 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpord 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpord 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpord (%r10),             %ymm11, %ymm20
vpord (%r10,%r12,1),      %ymm12, %ymm31
vpord 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpord 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpord 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpord (%r10),             %ymm25, %ymm3
vpord (%r10,%r12,1),      %ymm25, %ymm3
vpord 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpord 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpord 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpord (%r10),             %ymm24, %ymm10
vpord (%r10,%r12,1),      %ymm24, %ymm10
vpord 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpord 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpord 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpord (%r10),             %ymm21, %ymm20
vpord (%r10,%r12,1),      %ymm22, %ymm31
vpord 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpord 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpord 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpord %ymm0,%ymm3,%ymm1
vpord %ymm1,%ymm2,%ymm11
vpord %ymm2,%ymm1,%ymm22
vpord %ymm3,%ymm12,%ymm1
vpord %ymm4,%ymm13,%ymm15
vpord %ymm5,%ymm14,%ymm23
vpord %ymm6,%ymm24,%ymm2
vpord %ymm7,%ymm25,%ymm10
vpord %ymm0,%ymm26,%ymm27

vpord %ymm11,%ymm0,%ymm3
vpord %ymm12,%ymm0,%ymm11
vpord %ymm13,%ymm0,%ymm28
vpord %ymm14,%ymm10,%ymm4
vpord %ymm15,%ymm12,%ymm11
vpord %ymm11,%ymm13,%ymm29
vpord %ymm12,%ymm30,%ymm5
vpord %ymm13,%ymm31,%ymm11
vpord %ymm14,%ymm22,%ymm24

vpord %ymm20,%ymm0,%ymm6
vpord %ymm21,%ymm0,%ymm11
vpord %ymm22,%ymm0,%ymm30
vpord %ymm23,%ymm12,%ymm7
vpord %ymm24,%ymm13,%ymm10
vpord %ymm25,%ymm14,%ymm31
vpord %ymm26,%ymm22,%ymm1
vpord %ymm27,%ymm21,%ymm14
vpord %ymm28,%ymm20,%ymm29

vpord (%r10),             %ymm5, %ymm1
vpord (%r10,%r12,1),      %ymm5, %ymm2
vpord 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpord 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpord 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpord (%r10),             %ymm5, %ymm10
vpord (%r10,%r12,1),      %ymm5, %ymm11
vpord 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpord 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpord 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpord (%r10),             %ymm1, %ymm20
vpord (%r10,%r12,1),      %ymm2, %ymm31
vpord 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpord 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpord 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpord (%r10),             %ymm15, %ymm3
vpord (%r10,%r12,1),      %ymm15, %ymm3
vpord 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpord 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpord 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpord (%r10),             %ymm14, %ymm10
vpord (%r10,%r12,1),      %ymm14, %ymm10
vpord 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpord 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpord 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpord (%r10),             %ymm11, %ymm20
vpord (%r10,%r12,1),      %ymm12, %ymm31
vpord 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpord 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpord 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpord (%r10),             %ymm25, %ymm3
vpord (%r10,%r12,1),      %ymm25, %ymm3
vpord 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpord 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpord 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpord (%r10),             %ymm24, %ymm10
vpord (%r10,%r12,1),      %ymm24, %ymm10
vpord 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpord 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpord 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpord (%r10),             %ymm21, %ymm20
vpord (%r10,%r12,1),      %ymm22, %ymm31
vpord 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpord 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpord 0x3567(%r10,%r12,4),%ymm25, %ymm29


vporq %xmm0,%xmm3,%xmm1
vporq %xmm1,%xmm2,%xmm11
vporq %xmm2,%xmm1,%xmm22
vporq %xmm3,%xmm12,%xmm1
vporq %xmm4,%xmm13,%xmm15
vporq %xmm5,%xmm14,%xmm23
vporq %xmm6,%xmm24,%xmm2
vporq %xmm7,%xmm25,%xmm10
vporq %xmm0,%xmm26,%xmm27

vporq %xmm11,%xmm0,%xmm3
vporq %xmm12,%xmm0,%xmm11
vporq %xmm13,%xmm0,%xmm28
vporq %xmm14,%xmm10,%xmm4
vporq %xmm15,%xmm12,%xmm11
vporq %xmm11,%xmm13,%xmm29
vporq %xmm12,%xmm30,%xmm5
vporq %xmm13,%xmm31,%xmm11
vporq %xmm14,%xmm22,%xmm24

vporq %xmm20,%xmm0,%xmm6
vporq %xmm21,%xmm0,%xmm11
vporq %xmm22,%xmm0,%xmm30
vporq %xmm23,%xmm12,%xmm7
vporq %xmm24,%xmm13,%xmm10
vporq %xmm25,%xmm14,%xmm31
vporq %xmm26,%xmm22,%xmm1
vporq %xmm27,%xmm21,%xmm14
vporq %xmm28,%xmm20,%xmm29

vporq (%r10),             %xmm5, %xmm1
vporq (%r10,%r12,1),      %xmm5, %xmm2
vporq 0x10(%r10,%r12,1),  %xmm5, %xmm3
vporq 0x11(%r10,%r12,2),  %xmm5, %xmm4
vporq 0x3567(%r10,%r12,4),%xmm5, %xmm0

vporq (%r10),             %xmm5, %xmm10
vporq (%r10,%r12,1),      %xmm5, %xmm11
vporq 0x10(%r10,%r12,1),  %xmm5, %xmm12
vporq 0x11(%r10,%r12,2),  %xmm5, %xmm13
vporq 0x3567(%r10,%r12,4),%xmm5, %xmm14

vporq (%r10),             %xmm1, %xmm20
vporq (%r10,%r12,1),      %xmm2, %xmm31
vporq 0x10(%r10,%r12,1),  %xmm3, %xmm30
vporq 0x11(%r10,%r12,2),  %xmm4, %xmm25
vporq 0x3567(%r10,%r12,4),%xmm5, %xmm29

vporq (%r10),             %xmm15, %xmm3
vporq (%r10,%r12,1),      %xmm15, %xmm3
vporq 0x10(%r10,%r12,1),  %xmm14, %xmm3
vporq 0x11(%r10,%r12,2),  %xmm14, %xmm3
vporq 0x3567(%r10,%r12,4),%xmm13, %xmm3

vporq (%r10),             %xmm14, %xmm10
vporq (%r10,%r12,1),      %xmm14, %xmm10
vporq 0x10(%r10,%r12,1),  %xmm15, %xmm10
vporq 0x11(%r10,%r12,2),  %xmm11, %xmm10
vporq 0x3567(%r10,%r12,4),%xmm11, %xmm10

vporq (%r10),             %xmm11, %xmm20
vporq (%r10,%r12,1),      %xmm12, %xmm31
vporq 0x10(%r10,%r12,1),  %xmm13, %xmm30
vporq 0x11(%r10,%r12,2),  %xmm14, %xmm25
vporq 0x3567(%r10,%r12,4),%xmm15, %xmm29

vporq (%r10),             %xmm25, %xmm3
vporq (%r10,%r12,1),      %xmm25, %xmm3
vporq 0x10(%r10,%r12,1),  %xmm24, %xmm3
vporq 0x11(%r10,%r12,2),  %xmm24, %xmm3
vporq 0x3567(%r10,%r12,4),%xmm23, %xmm3

vporq (%r10),             %xmm24, %xmm10
vporq (%r10,%r12,1),      %xmm24, %xmm10
vporq 0x10(%r10,%r12,1),  %xmm25, %xmm10
vporq 0x11(%r10,%r12,2),  %xmm21, %xmm10
vporq 0x3567(%r10,%r12,4),%xmm21, %xmm10

vporq (%r10),             %xmm21, %xmm20
vporq (%r10,%r12,1),      %xmm22, %xmm31
vporq 0x10(%r10,%r12,1),  %xmm23, %xmm30
vporq 0x11(%r10,%r12,2),  %xmm24, %xmm25
vporq 0x3567(%r10,%r12,4),%xmm25, %xmm29

vporq %ymm0,%ymm3,%ymm1
vporq %ymm1,%ymm2,%ymm11
vporq %ymm2,%ymm1,%ymm22
vporq %ymm3,%ymm12,%ymm1
vporq %ymm4,%ymm13,%ymm15
vporq %ymm5,%ymm14,%ymm23
vporq %ymm6,%ymm24,%ymm2
vporq %ymm7,%ymm25,%ymm10
vporq %ymm0,%ymm26,%ymm27

vporq %ymm11,%ymm0,%ymm3
vporq %ymm12,%ymm0,%ymm11
vporq %ymm13,%ymm0,%ymm28
vporq %ymm14,%ymm10,%ymm4
vporq %ymm15,%ymm12,%ymm11
vporq %ymm11,%ymm13,%ymm29
vporq %ymm12,%ymm30,%ymm5
vporq %ymm13,%ymm31,%ymm11
vporq %ymm14,%ymm22,%ymm24

vporq %ymm20,%ymm0,%ymm6
vporq %ymm21,%ymm0,%ymm11
vporq %ymm22,%ymm0,%ymm30
vporq %ymm23,%ymm12,%ymm7
vporq %ymm24,%ymm13,%ymm10
vporq %ymm25,%ymm14,%ymm31
vporq %ymm26,%ymm22,%ymm1
vporq %ymm27,%ymm21,%ymm14
vporq %ymm28,%ymm20,%ymm29

vporq (%r10),             %ymm5, %ymm1
vporq (%r10,%r12,1),      %ymm5, %ymm2
vporq 0x10(%r10,%r12,1),  %ymm5, %ymm3
vporq 0x11(%r10,%r12,2),  %ymm5, %ymm4
vporq 0x3567(%r10,%r12,4),%ymm5, %ymm0

vporq (%r10),             %ymm5, %ymm10
vporq (%r10,%r12,1),      %ymm5, %ymm11
vporq 0x10(%r10,%r12,1),  %ymm5, %ymm12
vporq 0x11(%r10,%r12,2),  %ymm5, %ymm13
vporq 0x3567(%r10,%r12,4),%ymm5, %ymm14

vporq (%r10),             %ymm1, %ymm20
vporq (%r10,%r12,1),      %ymm2, %ymm31
vporq 0x10(%r10,%r12,1),  %ymm3, %ymm30
vporq 0x11(%r10,%r12,2),  %ymm4, %ymm25
vporq 0x3567(%r10,%r12,4),%ymm5, %ymm29

vporq (%r10),             %ymm15, %ymm3
vporq (%r10,%r12,1),      %ymm15, %ymm3
vporq 0x10(%r10,%r12,1),  %ymm14, %ymm3
vporq 0x11(%r10,%r12,2),  %ymm14, %ymm3
vporq 0x3567(%r10,%r12,4),%ymm13, %ymm3

vporq (%r10),             %ymm14, %ymm10
vporq (%r10,%r12,1),      %ymm14, %ymm10
vporq 0x10(%r10,%r12,1),  %ymm15, %ymm10
vporq 0x11(%r10,%r12,2),  %ymm11, %ymm10
vporq 0x3567(%r10,%r12,4),%ymm11, %ymm10

vporq (%r10),             %ymm11, %ymm20
vporq (%r10,%r12,1),      %ymm12, %ymm31
vporq 0x10(%r10,%r12,1),  %ymm13, %ymm30
vporq 0x11(%r10,%r12,2),  %ymm14, %ymm25
vporq 0x3567(%r10,%r12,4),%ymm15, %ymm29

vporq (%r10),             %ymm25, %ymm3
vporq (%r10,%r12,1),      %ymm25, %ymm3
vporq 0x10(%r10,%r12,1),  %ymm24, %ymm3
vporq 0x11(%r10,%r12,2),  %ymm24, %ymm3
vporq 0x3567(%r10,%r12,4),%ymm23, %ymm3

vporq (%r10),             %ymm24, %ymm10
vporq (%r10,%r12,1),      %ymm24, %ymm10
vporq 0x10(%r10,%r12,1),  %ymm25, %ymm10
vporq 0x11(%r10,%r12,2),  %ymm21, %ymm10
vporq 0x3567(%r10,%r12,4),%ymm21, %ymm10

vporq (%r10),             %ymm21, %ymm20
vporq (%r10,%r12,1),      %ymm22, %ymm31
vporq 0x10(%r10,%r12,1),  %ymm23, %ymm30
vporq 0x11(%r10,%r12,2),  %ymm24, %ymm25
vporq 0x3567(%r10,%r12,4),%ymm25, %ymm29

vporq %ymm0,%ymm3,%ymm1
vporq %ymm1,%ymm2,%ymm11
vporq %ymm2,%ymm1,%ymm22
vporq %ymm3,%ymm12,%ymm1
vporq %ymm4,%ymm13,%ymm15
vporq %ymm5,%ymm14,%ymm23
vporq %ymm6,%ymm24,%ymm2
vporq %ymm7,%ymm25,%ymm10
vporq %ymm0,%ymm26,%ymm27

vporq %ymm11,%ymm0,%ymm3
vporq %ymm12,%ymm0,%ymm11
vporq %ymm13,%ymm0,%ymm28
vporq %ymm14,%ymm10,%ymm4
vporq %ymm15,%ymm12,%ymm11
vporq %ymm11,%ymm13,%ymm29
vporq %ymm12,%ymm30,%ymm5
vporq %ymm13,%ymm31,%ymm11
vporq %ymm14,%ymm22,%ymm24

vporq %ymm20,%ymm0,%ymm6
vporq %ymm21,%ymm0,%ymm11
vporq %ymm22,%ymm0,%ymm30
vporq %ymm23,%ymm12,%ymm7
vporq %ymm24,%ymm13,%ymm10
vporq %ymm25,%ymm14,%ymm31
vporq %ymm26,%ymm22,%ymm1
vporq %ymm27,%ymm21,%ymm14
vporq %ymm28,%ymm20,%ymm29

vporq (%r10),             %ymm5, %ymm1
vporq (%r10,%r12,1),      %ymm5, %ymm2
vporq 0x10(%r10,%r12,1),  %ymm5, %ymm3
vporq 0x11(%r10,%r12,2),  %ymm5, %ymm4
vporq 0x3567(%r10,%r12,4),%ymm5, %ymm0

vporq (%r10),             %ymm5, %ymm10
vporq (%r10,%r12,1),      %ymm5, %ymm11
vporq 0x10(%r10,%r12,1),  %ymm5, %ymm12
vporq 0x11(%r10,%r12,2),  %ymm5, %ymm13
vporq 0x3567(%r10,%r12,4),%ymm5, %ymm14

vporq (%r10),             %ymm1, %ymm20
vporq (%r10,%r12,1),      %ymm2, %ymm31
vporq 0x10(%r10,%r12,1),  %ymm3, %ymm30
vporq 0x11(%r10,%r12,2),  %ymm4, %ymm25
vporq 0x3567(%r10,%r12,4),%ymm5, %ymm29

vporq (%r10),             %ymm15, %ymm3
vporq (%r10,%r12,1),      %ymm15, %ymm3
vporq 0x10(%r10,%r12,1),  %ymm14, %ymm3
vporq 0x11(%r10,%r12,2),  %ymm14, %ymm3
vporq 0x3567(%r10,%r12,4),%ymm13, %ymm3

vporq (%r10),             %ymm14, %ymm10
vporq (%r10,%r12,1),      %ymm14, %ymm10
vporq 0x10(%r10,%r12,1),  %ymm15, %ymm10
vporq 0x11(%r10,%r12,2),  %ymm11, %ymm10
vporq 0x3567(%r10,%r12,4),%ymm11, %ymm10

vporq (%r10),             %ymm11, %ymm20
vporq (%r10,%r12,1),      %ymm12, %ymm31
vporq 0x10(%r10,%r12,1),  %ymm13, %ymm30
vporq 0x11(%r10,%r12,2),  %ymm14, %ymm25
vporq 0x3567(%r10,%r12,4),%ymm15, %ymm29

vporq (%r10),             %ymm25, %ymm3
vporq (%r10,%r12,1),      %ymm25, %ymm3
vporq 0x10(%r10,%r12,1),  %ymm24, %ymm3
vporq 0x11(%r10,%r12,2),  %ymm24, %ymm3
vporq 0x3567(%r10,%r12,4),%ymm23, %ymm3

vporq (%r10),             %ymm24, %ymm10
vporq (%r10,%r12,1),      %ymm24, %ymm10
vporq 0x10(%r10,%r12,1),  %ymm25, %ymm10
vporq 0x11(%r10,%r12,2),  %ymm21, %ymm10
vporq 0x3567(%r10,%r12,4),%ymm21, %ymm10

vporq (%r10),             %ymm21, %ymm20
vporq (%r10,%r12,1),      %ymm22, %ymm31
vporq 0x10(%r10,%r12,1),  %ymm23, %ymm30
vporq 0x11(%r10,%r12,2),  %ymm24, %ymm25
vporq 0x3567(%r10,%r12,4),%ymm25, %ymm29


vpord %zmm0,%zmm3,%zmm1
vpord %zmm1,%zmm2,%zmm11
vpord %zmm2,%zmm1,%zmm22
vpord %zmm3,%zmm12,%zmm1
vpord %zmm4,%zmm13,%zmm15
vpord %zmm5,%zmm14,%zmm23
vpord %zmm6,%zmm24,%zmm2
vpord %zmm7,%zmm25,%zmm10
vpord %zmm0,%zmm26,%zmm27

vpord %zmm11,%zmm0,%zmm3
vpord %zmm12,%zmm0,%zmm11
vpord %zmm13,%zmm0,%zmm28
vpord %zmm14,%zmm10,%zmm4
vpord %zmm15,%zmm12,%zmm11
vpord %zmm11,%zmm13,%zmm29
vpord %zmm12,%zmm30,%zmm5
vpord %zmm13,%zmm31,%zmm11
vpord %zmm14,%zmm22,%zmm24

vpord %zmm20,%zmm0,%zmm6
vpord %zmm21,%zmm0,%zmm11
vpord %zmm22,%zmm0,%zmm30
vpord %zmm23,%zmm12,%zmm7
vpord %zmm24,%zmm13,%zmm10
vpord %zmm25,%zmm14,%zmm31
vpord %zmm26,%zmm22,%zmm1
vpord %zmm27,%zmm21,%zmm14
vpord %zmm28,%zmm20,%zmm29

vpord (%r10),             %zmm5, %zmm1
vpord (%r10,%r12,1),      %zmm5, %zmm2
vpord 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpord 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpord 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpord (%r10),             %zmm5, %zmm10
vpord (%r10,%r12,1),      %zmm5, %zmm11
vpord 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpord 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpord 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpord (%r10),             %zmm1, %zmm20
vpord (%r10,%r12,1),      %zmm2, %zmm31
vpord 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpord 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpord 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpord (%r10),             %zmm15, %zmm3
vpord (%r10,%r12,1),      %zmm15, %zmm3
vpord 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpord 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpord 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpord (%r10),             %zmm14, %zmm10
vpord (%r10,%r12,1),      %zmm14, %zmm10
vpord 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpord 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpord 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpord (%r10),             %zmm11, %zmm20
vpord (%r10,%r12,1),      %zmm12, %zmm31
vpord 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpord 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpord 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpord (%r10),             %zmm25, %zmm3
vpord (%r10,%r12,1),      %zmm25, %zmm3
vpord 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpord 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpord 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpord (%r10),             %zmm24, %zmm10
vpord (%r10,%r12,1),      %zmm24, %zmm10
vpord 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpord 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpord 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpord (%r10),             %zmm21, %zmm20
vpord (%r10,%r12,1),      %zmm22, %zmm31
vpord 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpord 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpord 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpord %zmm0,%zmm3,%zmm1
vpord %zmm1,%zmm2,%zmm11
vpord %zmm2,%zmm1,%zmm22
vpord %zmm3,%zmm12,%zmm1
vpord %zmm4,%zmm13,%zmm15
vpord %zmm5,%zmm14,%zmm23
vpord %zmm6,%zmm24,%zmm2
vpord %zmm7,%zmm25,%zmm10
vpord %zmm0,%zmm26,%zmm27

vpord %zmm11,%zmm0,%zmm3
vpord %zmm12,%zmm0,%zmm11
vpord %zmm13,%zmm0,%zmm28
vpord %zmm14,%zmm10,%zmm4
vpord %zmm15,%zmm12,%zmm11
vpord %zmm11,%zmm13,%zmm29
vpord %zmm12,%zmm30,%zmm5
vpord %zmm13,%zmm31,%zmm11
vpord %zmm14,%zmm22,%zmm24

vpord %zmm20,%zmm0,%zmm6
vpord %zmm21,%zmm0,%zmm11
vpord %zmm22,%zmm0,%zmm30
vpord %zmm23,%zmm12,%zmm7
vpord %zmm24,%zmm13,%zmm10
vpord %zmm25,%zmm14,%zmm31
vpord %zmm26,%zmm22,%zmm1
vpord %zmm27,%zmm21,%zmm14
vpord %zmm28,%zmm20,%zmm29

vpord (%r10),             %zmm5, %zmm1
vpord (%r10,%r12,1),      %zmm5, %zmm2
vpord 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpord 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpord 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpord (%r10),             %zmm5, %zmm10
vpord (%r10,%r12,1),      %zmm5, %zmm11
vpord 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpord 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpord 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpord (%r10),             %zmm1, %zmm20
vpord (%r10,%r12,1),      %zmm2, %zmm31
vpord 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpord 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpord 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpord (%r10),             %zmm15, %zmm3
vpord (%r10,%r12,1),      %zmm15, %zmm3
vpord 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpord 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpord 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpord (%r10),             %zmm14, %zmm10
vpord (%r10,%r12,1),      %zmm14, %zmm10
vpord 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpord 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpord 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpord (%r10),             %zmm11, %zmm20
vpord (%r10,%r12,1),      %zmm12, %zmm31
vpord 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpord 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpord 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpord (%r10),             %zmm25, %zmm3
vpord (%r10,%r12,1),      %zmm25, %zmm3
vpord 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpord 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpord 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpord (%r10),             %zmm24, %zmm10
vpord (%r10,%r12,1),      %zmm24, %zmm10
vpord 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpord 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpord 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpord (%r10),             %zmm21, %zmm20
vpord (%r10,%r12,1),      %zmm22, %zmm31
vpord 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpord 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpord 0x3567(%r10,%r12,4),%zmm25, %zmm29


vporq %zmm0,%zmm3,%zmm1
vporq %zmm1,%zmm2,%zmm11
vporq %zmm2,%zmm1,%zmm22
vporq %zmm3,%zmm12,%zmm1
vporq %zmm4,%zmm13,%zmm15
vporq %zmm5,%zmm14,%zmm23
vporq %zmm6,%zmm24,%zmm2
vporq %zmm7,%zmm25,%zmm10
vporq %zmm0,%zmm26,%zmm27

vporq %zmm11,%zmm0,%zmm3
vporq %zmm12,%zmm0,%zmm11
vporq %zmm13,%zmm0,%zmm28
vporq %zmm14,%zmm10,%zmm4
vporq %zmm15,%zmm12,%zmm11
vporq %zmm11,%zmm13,%zmm29
vporq %zmm12,%zmm30,%zmm5
vporq %zmm13,%zmm31,%zmm11
vporq %zmm14,%zmm22,%zmm24

vporq %zmm20,%zmm0,%zmm6
vporq %zmm21,%zmm0,%zmm11
vporq %zmm22,%zmm0,%zmm30
vporq %zmm23,%zmm12,%zmm7
vporq %zmm24,%zmm13,%zmm10
vporq %zmm25,%zmm14,%zmm31
vporq %zmm26,%zmm22,%zmm1
vporq %zmm27,%zmm21,%zmm14
vporq %zmm28,%zmm20,%zmm29

vporq (%r10),             %zmm5, %zmm1
vporq (%r10,%r12,1),      %zmm5, %zmm2
vporq 0x10(%r10,%r12,1),  %zmm5, %zmm3
vporq 0x11(%r10,%r12,2),  %zmm5, %zmm4
vporq 0x3567(%r10,%r12,4),%zmm5, %zmm0

vporq (%r10),             %zmm5, %zmm10
vporq (%r10,%r12,1),      %zmm5, %zmm11
vporq 0x10(%r10,%r12,1),  %zmm5, %zmm12
vporq 0x11(%r10,%r12,2),  %zmm5, %zmm13
vporq 0x3567(%r10,%r12,4),%zmm5, %zmm14

vporq (%r10),             %zmm1, %zmm20
vporq (%r10,%r12,1),      %zmm2, %zmm31
vporq 0x10(%r10,%r12,1),  %zmm3, %zmm30
vporq 0x11(%r10,%r12,2),  %zmm4, %zmm25
vporq 0x3567(%r10,%r12,4),%zmm5, %zmm29

vporq (%r10),             %zmm15, %zmm3
vporq (%r10,%r12,1),      %zmm15, %zmm3
vporq 0x10(%r10,%r12,1),  %zmm14, %zmm3
vporq 0x11(%r10,%r12,2),  %zmm14, %zmm3
vporq 0x3567(%r10,%r12,4),%zmm13, %zmm3

vporq (%r10),             %zmm14, %zmm10
vporq (%r10,%r12,1),      %zmm14, %zmm10
vporq 0x10(%r10,%r12,1),  %zmm15, %zmm10
vporq 0x11(%r10,%r12,2),  %zmm11, %zmm10
vporq 0x3567(%r10,%r12,4),%zmm11, %zmm10

vporq (%r10),             %zmm11, %zmm20
vporq (%r10,%r12,1),      %zmm12, %zmm31
vporq 0x10(%r10,%r12,1),  %zmm13, %zmm30
vporq 0x11(%r10,%r12,2),  %zmm14, %zmm25
vporq 0x3567(%r10,%r12,4),%zmm15, %zmm29

vporq (%r10),             %zmm25, %zmm3
vporq (%r10,%r12,1),      %zmm25, %zmm3
vporq 0x10(%r10,%r12,1),  %zmm24, %zmm3
vporq 0x11(%r10,%r12,2),  %zmm24, %zmm3
vporq 0x3567(%r10,%r12,4),%zmm23, %zmm3

vporq (%r10),             %zmm24, %zmm10
vporq (%r10,%r12,1),      %zmm24, %zmm10
vporq 0x10(%r10,%r12,1),  %zmm25, %zmm10
vporq 0x11(%r10,%r12,2),  %zmm21, %zmm10
vporq 0x3567(%r10,%r12,4),%zmm21, %zmm10

vporq (%r10),             %zmm21, %zmm20
vporq (%r10,%r12,1),      %zmm22, %zmm31
vporq 0x10(%r10,%r12,1),  %zmm23, %zmm30
vporq 0x11(%r10,%r12,2),  %zmm24, %zmm25
vporq 0x3567(%r10,%r12,4),%zmm25, %zmm29

vporq %zmm0,%zmm3,%zmm1
vporq %zmm1,%zmm2,%zmm11
vporq %zmm2,%zmm1,%zmm22
vporq %zmm3,%zmm12,%zmm1
vporq %zmm4,%zmm13,%zmm15
vporq %zmm5,%zmm14,%zmm23
vporq %zmm6,%zmm24,%zmm2
vporq %zmm7,%zmm25,%zmm10
vporq %zmm0,%zmm26,%zmm27

vporq %zmm11,%zmm0,%zmm3
vporq %zmm12,%zmm0,%zmm11
vporq %zmm13,%zmm0,%zmm28
vporq %zmm14,%zmm10,%zmm4
vporq %zmm15,%zmm12,%zmm11
vporq %zmm11,%zmm13,%zmm29
vporq %zmm12,%zmm30,%zmm5
vporq %zmm13,%zmm31,%zmm11
vporq %zmm14,%zmm22,%zmm24

vporq %zmm20,%zmm0,%zmm6
vporq %zmm21,%zmm0,%zmm11
vporq %zmm22,%zmm0,%zmm30
vporq %zmm23,%zmm12,%zmm7
vporq %zmm24,%zmm13,%zmm10
vporq %zmm25,%zmm14,%zmm31
vporq %zmm26,%zmm22,%zmm1
vporq %zmm27,%zmm21,%zmm14
vporq %zmm28,%zmm20,%zmm29

vporq (%r10),             %zmm5, %zmm1
vporq (%r10,%r12,1),      %zmm5, %zmm2
vporq 0x10(%r10,%r12,1),  %zmm5, %zmm3
vporq 0x11(%r10,%r12,2),  %zmm5, %zmm4
vporq 0x3567(%r10,%r12,4),%zmm5, %zmm0

vporq (%r10),             %zmm5, %zmm10
vporq (%r10,%r12,1),      %zmm5, %zmm11
vporq 0x10(%r10,%r12,1),  %zmm5, %zmm12
vporq 0x11(%r10,%r12,2),  %zmm5, %zmm13
vporq 0x3567(%r10,%r12,4),%zmm5, %zmm14

vporq (%r10),             %zmm1, %zmm20
vporq (%r10,%r12,1),      %zmm2, %zmm31
vporq 0x10(%r10,%r12,1),  %zmm3, %zmm30
vporq 0x11(%r10,%r12,2),  %zmm4, %zmm25
vporq 0x3567(%r10,%r12,4),%zmm5, %zmm29

vporq (%r10),             %zmm15, %zmm3
vporq (%r10,%r12,1),      %zmm15, %zmm3
vporq 0x10(%r10,%r12,1),  %zmm14, %zmm3
vporq 0x11(%r10,%r12,2),  %zmm14, %zmm3
vporq 0x3567(%r10,%r12,4),%zmm13, %zmm3

vporq (%r10),             %zmm14, %zmm10
vporq (%r10,%r12,1),      %zmm14, %zmm10
vporq 0x10(%r10,%r12,1),  %zmm15, %zmm10
vporq 0x11(%r10,%r12,2),  %zmm11, %zmm10
vporq 0x3567(%r10,%r12,4),%zmm11, %zmm10

vporq (%r10),             %zmm11, %zmm20
vporq (%r10,%r12,1),      %zmm12, %zmm31
vporq 0x10(%r10,%r12,1),  %zmm13, %zmm30
vporq 0x11(%r10,%r12,2),  %zmm14, %zmm25
vporq 0x3567(%r10,%r12,4),%zmm15, %zmm29

vporq (%r10),             %zmm25, %zmm3
vporq (%r10,%r12,1),      %zmm25, %zmm3
vporq 0x10(%r10,%r12,1),  %zmm24, %zmm3
vporq 0x11(%r10,%r12,2),  %zmm24, %zmm3
vporq 0x3567(%r10,%r12,4),%zmm23, %zmm3

vporq (%r10),             %zmm24, %zmm10
vporq (%r10,%r12,1),      %zmm24, %zmm10
vporq 0x10(%r10,%r12,1),  %zmm25, %zmm10
vporq 0x11(%r10,%r12,2),  %zmm21, %zmm10
vporq 0x3567(%r10,%r12,4),%zmm21, %zmm10

vporq (%r10),             %zmm21, %zmm20
vporq (%r10,%r12,1),      %zmm22, %zmm31
vporq 0x10(%r10,%r12,1),  %zmm23, %zmm30
vporq 0x11(%r10,%r12,2),  %zmm24, %zmm25
vporq 0x3567(%r10,%r12,4),%zmm25, %zmm29
