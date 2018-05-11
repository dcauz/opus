punpckhbw %mm0, %mm1
punpckhbw %mm2, %mm7
punpckhbw %mm7, %mm5

punpckhbw (%r10), %mm0
punpckhbw (%r10,%rdx,4), %mm0
punpckhbw 0x10(%r10,%rdx,4), %mm0

punpckhbw (%r10), %mm4
punpckhbw (%r10,%rdx,4), %mm5
punpckhbw 0x10(%r10,%rdx,4), %mm6

vpunpckhbw %xmm0,%xmm3,%xmm1
vpunpckhbw %xmm1,%xmm2,%xmm11
vpunpckhbw %xmm2,%xmm1,%xmm22
vpunpckhbw %xmm3,%xmm12,%xmm1
vpunpckhbw %xmm4,%xmm13,%xmm15
vpunpckhbw %xmm5,%xmm14,%xmm23
vpunpckhbw %xmm6,%xmm24,%xmm2
vpunpckhbw %xmm7,%xmm25,%xmm10
vpunpckhbw %xmm0,%xmm26,%xmm27

vpunpckhbw %xmm11,%xmm0,%xmm3
vpunpckhbw %xmm12,%xmm0,%xmm11
vpunpckhbw %xmm13,%xmm0,%xmm28
vpunpckhbw %xmm14,%xmm10,%xmm4
vpunpckhbw %xmm15,%xmm12,%xmm11
vpunpckhbw %xmm11,%xmm13,%xmm29
vpunpckhbw %xmm12,%xmm30,%xmm5
vpunpckhbw %xmm13,%xmm31,%xmm11
vpunpckhbw %xmm14,%xmm22,%xmm24

vpunpckhbw %xmm20,%xmm0,%xmm6
vpunpckhbw %xmm21,%xmm0,%xmm11
vpunpckhbw %xmm22,%xmm0,%xmm30
vpunpckhbw %xmm23,%xmm12,%xmm7
vpunpckhbw %xmm24,%xmm13,%xmm10
vpunpckhbw %xmm25,%xmm14,%xmm31
vpunpckhbw %xmm26,%xmm22,%xmm1
vpunpckhbw %xmm27,%xmm21,%xmm14
vpunpckhbw %xmm28,%xmm20,%xmm29

vpunpckhbw (%r10),             %xmm5, %xmm1
vpunpckhbw (%r10,%r12,1),      %xmm5, %xmm2
vpunpckhbw 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpunpckhbw 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpunpckhbw 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpunpckhbw (%r10),             %xmm5, %xmm10
vpunpckhbw (%r10,%r12,1),      %xmm5, %xmm11
vpunpckhbw 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpunpckhbw 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpunpckhbw 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpunpckhbw (%r10),             %xmm1, %xmm20
vpunpckhbw (%r10,%r12,1),      %xmm2, %xmm31
vpunpckhbw 0x10(%r10,%r12,1),  %xmm3, %xmm30
vpunpckhbw 0x11(%r10,%r12,2),  %xmm4, %xmm25
vpunpckhbw 0x3567(%r10,%r12,4),%xmm5, %xmm29

vpunpckhbw (%r10),             %xmm15, %xmm3
vpunpckhbw (%r10,%r12,1),      %xmm15, %xmm3
vpunpckhbw 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpunpckhbw 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpunpckhbw 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpunpckhbw (%r10),             %xmm14, %xmm10
vpunpckhbw (%r10,%r12,1),      %xmm14, %xmm10
vpunpckhbw 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpunpckhbw 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpunpckhbw 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpunpckhbw (%r10),             %xmm11, %xmm20
vpunpckhbw (%r10,%r12,1),      %xmm12, %xmm31
vpunpckhbw 0x10(%r10,%r12,1),  %xmm13, %xmm30
vpunpckhbw 0x11(%r10,%r12,2),  %xmm14, %xmm25
vpunpckhbw 0x3567(%r10,%r12,4),%xmm15, %xmm29

vpunpckhbw (%r10),             %xmm25, %xmm3
vpunpckhbw (%r10,%r12,1),      %xmm25, %xmm3
vpunpckhbw 0x10(%r10,%r12,1),  %xmm24, %xmm3
vpunpckhbw 0x11(%r10,%r12,2),  %xmm24, %xmm3
vpunpckhbw 0x3567(%r10,%r12,4),%xmm23, %xmm3

vpunpckhbw (%r10),             %xmm24, %xmm10
vpunpckhbw (%r10,%r12,1),      %xmm24, %xmm10
vpunpckhbw 0x10(%r10,%r12,1),  %xmm25, %xmm10
vpunpckhbw 0x11(%r10,%r12,2),  %xmm21, %xmm10
vpunpckhbw 0x3567(%r10,%r12,4),%xmm21, %xmm10

vpunpckhbw (%r10),             %xmm21, %xmm20
vpunpckhbw (%r10,%r12,1),      %xmm22, %xmm31
vpunpckhbw 0x10(%r10,%r12,1),  %xmm23, %xmm30
vpunpckhbw 0x11(%r10,%r12,2),  %xmm24, %xmm25
vpunpckhbw 0x3567(%r10,%r12,4),%xmm25, %xmm29

vpunpckhbw %ymm0,%ymm3,%ymm1
vpunpckhbw %ymm1,%ymm2,%ymm11
vpunpckhbw %ymm2,%ymm1,%ymm22
vpunpckhbw %ymm3,%ymm12,%ymm1
vpunpckhbw %ymm4,%ymm13,%ymm15
vpunpckhbw %ymm5,%ymm14,%ymm23
vpunpckhbw %ymm6,%ymm24,%ymm2
vpunpckhbw %ymm7,%ymm25,%ymm10
vpunpckhbw %ymm0,%ymm26,%ymm27

vpunpckhbw %ymm11,%ymm0,%ymm3
vpunpckhbw %ymm12,%ymm0,%ymm11
vpunpckhbw %ymm13,%ymm0,%ymm28
vpunpckhbw %ymm14,%ymm10,%ymm4
vpunpckhbw %ymm15,%ymm12,%ymm11
vpunpckhbw %ymm11,%ymm13,%ymm29
vpunpckhbw %ymm12,%ymm30,%ymm5
vpunpckhbw %ymm13,%ymm31,%ymm11
vpunpckhbw %ymm14,%ymm22,%ymm24

vpunpckhbw %ymm20,%ymm0,%ymm6
vpunpckhbw %ymm21,%ymm0,%ymm11
vpunpckhbw %ymm22,%ymm0,%ymm30
vpunpckhbw %ymm23,%ymm12,%ymm7
vpunpckhbw %ymm24,%ymm13,%ymm10
vpunpckhbw %ymm25,%ymm14,%ymm31
vpunpckhbw %ymm26,%ymm22,%ymm1
vpunpckhbw %ymm27,%ymm21,%ymm14
vpunpckhbw %ymm28,%ymm20,%ymm29

vpunpckhbw (%r10),             %ymm5, %ymm1
vpunpckhbw (%r10,%r12,1),      %ymm5, %ymm2
vpunpckhbw 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpunpckhbw 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpunpckhbw 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpunpckhbw (%r10),             %ymm5, %ymm10
vpunpckhbw (%r10,%r12,1),      %ymm5, %ymm11
vpunpckhbw 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpunpckhbw 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpunpckhbw 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpunpckhbw (%r10),             %ymm1, %ymm20
vpunpckhbw (%r10,%r12,1),      %ymm2, %ymm31
vpunpckhbw 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpunpckhbw 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpunpckhbw 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpunpckhbw (%r10),             %ymm15, %ymm3
vpunpckhbw (%r10,%r12,1),      %ymm15, %ymm3
vpunpckhbw 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpunpckhbw 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpunpckhbw 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpunpckhbw (%r10),             %ymm14, %ymm10
vpunpckhbw (%r10,%r12,1),      %ymm14, %ymm10
vpunpckhbw 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpunpckhbw 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpunpckhbw 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpunpckhbw (%r10),             %ymm11, %ymm20
vpunpckhbw (%r10,%r12,1),      %ymm12, %ymm31
vpunpckhbw 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpunpckhbw 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpunpckhbw 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpunpckhbw (%r10),             %ymm25, %ymm3
vpunpckhbw (%r10,%r12,1),      %ymm25, %ymm3
vpunpckhbw 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpunpckhbw 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpunpckhbw 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpunpckhbw (%r10),             %ymm24, %ymm10
vpunpckhbw (%r10,%r12,1),      %ymm24, %ymm10
vpunpckhbw 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpunpckhbw 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpunpckhbw 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpunpckhbw (%r10),             %ymm21, %ymm20
vpunpckhbw (%r10,%r12,1),      %ymm22, %ymm31
vpunpckhbw 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpunpckhbw 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpunpckhbw 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpunpckhbw %ymm0,%ymm3,%ymm1
vpunpckhbw %ymm1,%ymm2,%ymm11
vpunpckhbw %ymm2,%ymm1,%ymm22
vpunpckhbw %ymm3,%ymm12,%ymm1
vpunpckhbw %ymm4,%ymm13,%ymm15
vpunpckhbw %ymm5,%ymm14,%ymm23
vpunpckhbw %ymm6,%ymm24,%ymm2
vpunpckhbw %ymm7,%ymm25,%ymm10
vpunpckhbw %ymm0,%ymm26,%ymm27

vpunpckhbw %ymm11,%ymm0,%ymm3
vpunpckhbw %ymm12,%ymm0,%ymm11
vpunpckhbw %ymm13,%ymm0,%ymm28
vpunpckhbw %ymm14,%ymm10,%ymm4
vpunpckhbw %ymm15,%ymm12,%ymm11
vpunpckhbw %ymm11,%ymm13,%ymm29
vpunpckhbw %ymm12,%ymm30,%ymm5
vpunpckhbw %ymm13,%ymm31,%ymm11
vpunpckhbw %ymm14,%ymm22,%ymm24

vpunpckhbw %ymm20,%ymm0,%ymm6
vpunpckhbw %ymm21,%ymm0,%ymm11
vpunpckhbw %ymm22,%ymm0,%ymm30
vpunpckhbw %ymm23,%ymm12,%ymm7
vpunpckhbw %ymm24,%ymm13,%ymm10
vpunpckhbw %ymm25,%ymm14,%ymm31
vpunpckhbw %ymm26,%ymm22,%ymm1
vpunpckhbw %ymm27,%ymm21,%ymm14
vpunpckhbw %ymm28,%ymm20,%ymm29

vpunpckhbw (%r10),             %ymm5, %ymm1
vpunpckhbw (%r10,%r12,1),      %ymm5, %ymm2
vpunpckhbw 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpunpckhbw 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpunpckhbw 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpunpckhbw (%r10),             %ymm5, %ymm10
vpunpckhbw (%r10,%r12,1),      %ymm5, %ymm11
vpunpckhbw 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpunpckhbw 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpunpckhbw 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpunpckhbw (%r10),             %ymm1, %ymm20
vpunpckhbw (%r10,%r12,1),      %ymm2, %ymm31
vpunpckhbw 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpunpckhbw 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpunpckhbw 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpunpckhbw (%r10),             %ymm15, %ymm3
vpunpckhbw (%r10,%r12,1),      %ymm15, %ymm3
vpunpckhbw 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpunpckhbw 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpunpckhbw 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpunpckhbw (%r10),             %ymm14, %ymm10
vpunpckhbw (%r10,%r12,1),      %ymm14, %ymm10
vpunpckhbw 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpunpckhbw 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpunpckhbw 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpunpckhbw (%r10),             %ymm11, %ymm20
vpunpckhbw (%r10,%r12,1),      %ymm12, %ymm31
vpunpckhbw 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpunpckhbw 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpunpckhbw 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpunpckhbw (%r10),             %ymm25, %ymm3
vpunpckhbw (%r10,%r12,1),      %ymm25, %ymm3
vpunpckhbw 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpunpckhbw 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpunpckhbw 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpunpckhbw (%r10),             %ymm24, %ymm10
vpunpckhbw (%r10,%r12,1),      %ymm24, %ymm10
vpunpckhbw 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpunpckhbw 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpunpckhbw 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpunpckhbw (%r10),             %ymm21, %ymm20
vpunpckhbw (%r10,%r12,1),      %ymm22, %ymm31
vpunpckhbw 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpunpckhbw 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpunpckhbw 0x3567(%r10,%r12,4),%ymm25, %ymm29


punpckhdq %mm0, %mm1
punpckhdq %mm2, %mm7
punpckhdq %mm7, %mm5

punpckhdq (%r10), %mm0
punpckhdq (%r10,%rdx,4), %mm0
punpckhdq 0x10(%r10,%rdx,4), %mm0

punpckhdq (%r10), %mm4
punpckhdq (%r10,%rdx,4), %mm5
punpckhdq 0x10(%r10,%rdx,4), %mm6

vpunpckhdq %xmm0,%xmm3,%xmm1
vpunpckhdq %xmm1,%xmm2,%xmm11
vpunpckhdq %xmm2,%xmm1,%xmm22
vpunpckhdq %xmm3,%xmm12,%xmm1
vpunpckhdq %xmm4,%xmm13,%xmm15
vpunpckhdq %xmm5,%xmm14,%xmm23
vpunpckhdq %xmm6,%xmm24,%xmm2
vpunpckhdq %xmm7,%xmm25,%xmm10
vpunpckhdq %xmm0,%xmm26,%xmm27

vpunpckhdq %xmm11,%xmm0,%xmm3
vpunpckhdq %xmm12,%xmm0,%xmm11
vpunpckhdq %xmm13,%xmm0,%xmm28
vpunpckhdq %xmm14,%xmm10,%xmm4
vpunpckhdq %xmm15,%xmm12,%xmm11
vpunpckhdq %xmm11,%xmm13,%xmm29
vpunpckhdq %xmm12,%xmm30,%xmm5
vpunpckhdq %xmm13,%xmm31,%xmm11
vpunpckhdq %xmm14,%xmm22,%xmm24

vpunpckhdq %xmm20,%xmm0,%xmm6
vpunpckhdq %xmm21,%xmm0,%xmm11
vpunpckhdq %xmm22,%xmm0,%xmm30
vpunpckhdq %xmm23,%xmm12,%xmm7
vpunpckhdq %xmm24,%xmm13,%xmm10
vpunpckhdq %xmm25,%xmm14,%xmm31
vpunpckhdq %xmm26,%xmm22,%xmm1
vpunpckhdq %xmm27,%xmm21,%xmm14
vpunpckhdq %xmm28,%xmm20,%xmm29

vpunpckhdq (%r10),             %xmm5, %xmm1
vpunpckhdq (%r10,%r12,1),      %xmm5, %xmm2
vpunpckhdq 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpunpckhdq 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpunpckhdq 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpunpckhdq (%r10),             %xmm5, %xmm10
vpunpckhdq (%r10,%r12,1),      %xmm5, %xmm11
vpunpckhdq 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpunpckhdq 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpunpckhdq 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpunpckhdq (%r10),             %xmm1, %xmm20
vpunpckhdq (%r10,%r12,1),      %xmm2, %xmm31
vpunpckhdq 0x10(%r10,%r12,1),  %xmm3, %xmm30
vpunpckhdq 0x11(%r10,%r12,2),  %xmm4, %xmm25
vpunpckhdq 0x3567(%r10,%r12,4),%xmm5, %xmm29

vpunpckhdq (%r10),             %xmm15, %xmm3
vpunpckhdq (%r10,%r12,1),      %xmm15, %xmm3
vpunpckhdq 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpunpckhdq 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpunpckhdq 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpunpckhdq (%r10),             %xmm14, %xmm10
vpunpckhdq (%r10,%r12,1),      %xmm14, %xmm10
vpunpckhdq 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpunpckhdq 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpunpckhdq 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpunpckhdq (%r10),             %xmm11, %xmm20
vpunpckhdq (%r10,%r12,1),      %xmm12, %xmm31
vpunpckhdq 0x10(%r10,%r12,1),  %xmm13, %xmm30
vpunpckhdq 0x11(%r10,%r12,2),  %xmm14, %xmm25
vpunpckhdq 0x3567(%r10,%r12,4),%xmm15, %xmm29

vpunpckhdq (%r10),             %xmm25, %xmm3
vpunpckhdq (%r10,%r12,1),      %xmm25, %xmm3
vpunpckhdq 0x10(%r10,%r12,1),  %xmm24, %xmm3
vpunpckhdq 0x11(%r10,%r12,2),  %xmm24, %xmm3
vpunpckhdq 0x3567(%r10,%r12,4),%xmm23, %xmm3

vpunpckhdq (%r10),             %xmm24, %xmm10
vpunpckhdq (%r10,%r12,1),      %xmm24, %xmm10
vpunpckhdq 0x10(%r10,%r12,1),  %xmm25, %xmm10
vpunpckhdq 0x11(%r10,%r12,2),  %xmm21, %xmm10
vpunpckhdq 0x3567(%r10,%r12,4),%xmm21, %xmm10

vpunpckhdq (%r10),             %xmm21, %xmm20
vpunpckhdq (%r10,%r12,1),      %xmm22, %xmm31
vpunpckhdq 0x10(%r10,%r12,1),  %xmm23, %xmm30
vpunpckhdq 0x11(%r10,%r12,2),  %xmm24, %xmm25
vpunpckhdq 0x3567(%r10,%r12,4),%xmm25, %xmm29

vpunpckhdq %ymm0,%ymm3,%ymm1
vpunpckhdq %ymm1,%ymm2,%ymm11
vpunpckhdq %ymm2,%ymm1,%ymm22
vpunpckhdq %ymm3,%ymm12,%ymm1
vpunpckhdq %ymm4,%ymm13,%ymm15
vpunpckhdq %ymm5,%ymm14,%ymm23
vpunpckhdq %ymm6,%ymm24,%ymm2
vpunpckhdq %ymm7,%ymm25,%ymm10
vpunpckhdq %ymm0,%ymm26,%ymm27

vpunpckhdq %ymm11,%ymm0,%ymm3
vpunpckhdq %ymm12,%ymm0,%ymm11
vpunpckhdq %ymm13,%ymm0,%ymm28
vpunpckhdq %ymm14,%ymm10,%ymm4
vpunpckhdq %ymm15,%ymm12,%ymm11
vpunpckhdq %ymm11,%ymm13,%ymm29
vpunpckhdq %ymm12,%ymm30,%ymm5
vpunpckhdq %ymm13,%ymm31,%ymm11
vpunpckhdq %ymm14,%ymm22,%ymm24

vpunpckhdq %ymm20,%ymm0,%ymm6
vpunpckhdq %ymm21,%ymm0,%ymm11
vpunpckhdq %ymm22,%ymm0,%ymm30
vpunpckhdq %ymm23,%ymm12,%ymm7
vpunpckhdq %ymm24,%ymm13,%ymm10
vpunpckhdq %ymm25,%ymm14,%ymm31
vpunpckhdq %ymm26,%ymm22,%ymm1
vpunpckhdq %ymm27,%ymm21,%ymm14
vpunpckhdq %ymm28,%ymm20,%ymm29

vpunpckhdq (%r10),             %ymm5, %ymm1
vpunpckhdq (%r10,%r12,1),      %ymm5, %ymm2
vpunpckhdq 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpunpckhdq 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpunpckhdq 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpunpckhdq (%r10),             %ymm5, %ymm10
vpunpckhdq (%r10,%r12,1),      %ymm5, %ymm11
vpunpckhdq 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpunpckhdq 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpunpckhdq 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpunpckhdq (%r10),             %ymm1, %ymm20
vpunpckhdq (%r10,%r12,1),      %ymm2, %ymm31
vpunpckhdq 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpunpckhdq 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpunpckhdq 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpunpckhdq (%r10),             %ymm15, %ymm3
vpunpckhdq (%r10,%r12,1),      %ymm15, %ymm3
vpunpckhdq 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpunpckhdq 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpunpckhdq 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpunpckhdq (%r10),             %ymm14, %ymm10
vpunpckhdq (%r10,%r12,1),      %ymm14, %ymm10
vpunpckhdq 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpunpckhdq 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpunpckhdq 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpunpckhdq (%r10),             %ymm11, %ymm20
vpunpckhdq (%r10,%r12,1),      %ymm12, %ymm31
vpunpckhdq 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpunpckhdq 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpunpckhdq 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpunpckhdq (%r10),             %ymm25, %ymm3
vpunpckhdq (%r10,%r12,1),      %ymm25, %ymm3
vpunpckhdq 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpunpckhdq 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpunpckhdq 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpunpckhdq (%r10),             %ymm24, %ymm10
vpunpckhdq (%r10,%r12,1),      %ymm24, %ymm10
vpunpckhdq 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpunpckhdq 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpunpckhdq 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpunpckhdq (%r10),             %ymm21, %ymm20
vpunpckhdq (%r10,%r12,1),      %ymm22, %ymm31
vpunpckhdq 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpunpckhdq 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpunpckhdq 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpunpckhdq %ymm0,%ymm3,%ymm1
vpunpckhdq %ymm1,%ymm2,%ymm11
vpunpckhdq %ymm2,%ymm1,%ymm22
vpunpckhdq %ymm3,%ymm12,%ymm1
vpunpckhdq %ymm4,%ymm13,%ymm15
vpunpckhdq %ymm5,%ymm14,%ymm23
vpunpckhdq %ymm6,%ymm24,%ymm2
vpunpckhdq %ymm7,%ymm25,%ymm10
vpunpckhdq %ymm0,%ymm26,%ymm27

vpunpckhdq %ymm11,%ymm0,%ymm3
vpunpckhdq %ymm12,%ymm0,%ymm11
vpunpckhdq %ymm13,%ymm0,%ymm28
vpunpckhdq %ymm14,%ymm10,%ymm4
vpunpckhdq %ymm15,%ymm12,%ymm11
vpunpckhdq %ymm11,%ymm13,%ymm29
vpunpckhdq %ymm12,%ymm30,%ymm5
vpunpckhdq %ymm13,%ymm31,%ymm11
vpunpckhdq %ymm14,%ymm22,%ymm24

vpunpckhdq %ymm20,%ymm0,%ymm6
vpunpckhdq %ymm21,%ymm0,%ymm11
vpunpckhdq %ymm22,%ymm0,%ymm30
vpunpckhdq %ymm23,%ymm12,%ymm7
vpunpckhdq %ymm24,%ymm13,%ymm10
vpunpckhdq %ymm25,%ymm14,%ymm31
vpunpckhdq %ymm26,%ymm22,%ymm1
vpunpckhdq %ymm27,%ymm21,%ymm14
vpunpckhdq %ymm28,%ymm20,%ymm29

vpunpckhdq (%r10),             %ymm5, %ymm1
vpunpckhdq (%r10,%r12,1),      %ymm5, %ymm2
vpunpckhdq 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpunpckhdq 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpunpckhdq 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpunpckhdq (%r10),             %ymm5, %ymm10
vpunpckhdq (%r10,%r12,1),      %ymm5, %ymm11
vpunpckhdq 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpunpckhdq 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpunpckhdq 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpunpckhdq (%r10),             %ymm1, %ymm20
vpunpckhdq (%r10,%r12,1),      %ymm2, %ymm31
vpunpckhdq 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpunpckhdq 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpunpckhdq 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpunpckhdq (%r10),             %ymm15, %ymm3
vpunpckhdq (%r10,%r12,1),      %ymm15, %ymm3
vpunpckhdq 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpunpckhdq 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpunpckhdq 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpunpckhdq (%r10),             %ymm14, %ymm10
vpunpckhdq (%r10,%r12,1),      %ymm14, %ymm10
vpunpckhdq 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpunpckhdq 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpunpckhdq 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpunpckhdq (%r10),             %ymm11, %ymm20
vpunpckhdq (%r10,%r12,1),      %ymm12, %ymm31
vpunpckhdq 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpunpckhdq 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpunpckhdq 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpunpckhdq (%r10),             %ymm25, %ymm3
vpunpckhdq (%r10,%r12,1),      %ymm25, %ymm3
vpunpckhdq 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpunpckhdq 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpunpckhdq 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpunpckhdq (%r10),             %ymm24, %ymm10
vpunpckhdq (%r10,%r12,1),      %ymm24, %ymm10
vpunpckhdq 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpunpckhdq 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpunpckhdq 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpunpckhdq (%r10),             %ymm21, %ymm20
vpunpckhdq (%r10,%r12,1),      %ymm22, %ymm31
vpunpckhdq 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpunpckhdq 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpunpckhdq 0x3567(%r10,%r12,4),%ymm25, %ymm29

punpckhwd %mm0, %mm1
punpckhwd %mm2, %mm7
punpckhwd %mm7, %mm5

punpckhwd (%r10), %mm0
punpckhwd (%r10,%rdx,4), %mm0
punpckhwd 0x10(%r10,%rdx,4), %mm0

punpckhwd (%r10), %mm4
punpckhwd (%r10,%rdx,4), %mm5
punpckhwd 0x10(%r10,%rdx,4), %mm6

vpunpckhwd %xmm0,%xmm3,%xmm1
vpunpckhwd %xmm1,%xmm2,%xmm11
vpunpckhwd %xmm2,%xmm1,%xmm22
vpunpckhwd %xmm3,%xmm12,%xmm1
vpunpckhwd %xmm4,%xmm13,%xmm15
vpunpckhwd %xmm5,%xmm14,%xmm23
vpunpckhwd %xmm6,%xmm24,%xmm2
vpunpckhwd %xmm7,%xmm25,%xmm10
vpunpckhwd %xmm0,%xmm26,%xmm27

vpunpckhwd %xmm11,%xmm0,%xmm3
vpunpckhwd %xmm12,%xmm0,%xmm11
vpunpckhwd %xmm13,%xmm0,%xmm28
vpunpckhwd %xmm14,%xmm10,%xmm4
vpunpckhwd %xmm15,%xmm12,%xmm11
vpunpckhwd %xmm11,%xmm13,%xmm29
vpunpckhwd %xmm12,%xmm30,%xmm5
vpunpckhwd %xmm13,%xmm31,%xmm11
vpunpckhwd %xmm14,%xmm22,%xmm24

vpunpckhwd %xmm20,%xmm0,%xmm6
vpunpckhwd %xmm21,%xmm0,%xmm11
vpunpckhwd %xmm22,%xmm0,%xmm30
vpunpckhwd %xmm23,%xmm12,%xmm7
vpunpckhwd %xmm24,%xmm13,%xmm10
vpunpckhwd %xmm25,%xmm14,%xmm31
vpunpckhwd %xmm26,%xmm22,%xmm1
vpunpckhwd %xmm27,%xmm21,%xmm14
vpunpckhwd %xmm28,%xmm20,%xmm29

vpunpckhwd (%r10),             %xmm5, %xmm1
vpunpckhwd (%r10,%r12,1),      %xmm5, %xmm2
vpunpckhwd 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpunpckhwd 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpunpckhwd 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpunpckhwd (%r10),             %xmm5, %xmm10
vpunpckhwd (%r10,%r12,1),      %xmm5, %xmm11
vpunpckhwd 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpunpckhwd 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpunpckhwd 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpunpckhwd (%r10),             %xmm1, %xmm20
vpunpckhwd (%r10,%r12,1),      %xmm2, %xmm31
vpunpckhwd 0x10(%r10,%r12,1),  %xmm3, %xmm30
vpunpckhwd 0x11(%r10,%r12,2),  %xmm4, %xmm25
vpunpckhwd 0x3567(%r10,%r12,4),%xmm5, %xmm29

vpunpckhwd (%r10),             %xmm15, %xmm3
vpunpckhwd (%r10,%r12,1),      %xmm15, %xmm3
vpunpckhwd 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpunpckhwd 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpunpckhwd 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpunpckhwd (%r10),             %xmm14, %xmm10
vpunpckhwd (%r10,%r12,1),      %xmm14, %xmm10
vpunpckhwd 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpunpckhwd 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpunpckhwd 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpunpckhwd (%r10),             %xmm11, %xmm20
vpunpckhwd (%r10,%r12,1),      %xmm12, %xmm31
vpunpckhwd 0x10(%r10,%r12,1),  %xmm13, %xmm30
vpunpckhwd 0x11(%r10,%r12,2),  %xmm14, %xmm25
vpunpckhwd 0x3567(%r10,%r12,4),%xmm15, %xmm29

vpunpckhwd (%r10),             %xmm25, %xmm3
vpunpckhwd (%r10,%r12,1),      %xmm25, %xmm3
vpunpckhwd 0x10(%r10,%r12,1),  %xmm24, %xmm3
vpunpckhwd 0x11(%r10,%r12,2),  %xmm24, %xmm3
vpunpckhwd 0x3567(%r10,%r12,4),%xmm23, %xmm3

vpunpckhwd (%r10),             %xmm24, %xmm10
vpunpckhwd (%r10,%r12,1),      %xmm24, %xmm10
vpunpckhwd 0x10(%r10,%r12,1),  %xmm25, %xmm10
vpunpckhwd 0x11(%r10,%r12,2),  %xmm21, %xmm10
vpunpckhwd 0x3567(%r10,%r12,4),%xmm21, %xmm10

vpunpckhwd (%r10),             %xmm21, %xmm20
vpunpckhwd (%r10,%r12,1),      %xmm22, %xmm31
vpunpckhwd 0x10(%r10,%r12,1),  %xmm23, %xmm30
vpunpckhwd 0x11(%r10,%r12,2),  %xmm24, %xmm25
vpunpckhwd 0x3567(%r10,%r12,4),%xmm25, %xmm29

vpunpckhwd %ymm0,%ymm3,%ymm1
vpunpckhwd %ymm1,%ymm2,%ymm11
vpunpckhwd %ymm2,%ymm1,%ymm22
vpunpckhwd %ymm3,%ymm12,%ymm1
vpunpckhwd %ymm4,%ymm13,%ymm15
vpunpckhwd %ymm5,%ymm14,%ymm23
vpunpckhwd %ymm6,%ymm24,%ymm2
vpunpckhwd %ymm7,%ymm25,%ymm10
vpunpckhwd %ymm0,%ymm26,%ymm27

vpunpckhwd %ymm11,%ymm0,%ymm3
vpunpckhwd %ymm12,%ymm0,%ymm11
vpunpckhwd %ymm13,%ymm0,%ymm28
vpunpckhwd %ymm14,%ymm10,%ymm4
vpunpckhwd %ymm15,%ymm12,%ymm11
vpunpckhwd %ymm11,%ymm13,%ymm29
vpunpckhwd %ymm12,%ymm30,%ymm5
vpunpckhwd %ymm13,%ymm31,%ymm11
vpunpckhwd %ymm14,%ymm22,%ymm24

vpunpckhwd %ymm20,%ymm0,%ymm6
vpunpckhwd %ymm21,%ymm0,%ymm11
vpunpckhwd %ymm22,%ymm0,%ymm30
vpunpckhwd %ymm23,%ymm12,%ymm7
vpunpckhwd %ymm24,%ymm13,%ymm10
vpunpckhwd %ymm25,%ymm14,%ymm31
vpunpckhwd %ymm26,%ymm22,%ymm1
vpunpckhwd %ymm27,%ymm21,%ymm14
vpunpckhwd %ymm28,%ymm20,%ymm29

vpunpckhwd (%r10),             %ymm5, %ymm1
vpunpckhwd (%r10,%r12,1),      %ymm5, %ymm2
vpunpckhwd 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpunpckhwd 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpunpckhwd 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpunpckhwd (%r10),             %ymm5, %ymm10
vpunpckhwd (%r10,%r12,1),      %ymm5, %ymm11
vpunpckhwd 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpunpckhwd 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpunpckhwd 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpunpckhwd (%r10),             %ymm1, %ymm20
vpunpckhwd (%r10,%r12,1),      %ymm2, %ymm31
vpunpckhwd 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpunpckhwd 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpunpckhwd 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpunpckhwd (%r10),             %ymm15, %ymm3
vpunpckhwd (%r10,%r12,1),      %ymm15, %ymm3
vpunpckhwd 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpunpckhwd 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpunpckhwd 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpunpckhwd (%r10),             %ymm14, %ymm10
vpunpckhwd (%r10,%r12,1),      %ymm14, %ymm10
vpunpckhwd 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpunpckhwd 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpunpckhwd 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpunpckhwd (%r10),             %ymm11, %ymm20
vpunpckhwd (%r10,%r12,1),      %ymm12, %ymm31
vpunpckhwd 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpunpckhwd 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpunpckhwd 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpunpckhwd (%r10),             %ymm25, %ymm3
vpunpckhwd (%r10,%r12,1),      %ymm25, %ymm3
vpunpckhwd 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpunpckhwd 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpunpckhwd 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpunpckhwd (%r10),             %ymm24, %ymm10
vpunpckhwd (%r10,%r12,1),      %ymm24, %ymm10
vpunpckhwd 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpunpckhwd 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpunpckhwd 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpunpckhwd (%r10),             %ymm21, %ymm20
vpunpckhwd (%r10,%r12,1),      %ymm22, %ymm31
vpunpckhwd 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpunpckhwd 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpunpckhwd 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpunpckhwd %ymm0,%ymm3,%ymm1
vpunpckhwd %ymm1,%ymm2,%ymm11
vpunpckhwd %ymm2,%ymm1,%ymm22
vpunpckhwd %ymm3,%ymm12,%ymm1
vpunpckhwd %ymm4,%ymm13,%ymm15
vpunpckhwd %ymm5,%ymm14,%ymm23
vpunpckhwd %ymm6,%ymm24,%ymm2
vpunpckhwd %ymm7,%ymm25,%ymm10
vpunpckhwd %ymm0,%ymm26,%ymm27

vpunpckhwd %ymm11,%ymm0,%ymm3
vpunpckhwd %ymm12,%ymm0,%ymm11
vpunpckhwd %ymm13,%ymm0,%ymm28
vpunpckhwd %ymm14,%ymm10,%ymm4
vpunpckhwd %ymm15,%ymm12,%ymm11
vpunpckhwd %ymm11,%ymm13,%ymm29
vpunpckhwd %ymm12,%ymm30,%ymm5
vpunpckhwd %ymm13,%ymm31,%ymm11
vpunpckhwd %ymm14,%ymm22,%ymm24

vpunpckhwd %ymm20,%ymm0,%ymm6
vpunpckhwd %ymm21,%ymm0,%ymm11
vpunpckhwd %ymm22,%ymm0,%ymm30
vpunpckhwd %ymm23,%ymm12,%ymm7
vpunpckhwd %ymm24,%ymm13,%ymm10
vpunpckhwd %ymm25,%ymm14,%ymm31
vpunpckhwd %ymm26,%ymm22,%ymm1
vpunpckhwd %ymm27,%ymm21,%ymm14
vpunpckhwd %ymm28,%ymm20,%ymm29

vpunpckhwd (%r10),             %ymm5, %ymm1
vpunpckhwd (%r10,%r12,1),      %ymm5, %ymm2
vpunpckhwd 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpunpckhwd 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpunpckhwd 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpunpckhwd (%r10),             %ymm5, %ymm10
vpunpckhwd (%r10,%r12,1),      %ymm5, %ymm11
vpunpckhwd 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpunpckhwd 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpunpckhwd 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpunpckhwd (%r10),             %ymm1, %ymm20
vpunpckhwd (%r10,%r12,1),      %ymm2, %ymm31
vpunpckhwd 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpunpckhwd 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpunpckhwd 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpunpckhwd (%r10),             %ymm15, %ymm3
vpunpckhwd (%r10,%r12,1),      %ymm15, %ymm3
vpunpckhwd 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpunpckhwd 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpunpckhwd 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpunpckhwd (%r10),             %ymm14, %ymm10
vpunpckhwd (%r10,%r12,1),      %ymm14, %ymm10
vpunpckhwd 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpunpckhwd 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpunpckhwd 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpunpckhwd (%r10),             %ymm11, %ymm20
vpunpckhwd (%r10,%r12,1),      %ymm12, %ymm31
vpunpckhwd 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpunpckhwd 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpunpckhwd 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpunpckhwd (%r10),             %ymm25, %ymm3
vpunpckhwd (%r10,%r12,1),      %ymm25, %ymm3
vpunpckhwd 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpunpckhwd 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpunpckhwd 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpunpckhwd (%r10),             %ymm24, %ymm10
vpunpckhwd (%r10,%r12,1),      %ymm24, %ymm10
vpunpckhwd 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpunpckhwd 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpunpckhwd 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpunpckhwd (%r10),             %ymm21, %ymm20
vpunpckhwd (%r10,%r12,1),      %ymm22, %ymm31
vpunpckhwd 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpunpckhwd 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpunpckhwd 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpunpckhqdq %xmm0,%xmm3,%xmm1
vpunpckhqdq %xmm1,%xmm2,%xmm11
vpunpckhqdq %xmm2,%xmm1,%xmm22
vpunpckhqdq %xmm3,%xmm12,%xmm1
vpunpckhqdq %xmm4,%xmm13,%xmm15
vpunpckhqdq %xmm5,%xmm14,%xmm23
vpunpckhqdq %xmm6,%xmm24,%xmm2
vpunpckhqdq %xmm7,%xmm25,%xmm10
vpunpckhqdq %xmm0,%xmm26,%xmm27

vpunpckhqdq %xmm11,%xmm0,%xmm3
vpunpckhqdq %xmm12,%xmm0,%xmm11
vpunpckhqdq %xmm13,%xmm0,%xmm28
vpunpckhqdq %xmm14,%xmm10,%xmm4
vpunpckhqdq %xmm15,%xmm12,%xmm11
vpunpckhqdq %xmm11,%xmm13,%xmm29
vpunpckhqdq %xmm12,%xmm30,%xmm5
vpunpckhqdq %xmm13,%xmm31,%xmm11
vpunpckhqdq %xmm14,%xmm22,%xmm24

vpunpckhqdq %xmm20,%xmm0,%xmm6
vpunpckhqdq %xmm21,%xmm0,%xmm11
vpunpckhqdq %xmm22,%xmm0,%xmm30
vpunpckhqdq %xmm23,%xmm12,%xmm7
vpunpckhqdq %xmm24,%xmm13,%xmm10
vpunpckhqdq %xmm25,%xmm14,%xmm31
vpunpckhqdq %xmm26,%xmm22,%xmm1
vpunpckhqdq %xmm27,%xmm21,%xmm14
vpunpckhqdq %xmm28,%xmm20,%xmm29

vpunpckhqdq (%r10),             %xmm5, %xmm1
vpunpckhqdq (%r10,%r12,1),      %xmm5, %xmm2
vpunpckhqdq 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpunpckhqdq 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpunpckhqdq 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpunpckhqdq (%r10),             %xmm5, %xmm10
vpunpckhqdq (%r10,%r12,1),      %xmm5, %xmm11
vpunpckhqdq 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpunpckhqdq 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpunpckhqdq 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpunpckhqdq (%r10),             %xmm1, %xmm20
vpunpckhqdq (%r10,%r12,1),      %xmm2, %xmm31
vpunpckhqdq 0x10(%r10,%r12,1),  %xmm3, %xmm30
vpunpckhqdq 0x11(%r10,%r12,2),  %xmm4, %xmm25
vpunpckhqdq 0x3567(%r10,%r12,4),%xmm5, %xmm29

vpunpckhqdq (%r10),             %xmm15, %xmm3
vpunpckhqdq (%r10,%r12,1),      %xmm15, %xmm3
vpunpckhqdq 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpunpckhqdq 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpunpckhqdq 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpunpckhqdq (%r10),             %xmm14, %xmm10
vpunpckhqdq (%r10,%r12,1),      %xmm14, %xmm10
vpunpckhqdq 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpunpckhqdq 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpunpckhqdq 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpunpckhqdq (%r10),             %xmm11, %xmm20
vpunpckhqdq (%r10,%r12,1),      %xmm12, %xmm31
vpunpckhqdq 0x10(%r10,%r12,1),  %xmm13, %xmm30
vpunpckhqdq 0x11(%r10,%r12,2),  %xmm14, %xmm25
vpunpckhqdq 0x3567(%r10,%r12,4),%xmm15, %xmm29

vpunpckhqdq (%r10),             %xmm25, %xmm3
vpunpckhqdq (%r10,%r12,1),      %xmm25, %xmm3
vpunpckhqdq 0x10(%r10,%r12,1),  %xmm24, %xmm3
vpunpckhqdq 0x11(%r10,%r12,2),  %xmm24, %xmm3
vpunpckhqdq 0x3567(%r10,%r12,4),%xmm23, %xmm3

vpunpckhqdq (%r10),             %xmm24, %xmm10
vpunpckhqdq (%r10,%r12,1),      %xmm24, %xmm10
vpunpckhqdq 0x10(%r10,%r12,1),  %xmm25, %xmm10
vpunpckhqdq 0x11(%r10,%r12,2),  %xmm21, %xmm10
vpunpckhqdq 0x3567(%r10,%r12,4),%xmm21, %xmm10

vpunpckhqdq (%r10),             %xmm21, %xmm20
vpunpckhqdq (%r10,%r12,1),      %xmm22, %xmm31
vpunpckhqdq 0x10(%r10,%r12,1),  %xmm23, %xmm30
vpunpckhqdq 0x11(%r10,%r12,2),  %xmm24, %xmm25
vpunpckhqdq 0x3567(%r10,%r12,4),%xmm25, %xmm29

vpunpckhqdq %ymm0,%ymm3,%ymm1
vpunpckhqdq %ymm1,%ymm2,%ymm11
vpunpckhqdq %ymm2,%ymm1,%ymm22
vpunpckhqdq %ymm3,%ymm12,%ymm1
vpunpckhqdq %ymm4,%ymm13,%ymm15
vpunpckhqdq %ymm5,%ymm14,%ymm23
vpunpckhqdq %ymm6,%ymm24,%ymm2
vpunpckhqdq %ymm7,%ymm25,%ymm10
vpunpckhqdq %ymm0,%ymm26,%ymm27

vpunpckhqdq %ymm11,%ymm0,%ymm3
vpunpckhqdq %ymm12,%ymm0,%ymm11
vpunpckhqdq %ymm13,%ymm0,%ymm28
vpunpckhqdq %ymm14,%ymm10,%ymm4
vpunpckhqdq %ymm15,%ymm12,%ymm11
vpunpckhqdq %ymm11,%ymm13,%ymm29
vpunpckhqdq %ymm12,%ymm30,%ymm5
vpunpckhqdq %ymm13,%ymm31,%ymm11
vpunpckhqdq %ymm14,%ymm22,%ymm24

vpunpckhqdq %ymm20,%ymm0,%ymm6
vpunpckhqdq %ymm21,%ymm0,%ymm11
vpunpckhqdq %ymm22,%ymm0,%ymm30
vpunpckhqdq %ymm23,%ymm12,%ymm7
vpunpckhqdq %ymm24,%ymm13,%ymm10
vpunpckhqdq %ymm25,%ymm14,%ymm31
vpunpckhqdq %ymm26,%ymm22,%ymm1
vpunpckhqdq %ymm27,%ymm21,%ymm14
vpunpckhqdq %ymm28,%ymm20,%ymm29

vpunpckhqdq (%r10),             %ymm5, %ymm1
vpunpckhqdq (%r10,%r12,1),      %ymm5, %ymm2
vpunpckhqdq 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpunpckhqdq 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpunpckhqdq 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpunpckhqdq (%r10),             %ymm5, %ymm10
vpunpckhqdq (%r10,%r12,1),      %ymm5, %ymm11
vpunpckhqdq 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpunpckhqdq 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpunpckhqdq 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpunpckhqdq (%r10),             %ymm1, %ymm20
vpunpckhqdq (%r10,%r12,1),      %ymm2, %ymm31
vpunpckhqdq 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpunpckhqdq 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpunpckhqdq 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpunpckhqdq (%r10),             %ymm15, %ymm3
vpunpckhqdq (%r10,%r12,1),      %ymm15, %ymm3
vpunpckhqdq 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpunpckhqdq 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpunpckhqdq 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpunpckhqdq (%r10),             %ymm14, %ymm10
vpunpckhqdq (%r10,%r12,1),      %ymm14, %ymm10
vpunpckhqdq 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpunpckhqdq 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpunpckhqdq 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpunpckhqdq (%r10),             %ymm11, %ymm20
vpunpckhqdq (%r10,%r12,1),      %ymm12, %ymm31
vpunpckhqdq 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpunpckhqdq 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpunpckhqdq 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpunpckhqdq (%r10),             %ymm25, %ymm3
vpunpckhqdq (%r10,%r12,1),      %ymm25, %ymm3
vpunpckhqdq 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpunpckhqdq 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpunpckhqdq 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpunpckhqdq (%r10),             %ymm24, %ymm10
vpunpckhqdq (%r10,%r12,1),      %ymm24, %ymm10
vpunpckhqdq 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpunpckhqdq 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpunpckhqdq 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpunpckhqdq (%r10),             %ymm21, %ymm20
vpunpckhqdq (%r10,%r12,1),      %ymm22, %ymm31
vpunpckhqdq 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpunpckhqdq 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpunpckhqdq 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpunpckhqdq %ymm0,%ymm3,%ymm1
vpunpckhqdq %ymm1,%ymm2,%ymm11
vpunpckhqdq %ymm2,%ymm1,%ymm22
vpunpckhqdq %ymm3,%ymm12,%ymm1
vpunpckhqdq %ymm4,%ymm13,%ymm15
vpunpckhqdq %ymm5,%ymm14,%ymm23
vpunpckhqdq %ymm6,%ymm24,%ymm2
vpunpckhqdq %ymm7,%ymm25,%ymm10
vpunpckhqdq %ymm0,%ymm26,%ymm27

vpunpckhqdq %ymm11,%ymm0,%ymm3
vpunpckhqdq %ymm12,%ymm0,%ymm11
vpunpckhqdq %ymm13,%ymm0,%ymm28
vpunpckhqdq %ymm14,%ymm10,%ymm4
vpunpckhqdq %ymm15,%ymm12,%ymm11
vpunpckhqdq %ymm11,%ymm13,%ymm29
vpunpckhqdq %ymm12,%ymm30,%ymm5
vpunpckhqdq %ymm13,%ymm31,%ymm11
vpunpckhqdq %ymm14,%ymm22,%ymm24

vpunpckhqdq %ymm20,%ymm0,%ymm6
vpunpckhqdq %ymm21,%ymm0,%ymm11
vpunpckhqdq %ymm22,%ymm0,%ymm30
vpunpckhqdq %ymm23,%ymm12,%ymm7
vpunpckhqdq %ymm24,%ymm13,%ymm10
vpunpckhqdq %ymm25,%ymm14,%ymm31
vpunpckhqdq %ymm26,%ymm22,%ymm1
vpunpckhqdq %ymm27,%ymm21,%ymm14
vpunpckhqdq %ymm28,%ymm20,%ymm29

vpunpckhqdq (%r10),             %ymm5, %ymm1
vpunpckhqdq (%r10,%r12,1),      %ymm5, %ymm2
vpunpckhqdq 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpunpckhqdq 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpunpckhqdq 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpunpckhqdq (%r10),             %ymm5, %ymm10
vpunpckhqdq (%r10,%r12,1),      %ymm5, %ymm11
vpunpckhqdq 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpunpckhqdq 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpunpckhqdq 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpunpckhqdq (%r10),             %ymm1, %ymm20
vpunpckhqdq (%r10,%r12,1),      %ymm2, %ymm31
vpunpckhqdq 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpunpckhqdq 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpunpckhqdq 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpunpckhqdq (%r10),             %ymm15, %ymm3
vpunpckhqdq (%r10,%r12,1),      %ymm15, %ymm3
vpunpckhqdq 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpunpckhqdq 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpunpckhqdq 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpunpckhqdq (%r10),             %ymm14, %ymm10
vpunpckhqdq (%r10,%r12,1),      %ymm14, %ymm10
vpunpckhqdq 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpunpckhqdq 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpunpckhqdq 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpunpckhqdq (%r10),             %ymm11, %ymm20
vpunpckhqdq (%r10,%r12,1),      %ymm12, %ymm31
vpunpckhqdq 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpunpckhqdq 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpunpckhqdq 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpunpckhqdq (%r10),             %ymm25, %ymm3
vpunpckhqdq (%r10,%r12,1),      %ymm25, %ymm3
vpunpckhqdq 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpunpckhqdq 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpunpckhqdq 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpunpckhqdq (%r10),             %ymm24, %ymm10
vpunpckhqdq (%r10,%r12,1),      %ymm24, %ymm10
vpunpckhqdq 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpunpckhqdq 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpunpckhqdq 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpunpckhqdq (%r10),             %ymm21, %ymm20
vpunpckhqdq (%r10,%r12,1),      %ymm22, %ymm31
vpunpckhqdq 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpunpckhqdq 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpunpckhqdq 0x3567(%r10,%r12,4),%ymm25, %ymm29


vpunpckhbw %zmm0,%zmm3,%zmm1
vpunpckhbw %zmm1,%zmm2,%zmm11
vpunpckhbw %zmm2,%zmm1,%zmm22
vpunpckhbw %zmm3,%zmm12,%zmm1
vpunpckhbw %zmm4,%zmm13,%zmm15
vpunpckhbw %zmm5,%zmm14,%zmm23
vpunpckhbw %zmm6,%zmm24,%zmm2
vpunpckhbw %zmm7,%zmm25,%zmm10
vpunpckhbw %zmm0,%zmm26,%zmm27

vpunpckhbw %zmm11,%zmm0,%zmm3
vpunpckhbw %zmm12,%zmm0,%zmm11
vpunpckhbw %zmm13,%zmm0,%zmm28
vpunpckhbw %zmm14,%zmm10,%zmm4
vpunpckhbw %zmm15,%zmm12,%zmm11
vpunpckhbw %zmm11,%zmm13,%zmm29
vpunpckhbw %zmm12,%zmm30,%zmm5
vpunpckhbw %zmm13,%zmm31,%zmm11
vpunpckhbw %zmm14,%zmm22,%zmm24

vpunpckhbw %zmm20,%zmm0,%zmm6
vpunpckhbw %zmm21,%zmm0,%zmm11
vpunpckhbw %zmm22,%zmm0,%zmm30
vpunpckhbw %zmm23,%zmm12,%zmm7
vpunpckhbw %zmm24,%zmm13,%zmm10
vpunpckhbw %zmm25,%zmm14,%zmm31
vpunpckhbw %zmm26,%zmm22,%zmm1
vpunpckhbw %zmm27,%zmm21,%zmm14
vpunpckhbw %zmm28,%zmm20,%zmm29

vpunpckhbw (%r10),             %zmm5, %zmm1
vpunpckhbw (%r10,%r12,1),      %zmm5, %zmm2
vpunpckhbw 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpunpckhbw 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpunpckhbw 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpunpckhbw (%r10),             %zmm5, %zmm10
vpunpckhbw (%r10,%r12,1),      %zmm5, %zmm11
vpunpckhbw 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpunpckhbw 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpunpckhbw 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpunpckhbw (%r10),             %zmm1, %zmm20
vpunpckhbw (%r10,%r12,1),      %zmm2, %zmm31
vpunpckhbw 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpunpckhbw 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpunpckhbw 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpunpckhbw (%r10),             %zmm15, %zmm3
vpunpckhbw (%r10,%r12,1),      %zmm15, %zmm3
vpunpckhbw 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpunpckhbw 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpunpckhbw 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpunpckhbw (%r10),             %zmm14, %zmm10
vpunpckhbw (%r10,%r12,1),      %zmm14, %zmm10
vpunpckhbw 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpunpckhbw 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpunpckhbw 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpunpckhbw (%r10),             %zmm11, %zmm20
vpunpckhbw (%r10,%r12,1),      %zmm12, %zmm31
vpunpckhbw 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpunpckhbw 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpunpckhbw 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpunpckhbw (%r10),             %zmm25, %zmm3
vpunpckhbw (%r10,%r12,1),      %zmm25, %zmm3
vpunpckhbw 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpunpckhbw 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpunpckhbw 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpunpckhbw (%r10),             %zmm24, %zmm10
vpunpckhbw (%r10,%r12,1),      %zmm24, %zmm10
vpunpckhbw 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpunpckhbw 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpunpckhbw 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpunpckhbw (%r10),             %zmm21, %zmm20
vpunpckhbw (%r10,%r12,1),      %zmm22, %zmm31
vpunpckhbw 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpunpckhbw 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpunpckhbw 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpunpckhbw %zmm0,%zmm3,%zmm1
vpunpckhbw %zmm1,%zmm2,%zmm11
vpunpckhbw %zmm2,%zmm1,%zmm22
vpunpckhbw %zmm3,%zmm12,%zmm1
vpunpckhbw %zmm4,%zmm13,%zmm15
vpunpckhbw %zmm5,%zmm14,%zmm23
vpunpckhbw %zmm6,%zmm24,%zmm2
vpunpckhbw %zmm7,%zmm25,%zmm10
vpunpckhbw %zmm0,%zmm26,%zmm27

vpunpckhbw %zmm11,%zmm0,%zmm3
vpunpckhbw %zmm12,%zmm0,%zmm11
vpunpckhbw %zmm13,%zmm0,%zmm28
vpunpckhbw %zmm14,%zmm10,%zmm4
vpunpckhbw %zmm15,%zmm12,%zmm11
vpunpckhbw %zmm11,%zmm13,%zmm29
vpunpckhbw %zmm12,%zmm30,%zmm5
vpunpckhbw %zmm13,%zmm31,%zmm11
vpunpckhbw %zmm14,%zmm22,%zmm24

vpunpckhbw %zmm20,%zmm0,%zmm6
vpunpckhbw %zmm21,%zmm0,%zmm11
vpunpckhbw %zmm22,%zmm0,%zmm30
vpunpckhbw %zmm23,%zmm12,%zmm7
vpunpckhbw %zmm24,%zmm13,%zmm10
vpunpckhbw %zmm25,%zmm14,%zmm31
vpunpckhbw %zmm26,%zmm22,%zmm1
vpunpckhbw %zmm27,%zmm21,%zmm14
vpunpckhbw %zmm28,%zmm20,%zmm29

vpunpckhbw (%r10),             %zmm5, %zmm1
vpunpckhbw (%r10,%r12,1),      %zmm5, %zmm2
vpunpckhbw 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpunpckhbw 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpunpckhbw 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpunpckhbw (%r10),             %zmm5, %zmm10
vpunpckhbw (%r10,%r12,1),      %zmm5, %zmm11
vpunpckhbw 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpunpckhbw 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpunpckhbw 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpunpckhbw (%r10),             %zmm1, %zmm20
vpunpckhbw (%r10,%r12,1),      %zmm2, %zmm31
vpunpckhbw 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpunpckhbw 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpunpckhbw 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpunpckhbw (%r10),             %zmm15, %zmm3
vpunpckhbw (%r10,%r12,1),      %zmm15, %zmm3
vpunpckhbw 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpunpckhbw 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpunpckhbw 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpunpckhbw (%r10),             %zmm14, %zmm10
vpunpckhbw (%r10,%r12,1),      %zmm14, %zmm10
vpunpckhbw 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpunpckhbw 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpunpckhbw 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpunpckhbw (%r10),             %zmm11, %zmm20
vpunpckhbw (%r10,%r12,1),      %zmm12, %zmm31
vpunpckhbw 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpunpckhbw 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpunpckhbw 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpunpckhbw (%r10),             %zmm25, %zmm3
vpunpckhbw (%r10,%r12,1),      %zmm25, %zmm3
vpunpckhbw 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpunpckhbw 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpunpckhbw 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpunpckhbw (%r10),             %zmm24, %zmm10
vpunpckhbw (%r10,%r12,1),      %zmm24, %zmm10
vpunpckhbw 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpunpckhbw 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpunpckhbw 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpunpckhbw (%r10),             %zmm21, %zmm20
vpunpckhbw (%r10,%r12,1),      %zmm22, %zmm31
vpunpckhbw 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpunpckhbw 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpunpckhbw 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpunpckhdq %zmm0,%zmm3,%zmm1
vpunpckhdq %zmm1,%zmm2,%zmm11
vpunpckhdq %zmm2,%zmm1,%zmm22
vpunpckhdq %zmm3,%zmm12,%zmm1
vpunpckhdq %zmm4,%zmm13,%zmm15
vpunpckhdq %zmm5,%zmm14,%zmm23
vpunpckhdq %zmm6,%zmm24,%zmm2
vpunpckhdq %zmm7,%zmm25,%zmm10
vpunpckhdq %zmm0,%zmm26,%zmm27

vpunpckhdq %zmm11,%zmm0,%zmm3
vpunpckhdq %zmm12,%zmm0,%zmm11
vpunpckhdq %zmm13,%zmm0,%zmm28
vpunpckhdq %zmm14,%zmm10,%zmm4
vpunpckhdq %zmm15,%zmm12,%zmm11
vpunpckhdq %zmm11,%zmm13,%zmm29
vpunpckhdq %zmm12,%zmm30,%zmm5
vpunpckhdq %zmm13,%zmm31,%zmm11
vpunpckhdq %zmm14,%zmm22,%zmm24

vpunpckhdq %zmm20,%zmm0,%zmm6
vpunpckhdq %zmm21,%zmm0,%zmm11
vpunpckhdq %zmm22,%zmm0,%zmm30
vpunpckhdq %zmm23,%zmm12,%zmm7
vpunpckhdq %zmm24,%zmm13,%zmm10
vpunpckhdq %zmm25,%zmm14,%zmm31
vpunpckhdq %zmm26,%zmm22,%zmm1
vpunpckhdq %zmm27,%zmm21,%zmm14
vpunpckhdq %zmm28,%zmm20,%zmm29

vpunpckhdq (%r10),             %zmm5, %zmm1
vpunpckhdq (%r10,%r12,1),      %zmm5, %zmm2
vpunpckhdq 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpunpckhdq 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpunpckhdq 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpunpckhdq (%r10),             %zmm5, %zmm10
vpunpckhdq (%r10,%r12,1),      %zmm5, %zmm11
vpunpckhdq 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpunpckhdq 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpunpckhdq 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpunpckhdq (%r10),             %zmm1, %zmm20
vpunpckhdq (%r10,%r12,1),      %zmm2, %zmm31
vpunpckhdq 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpunpckhdq 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpunpckhdq 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpunpckhdq (%r10),             %zmm15, %zmm3
vpunpckhdq (%r10,%r12,1),      %zmm15, %zmm3
vpunpckhdq 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpunpckhdq 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpunpckhdq 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpunpckhdq (%r10),             %zmm14, %zmm10
vpunpckhdq (%r10,%r12,1),      %zmm14, %zmm10
vpunpckhdq 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpunpckhdq 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpunpckhdq 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpunpckhdq (%r10),             %zmm11, %zmm20
vpunpckhdq (%r10,%r12,1),      %zmm12, %zmm31
vpunpckhdq 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpunpckhdq 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpunpckhdq 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpunpckhdq (%r10),             %zmm25, %zmm3
vpunpckhdq (%r10,%r12,1),      %zmm25, %zmm3
vpunpckhdq 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpunpckhdq 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpunpckhdq 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpunpckhdq (%r10),             %zmm24, %zmm10
vpunpckhdq (%r10,%r12,1),      %zmm24, %zmm10
vpunpckhdq 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpunpckhdq 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpunpckhdq 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpunpckhdq (%r10),             %zmm21, %zmm20
vpunpckhdq (%r10,%r12,1),      %zmm22, %zmm31
vpunpckhdq 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpunpckhdq 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpunpckhdq 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpunpckhdq %zmm0,%zmm3,%zmm1
vpunpckhdq %zmm1,%zmm2,%zmm11
vpunpckhdq %zmm2,%zmm1,%zmm22
vpunpckhdq %zmm3,%zmm12,%zmm1
vpunpckhdq %zmm4,%zmm13,%zmm15
vpunpckhdq %zmm5,%zmm14,%zmm23
vpunpckhdq %zmm6,%zmm24,%zmm2
vpunpckhdq %zmm7,%zmm25,%zmm10
vpunpckhdq %zmm0,%zmm26,%zmm27

vpunpckhdq %zmm11,%zmm0,%zmm3
vpunpckhdq %zmm12,%zmm0,%zmm11
vpunpckhdq %zmm13,%zmm0,%zmm28
vpunpckhdq %zmm14,%zmm10,%zmm4
vpunpckhdq %zmm15,%zmm12,%zmm11
vpunpckhdq %zmm11,%zmm13,%zmm29
vpunpckhdq %zmm12,%zmm30,%zmm5
vpunpckhdq %zmm13,%zmm31,%zmm11
vpunpckhdq %zmm14,%zmm22,%zmm24

vpunpckhdq %zmm20,%zmm0,%zmm6
vpunpckhdq %zmm21,%zmm0,%zmm11
vpunpckhdq %zmm22,%zmm0,%zmm30
vpunpckhdq %zmm23,%zmm12,%zmm7
vpunpckhdq %zmm24,%zmm13,%zmm10
vpunpckhdq %zmm25,%zmm14,%zmm31
vpunpckhdq %zmm26,%zmm22,%zmm1
vpunpckhdq %zmm27,%zmm21,%zmm14
vpunpckhdq %zmm28,%zmm20,%zmm29

vpunpckhdq (%r10),             %zmm5, %zmm1
vpunpckhdq (%r10,%r12,1),      %zmm5, %zmm2
vpunpckhdq 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpunpckhdq 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpunpckhdq 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpunpckhdq (%r10),             %zmm5, %zmm10
vpunpckhdq (%r10,%r12,1),      %zmm5, %zmm11
vpunpckhdq 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpunpckhdq 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpunpckhdq 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpunpckhdq (%r10),             %zmm1, %zmm20
vpunpckhdq (%r10,%r12,1),      %zmm2, %zmm31
vpunpckhdq 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpunpckhdq 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpunpckhdq 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpunpckhdq (%r10),             %zmm15, %zmm3
vpunpckhdq (%r10,%r12,1),      %zmm15, %zmm3
vpunpckhdq 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpunpckhdq 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpunpckhdq 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpunpckhdq (%r10),             %zmm14, %zmm10
vpunpckhdq (%r10,%r12,1),      %zmm14, %zmm10
vpunpckhdq 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpunpckhdq 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpunpckhdq 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpunpckhdq (%r10),             %zmm11, %zmm20
vpunpckhdq (%r10,%r12,1),      %zmm12, %zmm31
vpunpckhdq 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpunpckhdq 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpunpckhdq 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpunpckhdq (%r10),             %zmm25, %zmm3
vpunpckhdq (%r10,%r12,1),      %zmm25, %zmm3
vpunpckhdq 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpunpckhdq 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpunpckhdq 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpunpckhdq (%r10),             %zmm24, %zmm10
vpunpckhdq (%r10,%r12,1),      %zmm24, %zmm10
vpunpckhdq 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpunpckhdq 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpunpckhdq 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpunpckhdq (%r10),             %zmm21, %zmm20
vpunpckhdq (%r10,%r12,1),      %zmm22, %zmm31
vpunpckhdq 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpunpckhdq 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpunpckhdq 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpunpckhwd %zmm0,%zmm3,%zmm1
vpunpckhwd %zmm1,%zmm2,%zmm11
vpunpckhwd %zmm2,%zmm1,%zmm22
vpunpckhwd %zmm3,%zmm12,%zmm1
vpunpckhwd %zmm4,%zmm13,%zmm15
vpunpckhwd %zmm5,%zmm14,%zmm23
vpunpckhwd %zmm6,%zmm24,%zmm2
vpunpckhwd %zmm7,%zmm25,%zmm10
vpunpckhwd %zmm0,%zmm26,%zmm27

vpunpckhwd %zmm11,%zmm0,%zmm3
vpunpckhwd %zmm12,%zmm0,%zmm11
vpunpckhwd %zmm13,%zmm0,%zmm28
vpunpckhwd %zmm14,%zmm10,%zmm4
vpunpckhwd %zmm15,%zmm12,%zmm11
vpunpckhwd %zmm11,%zmm13,%zmm29
vpunpckhwd %zmm12,%zmm30,%zmm5
vpunpckhwd %zmm13,%zmm31,%zmm11
vpunpckhwd %zmm14,%zmm22,%zmm24

vpunpckhwd %zmm20,%zmm0,%zmm6
vpunpckhwd %zmm21,%zmm0,%zmm11
vpunpckhwd %zmm22,%zmm0,%zmm30
vpunpckhwd %zmm23,%zmm12,%zmm7
vpunpckhwd %zmm24,%zmm13,%zmm10
vpunpckhwd %zmm25,%zmm14,%zmm31
vpunpckhwd %zmm26,%zmm22,%zmm1
vpunpckhwd %zmm27,%zmm21,%zmm14
vpunpckhwd %zmm28,%zmm20,%zmm29

vpunpckhwd (%r10),             %zmm5, %zmm1
vpunpckhwd (%r10,%r12,1),      %zmm5, %zmm2
vpunpckhwd 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpunpckhwd 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpunpckhwd 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpunpckhwd (%r10),             %zmm5, %zmm10
vpunpckhwd (%r10,%r12,1),      %zmm5, %zmm11
vpunpckhwd 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpunpckhwd 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpunpckhwd 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpunpckhwd (%r10),             %zmm1, %zmm20
vpunpckhwd (%r10,%r12,1),      %zmm2, %zmm31
vpunpckhwd 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpunpckhwd 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpunpckhwd 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpunpckhwd (%r10),             %zmm15, %zmm3
vpunpckhwd (%r10,%r12,1),      %zmm15, %zmm3
vpunpckhwd 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpunpckhwd 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpunpckhwd 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpunpckhwd (%r10),             %zmm14, %zmm10
vpunpckhwd (%r10,%r12,1),      %zmm14, %zmm10
vpunpckhwd 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpunpckhwd 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpunpckhwd 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpunpckhwd (%r10),             %zmm11, %zmm20
vpunpckhwd (%r10,%r12,1),      %zmm12, %zmm31
vpunpckhwd 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpunpckhwd 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpunpckhwd 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpunpckhwd (%r10),             %zmm25, %zmm3
vpunpckhwd (%r10,%r12,1),      %zmm25, %zmm3
vpunpckhwd 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpunpckhwd 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpunpckhwd 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpunpckhwd (%r10),             %zmm24, %zmm10
vpunpckhwd (%r10,%r12,1),      %zmm24, %zmm10
vpunpckhwd 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpunpckhwd 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpunpckhwd 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpunpckhwd (%r10),             %zmm21, %zmm20
vpunpckhwd (%r10,%r12,1),      %zmm22, %zmm31
vpunpckhwd 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpunpckhwd 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpunpckhwd 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpunpckhwd %zmm0,%zmm3,%zmm1
vpunpckhwd %zmm1,%zmm2,%zmm11
vpunpckhwd %zmm2,%zmm1,%zmm22
vpunpckhwd %zmm3,%zmm12,%zmm1
vpunpckhwd %zmm4,%zmm13,%zmm15
vpunpckhwd %zmm5,%zmm14,%zmm23
vpunpckhwd %zmm6,%zmm24,%zmm2
vpunpckhwd %zmm7,%zmm25,%zmm10
vpunpckhwd %zmm0,%zmm26,%zmm27

vpunpckhwd %zmm11,%zmm0,%zmm3
vpunpckhwd %zmm12,%zmm0,%zmm11
vpunpckhwd %zmm13,%zmm0,%zmm28
vpunpckhwd %zmm14,%zmm10,%zmm4
vpunpckhwd %zmm15,%zmm12,%zmm11
vpunpckhwd %zmm11,%zmm13,%zmm29
vpunpckhwd %zmm12,%zmm30,%zmm5
vpunpckhwd %zmm13,%zmm31,%zmm11
vpunpckhwd %zmm14,%zmm22,%zmm24

vpunpckhwd %zmm20,%zmm0,%zmm6
vpunpckhwd %zmm21,%zmm0,%zmm11
vpunpckhwd %zmm22,%zmm0,%zmm30
vpunpckhwd %zmm23,%zmm12,%zmm7
vpunpckhwd %zmm24,%zmm13,%zmm10
vpunpckhwd %zmm25,%zmm14,%zmm31
vpunpckhwd %zmm26,%zmm22,%zmm1
vpunpckhwd %zmm27,%zmm21,%zmm14
vpunpckhwd %zmm28,%zmm20,%zmm29

vpunpckhwd (%r10),             %zmm5, %zmm1
vpunpckhwd (%r10,%r12,1),      %zmm5, %zmm2
vpunpckhwd 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpunpckhwd 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpunpckhwd 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpunpckhwd (%r10),             %zmm5, %zmm10
vpunpckhwd (%r10,%r12,1),      %zmm5, %zmm11
vpunpckhwd 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpunpckhwd 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpunpckhwd 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpunpckhwd (%r10),             %zmm1, %zmm20
vpunpckhwd (%r10,%r12,1),      %zmm2, %zmm31
vpunpckhwd 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpunpckhwd 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpunpckhwd 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpunpckhwd (%r10),             %zmm15, %zmm3
vpunpckhwd (%r10,%r12,1),      %zmm15, %zmm3
vpunpckhwd 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpunpckhwd 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpunpckhwd 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpunpckhwd (%r10),             %zmm14, %zmm10
vpunpckhwd (%r10,%r12,1),      %zmm14, %zmm10
vpunpckhwd 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpunpckhwd 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpunpckhwd 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpunpckhwd (%r10),             %zmm11, %zmm20
vpunpckhwd (%r10,%r12,1),      %zmm12, %zmm31
vpunpckhwd 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpunpckhwd 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpunpckhwd 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpunpckhwd (%r10),             %zmm25, %zmm3
vpunpckhwd (%r10,%r12,1),      %zmm25, %zmm3
vpunpckhwd 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpunpckhwd 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpunpckhwd 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpunpckhwd (%r10),             %zmm24, %zmm10
vpunpckhwd (%r10,%r12,1),      %zmm24, %zmm10
vpunpckhwd 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpunpckhwd 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpunpckhwd 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpunpckhwd (%r10),             %zmm21, %zmm20
vpunpckhwd (%r10,%r12,1),      %zmm22, %zmm31
vpunpckhwd 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpunpckhwd 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpunpckhwd 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpunpckhqdq %zmm0,%zmm3,%zmm1
vpunpckhqdq %zmm1,%zmm2,%zmm11
vpunpckhqdq %zmm2,%zmm1,%zmm22
vpunpckhqdq %zmm3,%zmm12,%zmm1
vpunpckhqdq %zmm4,%zmm13,%zmm15
vpunpckhqdq %zmm5,%zmm14,%zmm23
vpunpckhqdq %zmm6,%zmm24,%zmm2
vpunpckhqdq %zmm7,%zmm25,%zmm10
vpunpckhqdq %zmm0,%zmm26,%zmm27

vpunpckhqdq %zmm11,%zmm0,%zmm3
vpunpckhqdq %zmm12,%zmm0,%zmm11
vpunpckhqdq %zmm13,%zmm0,%zmm28
vpunpckhqdq %zmm14,%zmm10,%zmm4
vpunpckhqdq %zmm15,%zmm12,%zmm11
vpunpckhqdq %zmm11,%zmm13,%zmm29
vpunpckhqdq %zmm12,%zmm30,%zmm5
vpunpckhqdq %zmm13,%zmm31,%zmm11
vpunpckhqdq %zmm14,%zmm22,%zmm24

vpunpckhqdq %zmm20,%zmm0,%zmm6
vpunpckhqdq %zmm21,%zmm0,%zmm11
vpunpckhqdq %zmm22,%zmm0,%zmm30
vpunpckhqdq %zmm23,%zmm12,%zmm7
vpunpckhqdq %zmm24,%zmm13,%zmm10
vpunpckhqdq %zmm25,%zmm14,%zmm31
vpunpckhqdq %zmm26,%zmm22,%zmm1
vpunpckhqdq %zmm27,%zmm21,%zmm14
vpunpckhqdq %zmm28,%zmm20,%zmm29

vpunpckhqdq (%r10),             %zmm5, %zmm1
vpunpckhqdq (%r10,%r12,1),      %zmm5, %zmm2
vpunpckhqdq 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpunpckhqdq 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpunpckhqdq 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpunpckhqdq (%r10),             %zmm5, %zmm10
vpunpckhqdq (%r10,%r12,1),      %zmm5, %zmm11
vpunpckhqdq 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpunpckhqdq 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpunpckhqdq 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpunpckhqdq (%r10),             %zmm1, %zmm20
vpunpckhqdq (%r10,%r12,1),      %zmm2, %zmm31
vpunpckhqdq 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpunpckhqdq 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpunpckhqdq 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpunpckhqdq (%r10),             %zmm15, %zmm3
vpunpckhqdq (%r10,%r12,1),      %zmm15, %zmm3
vpunpckhqdq 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpunpckhqdq 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpunpckhqdq 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpunpckhqdq (%r10),             %zmm14, %zmm10
vpunpckhqdq (%r10,%r12,1),      %zmm14, %zmm10
vpunpckhqdq 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpunpckhqdq 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpunpckhqdq 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpunpckhqdq (%r10),             %zmm11, %zmm20
vpunpckhqdq (%r10,%r12,1),      %zmm12, %zmm31
vpunpckhqdq 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpunpckhqdq 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpunpckhqdq 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpunpckhqdq (%r10),             %zmm25, %zmm3
vpunpckhqdq (%r10,%r12,1),      %zmm25, %zmm3
vpunpckhqdq 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpunpckhqdq 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpunpckhqdq 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpunpckhqdq (%r10),             %zmm24, %zmm10
vpunpckhqdq (%r10,%r12,1),      %zmm24, %zmm10
vpunpckhqdq 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpunpckhqdq 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpunpckhqdq 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpunpckhqdq (%r10),             %zmm21, %zmm20
vpunpckhqdq (%r10,%r12,1),      %zmm22, %zmm31
vpunpckhqdq 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpunpckhqdq 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpunpckhqdq 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpunpckhqdq %zmm0,%zmm3,%zmm1
vpunpckhqdq %zmm1,%zmm2,%zmm11
vpunpckhqdq %zmm2,%zmm1,%zmm22
vpunpckhqdq %zmm3,%zmm12,%zmm1
vpunpckhqdq %zmm4,%zmm13,%zmm15
vpunpckhqdq %zmm5,%zmm14,%zmm23
vpunpckhqdq %zmm6,%zmm24,%zmm2
vpunpckhqdq %zmm7,%zmm25,%zmm10
vpunpckhqdq %zmm0,%zmm26,%zmm27

vpunpckhqdq %zmm11,%zmm0,%zmm3
vpunpckhqdq %zmm12,%zmm0,%zmm11
vpunpckhqdq %zmm13,%zmm0,%zmm28
vpunpckhqdq %zmm14,%zmm10,%zmm4
vpunpckhqdq %zmm15,%zmm12,%zmm11
vpunpckhqdq %zmm11,%zmm13,%zmm29
vpunpckhqdq %zmm12,%zmm30,%zmm5
vpunpckhqdq %zmm13,%zmm31,%zmm11
vpunpckhqdq %zmm14,%zmm22,%zmm24

vpunpckhqdq %zmm20,%zmm0,%zmm6
vpunpckhqdq %zmm21,%zmm0,%zmm11
vpunpckhqdq %zmm22,%zmm0,%zmm30
vpunpckhqdq %zmm23,%zmm12,%zmm7
vpunpckhqdq %zmm24,%zmm13,%zmm10
vpunpckhqdq %zmm25,%zmm14,%zmm31
vpunpckhqdq %zmm26,%zmm22,%zmm1
vpunpckhqdq %zmm27,%zmm21,%zmm14
vpunpckhqdq %zmm28,%zmm20,%zmm29

vpunpckhqdq (%r10),             %zmm5, %zmm1
vpunpckhqdq (%r10,%r12,1),      %zmm5, %zmm2
vpunpckhqdq 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpunpckhqdq 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpunpckhqdq 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpunpckhqdq (%r10),             %zmm5, %zmm10
vpunpckhqdq (%r10,%r12,1),      %zmm5, %zmm11
vpunpckhqdq 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpunpckhqdq 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpunpckhqdq 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpunpckhqdq (%r10),             %zmm1, %zmm20
vpunpckhqdq (%r10,%r12,1),      %zmm2, %zmm31
vpunpckhqdq 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpunpckhqdq 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpunpckhqdq 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpunpckhqdq (%r10),             %zmm15, %zmm3
vpunpckhqdq (%r10,%r12,1),      %zmm15, %zmm3
vpunpckhqdq 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpunpckhqdq 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpunpckhqdq 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpunpckhqdq (%r10),             %zmm14, %zmm10
vpunpckhqdq (%r10,%r12,1),      %zmm14, %zmm10
vpunpckhqdq 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpunpckhqdq 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpunpckhqdq 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpunpckhqdq (%r10),             %zmm11, %zmm20
vpunpckhqdq (%r10,%r12,1),      %zmm12, %zmm31
vpunpckhqdq 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpunpckhqdq 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpunpckhqdq 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpunpckhqdq (%r10),             %zmm25, %zmm3
vpunpckhqdq (%r10,%r12,1),      %zmm25, %zmm3
vpunpckhqdq 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpunpckhqdq 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpunpckhqdq 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpunpckhqdq (%r10),             %zmm24, %zmm10
vpunpckhqdq (%r10,%r12,1),      %zmm24, %zmm10
vpunpckhqdq 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpunpckhqdq 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpunpckhqdq 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpunpckhqdq (%r10),             %zmm21, %zmm20
vpunpckhqdq (%r10,%r12,1),      %zmm22, %zmm31
vpunpckhqdq 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpunpckhqdq 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpunpckhqdq 0x3567(%r10,%r12,4),%zmm25, %zmm29
