pxor %mm0, %mm1
pxor %mm2, %mm7
pxor %mm7, %mm5

pxor (%r10), %mm0
pxor (%r10,%rdx,4), %mm0
pxor 0x10(%r10,%rdx,4), %mm0

pxor (%r10), %mm4
pxor (%r10,%rdx,4), %mm5
pxor 0x10(%r10,%rdx,4), %mm6

vpxor %xmm0,%xmm3,%xmm1
vpxor %xmm1,%xmm2,%xmm11
vpxor %xmm3,%xmm12,%xmm1
vpxor %xmm4,%xmm13,%xmm15

vpxor %xmm11,%xmm0,%xmm3
vpxor %xmm12,%xmm0,%xmm11
vpxor %xmm14,%xmm10,%xmm4
vpxor %xmm15,%xmm12,%xmm11

vpxor (%r10),             %xmm5, %xmm1
vpxor (%r10,%r12,1),      %xmm5, %xmm2
vpxor 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpxor 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpxor 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpxor (%r10),             %xmm5, %xmm10
vpxor (%r10,%r12,1),      %xmm5, %xmm11
vpxor 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpxor 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpxor 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpxor (%r10),             %xmm15, %xmm3
vpxor (%r10,%r12,1),      %xmm15, %xmm3
vpxor 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpxor 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpxor 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpxor (%r10),             %xmm14, %xmm10
vpxor (%r10,%r12,1),      %xmm14, %xmm10
vpxor 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpxor 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpxor 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpxor %ymm0,%ymm3,%ymm1
vpxor %ymm1,%ymm2,%ymm11
vpxor %ymm3,%ymm12,%ymm1
vpxor %ymm4,%ymm13,%ymm15

vpxor %ymm11,%ymm0,%ymm3
vpxor %ymm12,%ymm0,%ymm11
vpxor %ymm14,%ymm10,%ymm4
vpxor %ymm15,%ymm12,%ymm11

vpxor (%r10),             %ymm5, %ymm1
vpxor (%r10,%r12,1),      %ymm5, %ymm2
vpxor 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpxor 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpxor 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpxor (%r10),             %ymm5, %ymm10
vpxor (%r10,%r12,1),      %ymm5, %ymm11
vpxor 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpxor 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpxor 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpxor (%r10),             %ymm15, %ymm3
vpxor (%r10,%r12,1),      %ymm15, %ymm3
vpxor 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpxor 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpxor 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpxor (%r10),             %ymm14, %ymm10
vpxor (%r10,%r12,1),      %ymm14, %ymm10
vpxor 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpxor 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpxor 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpxor %ymm11,%ymm0,%ymm3
vpxor %ymm12,%ymm0,%ymm11
vpxor %ymm14,%ymm10,%ymm4
vpxor %ymm15,%ymm12,%ymm11

vpxor (%r10),             %ymm5, %ymm1
vpxor (%r10,%r12,1),      %ymm5, %ymm2
vpxor 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpxor 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpxor 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpxor (%r10),             %ymm5, %ymm10
vpxor (%r10,%r12,1),      %ymm5, %ymm11
vpxor 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpxor 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpxor 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpxor (%r10),             %ymm15, %ymm3
vpxor (%r10,%r12,1),      %ymm15, %ymm3
vpxor 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpxor 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpxor 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpxor (%r10),             %ymm14, %ymm10
vpxor (%r10,%r12,1),      %ymm14, %ymm10
vpxor 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpxor 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpxor 0x3567(%r10,%r12,4),%ymm11, %ymm10


vpxord %xmm0,%xmm3,%xmm1
vpxord %xmm1,%xmm2,%xmm11
vpxord %xmm2,%xmm1,%xmm22
vpxord %xmm3,%xmm12,%xmm1
vpxord %xmm4,%xmm13,%xmm15
vpxord %xmm5,%xmm14,%xmm23
vpxord %xmm6,%xmm24,%xmm2
vpxord %xmm7,%xmm25,%xmm10
vpxord %xmm0,%xmm26,%xmm27

vpxord %xmm11,%xmm0,%xmm3
vpxord %xmm12,%xmm0,%xmm11
vpxord %xmm13,%xmm0,%xmm28
vpxord %xmm14,%xmm10,%xmm4
vpxord %xmm15,%xmm12,%xmm11
vpxord %xmm11,%xmm13,%xmm29
vpxord %xmm12,%xmm30,%xmm5
vpxord %xmm13,%xmm31,%xmm11
vpxord %xmm14,%xmm22,%xmm24

vpxord %xmm20,%xmm0,%xmm6
vpxord %xmm21,%xmm0,%xmm11
vpxord %xmm22,%xmm0,%xmm30
vpxord %xmm23,%xmm12,%xmm7
vpxord %xmm24,%xmm13,%xmm10
vpxord %xmm25,%xmm14,%xmm31
vpxord %xmm26,%xmm22,%xmm1
vpxord %xmm27,%xmm21,%xmm14
vpxord %xmm28,%xmm20,%xmm29

vpxord (%r10),             %xmm5, %xmm1
vpxord (%r10,%r12,1),      %xmm5, %xmm2
vpxord 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpxord 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpxord 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpxord (%r10),             %xmm5, %xmm10
vpxord (%r10,%r12,1),      %xmm5, %xmm11
vpxord 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpxord 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpxord 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpxord (%r10),             %xmm1, %xmm20
vpxord (%r10,%r12,1),      %xmm2, %xmm31
vpxord 0x10(%r10,%r12,1),  %xmm3, %xmm30
vpxord 0x11(%r10,%r12,2),  %xmm4, %xmm25
vpxord 0x3567(%r10,%r12,4),%xmm5, %xmm29

vpxord (%r10),             %xmm15, %xmm3
vpxord (%r10,%r12,1),      %xmm15, %xmm3
vpxord 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpxord 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpxord 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpxord (%r10),             %xmm14, %xmm10
vpxord (%r10,%r12,1),      %xmm14, %xmm10
vpxord 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpxord 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpxord 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpxord (%r10),             %xmm11, %xmm20
vpxord (%r10,%r12,1),      %xmm12, %xmm31
vpxord 0x10(%r10,%r12,1),  %xmm13, %xmm30
vpxord 0x11(%r10,%r12,2),  %xmm14, %xmm25
vpxord 0x3567(%r10,%r12,4),%xmm15, %xmm29

vpxord (%r10),             %xmm25, %xmm3
vpxord (%r10,%r12,1),      %xmm25, %xmm3
vpxord 0x10(%r10,%r12,1),  %xmm24, %xmm3
vpxord 0x11(%r10,%r12,2),  %xmm24, %xmm3
vpxord 0x3567(%r10,%r12,4),%xmm23, %xmm3

vpxord (%r10),             %xmm24, %xmm10
vpxord (%r10,%r12,1),      %xmm24, %xmm10
vpxord 0x10(%r10,%r12,1),  %xmm25, %xmm10
vpxord 0x11(%r10,%r12,2),  %xmm21, %xmm10
vpxord 0x3567(%r10,%r12,4),%xmm21, %xmm10

vpxord (%r10),             %xmm21, %xmm20
vpxord (%r10,%r12,1),      %xmm22, %xmm31
vpxord 0x10(%r10,%r12,1),  %xmm23, %xmm30
vpxord 0x11(%r10,%r12,2),  %xmm24, %xmm25
vpxord 0x3567(%r10,%r12,4),%xmm25, %xmm29

vpxord %ymm0,%ymm3,%ymm1
vpxord %ymm1,%ymm2,%ymm11
vpxord %ymm2,%ymm1,%ymm22
vpxord %ymm3,%ymm12,%ymm1
vpxord %ymm4,%ymm13,%ymm15
vpxord %ymm5,%ymm14,%ymm23
vpxord %ymm6,%ymm24,%ymm2
vpxord %ymm7,%ymm25,%ymm10
vpxord %ymm0,%ymm26,%ymm27

vpxord %ymm11,%ymm0,%ymm3
vpxord %ymm12,%ymm0,%ymm11
vpxord %ymm13,%ymm0,%ymm28
vpxord %ymm14,%ymm10,%ymm4
vpxord %ymm15,%ymm12,%ymm11
vpxord %ymm11,%ymm13,%ymm29
vpxord %ymm12,%ymm30,%ymm5
vpxord %ymm13,%ymm31,%ymm11
vpxord %ymm14,%ymm22,%ymm24

vpxord %ymm20,%ymm0,%ymm6
vpxord %ymm21,%ymm0,%ymm11
vpxord %ymm22,%ymm0,%ymm30
vpxord %ymm23,%ymm12,%ymm7
vpxord %ymm24,%ymm13,%ymm10
vpxord %ymm25,%ymm14,%ymm31
vpxord %ymm26,%ymm22,%ymm1
vpxord %ymm27,%ymm21,%ymm14
vpxord %ymm28,%ymm20,%ymm29

vpxord (%r10),             %ymm5, %ymm1
vpxord (%r10,%r12,1),      %ymm5, %ymm2
vpxord 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpxord 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpxord 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpxord (%r10),             %ymm5, %ymm10
vpxord (%r10,%r12,1),      %ymm5, %ymm11
vpxord 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpxord 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpxord 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpxord (%r10),             %ymm1, %ymm20
vpxord (%r10,%r12,1),      %ymm2, %ymm31
vpxord 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpxord 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpxord 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpxord (%r10),             %ymm15, %ymm3
vpxord (%r10,%r12,1),      %ymm15, %ymm3
vpxord 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpxord 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpxord 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpxord (%r10),             %ymm14, %ymm10
vpxord (%r10,%r12,1),      %ymm14, %ymm10
vpxord 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpxord 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpxord 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpxord (%r10),             %ymm11, %ymm20
vpxord (%r10,%r12,1),      %ymm12, %ymm31
vpxord 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpxord 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpxord 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpxord (%r10),             %ymm25, %ymm3
vpxord (%r10,%r12,1),      %ymm25, %ymm3
vpxord 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpxord 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpxord 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpxord (%r10),             %ymm24, %ymm10
vpxord (%r10,%r12,1),      %ymm24, %ymm10
vpxord 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpxord 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpxord 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpxord (%r10),             %ymm21, %ymm20
vpxord (%r10,%r12,1),      %ymm22, %ymm31
vpxord 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpxord 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpxord 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpxord %ymm0,%ymm3,%ymm1
vpxord %ymm1,%ymm2,%ymm11
vpxord %ymm2,%ymm1,%ymm22
vpxord %ymm3,%ymm12,%ymm1
vpxord %ymm4,%ymm13,%ymm15
vpxord %ymm5,%ymm14,%ymm23
vpxord %ymm6,%ymm24,%ymm2
vpxord %ymm7,%ymm25,%ymm10
vpxord %ymm0,%ymm26,%ymm27

vpxord %ymm11,%ymm0,%ymm3
vpxord %ymm12,%ymm0,%ymm11
vpxord %ymm13,%ymm0,%ymm28
vpxord %ymm14,%ymm10,%ymm4
vpxord %ymm15,%ymm12,%ymm11
vpxord %ymm11,%ymm13,%ymm29
vpxord %ymm12,%ymm30,%ymm5
vpxord %ymm13,%ymm31,%ymm11
vpxord %ymm14,%ymm22,%ymm24

vpxord %ymm20,%ymm0,%ymm6
vpxord %ymm21,%ymm0,%ymm11
vpxord %ymm22,%ymm0,%ymm30
vpxord %ymm23,%ymm12,%ymm7
vpxord %ymm24,%ymm13,%ymm10
vpxord %ymm25,%ymm14,%ymm31
vpxord %ymm26,%ymm22,%ymm1
vpxord %ymm27,%ymm21,%ymm14
vpxord %ymm28,%ymm20,%ymm29

vpxord (%r10),             %ymm5, %ymm1
vpxord (%r10,%r12,1),      %ymm5, %ymm2
vpxord 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpxord 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpxord 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpxord (%r10),             %ymm5, %ymm10
vpxord (%r10,%r12,1),      %ymm5, %ymm11
vpxord 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpxord 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpxord 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpxord (%r10),             %ymm1, %ymm20
vpxord (%r10,%r12,1),      %ymm2, %ymm31
vpxord 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpxord 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpxord 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpxord (%r10),             %ymm15, %ymm3
vpxord (%r10,%r12,1),      %ymm15, %ymm3
vpxord 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpxord 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpxord 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpxord (%r10),             %ymm14, %ymm10
vpxord (%r10,%r12,1),      %ymm14, %ymm10
vpxord 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpxord 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpxord 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpxord (%r10),             %ymm11, %ymm20
vpxord (%r10,%r12,1),      %ymm12, %ymm31
vpxord 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpxord 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpxord 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpxord (%r10),             %ymm25, %ymm3
vpxord (%r10,%r12,1),      %ymm25, %ymm3
vpxord 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpxord 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpxord 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpxord (%r10),             %ymm24, %ymm10
vpxord (%r10,%r12,1),      %ymm24, %ymm10
vpxord 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpxord 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpxord 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpxord (%r10),             %ymm21, %ymm20
vpxord (%r10,%r12,1),      %ymm22, %ymm31
vpxord 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpxord 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpxord 0x3567(%r10,%r12,4),%ymm25, %ymm29


vpxorq %xmm0,%xmm3,%xmm1
vpxorq %xmm1,%xmm2,%xmm11
vpxorq %xmm2,%xmm1,%xmm22
vpxorq %xmm3,%xmm12,%xmm1
vpxorq %xmm4,%xmm13,%xmm15
vpxorq %xmm5,%xmm14,%xmm23
vpxorq %xmm6,%xmm24,%xmm2
vpxorq %xmm7,%xmm25,%xmm10
vpxorq %xmm0,%xmm26,%xmm27

vpxorq %xmm11,%xmm0,%xmm3
vpxorq %xmm12,%xmm0,%xmm11
vpxorq %xmm13,%xmm0,%xmm28
vpxorq %xmm14,%xmm10,%xmm4
vpxorq %xmm15,%xmm12,%xmm11
vpxorq %xmm11,%xmm13,%xmm29
vpxorq %xmm12,%xmm30,%xmm5
vpxorq %xmm13,%xmm31,%xmm11
vpxorq %xmm14,%xmm22,%xmm24

vpxorq %xmm20,%xmm0,%xmm6
vpxorq %xmm21,%xmm0,%xmm11
vpxorq %xmm22,%xmm0,%xmm30
vpxorq %xmm23,%xmm12,%xmm7
vpxorq %xmm24,%xmm13,%xmm10
vpxorq %xmm25,%xmm14,%xmm31
vpxorq %xmm26,%xmm22,%xmm1
vpxorq %xmm27,%xmm21,%xmm14
vpxorq %xmm28,%xmm20,%xmm29

vpxorq (%r10),             %xmm5, %xmm1
vpxorq (%r10,%r12,1),      %xmm5, %xmm2
vpxorq 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpxorq 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpxorq 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpxorq (%r10),             %xmm5, %xmm10
vpxorq (%r10,%r12,1),      %xmm5, %xmm11
vpxorq 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpxorq 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpxorq 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpxorq (%r10),             %xmm1, %xmm20
vpxorq (%r10,%r12,1),      %xmm2, %xmm31
vpxorq 0x10(%r10,%r12,1),  %xmm3, %xmm30
vpxorq 0x11(%r10,%r12,2),  %xmm4, %xmm25
vpxorq 0x3567(%r10,%r12,4),%xmm5, %xmm29

vpxorq (%r10),             %xmm15, %xmm3
vpxorq (%r10,%r12,1),      %xmm15, %xmm3
vpxorq 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpxorq 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpxorq 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpxorq (%r10),             %xmm14, %xmm10
vpxorq (%r10,%r12,1),      %xmm14, %xmm10
vpxorq 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpxorq 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpxorq 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpxorq (%r10),             %xmm11, %xmm20
vpxorq (%r10,%r12,1),      %xmm12, %xmm31
vpxorq 0x10(%r10,%r12,1),  %xmm13, %xmm30
vpxorq 0x11(%r10,%r12,2),  %xmm14, %xmm25
vpxorq 0x3567(%r10,%r12,4),%xmm15, %xmm29

vpxorq (%r10),             %xmm25, %xmm3
vpxorq (%r10,%r12,1),      %xmm25, %xmm3
vpxorq 0x10(%r10,%r12,1),  %xmm24, %xmm3
vpxorq 0x11(%r10,%r12,2),  %xmm24, %xmm3
vpxorq 0x3567(%r10,%r12,4),%xmm23, %xmm3

vpxorq (%r10),             %xmm24, %xmm10
vpxorq (%r10,%r12,1),      %xmm24, %xmm10
vpxorq 0x10(%r10,%r12,1),  %xmm25, %xmm10
vpxorq 0x11(%r10,%r12,2),  %xmm21, %xmm10
vpxorq 0x3567(%r10,%r12,4),%xmm21, %xmm10

vpxorq (%r10),             %xmm21, %xmm20
vpxorq (%r10,%r12,1),      %xmm22, %xmm31
vpxorq 0x10(%r10,%r12,1),  %xmm23, %xmm30
vpxorq 0x11(%r10,%r12,2),  %xmm24, %xmm25
vpxorq 0x3567(%r10,%r12,4),%xmm25, %xmm29

vpxorq %ymm0,%ymm3,%ymm1
vpxorq %ymm1,%ymm2,%ymm11
vpxorq %ymm2,%ymm1,%ymm22
vpxorq %ymm3,%ymm12,%ymm1
vpxorq %ymm4,%ymm13,%ymm15
vpxorq %ymm5,%ymm14,%ymm23
vpxorq %ymm6,%ymm24,%ymm2
vpxorq %ymm7,%ymm25,%ymm10
vpxorq %ymm0,%ymm26,%ymm27

vpxorq %ymm11,%ymm0,%ymm3
vpxorq %ymm12,%ymm0,%ymm11
vpxorq %ymm13,%ymm0,%ymm28
vpxorq %ymm14,%ymm10,%ymm4
vpxorq %ymm15,%ymm12,%ymm11
vpxorq %ymm11,%ymm13,%ymm29
vpxorq %ymm12,%ymm30,%ymm5
vpxorq %ymm13,%ymm31,%ymm11
vpxorq %ymm14,%ymm22,%ymm24

vpxorq %ymm20,%ymm0,%ymm6
vpxorq %ymm21,%ymm0,%ymm11
vpxorq %ymm22,%ymm0,%ymm30
vpxorq %ymm23,%ymm12,%ymm7
vpxorq %ymm24,%ymm13,%ymm10
vpxorq %ymm25,%ymm14,%ymm31
vpxorq %ymm26,%ymm22,%ymm1
vpxorq %ymm27,%ymm21,%ymm14
vpxorq %ymm28,%ymm20,%ymm29

vpxorq (%r10),             %ymm5, %ymm1
vpxorq (%r10,%r12,1),      %ymm5, %ymm2
vpxorq 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpxorq 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpxorq 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpxorq (%r10),             %ymm5, %ymm10
vpxorq (%r10,%r12,1),      %ymm5, %ymm11
vpxorq 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpxorq 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpxorq 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpxorq (%r10),             %ymm1, %ymm20
vpxorq (%r10,%r12,1),      %ymm2, %ymm31
vpxorq 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpxorq 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpxorq 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpxorq (%r10),             %ymm15, %ymm3
vpxorq (%r10,%r12,1),      %ymm15, %ymm3
vpxorq 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpxorq 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpxorq 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpxorq (%r10),             %ymm14, %ymm10
vpxorq (%r10,%r12,1),      %ymm14, %ymm10
vpxorq 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpxorq 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpxorq 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpxorq (%r10),             %ymm11, %ymm20
vpxorq (%r10,%r12,1),      %ymm12, %ymm31
vpxorq 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpxorq 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpxorq 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpxorq (%r10),             %ymm25, %ymm3
vpxorq (%r10,%r12,1),      %ymm25, %ymm3
vpxorq 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpxorq 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpxorq 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpxorq (%r10),             %ymm24, %ymm10
vpxorq (%r10,%r12,1),      %ymm24, %ymm10
vpxorq 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpxorq 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpxorq 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpxorq (%r10),             %ymm21, %ymm20
vpxorq (%r10,%r12,1),      %ymm22, %ymm31
vpxorq 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpxorq 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpxorq 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpxorq %ymm0,%ymm3,%ymm1
vpxorq %ymm1,%ymm2,%ymm11
vpxorq %ymm2,%ymm1,%ymm22
vpxorq %ymm3,%ymm12,%ymm1
vpxorq %ymm4,%ymm13,%ymm15
vpxorq %ymm5,%ymm14,%ymm23
vpxorq %ymm6,%ymm24,%ymm2
vpxorq %ymm7,%ymm25,%ymm10
vpxorq %ymm0,%ymm26,%ymm27

vpxorq %ymm11,%ymm0,%ymm3
vpxorq %ymm12,%ymm0,%ymm11
vpxorq %ymm13,%ymm0,%ymm28
vpxorq %ymm14,%ymm10,%ymm4
vpxorq %ymm15,%ymm12,%ymm11
vpxorq %ymm11,%ymm13,%ymm29
vpxorq %ymm12,%ymm30,%ymm5
vpxorq %ymm13,%ymm31,%ymm11
vpxorq %ymm14,%ymm22,%ymm24

vpxorq %ymm20,%ymm0,%ymm6
vpxorq %ymm21,%ymm0,%ymm11
vpxorq %ymm22,%ymm0,%ymm30
vpxorq %ymm23,%ymm12,%ymm7
vpxorq %ymm24,%ymm13,%ymm10
vpxorq %ymm25,%ymm14,%ymm31
vpxorq %ymm26,%ymm22,%ymm1
vpxorq %ymm27,%ymm21,%ymm14
vpxorq %ymm28,%ymm20,%ymm29

vpxorq (%r10),             %ymm5, %ymm1
vpxorq (%r10,%r12,1),      %ymm5, %ymm2
vpxorq 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpxorq 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpxorq 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpxorq (%r10),             %ymm5, %ymm10
vpxorq (%r10,%r12,1),      %ymm5, %ymm11
vpxorq 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpxorq 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpxorq 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpxorq (%r10),             %ymm1, %ymm20
vpxorq (%r10,%r12,1),      %ymm2, %ymm31
vpxorq 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpxorq 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpxorq 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpxorq (%r10),             %ymm15, %ymm3
vpxorq (%r10,%r12,1),      %ymm15, %ymm3
vpxorq 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpxorq 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpxorq 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpxorq (%r10),             %ymm14, %ymm10
vpxorq (%r10,%r12,1),      %ymm14, %ymm10
vpxorq 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpxorq 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpxorq 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpxorq (%r10),             %ymm11, %ymm20
vpxorq (%r10,%r12,1),      %ymm12, %ymm31
vpxorq 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpxorq 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpxorq 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpxorq (%r10),             %ymm25, %ymm3
vpxorq (%r10,%r12,1),      %ymm25, %ymm3
vpxorq 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpxorq 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpxorq 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpxorq (%r10),             %ymm24, %ymm10
vpxorq (%r10,%r12,1),      %ymm24, %ymm10
vpxorq 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpxorq 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpxorq 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpxorq (%r10),             %ymm21, %ymm20
vpxorq (%r10,%r12,1),      %ymm22, %ymm31
vpxorq 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpxorq 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpxorq 0x3567(%r10,%r12,4),%ymm25, %ymm29
