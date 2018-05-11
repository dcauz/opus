punpcklbw %mm0, %mm1
punpcklbw %mm2, %mm7
punpcklbw %mm7, %mm5

punpcklbw (%r10), %mm0
punpcklbw (%r10,%rdx,4), %mm0
punpcklbw 0x10(%r10,%rdx,4), %mm0

punpcklbw (%r10), %mm4
punpcklbw (%r10,%rdx,4), %mm5
punpcklbw 0x10(%r10,%rdx,4), %mm6

vpunpcklbw %xmm0,%xmm3,%xmm1
vpunpcklbw %xmm1,%xmm2,%xmm11
vpunpcklbw %xmm2,%xmm1,%xmm22
vpunpcklbw %xmm3,%xmm12,%xmm1
vpunpcklbw %xmm4,%xmm13,%xmm15
vpunpcklbw %xmm5,%xmm14,%xmm23
vpunpcklbw %xmm6,%xmm24,%xmm2
vpunpcklbw %xmm7,%xmm25,%xmm10
vpunpcklbw %xmm0,%xmm26,%xmm27

vpunpcklbw %xmm11,%xmm0,%xmm3
vpunpcklbw %xmm12,%xmm0,%xmm11
vpunpcklbw %xmm13,%xmm0,%xmm28
vpunpcklbw %xmm14,%xmm10,%xmm4
vpunpcklbw %xmm15,%xmm12,%xmm11
vpunpcklbw %xmm11,%xmm13,%xmm29
vpunpcklbw %xmm12,%xmm30,%xmm5
vpunpcklbw %xmm13,%xmm31,%xmm11
vpunpcklbw %xmm14,%xmm22,%xmm24

vpunpcklbw %xmm20,%xmm0,%xmm6
vpunpcklbw %xmm21,%xmm0,%xmm11
vpunpcklbw %xmm22,%xmm0,%xmm30
vpunpcklbw %xmm23,%xmm12,%xmm7
vpunpcklbw %xmm24,%xmm13,%xmm10
vpunpcklbw %xmm25,%xmm14,%xmm31
vpunpcklbw %xmm26,%xmm22,%xmm1
vpunpcklbw %xmm27,%xmm21,%xmm14
vpunpcklbw %xmm28,%xmm20,%xmm29

vpunpcklbw (%r10),             %xmm5, %xmm1
vpunpcklbw (%r10,%r12,1),      %xmm5, %xmm2
vpunpcklbw 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpunpcklbw 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpunpcklbw 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpunpcklbw (%r10),             %xmm5, %xmm10
vpunpcklbw (%r10,%r12,1),      %xmm5, %xmm11
vpunpcklbw 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpunpcklbw 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpunpcklbw 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpunpcklbw (%r10),             %xmm1, %xmm20
vpunpcklbw (%r10,%r12,1),      %xmm2, %xmm31
vpunpcklbw 0x10(%r10,%r12,1),  %xmm3, %xmm30
vpunpcklbw 0x11(%r10,%r12,2),  %xmm4, %xmm25
vpunpcklbw 0x3567(%r10,%r12,4),%xmm5, %xmm29

vpunpcklbw (%r10),             %xmm15, %xmm3
vpunpcklbw (%r10,%r12,1),      %xmm15, %xmm3
vpunpcklbw 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpunpcklbw 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpunpcklbw 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpunpcklbw (%r10),             %xmm14, %xmm10
vpunpcklbw (%r10,%r12,1),      %xmm14, %xmm10
vpunpcklbw 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpunpcklbw 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpunpcklbw 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpunpcklbw (%r10),             %xmm11, %xmm20
vpunpcklbw (%r10,%r12,1),      %xmm12, %xmm31
vpunpcklbw 0x10(%r10,%r12,1),  %xmm13, %xmm30
vpunpcklbw 0x11(%r10,%r12,2),  %xmm14, %xmm25
vpunpcklbw 0x3567(%r10,%r12,4),%xmm15, %xmm29

vpunpcklbw (%r10),             %xmm25, %xmm3
vpunpcklbw (%r10,%r12,1),      %xmm25, %xmm3
vpunpcklbw 0x10(%r10,%r12,1),  %xmm24, %xmm3
vpunpcklbw 0x11(%r10,%r12,2),  %xmm24, %xmm3
vpunpcklbw 0x3567(%r10,%r12,4),%xmm23, %xmm3

vpunpcklbw (%r10),             %xmm24, %xmm10
vpunpcklbw (%r10,%r12,1),      %xmm24, %xmm10
vpunpcklbw 0x10(%r10,%r12,1),  %xmm25, %xmm10
vpunpcklbw 0x11(%r10,%r12,2),  %xmm21, %xmm10
vpunpcklbw 0x3567(%r10,%r12,4),%xmm21, %xmm10

vpunpcklbw (%r10),             %xmm21, %xmm20
vpunpcklbw (%r10,%r12,1),      %xmm22, %xmm31
vpunpcklbw 0x10(%r10,%r12,1),  %xmm23, %xmm30
vpunpcklbw 0x11(%r10,%r12,2),  %xmm24, %xmm25
vpunpcklbw 0x3567(%r10,%r12,4),%xmm25, %xmm29

vpunpcklbw %ymm0,%ymm3,%ymm1
vpunpcklbw %ymm1,%ymm2,%ymm11
vpunpcklbw %ymm2,%ymm1,%ymm22
vpunpcklbw %ymm3,%ymm12,%ymm1
vpunpcklbw %ymm4,%ymm13,%ymm15
vpunpcklbw %ymm5,%ymm14,%ymm23
vpunpcklbw %ymm6,%ymm24,%ymm2
vpunpcklbw %ymm7,%ymm25,%ymm10
vpunpcklbw %ymm0,%ymm26,%ymm27

vpunpcklbw %ymm11,%ymm0,%ymm3
vpunpcklbw %ymm12,%ymm0,%ymm11
vpunpcklbw %ymm13,%ymm0,%ymm28
vpunpcklbw %ymm14,%ymm10,%ymm4
vpunpcklbw %ymm15,%ymm12,%ymm11
vpunpcklbw %ymm11,%ymm13,%ymm29
vpunpcklbw %ymm12,%ymm30,%ymm5
vpunpcklbw %ymm13,%ymm31,%ymm11
vpunpcklbw %ymm14,%ymm22,%ymm24

vpunpcklbw %ymm20,%ymm0,%ymm6
vpunpcklbw %ymm21,%ymm0,%ymm11
vpunpcklbw %ymm22,%ymm0,%ymm30
vpunpcklbw %ymm23,%ymm12,%ymm7
vpunpcklbw %ymm24,%ymm13,%ymm10
vpunpcklbw %ymm25,%ymm14,%ymm31
vpunpcklbw %ymm26,%ymm22,%ymm1
vpunpcklbw %ymm27,%ymm21,%ymm14
vpunpcklbw %ymm28,%ymm20,%ymm29

vpunpcklbw (%r10),             %ymm5, %ymm1
vpunpcklbw (%r10,%r12,1),      %ymm5, %ymm2
vpunpcklbw 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpunpcklbw 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpunpcklbw 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpunpcklbw (%r10),             %ymm5, %ymm10
vpunpcklbw (%r10,%r12,1),      %ymm5, %ymm11
vpunpcklbw 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpunpcklbw 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpunpcklbw 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpunpcklbw (%r10),             %ymm1, %ymm20
vpunpcklbw (%r10,%r12,1),      %ymm2, %ymm31
vpunpcklbw 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpunpcklbw 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpunpcklbw 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpunpcklbw (%r10),             %ymm15, %ymm3
vpunpcklbw (%r10,%r12,1),      %ymm15, %ymm3
vpunpcklbw 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpunpcklbw 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpunpcklbw 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpunpcklbw (%r10),             %ymm14, %ymm10
vpunpcklbw (%r10,%r12,1),      %ymm14, %ymm10
vpunpcklbw 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpunpcklbw 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpunpcklbw 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpunpcklbw (%r10),             %ymm11, %ymm20
vpunpcklbw (%r10,%r12,1),      %ymm12, %ymm31
vpunpcklbw 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpunpcklbw 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpunpcklbw 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpunpcklbw (%r10),             %ymm25, %ymm3
vpunpcklbw (%r10,%r12,1),      %ymm25, %ymm3
vpunpcklbw 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpunpcklbw 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpunpcklbw 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpunpcklbw (%r10),             %ymm24, %ymm10
vpunpcklbw (%r10,%r12,1),      %ymm24, %ymm10
vpunpcklbw 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpunpcklbw 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpunpcklbw 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpunpcklbw (%r10),             %ymm21, %ymm20
vpunpcklbw (%r10,%r12,1),      %ymm22, %ymm31
vpunpcklbw 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpunpcklbw 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpunpcklbw 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpunpcklbw %ymm0,%ymm3,%ymm1
vpunpcklbw %ymm1,%ymm2,%ymm11
vpunpcklbw %ymm2,%ymm1,%ymm22
vpunpcklbw %ymm3,%ymm12,%ymm1
vpunpcklbw %ymm4,%ymm13,%ymm15
vpunpcklbw %ymm5,%ymm14,%ymm23
vpunpcklbw %ymm6,%ymm24,%ymm2
vpunpcklbw %ymm7,%ymm25,%ymm10
vpunpcklbw %ymm0,%ymm26,%ymm27

vpunpcklbw %ymm11,%ymm0,%ymm3
vpunpcklbw %ymm12,%ymm0,%ymm11
vpunpcklbw %ymm13,%ymm0,%ymm28
vpunpcklbw %ymm14,%ymm10,%ymm4
vpunpcklbw %ymm15,%ymm12,%ymm11
vpunpcklbw %ymm11,%ymm13,%ymm29
vpunpcklbw %ymm12,%ymm30,%ymm5
vpunpcklbw %ymm13,%ymm31,%ymm11
vpunpcklbw %ymm14,%ymm22,%ymm24

vpunpcklbw %ymm20,%ymm0,%ymm6
vpunpcklbw %ymm21,%ymm0,%ymm11
vpunpcklbw %ymm22,%ymm0,%ymm30
vpunpcklbw %ymm23,%ymm12,%ymm7
vpunpcklbw %ymm24,%ymm13,%ymm10
vpunpcklbw %ymm25,%ymm14,%ymm31
vpunpcklbw %ymm26,%ymm22,%ymm1
vpunpcklbw %ymm27,%ymm21,%ymm14
vpunpcklbw %ymm28,%ymm20,%ymm29

vpunpcklbw (%r10),             %ymm5, %ymm1
vpunpcklbw (%r10,%r12,1),      %ymm5, %ymm2
vpunpcklbw 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpunpcklbw 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpunpcklbw 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpunpcklbw (%r10),             %ymm5, %ymm10
vpunpcklbw (%r10,%r12,1),      %ymm5, %ymm11
vpunpcklbw 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpunpcklbw 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpunpcklbw 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpunpcklbw (%r10),             %ymm1, %ymm20
vpunpcklbw (%r10,%r12,1),      %ymm2, %ymm31
vpunpcklbw 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpunpcklbw 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpunpcklbw 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpunpcklbw (%r10),             %ymm15, %ymm3
vpunpcklbw (%r10,%r12,1),      %ymm15, %ymm3
vpunpcklbw 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpunpcklbw 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpunpcklbw 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpunpcklbw (%r10),             %ymm14, %ymm10
vpunpcklbw (%r10,%r12,1),      %ymm14, %ymm10
vpunpcklbw 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpunpcklbw 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpunpcklbw 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpunpcklbw (%r10),             %ymm11, %ymm20
vpunpcklbw (%r10,%r12,1),      %ymm12, %ymm31
vpunpcklbw 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpunpcklbw 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpunpcklbw 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpunpcklbw (%r10),             %ymm25, %ymm3
vpunpcklbw (%r10,%r12,1),      %ymm25, %ymm3
vpunpcklbw 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpunpcklbw 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpunpcklbw 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpunpcklbw (%r10),             %ymm24, %ymm10
vpunpcklbw (%r10,%r12,1),      %ymm24, %ymm10
vpunpcklbw 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpunpcklbw 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpunpcklbw 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpunpcklbw (%r10),             %ymm21, %ymm20
vpunpcklbw (%r10,%r12,1),      %ymm22, %ymm31
vpunpcklbw 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpunpcklbw 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpunpcklbw 0x3567(%r10,%r12,4),%ymm25, %ymm29


punpckldq %mm0, %mm1
punpckldq %mm2, %mm7
punpckldq %mm7, %mm5

punpckldq (%r10), %mm0
punpckldq (%r10,%rdx,4), %mm0
punpckldq 0x10(%r10,%rdx,4), %mm0

punpckldq (%r10), %mm4
punpckldq (%r10,%rdx,4), %mm5
punpckldq 0x10(%r10,%rdx,4), %mm6

vpunpckldq %xmm0,%xmm3,%xmm1
vpunpckldq %xmm1,%xmm2,%xmm11
vpunpckldq %xmm2,%xmm1,%xmm22
vpunpckldq %xmm3,%xmm12,%xmm1
vpunpckldq %xmm4,%xmm13,%xmm15
vpunpckldq %xmm5,%xmm14,%xmm23
vpunpckldq %xmm6,%xmm24,%xmm2
vpunpckldq %xmm7,%xmm25,%xmm10
vpunpckldq %xmm0,%xmm26,%xmm27

vpunpckldq %xmm11,%xmm0,%xmm3
vpunpckldq %xmm12,%xmm0,%xmm11
vpunpckldq %xmm13,%xmm0,%xmm28
vpunpckldq %xmm14,%xmm10,%xmm4
vpunpckldq %xmm15,%xmm12,%xmm11
vpunpckldq %xmm11,%xmm13,%xmm29
vpunpckldq %xmm12,%xmm30,%xmm5
vpunpckldq %xmm13,%xmm31,%xmm11
vpunpckldq %xmm14,%xmm22,%xmm24

vpunpckldq %xmm20,%xmm0,%xmm6
vpunpckldq %xmm21,%xmm0,%xmm11
vpunpckldq %xmm22,%xmm0,%xmm30
vpunpckldq %xmm23,%xmm12,%xmm7
vpunpckldq %xmm24,%xmm13,%xmm10
vpunpckldq %xmm25,%xmm14,%xmm31
vpunpckldq %xmm26,%xmm22,%xmm1
vpunpckldq %xmm27,%xmm21,%xmm14
vpunpckldq %xmm28,%xmm20,%xmm29

vpunpckldq (%r10),             %xmm5, %xmm1
vpunpckldq (%r10,%r12,1),      %xmm5, %xmm2
vpunpckldq 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpunpckldq 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpunpckldq 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpunpckldq (%r10),             %xmm5, %xmm10
vpunpckldq (%r10,%r12,1),      %xmm5, %xmm11
vpunpckldq 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpunpckldq 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpunpckldq 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpunpckldq (%r10),             %xmm1, %xmm20
vpunpckldq (%r10,%r12,1),      %xmm2, %xmm31
vpunpckldq 0x10(%r10,%r12,1),  %xmm3, %xmm30
vpunpckldq 0x11(%r10,%r12,2),  %xmm4, %xmm25
vpunpckldq 0x3567(%r10,%r12,4),%xmm5, %xmm29

vpunpckldq (%r10),             %xmm15, %xmm3
vpunpckldq (%r10,%r12,1),      %xmm15, %xmm3
vpunpckldq 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpunpckldq 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpunpckldq 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpunpckldq (%r10),             %xmm14, %xmm10
vpunpckldq (%r10,%r12,1),      %xmm14, %xmm10
vpunpckldq 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpunpckldq 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpunpckldq 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpunpckldq (%r10),             %xmm11, %xmm20
vpunpckldq (%r10,%r12,1),      %xmm12, %xmm31
vpunpckldq 0x10(%r10,%r12,1),  %xmm13, %xmm30
vpunpckldq 0x11(%r10,%r12,2),  %xmm14, %xmm25
vpunpckldq 0x3567(%r10,%r12,4),%xmm15, %xmm29

vpunpckldq (%r10),             %xmm25, %xmm3
vpunpckldq (%r10,%r12,1),      %xmm25, %xmm3
vpunpckldq 0x10(%r10,%r12,1),  %xmm24, %xmm3
vpunpckldq 0x11(%r10,%r12,2),  %xmm24, %xmm3
vpunpckldq 0x3567(%r10,%r12,4),%xmm23, %xmm3

vpunpckldq (%r10),             %xmm24, %xmm10
vpunpckldq (%r10,%r12,1),      %xmm24, %xmm10
vpunpckldq 0x10(%r10,%r12,1),  %xmm25, %xmm10
vpunpckldq 0x11(%r10,%r12,2),  %xmm21, %xmm10
vpunpckldq 0x3567(%r10,%r12,4),%xmm21, %xmm10

vpunpckldq (%r10),             %xmm21, %xmm20
vpunpckldq (%r10,%r12,1),      %xmm22, %xmm31
vpunpckldq 0x10(%r10,%r12,1),  %xmm23, %xmm30
vpunpckldq 0x11(%r10,%r12,2),  %xmm24, %xmm25
vpunpckldq 0x3567(%r10,%r12,4),%xmm25, %xmm29

vpunpckldq %ymm0,%ymm3,%ymm1
vpunpckldq %ymm1,%ymm2,%ymm11
vpunpckldq %ymm2,%ymm1,%ymm22
vpunpckldq %ymm3,%ymm12,%ymm1
vpunpckldq %ymm4,%ymm13,%ymm15
vpunpckldq %ymm5,%ymm14,%ymm23
vpunpckldq %ymm6,%ymm24,%ymm2
vpunpckldq %ymm7,%ymm25,%ymm10
vpunpckldq %ymm0,%ymm26,%ymm27

vpunpckldq %ymm11,%ymm0,%ymm3
vpunpckldq %ymm12,%ymm0,%ymm11
vpunpckldq %ymm13,%ymm0,%ymm28
vpunpckldq %ymm14,%ymm10,%ymm4
vpunpckldq %ymm15,%ymm12,%ymm11
vpunpckldq %ymm11,%ymm13,%ymm29
vpunpckldq %ymm12,%ymm30,%ymm5
vpunpckldq %ymm13,%ymm31,%ymm11
vpunpckldq %ymm14,%ymm22,%ymm24

vpunpckldq %ymm20,%ymm0,%ymm6
vpunpckldq %ymm21,%ymm0,%ymm11
vpunpckldq %ymm22,%ymm0,%ymm30
vpunpckldq %ymm23,%ymm12,%ymm7
vpunpckldq %ymm24,%ymm13,%ymm10
vpunpckldq %ymm25,%ymm14,%ymm31
vpunpckldq %ymm26,%ymm22,%ymm1
vpunpckldq %ymm27,%ymm21,%ymm14
vpunpckldq %ymm28,%ymm20,%ymm29

vpunpckldq (%r10),             %ymm5, %ymm1
vpunpckldq (%r10,%r12,1),      %ymm5, %ymm2
vpunpckldq 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpunpckldq 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpunpckldq 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpunpckldq (%r10),             %ymm5, %ymm10
vpunpckldq (%r10,%r12,1),      %ymm5, %ymm11
vpunpckldq 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpunpckldq 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpunpckldq 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpunpckldq (%r10),             %ymm1, %ymm20
vpunpckldq (%r10,%r12,1),      %ymm2, %ymm31
vpunpckldq 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpunpckldq 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpunpckldq 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpunpckldq (%r10),             %ymm15, %ymm3
vpunpckldq (%r10,%r12,1),      %ymm15, %ymm3
vpunpckldq 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpunpckldq 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpunpckldq 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpunpckldq (%r10),             %ymm14, %ymm10
vpunpckldq (%r10,%r12,1),      %ymm14, %ymm10
vpunpckldq 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpunpckldq 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpunpckldq 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpunpckldq (%r10),             %ymm11, %ymm20
vpunpckldq (%r10,%r12,1),      %ymm12, %ymm31
vpunpckldq 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpunpckldq 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpunpckldq 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpunpckldq (%r10),             %ymm25, %ymm3
vpunpckldq (%r10,%r12,1),      %ymm25, %ymm3
vpunpckldq 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpunpckldq 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpunpckldq 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpunpckldq (%r10),             %ymm24, %ymm10
vpunpckldq (%r10,%r12,1),      %ymm24, %ymm10
vpunpckldq 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpunpckldq 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpunpckldq 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpunpckldq (%r10),             %ymm21, %ymm20
vpunpckldq (%r10,%r12,1),      %ymm22, %ymm31
vpunpckldq 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpunpckldq 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpunpckldq 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpunpckldq %ymm0,%ymm3,%ymm1
vpunpckldq %ymm1,%ymm2,%ymm11
vpunpckldq %ymm2,%ymm1,%ymm22
vpunpckldq %ymm3,%ymm12,%ymm1
vpunpckldq %ymm4,%ymm13,%ymm15
vpunpckldq %ymm5,%ymm14,%ymm23
vpunpckldq %ymm6,%ymm24,%ymm2
vpunpckldq %ymm7,%ymm25,%ymm10
vpunpckldq %ymm0,%ymm26,%ymm27

vpunpckldq %ymm11,%ymm0,%ymm3
vpunpckldq %ymm12,%ymm0,%ymm11
vpunpckldq %ymm13,%ymm0,%ymm28
vpunpckldq %ymm14,%ymm10,%ymm4
vpunpckldq %ymm15,%ymm12,%ymm11
vpunpckldq %ymm11,%ymm13,%ymm29
vpunpckldq %ymm12,%ymm30,%ymm5
vpunpckldq %ymm13,%ymm31,%ymm11
vpunpckldq %ymm14,%ymm22,%ymm24

vpunpckldq %ymm20,%ymm0,%ymm6
vpunpckldq %ymm21,%ymm0,%ymm11
vpunpckldq %ymm22,%ymm0,%ymm30
vpunpckldq %ymm23,%ymm12,%ymm7
vpunpckldq %ymm24,%ymm13,%ymm10
vpunpckldq %ymm25,%ymm14,%ymm31
vpunpckldq %ymm26,%ymm22,%ymm1
vpunpckldq %ymm27,%ymm21,%ymm14
vpunpckldq %ymm28,%ymm20,%ymm29

vpunpckldq (%r10),             %ymm5, %ymm1
vpunpckldq (%r10,%r12,1),      %ymm5, %ymm2
vpunpckldq 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpunpckldq 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpunpckldq 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpunpckldq (%r10),             %ymm5, %ymm10
vpunpckldq (%r10,%r12,1),      %ymm5, %ymm11
vpunpckldq 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpunpckldq 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpunpckldq 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpunpckldq (%r10),             %ymm1, %ymm20
vpunpckldq (%r10,%r12,1),      %ymm2, %ymm31
vpunpckldq 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpunpckldq 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpunpckldq 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpunpckldq (%r10),             %ymm15, %ymm3
vpunpckldq (%r10,%r12,1),      %ymm15, %ymm3
vpunpckldq 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpunpckldq 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpunpckldq 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpunpckldq (%r10),             %ymm14, %ymm10
vpunpckldq (%r10,%r12,1),      %ymm14, %ymm10
vpunpckldq 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpunpckldq 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpunpckldq 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpunpckldq (%r10),             %ymm11, %ymm20
vpunpckldq (%r10,%r12,1),      %ymm12, %ymm31
vpunpckldq 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpunpckldq 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpunpckldq 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpunpckldq (%r10),             %ymm25, %ymm3
vpunpckldq (%r10,%r12,1),      %ymm25, %ymm3
vpunpckldq 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpunpckldq 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpunpckldq 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpunpckldq (%r10),             %ymm24, %ymm10
vpunpckldq (%r10,%r12,1),      %ymm24, %ymm10
vpunpckldq 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpunpckldq 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpunpckldq 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpunpckldq (%r10),             %ymm21, %ymm20
vpunpckldq (%r10,%r12,1),      %ymm22, %ymm31
vpunpckldq 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpunpckldq 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpunpckldq 0x3567(%r10,%r12,4),%ymm25, %ymm29

punpcklwd %mm0, %mm1
punpcklwd %mm2, %mm7
punpcklwd %mm7, %mm5

punpcklwd (%r10), %mm0
punpcklwd (%r10,%rdx,4), %mm0
punpcklwd 0x10(%r10,%rdx,4), %mm0

punpcklwd (%r10), %mm4
punpcklwd (%r10,%rdx,4), %mm5
punpcklwd 0x10(%r10,%rdx,4), %mm6

vpunpcklwd %xmm0,%xmm3,%xmm1
vpunpcklwd %xmm1,%xmm2,%xmm11
vpunpcklwd %xmm2,%xmm1,%xmm22
vpunpcklwd %xmm3,%xmm12,%xmm1
vpunpcklwd %xmm4,%xmm13,%xmm15
vpunpcklwd %xmm5,%xmm14,%xmm23
vpunpcklwd %xmm6,%xmm24,%xmm2
vpunpcklwd %xmm7,%xmm25,%xmm10
vpunpcklwd %xmm0,%xmm26,%xmm27

vpunpcklwd %xmm11,%xmm0,%xmm3
vpunpcklwd %xmm12,%xmm0,%xmm11
vpunpcklwd %xmm13,%xmm0,%xmm28
vpunpcklwd %xmm14,%xmm10,%xmm4
vpunpcklwd %xmm15,%xmm12,%xmm11
vpunpcklwd %xmm11,%xmm13,%xmm29
vpunpcklwd %xmm12,%xmm30,%xmm5
vpunpcklwd %xmm13,%xmm31,%xmm11
vpunpcklwd %xmm14,%xmm22,%xmm24

vpunpcklwd %xmm20,%xmm0,%xmm6
vpunpcklwd %xmm21,%xmm0,%xmm11
vpunpcklwd %xmm22,%xmm0,%xmm30
vpunpcklwd %xmm23,%xmm12,%xmm7
vpunpcklwd %xmm24,%xmm13,%xmm10
vpunpcklwd %xmm25,%xmm14,%xmm31
vpunpcklwd %xmm26,%xmm22,%xmm1
vpunpcklwd %xmm27,%xmm21,%xmm14
vpunpcklwd %xmm28,%xmm20,%xmm29

vpunpcklwd (%r10),             %xmm5, %xmm1
vpunpcklwd (%r10,%r12,1),      %xmm5, %xmm2
vpunpcklwd 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpunpcklwd 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpunpcklwd 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpunpcklwd (%r10),             %xmm5, %xmm10
vpunpcklwd (%r10,%r12,1),      %xmm5, %xmm11
vpunpcklwd 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpunpcklwd 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpunpcklwd 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpunpcklwd (%r10),             %xmm1, %xmm20
vpunpcklwd (%r10,%r12,1),      %xmm2, %xmm31
vpunpcklwd 0x10(%r10,%r12,1),  %xmm3, %xmm30
vpunpcklwd 0x11(%r10,%r12,2),  %xmm4, %xmm25
vpunpcklwd 0x3567(%r10,%r12,4),%xmm5, %xmm29

vpunpcklwd (%r10),             %xmm15, %xmm3
vpunpcklwd (%r10,%r12,1),      %xmm15, %xmm3
vpunpcklwd 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpunpcklwd 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpunpcklwd 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpunpcklwd (%r10),             %xmm14, %xmm10
vpunpcklwd (%r10,%r12,1),      %xmm14, %xmm10
vpunpcklwd 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpunpcklwd 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpunpcklwd 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpunpcklwd (%r10),             %xmm11, %xmm20
vpunpcklwd (%r10,%r12,1),      %xmm12, %xmm31
vpunpcklwd 0x10(%r10,%r12,1),  %xmm13, %xmm30
vpunpcklwd 0x11(%r10,%r12,2),  %xmm14, %xmm25
vpunpcklwd 0x3567(%r10,%r12,4),%xmm15, %xmm29

vpunpcklwd (%r10),             %xmm25, %xmm3
vpunpcklwd (%r10,%r12,1),      %xmm25, %xmm3
vpunpcklwd 0x10(%r10,%r12,1),  %xmm24, %xmm3
vpunpcklwd 0x11(%r10,%r12,2),  %xmm24, %xmm3
vpunpcklwd 0x3567(%r10,%r12,4),%xmm23, %xmm3

vpunpcklwd (%r10),             %xmm24, %xmm10
vpunpcklwd (%r10,%r12,1),      %xmm24, %xmm10
vpunpcklwd 0x10(%r10,%r12,1),  %xmm25, %xmm10
vpunpcklwd 0x11(%r10,%r12,2),  %xmm21, %xmm10
vpunpcklwd 0x3567(%r10,%r12,4),%xmm21, %xmm10

vpunpcklwd (%r10),             %xmm21, %xmm20
vpunpcklwd (%r10,%r12,1),      %xmm22, %xmm31
vpunpcklwd 0x10(%r10,%r12,1),  %xmm23, %xmm30
vpunpcklwd 0x11(%r10,%r12,2),  %xmm24, %xmm25
vpunpcklwd 0x3567(%r10,%r12,4),%xmm25, %xmm29

vpunpcklwd %ymm0,%ymm3,%ymm1
vpunpcklwd %ymm1,%ymm2,%ymm11
vpunpcklwd %ymm2,%ymm1,%ymm22
vpunpcklwd %ymm3,%ymm12,%ymm1
vpunpcklwd %ymm4,%ymm13,%ymm15
vpunpcklwd %ymm5,%ymm14,%ymm23
vpunpcklwd %ymm6,%ymm24,%ymm2
vpunpcklwd %ymm7,%ymm25,%ymm10
vpunpcklwd %ymm0,%ymm26,%ymm27

vpunpcklwd %ymm11,%ymm0,%ymm3
vpunpcklwd %ymm12,%ymm0,%ymm11
vpunpcklwd %ymm13,%ymm0,%ymm28
vpunpcklwd %ymm14,%ymm10,%ymm4
vpunpcklwd %ymm15,%ymm12,%ymm11
vpunpcklwd %ymm11,%ymm13,%ymm29
vpunpcklwd %ymm12,%ymm30,%ymm5
vpunpcklwd %ymm13,%ymm31,%ymm11
vpunpcklwd %ymm14,%ymm22,%ymm24

vpunpcklwd %ymm20,%ymm0,%ymm6
vpunpcklwd %ymm21,%ymm0,%ymm11
vpunpcklwd %ymm22,%ymm0,%ymm30
vpunpcklwd %ymm23,%ymm12,%ymm7
vpunpcklwd %ymm24,%ymm13,%ymm10
vpunpcklwd %ymm25,%ymm14,%ymm31
vpunpcklwd %ymm26,%ymm22,%ymm1
vpunpcklwd %ymm27,%ymm21,%ymm14
vpunpcklwd %ymm28,%ymm20,%ymm29

vpunpcklwd (%r10),             %ymm5, %ymm1
vpunpcklwd (%r10,%r12,1),      %ymm5, %ymm2
vpunpcklwd 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpunpcklwd 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpunpcklwd 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpunpcklwd (%r10),             %ymm5, %ymm10
vpunpcklwd (%r10,%r12,1),      %ymm5, %ymm11
vpunpcklwd 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpunpcklwd 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpunpcklwd 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpunpcklwd (%r10),             %ymm1, %ymm20
vpunpcklwd (%r10,%r12,1),      %ymm2, %ymm31
vpunpcklwd 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpunpcklwd 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpunpcklwd 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpunpcklwd (%r10),             %ymm15, %ymm3
vpunpcklwd (%r10,%r12,1),      %ymm15, %ymm3
vpunpcklwd 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpunpcklwd 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpunpcklwd 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpunpcklwd (%r10),             %ymm14, %ymm10
vpunpcklwd (%r10,%r12,1),      %ymm14, %ymm10
vpunpcklwd 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpunpcklwd 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpunpcklwd 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpunpcklwd (%r10),             %ymm11, %ymm20
vpunpcklwd (%r10,%r12,1),      %ymm12, %ymm31
vpunpcklwd 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpunpcklwd 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpunpcklwd 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpunpcklwd (%r10),             %ymm25, %ymm3
vpunpcklwd (%r10,%r12,1),      %ymm25, %ymm3
vpunpcklwd 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpunpcklwd 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpunpcklwd 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpunpcklwd (%r10),             %ymm24, %ymm10
vpunpcklwd (%r10,%r12,1),      %ymm24, %ymm10
vpunpcklwd 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpunpcklwd 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpunpcklwd 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpunpcklwd (%r10),             %ymm21, %ymm20
vpunpcklwd (%r10,%r12,1),      %ymm22, %ymm31
vpunpcklwd 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpunpcklwd 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpunpcklwd 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpunpcklwd %ymm0,%ymm3,%ymm1
vpunpcklwd %ymm1,%ymm2,%ymm11
vpunpcklwd %ymm2,%ymm1,%ymm22
vpunpcklwd %ymm3,%ymm12,%ymm1
vpunpcklwd %ymm4,%ymm13,%ymm15
vpunpcklwd %ymm5,%ymm14,%ymm23
vpunpcklwd %ymm6,%ymm24,%ymm2
vpunpcklwd %ymm7,%ymm25,%ymm10
vpunpcklwd %ymm0,%ymm26,%ymm27

vpunpcklwd %ymm11,%ymm0,%ymm3
vpunpcklwd %ymm12,%ymm0,%ymm11
vpunpcklwd %ymm13,%ymm0,%ymm28
vpunpcklwd %ymm14,%ymm10,%ymm4
vpunpcklwd %ymm15,%ymm12,%ymm11
vpunpcklwd %ymm11,%ymm13,%ymm29
vpunpcklwd %ymm12,%ymm30,%ymm5
vpunpcklwd %ymm13,%ymm31,%ymm11
vpunpcklwd %ymm14,%ymm22,%ymm24

vpunpcklwd %ymm20,%ymm0,%ymm6
vpunpcklwd %ymm21,%ymm0,%ymm11
vpunpcklwd %ymm22,%ymm0,%ymm30
vpunpcklwd %ymm23,%ymm12,%ymm7
vpunpcklwd %ymm24,%ymm13,%ymm10
vpunpcklwd %ymm25,%ymm14,%ymm31
vpunpcklwd %ymm26,%ymm22,%ymm1
vpunpcklwd %ymm27,%ymm21,%ymm14
vpunpcklwd %ymm28,%ymm20,%ymm29

vpunpcklwd (%r10),             %ymm5, %ymm1
vpunpcklwd (%r10,%r12,1),      %ymm5, %ymm2
vpunpcklwd 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpunpcklwd 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpunpcklwd 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpunpcklwd (%r10),             %ymm5, %ymm10
vpunpcklwd (%r10,%r12,1),      %ymm5, %ymm11
vpunpcklwd 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpunpcklwd 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpunpcklwd 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpunpcklwd (%r10),             %ymm1, %ymm20
vpunpcklwd (%r10,%r12,1),      %ymm2, %ymm31
vpunpcklwd 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpunpcklwd 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpunpcklwd 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpunpcklwd (%r10),             %ymm15, %ymm3
vpunpcklwd (%r10,%r12,1),      %ymm15, %ymm3
vpunpcklwd 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpunpcklwd 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpunpcklwd 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpunpcklwd (%r10),             %ymm14, %ymm10
vpunpcklwd (%r10,%r12,1),      %ymm14, %ymm10
vpunpcklwd 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpunpcklwd 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpunpcklwd 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpunpcklwd (%r10),             %ymm11, %ymm20
vpunpcklwd (%r10,%r12,1),      %ymm12, %ymm31
vpunpcklwd 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpunpcklwd 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpunpcklwd 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpunpcklwd (%r10),             %ymm25, %ymm3
vpunpcklwd (%r10,%r12,1),      %ymm25, %ymm3
vpunpcklwd 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpunpcklwd 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpunpcklwd 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpunpcklwd (%r10),             %ymm24, %ymm10
vpunpcklwd (%r10,%r12,1),      %ymm24, %ymm10
vpunpcklwd 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpunpcklwd 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpunpcklwd 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpunpcklwd (%r10),             %ymm21, %ymm20
vpunpcklwd (%r10,%r12,1),      %ymm22, %ymm31
vpunpcklwd 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpunpcklwd 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpunpcklwd 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpunpcklqdq %xmm0,%xmm3,%xmm1
vpunpcklqdq %xmm1,%xmm2,%xmm11
vpunpcklqdq %xmm2,%xmm1,%xmm22
vpunpcklqdq %xmm3,%xmm12,%xmm1
vpunpcklqdq %xmm4,%xmm13,%xmm15
vpunpcklqdq %xmm5,%xmm14,%xmm23
vpunpcklqdq %xmm6,%xmm24,%xmm2
vpunpcklqdq %xmm7,%xmm25,%xmm10
vpunpcklqdq %xmm0,%xmm26,%xmm27

vpunpcklqdq %xmm11,%xmm0,%xmm3
vpunpcklqdq %xmm12,%xmm0,%xmm11
vpunpcklqdq %xmm13,%xmm0,%xmm28
vpunpcklqdq %xmm14,%xmm10,%xmm4
vpunpcklqdq %xmm15,%xmm12,%xmm11
vpunpcklqdq %xmm11,%xmm13,%xmm29
vpunpcklqdq %xmm12,%xmm30,%xmm5
vpunpcklqdq %xmm13,%xmm31,%xmm11
vpunpcklqdq %xmm14,%xmm22,%xmm24

vpunpcklqdq %xmm20,%xmm0,%xmm6
vpunpcklqdq %xmm21,%xmm0,%xmm11
vpunpcklqdq %xmm22,%xmm0,%xmm30
vpunpcklqdq %xmm23,%xmm12,%xmm7
vpunpcklqdq %xmm24,%xmm13,%xmm10
vpunpcklqdq %xmm25,%xmm14,%xmm31
vpunpcklqdq %xmm26,%xmm22,%xmm1
vpunpcklqdq %xmm27,%xmm21,%xmm14
vpunpcklqdq %xmm28,%xmm20,%xmm29

vpunpcklqdq (%r10),             %xmm5, %xmm1
vpunpcklqdq (%r10,%r12,1),      %xmm5, %xmm2
vpunpcklqdq 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpunpcklqdq 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpunpcklqdq 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpunpcklqdq (%r10),             %xmm5, %xmm10
vpunpcklqdq (%r10,%r12,1),      %xmm5, %xmm11
vpunpcklqdq 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpunpcklqdq 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpunpcklqdq 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpunpcklqdq (%r10),             %xmm1, %xmm20
vpunpcklqdq (%r10,%r12,1),      %xmm2, %xmm31
vpunpcklqdq 0x10(%r10,%r12,1),  %xmm3, %xmm30
vpunpcklqdq 0x11(%r10,%r12,2),  %xmm4, %xmm25
vpunpcklqdq 0x3567(%r10,%r12,4),%xmm5, %xmm29

vpunpcklqdq (%r10),             %xmm15, %xmm3
vpunpcklqdq (%r10,%r12,1),      %xmm15, %xmm3
vpunpcklqdq 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpunpcklqdq 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpunpcklqdq 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpunpcklqdq (%r10),             %xmm14, %xmm10
vpunpcklqdq (%r10,%r12,1),      %xmm14, %xmm10
vpunpcklqdq 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpunpcklqdq 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpunpcklqdq 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpunpcklqdq (%r10),             %xmm11, %xmm20
vpunpcklqdq (%r10,%r12,1),      %xmm12, %xmm31
vpunpcklqdq 0x10(%r10,%r12,1),  %xmm13, %xmm30
vpunpcklqdq 0x11(%r10,%r12,2),  %xmm14, %xmm25
vpunpcklqdq 0x3567(%r10,%r12,4),%xmm15, %xmm29

vpunpcklqdq (%r10),             %xmm25, %xmm3
vpunpcklqdq (%r10,%r12,1),      %xmm25, %xmm3
vpunpcklqdq 0x10(%r10,%r12,1),  %xmm24, %xmm3
vpunpcklqdq 0x11(%r10,%r12,2),  %xmm24, %xmm3
vpunpcklqdq 0x3567(%r10,%r12,4),%xmm23, %xmm3

vpunpcklqdq (%r10),             %xmm24, %xmm10
vpunpcklqdq (%r10,%r12,1),      %xmm24, %xmm10
vpunpcklqdq 0x10(%r10,%r12,1),  %xmm25, %xmm10
vpunpcklqdq 0x11(%r10,%r12,2),  %xmm21, %xmm10
vpunpcklqdq 0x3567(%r10,%r12,4),%xmm21, %xmm10

vpunpcklqdq (%r10),             %xmm21, %xmm20
vpunpcklqdq (%r10,%r12,1),      %xmm22, %xmm31
vpunpcklqdq 0x10(%r10,%r12,1),  %xmm23, %xmm30
vpunpcklqdq 0x11(%r10,%r12,2),  %xmm24, %xmm25
vpunpcklqdq 0x3567(%r10,%r12,4),%xmm25, %xmm29

vpunpcklqdq %ymm0,%ymm3,%ymm1
vpunpcklqdq %ymm1,%ymm2,%ymm11
vpunpcklqdq %ymm2,%ymm1,%ymm22
vpunpcklqdq %ymm3,%ymm12,%ymm1
vpunpcklqdq %ymm4,%ymm13,%ymm15
vpunpcklqdq %ymm5,%ymm14,%ymm23
vpunpcklqdq %ymm6,%ymm24,%ymm2
vpunpcklqdq %ymm7,%ymm25,%ymm10
vpunpcklqdq %ymm0,%ymm26,%ymm27

vpunpcklqdq %ymm11,%ymm0,%ymm3
vpunpcklqdq %ymm12,%ymm0,%ymm11
vpunpcklqdq %ymm13,%ymm0,%ymm28
vpunpcklqdq %ymm14,%ymm10,%ymm4
vpunpcklqdq %ymm15,%ymm12,%ymm11
vpunpcklqdq %ymm11,%ymm13,%ymm29
vpunpcklqdq %ymm12,%ymm30,%ymm5
vpunpcklqdq %ymm13,%ymm31,%ymm11
vpunpcklqdq %ymm14,%ymm22,%ymm24

vpunpcklqdq %ymm20,%ymm0,%ymm6
vpunpcklqdq %ymm21,%ymm0,%ymm11
vpunpcklqdq %ymm22,%ymm0,%ymm30
vpunpcklqdq %ymm23,%ymm12,%ymm7
vpunpcklqdq %ymm24,%ymm13,%ymm10
vpunpcklqdq %ymm25,%ymm14,%ymm31
vpunpcklqdq %ymm26,%ymm22,%ymm1
vpunpcklqdq %ymm27,%ymm21,%ymm14
vpunpcklqdq %ymm28,%ymm20,%ymm29

vpunpcklqdq (%r10),             %ymm5, %ymm1
vpunpcklqdq (%r10,%r12,1),      %ymm5, %ymm2
vpunpcklqdq 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpunpcklqdq 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpunpcklqdq 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpunpcklqdq (%r10),             %ymm5, %ymm10
vpunpcklqdq (%r10,%r12,1),      %ymm5, %ymm11
vpunpcklqdq 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpunpcklqdq 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpunpcklqdq 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpunpcklqdq (%r10),             %ymm1, %ymm20
vpunpcklqdq (%r10,%r12,1),      %ymm2, %ymm31
vpunpcklqdq 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpunpcklqdq 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpunpcklqdq 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpunpcklqdq (%r10),             %ymm15, %ymm3
vpunpcklqdq (%r10,%r12,1),      %ymm15, %ymm3
vpunpcklqdq 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpunpcklqdq 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpunpcklqdq 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpunpcklqdq (%r10),             %ymm14, %ymm10
vpunpcklqdq (%r10,%r12,1),      %ymm14, %ymm10
vpunpcklqdq 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpunpcklqdq 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpunpcklqdq 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpunpcklqdq (%r10),             %ymm11, %ymm20
vpunpcklqdq (%r10,%r12,1),      %ymm12, %ymm31
vpunpcklqdq 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpunpcklqdq 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpunpcklqdq 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpunpcklqdq (%r10),             %ymm25, %ymm3
vpunpcklqdq (%r10,%r12,1),      %ymm25, %ymm3
vpunpcklqdq 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpunpcklqdq 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpunpcklqdq 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpunpcklqdq (%r10),             %ymm24, %ymm10
vpunpcklqdq (%r10,%r12,1),      %ymm24, %ymm10
vpunpcklqdq 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpunpcklqdq 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpunpcklqdq 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpunpcklqdq (%r10),             %ymm21, %ymm20
vpunpcklqdq (%r10,%r12,1),      %ymm22, %ymm31
vpunpcklqdq 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpunpcklqdq 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpunpcklqdq 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpunpcklqdq %ymm0,%ymm3,%ymm1
vpunpcklqdq %ymm1,%ymm2,%ymm11
vpunpcklqdq %ymm2,%ymm1,%ymm22
vpunpcklqdq %ymm3,%ymm12,%ymm1
vpunpcklqdq %ymm4,%ymm13,%ymm15
vpunpcklqdq %ymm5,%ymm14,%ymm23
vpunpcklqdq %ymm6,%ymm24,%ymm2
vpunpcklqdq %ymm7,%ymm25,%ymm10
vpunpcklqdq %ymm0,%ymm26,%ymm27

vpunpcklqdq %ymm11,%ymm0,%ymm3
vpunpcklqdq %ymm12,%ymm0,%ymm11
vpunpcklqdq %ymm13,%ymm0,%ymm28
vpunpcklqdq %ymm14,%ymm10,%ymm4
vpunpcklqdq %ymm15,%ymm12,%ymm11
vpunpcklqdq %ymm11,%ymm13,%ymm29
vpunpcklqdq %ymm12,%ymm30,%ymm5
vpunpcklqdq %ymm13,%ymm31,%ymm11
vpunpcklqdq %ymm14,%ymm22,%ymm24

vpunpcklqdq %ymm20,%ymm0,%ymm6
vpunpcklqdq %ymm21,%ymm0,%ymm11
vpunpcklqdq %ymm22,%ymm0,%ymm30
vpunpcklqdq %ymm23,%ymm12,%ymm7
vpunpcklqdq %ymm24,%ymm13,%ymm10
vpunpcklqdq %ymm25,%ymm14,%ymm31
vpunpcklqdq %ymm26,%ymm22,%ymm1
vpunpcklqdq %ymm27,%ymm21,%ymm14
vpunpcklqdq %ymm28,%ymm20,%ymm29

vpunpcklqdq (%r10),             %ymm5, %ymm1
vpunpcklqdq (%r10,%r12,1),      %ymm5, %ymm2
vpunpcklqdq 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpunpcklqdq 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpunpcklqdq 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpunpcklqdq (%r10),             %ymm5, %ymm10
vpunpcklqdq (%r10,%r12,1),      %ymm5, %ymm11
vpunpcklqdq 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpunpcklqdq 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpunpcklqdq 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpunpcklqdq (%r10),             %ymm1, %ymm20
vpunpcklqdq (%r10,%r12,1),      %ymm2, %ymm31
vpunpcklqdq 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpunpcklqdq 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpunpcklqdq 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpunpcklqdq (%r10),             %ymm15, %ymm3
vpunpcklqdq (%r10,%r12,1),      %ymm15, %ymm3
vpunpcklqdq 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpunpcklqdq 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpunpcklqdq 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpunpcklqdq (%r10),             %ymm14, %ymm10
vpunpcklqdq (%r10,%r12,1),      %ymm14, %ymm10
vpunpcklqdq 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpunpcklqdq 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpunpcklqdq 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpunpcklqdq (%r10),             %ymm11, %ymm20
vpunpcklqdq (%r10,%r12,1),      %ymm12, %ymm31
vpunpcklqdq 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpunpcklqdq 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpunpcklqdq 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpunpcklqdq (%r10),             %ymm25, %ymm3
vpunpcklqdq (%r10,%r12,1),      %ymm25, %ymm3
vpunpcklqdq 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpunpcklqdq 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpunpcklqdq 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpunpcklqdq (%r10),             %ymm24, %ymm10
vpunpcklqdq (%r10,%r12,1),      %ymm24, %ymm10
vpunpcklqdq 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpunpcklqdq 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpunpcklqdq 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpunpcklqdq (%r10),             %ymm21, %ymm20
vpunpcklqdq (%r10,%r12,1),      %ymm22, %ymm31
vpunpcklqdq 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpunpcklqdq 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpunpcklqdq 0x3567(%r10,%r12,4),%ymm25, %ymm29


vpunpcklbw %zmm0,%zmm3,%zmm1
vpunpcklbw %zmm1,%zmm2,%zmm11
vpunpcklbw %zmm2,%zmm1,%zmm22
vpunpcklbw %zmm3,%zmm12,%zmm1
vpunpcklbw %zmm4,%zmm13,%zmm15
vpunpcklbw %zmm5,%zmm14,%zmm23
vpunpcklbw %zmm6,%zmm24,%zmm2
vpunpcklbw %zmm7,%zmm25,%zmm10
vpunpcklbw %zmm0,%zmm26,%zmm27

vpunpcklbw %zmm11,%zmm0,%zmm3
vpunpcklbw %zmm12,%zmm0,%zmm11
vpunpcklbw %zmm13,%zmm0,%zmm28
vpunpcklbw %zmm14,%zmm10,%zmm4
vpunpcklbw %zmm15,%zmm12,%zmm11
vpunpcklbw %zmm11,%zmm13,%zmm29
vpunpcklbw %zmm12,%zmm30,%zmm5
vpunpcklbw %zmm13,%zmm31,%zmm11
vpunpcklbw %zmm14,%zmm22,%zmm24

vpunpcklbw %zmm20,%zmm0,%zmm6
vpunpcklbw %zmm21,%zmm0,%zmm11
vpunpcklbw %zmm22,%zmm0,%zmm30
vpunpcklbw %zmm23,%zmm12,%zmm7
vpunpcklbw %zmm24,%zmm13,%zmm10
vpunpcklbw %zmm25,%zmm14,%zmm31
vpunpcklbw %zmm26,%zmm22,%zmm1
vpunpcklbw %zmm27,%zmm21,%zmm14
vpunpcklbw %zmm28,%zmm20,%zmm29

vpunpcklbw (%r10),             %zmm5, %zmm1
vpunpcklbw (%r10,%r12,1),      %zmm5, %zmm2
vpunpcklbw 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpunpcklbw 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpunpcklbw 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpunpcklbw (%r10),             %zmm5, %zmm10
vpunpcklbw (%r10,%r12,1),      %zmm5, %zmm11
vpunpcklbw 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpunpcklbw 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpunpcklbw 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpunpcklbw (%r10),             %zmm1, %zmm20
vpunpcklbw (%r10,%r12,1),      %zmm2, %zmm31
vpunpcklbw 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpunpcklbw 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpunpcklbw 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpunpcklbw (%r10),             %zmm15, %zmm3
vpunpcklbw (%r10,%r12,1),      %zmm15, %zmm3
vpunpcklbw 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpunpcklbw 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpunpcklbw 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpunpcklbw (%r10),             %zmm14, %zmm10
vpunpcklbw (%r10,%r12,1),      %zmm14, %zmm10
vpunpcklbw 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpunpcklbw 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpunpcklbw 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpunpcklbw (%r10),             %zmm11, %zmm20
vpunpcklbw (%r10,%r12,1),      %zmm12, %zmm31
vpunpcklbw 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpunpcklbw 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpunpcklbw 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpunpcklbw (%r10),             %zmm25, %zmm3
vpunpcklbw (%r10,%r12,1),      %zmm25, %zmm3
vpunpcklbw 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpunpcklbw 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpunpcklbw 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpunpcklbw (%r10),             %zmm24, %zmm10
vpunpcklbw (%r10,%r12,1),      %zmm24, %zmm10
vpunpcklbw 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpunpcklbw 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpunpcklbw 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpunpcklbw (%r10),             %zmm21, %zmm20
vpunpcklbw (%r10,%r12,1),      %zmm22, %zmm31
vpunpcklbw 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpunpcklbw 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpunpcklbw 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpunpcklbw %zmm0,%zmm3,%zmm1
vpunpcklbw %zmm1,%zmm2,%zmm11
vpunpcklbw %zmm2,%zmm1,%zmm22
vpunpcklbw %zmm3,%zmm12,%zmm1
vpunpcklbw %zmm4,%zmm13,%zmm15
vpunpcklbw %zmm5,%zmm14,%zmm23
vpunpcklbw %zmm6,%zmm24,%zmm2
vpunpcklbw %zmm7,%zmm25,%zmm10
vpunpcklbw %zmm0,%zmm26,%zmm27

vpunpcklbw %zmm11,%zmm0,%zmm3
vpunpcklbw %zmm12,%zmm0,%zmm11
vpunpcklbw %zmm13,%zmm0,%zmm28
vpunpcklbw %zmm14,%zmm10,%zmm4
vpunpcklbw %zmm15,%zmm12,%zmm11
vpunpcklbw %zmm11,%zmm13,%zmm29
vpunpcklbw %zmm12,%zmm30,%zmm5
vpunpcklbw %zmm13,%zmm31,%zmm11
vpunpcklbw %zmm14,%zmm22,%zmm24

vpunpcklbw %zmm20,%zmm0,%zmm6
vpunpcklbw %zmm21,%zmm0,%zmm11
vpunpcklbw %zmm22,%zmm0,%zmm30
vpunpcklbw %zmm23,%zmm12,%zmm7
vpunpcklbw %zmm24,%zmm13,%zmm10
vpunpcklbw %zmm25,%zmm14,%zmm31
vpunpcklbw %zmm26,%zmm22,%zmm1
vpunpcklbw %zmm27,%zmm21,%zmm14
vpunpcklbw %zmm28,%zmm20,%zmm29

vpunpcklbw (%r10),             %zmm5, %zmm1
vpunpcklbw (%r10,%r12,1),      %zmm5, %zmm2
vpunpcklbw 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpunpcklbw 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpunpcklbw 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpunpcklbw (%r10),             %zmm5, %zmm10
vpunpcklbw (%r10,%r12,1),      %zmm5, %zmm11
vpunpcklbw 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpunpcklbw 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpunpcklbw 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpunpcklbw (%r10),             %zmm1, %zmm20
vpunpcklbw (%r10,%r12,1),      %zmm2, %zmm31
vpunpcklbw 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpunpcklbw 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpunpcklbw 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpunpcklbw (%r10),             %zmm15, %zmm3
vpunpcklbw (%r10,%r12,1),      %zmm15, %zmm3
vpunpcklbw 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpunpcklbw 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpunpcklbw 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpunpcklbw (%r10),             %zmm14, %zmm10
vpunpcklbw (%r10,%r12,1),      %zmm14, %zmm10
vpunpcklbw 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpunpcklbw 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpunpcklbw 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpunpcklbw (%r10),             %zmm11, %zmm20
vpunpcklbw (%r10,%r12,1),      %zmm12, %zmm31
vpunpcklbw 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpunpcklbw 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpunpcklbw 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpunpcklbw (%r10),             %zmm25, %zmm3
vpunpcklbw (%r10,%r12,1),      %zmm25, %zmm3
vpunpcklbw 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpunpcklbw 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpunpcklbw 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpunpcklbw (%r10),             %zmm24, %zmm10
vpunpcklbw (%r10,%r12,1),      %zmm24, %zmm10
vpunpcklbw 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpunpcklbw 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpunpcklbw 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpunpcklbw (%r10),             %zmm21, %zmm20
vpunpcklbw (%r10,%r12,1),      %zmm22, %zmm31
vpunpcklbw 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpunpcklbw 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpunpcklbw 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpunpckldq %zmm0,%zmm3,%zmm1
vpunpckldq %zmm1,%zmm2,%zmm11
vpunpckldq %zmm2,%zmm1,%zmm22
vpunpckldq %zmm3,%zmm12,%zmm1
vpunpckldq %zmm4,%zmm13,%zmm15
vpunpckldq %zmm5,%zmm14,%zmm23
vpunpckldq %zmm6,%zmm24,%zmm2
vpunpckldq %zmm7,%zmm25,%zmm10
vpunpckldq %zmm0,%zmm26,%zmm27

vpunpckldq %zmm11,%zmm0,%zmm3
vpunpckldq %zmm12,%zmm0,%zmm11
vpunpckldq %zmm13,%zmm0,%zmm28
vpunpckldq %zmm14,%zmm10,%zmm4
vpunpckldq %zmm15,%zmm12,%zmm11
vpunpckldq %zmm11,%zmm13,%zmm29
vpunpckldq %zmm12,%zmm30,%zmm5
vpunpckldq %zmm13,%zmm31,%zmm11
vpunpckldq %zmm14,%zmm22,%zmm24

vpunpckldq %zmm20,%zmm0,%zmm6
vpunpckldq %zmm21,%zmm0,%zmm11
vpunpckldq %zmm22,%zmm0,%zmm30
vpunpckldq %zmm23,%zmm12,%zmm7
vpunpckldq %zmm24,%zmm13,%zmm10
vpunpckldq %zmm25,%zmm14,%zmm31
vpunpckldq %zmm26,%zmm22,%zmm1
vpunpckldq %zmm27,%zmm21,%zmm14
vpunpckldq %zmm28,%zmm20,%zmm29

vpunpckldq (%r10),             %zmm5, %zmm1
vpunpckldq (%r10,%r12,1),      %zmm5, %zmm2
vpunpckldq 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpunpckldq 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpunpckldq 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpunpckldq (%r10),             %zmm5, %zmm10
vpunpckldq (%r10,%r12,1),      %zmm5, %zmm11
vpunpckldq 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpunpckldq 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpunpckldq 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpunpckldq (%r10),             %zmm1, %zmm20
vpunpckldq (%r10,%r12,1),      %zmm2, %zmm31
vpunpckldq 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpunpckldq 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpunpckldq 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpunpckldq (%r10),             %zmm15, %zmm3
vpunpckldq (%r10,%r12,1),      %zmm15, %zmm3
vpunpckldq 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpunpckldq 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpunpckldq 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpunpckldq (%r10),             %zmm14, %zmm10
vpunpckldq (%r10,%r12,1),      %zmm14, %zmm10
vpunpckldq 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpunpckldq 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpunpckldq 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpunpckldq (%r10),             %zmm11, %zmm20
vpunpckldq (%r10,%r12,1),      %zmm12, %zmm31
vpunpckldq 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpunpckldq 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpunpckldq 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpunpckldq (%r10),             %zmm25, %zmm3
vpunpckldq (%r10,%r12,1),      %zmm25, %zmm3
vpunpckldq 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpunpckldq 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpunpckldq 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpunpckldq (%r10),             %zmm24, %zmm10
vpunpckldq (%r10,%r12,1),      %zmm24, %zmm10
vpunpckldq 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpunpckldq 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpunpckldq 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpunpckldq (%r10),             %zmm21, %zmm20
vpunpckldq (%r10,%r12,1),      %zmm22, %zmm31
vpunpckldq 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpunpckldq 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpunpckldq 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpunpckldq %zmm0,%zmm3,%zmm1
vpunpckldq %zmm1,%zmm2,%zmm11
vpunpckldq %zmm2,%zmm1,%zmm22
vpunpckldq %zmm3,%zmm12,%zmm1
vpunpckldq %zmm4,%zmm13,%zmm15
vpunpckldq %zmm5,%zmm14,%zmm23
vpunpckldq %zmm6,%zmm24,%zmm2
vpunpckldq %zmm7,%zmm25,%zmm10
vpunpckldq %zmm0,%zmm26,%zmm27

vpunpckldq %zmm11,%zmm0,%zmm3
vpunpckldq %zmm12,%zmm0,%zmm11
vpunpckldq %zmm13,%zmm0,%zmm28
vpunpckldq %zmm14,%zmm10,%zmm4
vpunpckldq %zmm15,%zmm12,%zmm11
vpunpckldq %zmm11,%zmm13,%zmm29
vpunpckldq %zmm12,%zmm30,%zmm5
vpunpckldq %zmm13,%zmm31,%zmm11
vpunpckldq %zmm14,%zmm22,%zmm24

vpunpckldq %zmm20,%zmm0,%zmm6
vpunpckldq %zmm21,%zmm0,%zmm11
vpunpckldq %zmm22,%zmm0,%zmm30
vpunpckldq %zmm23,%zmm12,%zmm7
vpunpckldq %zmm24,%zmm13,%zmm10
vpunpckldq %zmm25,%zmm14,%zmm31
vpunpckldq %zmm26,%zmm22,%zmm1
vpunpckldq %zmm27,%zmm21,%zmm14
vpunpckldq %zmm28,%zmm20,%zmm29

vpunpckldq (%r10),             %zmm5, %zmm1
vpunpckldq (%r10,%r12,1),      %zmm5, %zmm2
vpunpckldq 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpunpckldq 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpunpckldq 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpunpckldq (%r10),             %zmm5, %zmm10
vpunpckldq (%r10,%r12,1),      %zmm5, %zmm11
vpunpckldq 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpunpckldq 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpunpckldq 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpunpckldq (%r10),             %zmm1, %zmm20
vpunpckldq (%r10,%r12,1),      %zmm2, %zmm31
vpunpckldq 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpunpckldq 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpunpckldq 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpunpckldq (%r10),             %zmm15, %zmm3
vpunpckldq (%r10,%r12,1),      %zmm15, %zmm3
vpunpckldq 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpunpckldq 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpunpckldq 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpunpckldq (%r10),             %zmm14, %zmm10
vpunpckldq (%r10,%r12,1),      %zmm14, %zmm10
vpunpckldq 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpunpckldq 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpunpckldq 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpunpckldq (%r10),             %zmm11, %zmm20
vpunpckldq (%r10,%r12,1),      %zmm12, %zmm31
vpunpckldq 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpunpckldq 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpunpckldq 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpunpckldq (%r10),             %zmm25, %zmm3
vpunpckldq (%r10,%r12,1),      %zmm25, %zmm3
vpunpckldq 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpunpckldq 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpunpckldq 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpunpckldq (%r10),             %zmm24, %zmm10
vpunpckldq (%r10,%r12,1),      %zmm24, %zmm10
vpunpckldq 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpunpckldq 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpunpckldq 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpunpckldq (%r10),             %zmm21, %zmm20
vpunpckldq (%r10,%r12,1),      %zmm22, %zmm31
vpunpckldq 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpunpckldq 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpunpckldq 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpunpcklwd %zmm0,%zmm3,%zmm1
vpunpcklwd %zmm1,%zmm2,%zmm11
vpunpcklwd %zmm2,%zmm1,%zmm22
vpunpcklwd %zmm3,%zmm12,%zmm1
vpunpcklwd %zmm4,%zmm13,%zmm15
vpunpcklwd %zmm5,%zmm14,%zmm23
vpunpcklwd %zmm6,%zmm24,%zmm2
vpunpcklwd %zmm7,%zmm25,%zmm10
vpunpcklwd %zmm0,%zmm26,%zmm27

vpunpcklwd %zmm11,%zmm0,%zmm3
vpunpcklwd %zmm12,%zmm0,%zmm11
vpunpcklwd %zmm13,%zmm0,%zmm28
vpunpcklwd %zmm14,%zmm10,%zmm4
vpunpcklwd %zmm15,%zmm12,%zmm11
vpunpcklwd %zmm11,%zmm13,%zmm29
vpunpcklwd %zmm12,%zmm30,%zmm5
vpunpcklwd %zmm13,%zmm31,%zmm11
vpunpcklwd %zmm14,%zmm22,%zmm24

vpunpcklwd %zmm20,%zmm0,%zmm6
vpunpcklwd %zmm21,%zmm0,%zmm11
vpunpcklwd %zmm22,%zmm0,%zmm30
vpunpcklwd %zmm23,%zmm12,%zmm7
vpunpcklwd %zmm24,%zmm13,%zmm10
vpunpcklwd %zmm25,%zmm14,%zmm31
vpunpcklwd %zmm26,%zmm22,%zmm1
vpunpcklwd %zmm27,%zmm21,%zmm14
vpunpcklwd %zmm28,%zmm20,%zmm29

vpunpcklwd (%r10),             %zmm5, %zmm1
vpunpcklwd (%r10,%r12,1),      %zmm5, %zmm2
vpunpcklwd 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpunpcklwd 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpunpcklwd 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpunpcklwd (%r10),             %zmm5, %zmm10
vpunpcklwd (%r10,%r12,1),      %zmm5, %zmm11
vpunpcklwd 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpunpcklwd 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpunpcklwd 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpunpcklwd (%r10),             %zmm1, %zmm20
vpunpcklwd (%r10,%r12,1),      %zmm2, %zmm31
vpunpcklwd 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpunpcklwd 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpunpcklwd 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpunpcklwd (%r10),             %zmm15, %zmm3
vpunpcklwd (%r10,%r12,1),      %zmm15, %zmm3
vpunpcklwd 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpunpcklwd 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpunpcklwd 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpunpcklwd (%r10),             %zmm14, %zmm10
vpunpcklwd (%r10,%r12,1),      %zmm14, %zmm10
vpunpcklwd 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpunpcklwd 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpunpcklwd 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpunpcklwd (%r10),             %zmm11, %zmm20
vpunpcklwd (%r10,%r12,1),      %zmm12, %zmm31
vpunpcklwd 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpunpcklwd 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpunpcklwd 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpunpcklwd (%r10),             %zmm25, %zmm3
vpunpcklwd (%r10,%r12,1),      %zmm25, %zmm3
vpunpcklwd 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpunpcklwd 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpunpcklwd 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpunpcklwd (%r10),             %zmm24, %zmm10
vpunpcklwd (%r10,%r12,1),      %zmm24, %zmm10
vpunpcklwd 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpunpcklwd 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpunpcklwd 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpunpcklwd (%r10),             %zmm21, %zmm20
vpunpcklwd (%r10,%r12,1),      %zmm22, %zmm31
vpunpcklwd 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpunpcklwd 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpunpcklwd 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpunpcklwd %zmm0,%zmm3,%zmm1
vpunpcklwd %zmm1,%zmm2,%zmm11
vpunpcklwd %zmm2,%zmm1,%zmm22
vpunpcklwd %zmm3,%zmm12,%zmm1
vpunpcklwd %zmm4,%zmm13,%zmm15
vpunpcklwd %zmm5,%zmm14,%zmm23
vpunpcklwd %zmm6,%zmm24,%zmm2
vpunpcklwd %zmm7,%zmm25,%zmm10
vpunpcklwd %zmm0,%zmm26,%zmm27

vpunpcklwd %zmm11,%zmm0,%zmm3
vpunpcklwd %zmm12,%zmm0,%zmm11
vpunpcklwd %zmm13,%zmm0,%zmm28
vpunpcklwd %zmm14,%zmm10,%zmm4
vpunpcklwd %zmm15,%zmm12,%zmm11
vpunpcklwd %zmm11,%zmm13,%zmm29
vpunpcklwd %zmm12,%zmm30,%zmm5
vpunpcklwd %zmm13,%zmm31,%zmm11
vpunpcklwd %zmm14,%zmm22,%zmm24

vpunpcklwd %zmm20,%zmm0,%zmm6
vpunpcklwd %zmm21,%zmm0,%zmm11
vpunpcklwd %zmm22,%zmm0,%zmm30
vpunpcklwd %zmm23,%zmm12,%zmm7
vpunpcklwd %zmm24,%zmm13,%zmm10
vpunpcklwd %zmm25,%zmm14,%zmm31
vpunpcklwd %zmm26,%zmm22,%zmm1
vpunpcklwd %zmm27,%zmm21,%zmm14
vpunpcklwd %zmm28,%zmm20,%zmm29

vpunpcklwd (%r10),             %zmm5, %zmm1
vpunpcklwd (%r10,%r12,1),      %zmm5, %zmm2
vpunpcklwd 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpunpcklwd 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpunpcklwd 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpunpcklwd (%r10),             %zmm5, %zmm10
vpunpcklwd (%r10,%r12,1),      %zmm5, %zmm11
vpunpcklwd 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpunpcklwd 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpunpcklwd 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpunpcklwd (%r10),             %zmm1, %zmm20
vpunpcklwd (%r10,%r12,1),      %zmm2, %zmm31
vpunpcklwd 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpunpcklwd 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpunpcklwd 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpunpcklwd (%r10),             %zmm15, %zmm3
vpunpcklwd (%r10,%r12,1),      %zmm15, %zmm3
vpunpcklwd 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpunpcklwd 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpunpcklwd 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpunpcklwd (%r10),             %zmm14, %zmm10
vpunpcklwd (%r10,%r12,1),      %zmm14, %zmm10
vpunpcklwd 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpunpcklwd 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpunpcklwd 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpunpcklwd (%r10),             %zmm11, %zmm20
vpunpcklwd (%r10,%r12,1),      %zmm12, %zmm31
vpunpcklwd 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpunpcklwd 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpunpcklwd 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpunpcklwd (%r10),             %zmm25, %zmm3
vpunpcklwd (%r10,%r12,1),      %zmm25, %zmm3
vpunpcklwd 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpunpcklwd 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpunpcklwd 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpunpcklwd (%r10),             %zmm24, %zmm10
vpunpcklwd (%r10,%r12,1),      %zmm24, %zmm10
vpunpcklwd 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpunpcklwd 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpunpcklwd 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpunpcklwd (%r10),             %zmm21, %zmm20
vpunpcklwd (%r10,%r12,1),      %zmm22, %zmm31
vpunpcklwd 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpunpcklwd 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpunpcklwd 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpunpcklqdq %zmm0,%zmm3,%zmm1
vpunpcklqdq %zmm1,%zmm2,%zmm11
vpunpcklqdq %zmm2,%zmm1,%zmm22
vpunpcklqdq %zmm3,%zmm12,%zmm1
vpunpcklqdq %zmm4,%zmm13,%zmm15
vpunpcklqdq %zmm5,%zmm14,%zmm23
vpunpcklqdq %zmm6,%zmm24,%zmm2
vpunpcklqdq %zmm7,%zmm25,%zmm10
vpunpcklqdq %zmm0,%zmm26,%zmm27

vpunpcklqdq %zmm11,%zmm0,%zmm3
vpunpcklqdq %zmm12,%zmm0,%zmm11
vpunpcklqdq %zmm13,%zmm0,%zmm28
vpunpcklqdq %zmm14,%zmm10,%zmm4
vpunpcklqdq %zmm15,%zmm12,%zmm11
vpunpcklqdq %zmm11,%zmm13,%zmm29
vpunpcklqdq %zmm12,%zmm30,%zmm5
vpunpcklqdq %zmm13,%zmm31,%zmm11
vpunpcklqdq %zmm14,%zmm22,%zmm24

vpunpcklqdq %zmm20,%zmm0,%zmm6
vpunpcklqdq %zmm21,%zmm0,%zmm11
vpunpcklqdq %zmm22,%zmm0,%zmm30
vpunpcklqdq %zmm23,%zmm12,%zmm7
vpunpcklqdq %zmm24,%zmm13,%zmm10
vpunpcklqdq %zmm25,%zmm14,%zmm31
vpunpcklqdq %zmm26,%zmm22,%zmm1
vpunpcklqdq %zmm27,%zmm21,%zmm14
vpunpcklqdq %zmm28,%zmm20,%zmm29

vpunpcklqdq (%r10),             %zmm5, %zmm1
vpunpcklqdq (%r10,%r12,1),      %zmm5, %zmm2
vpunpcklqdq 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpunpcklqdq 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpunpcklqdq 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpunpcklqdq (%r10),             %zmm5, %zmm10
vpunpcklqdq (%r10,%r12,1),      %zmm5, %zmm11
vpunpcklqdq 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpunpcklqdq 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpunpcklqdq 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpunpcklqdq (%r10),             %zmm1, %zmm20
vpunpcklqdq (%r10,%r12,1),      %zmm2, %zmm31
vpunpcklqdq 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpunpcklqdq 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpunpcklqdq 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpunpcklqdq (%r10),             %zmm15, %zmm3
vpunpcklqdq (%r10,%r12,1),      %zmm15, %zmm3
vpunpcklqdq 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpunpcklqdq 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpunpcklqdq 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpunpcklqdq (%r10),             %zmm14, %zmm10
vpunpcklqdq (%r10,%r12,1),      %zmm14, %zmm10
vpunpcklqdq 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpunpcklqdq 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpunpcklqdq 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpunpcklqdq (%r10),             %zmm11, %zmm20
vpunpcklqdq (%r10,%r12,1),      %zmm12, %zmm31
vpunpcklqdq 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpunpcklqdq 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpunpcklqdq 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpunpcklqdq (%r10),             %zmm25, %zmm3
vpunpcklqdq (%r10,%r12,1),      %zmm25, %zmm3
vpunpcklqdq 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpunpcklqdq 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpunpcklqdq 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpunpcklqdq (%r10),             %zmm24, %zmm10
vpunpcklqdq (%r10,%r12,1),      %zmm24, %zmm10
vpunpcklqdq 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpunpcklqdq 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpunpcklqdq 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpunpcklqdq (%r10),             %zmm21, %zmm20
vpunpcklqdq (%r10,%r12,1),      %zmm22, %zmm31
vpunpcklqdq 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpunpcklqdq 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpunpcklqdq 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpunpcklqdq %zmm0,%zmm3,%zmm1
vpunpcklqdq %zmm1,%zmm2,%zmm11
vpunpcklqdq %zmm2,%zmm1,%zmm22
vpunpcklqdq %zmm3,%zmm12,%zmm1
vpunpcklqdq %zmm4,%zmm13,%zmm15
vpunpcklqdq %zmm5,%zmm14,%zmm23
vpunpcklqdq %zmm6,%zmm24,%zmm2
vpunpcklqdq %zmm7,%zmm25,%zmm10
vpunpcklqdq %zmm0,%zmm26,%zmm27

vpunpcklqdq %zmm11,%zmm0,%zmm3
vpunpcklqdq %zmm12,%zmm0,%zmm11
vpunpcklqdq %zmm13,%zmm0,%zmm28
vpunpcklqdq %zmm14,%zmm10,%zmm4
vpunpcklqdq %zmm15,%zmm12,%zmm11
vpunpcklqdq %zmm11,%zmm13,%zmm29
vpunpcklqdq %zmm12,%zmm30,%zmm5
vpunpcklqdq %zmm13,%zmm31,%zmm11
vpunpcklqdq %zmm14,%zmm22,%zmm24

vpunpcklqdq %zmm20,%zmm0,%zmm6
vpunpcklqdq %zmm21,%zmm0,%zmm11
vpunpcklqdq %zmm22,%zmm0,%zmm30
vpunpcklqdq %zmm23,%zmm12,%zmm7
vpunpcklqdq %zmm24,%zmm13,%zmm10
vpunpcklqdq %zmm25,%zmm14,%zmm31
vpunpcklqdq %zmm26,%zmm22,%zmm1
vpunpcklqdq %zmm27,%zmm21,%zmm14
vpunpcklqdq %zmm28,%zmm20,%zmm29

vpunpcklqdq (%r10),             %zmm5, %zmm1
vpunpcklqdq (%r10,%r12,1),      %zmm5, %zmm2
vpunpcklqdq 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpunpcklqdq 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpunpcklqdq 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpunpcklqdq (%r10),             %zmm5, %zmm10
vpunpcklqdq (%r10,%r12,1),      %zmm5, %zmm11
vpunpcklqdq 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpunpcklqdq 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpunpcklqdq 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpunpcklqdq (%r10),             %zmm1, %zmm20
vpunpcklqdq (%r10,%r12,1),      %zmm2, %zmm31
vpunpcklqdq 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpunpcklqdq 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpunpcklqdq 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpunpcklqdq (%r10),             %zmm15, %zmm3
vpunpcklqdq (%r10,%r12,1),      %zmm15, %zmm3
vpunpcklqdq 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpunpcklqdq 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpunpcklqdq 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpunpcklqdq (%r10),             %zmm14, %zmm10
vpunpcklqdq (%r10,%r12,1),      %zmm14, %zmm10
vpunpcklqdq 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpunpcklqdq 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpunpcklqdq 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpunpcklqdq (%r10),             %zmm11, %zmm20
vpunpcklqdq (%r10,%r12,1),      %zmm12, %zmm31
vpunpcklqdq 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpunpcklqdq 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpunpcklqdq 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpunpcklqdq (%r10),             %zmm25, %zmm3
vpunpcklqdq (%r10,%r12,1),      %zmm25, %zmm3
vpunpcklqdq 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpunpcklqdq 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpunpcklqdq 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpunpcklqdq (%r10),             %zmm24, %zmm10
vpunpcklqdq (%r10,%r12,1),      %zmm24, %zmm10
vpunpcklqdq 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpunpcklqdq 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpunpcklqdq 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpunpcklqdq (%r10),             %zmm21, %zmm20
vpunpcklqdq (%r10,%r12,1),      %zmm22, %zmm31
vpunpcklqdq 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpunpcklqdq 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpunpcklqdq 0x3567(%r10,%r12,4),%zmm25, %zmm29
