pand %mm0, %mm1
pand %mm2, %mm7
pand %mm7, %mm5

pand (%r10), %mm0
pand (%r10,%rdx,4), %mm0
pand 0x10(%r10,%rdx,4), %mm0

pand (%r10), %mm4
pand (%r10,%rdx,4), %mm5
pand 0x10(%r10,%rdx,4), %mm6

vpand %xmm0,%xmm3,%xmm1
vpand %xmm1,%xmm2,%xmm11
vpand %xmm3,%xmm12,%xmm1
vpand %xmm4,%xmm13,%xmm15

vpand %xmm11,%xmm0,%xmm3
vpand %xmm12,%xmm0,%xmm11
vpand %xmm14,%xmm10,%xmm4
vpand %xmm15,%xmm12,%xmm11

vpand (%r10),             %xmm5, %xmm1
vpand (%r10,%r12,1),      %xmm5, %xmm2
vpand 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpand 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpand 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpand (%r10),             %xmm5, %xmm10
vpand (%r10,%r12,1),      %xmm5, %xmm11
vpand 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpand 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpand 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpand (%r10),             %xmm15, %xmm3
vpand (%r10,%r12,1),      %xmm15, %xmm3
vpand 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpand 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpand 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpand (%r10),             %xmm14, %xmm10
vpand (%r10,%r12,1),      %xmm14, %xmm10
vpand 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpand 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpand 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpand %ymm0,%ymm3,%ymm1
vpand %ymm1,%ymm2,%ymm11
vpand %ymm3,%ymm12,%ymm1
vpand %ymm4,%ymm13,%ymm15

vpand %ymm11,%ymm0,%ymm3
vpand %ymm12,%ymm0,%ymm11
vpand %ymm14,%ymm10,%ymm4
vpand %ymm15,%ymm12,%ymm11

vpand (%r10),             %ymm5, %ymm1
vpand (%r10,%r12,1),      %ymm5, %ymm2
vpand 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpand 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpand 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpand (%r10),             %ymm5, %ymm10
vpand (%r10,%r12,1),      %ymm5, %ymm11
vpand 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpand 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpand 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpand (%r10),             %ymm15, %ymm3
vpand (%r10,%r12,1),      %ymm15, %ymm3
vpand 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpand 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpand 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpand (%r10),             %ymm14, %ymm10
vpand (%r10,%r12,1),      %ymm14, %ymm10
vpand 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpand 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpand 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpand %ymm11,%ymm0,%ymm3
vpand %ymm12,%ymm0,%ymm11
vpand %ymm14,%ymm10,%ymm4
vpand %ymm15,%ymm12,%ymm11

vpand (%r10),             %ymm5, %ymm1
vpand (%r10,%r12,1),      %ymm5, %ymm2
vpand 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpand 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpand 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpand (%r10),             %ymm5, %ymm10
vpand (%r10,%r12,1),      %ymm5, %ymm11
vpand 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpand 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpand 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpand (%r10),             %ymm15, %ymm3
vpand (%r10,%r12,1),      %ymm15, %ymm3
vpand 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpand 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpand 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpand (%r10),             %ymm14, %ymm10
vpand (%r10,%r12,1),      %ymm14, %ymm10
vpand 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpand 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpand 0x3567(%r10,%r12,4),%ymm11, %ymm10


vpandd %xmm0,%xmm3,%xmm1
vpandd %xmm1,%xmm2,%xmm11
vpandd %xmm2,%xmm1,%xmm22
vpandd %xmm3,%xmm12,%xmm1
vpandd %xmm4,%xmm13,%xmm15
vpandd %xmm5,%xmm14,%xmm23
vpandd %xmm6,%xmm24,%xmm2
vpandd %xmm7,%xmm25,%xmm10
vpandd %xmm0,%xmm26,%xmm27

vpandd %xmm11,%xmm0,%xmm3
vpandd %xmm12,%xmm0,%xmm11
vpandd %xmm13,%xmm0,%xmm28
vpandd %xmm14,%xmm10,%xmm4
vpandd %xmm15,%xmm12,%xmm11
vpandd %xmm11,%xmm13,%xmm29
vpandd %xmm12,%xmm30,%xmm5
vpandd %xmm13,%xmm31,%xmm11
vpandd %xmm14,%xmm22,%xmm24

vpandd %xmm20,%xmm0,%xmm6
vpandd %xmm21,%xmm0,%xmm11
vpandd %xmm22,%xmm0,%xmm30
vpandd %xmm23,%xmm12,%xmm7
vpandd %xmm24,%xmm13,%xmm10
vpandd %xmm25,%xmm14,%xmm31
vpandd %xmm26,%xmm22,%xmm1
vpandd %xmm27,%xmm21,%xmm14
vpandd %xmm28,%xmm20,%xmm29

vpandd (%r10),             %xmm5, %xmm1
vpandd (%r10,%r12,1),      %xmm5, %xmm2
vpandd 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpandd 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpandd 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpandd (%r10),             %xmm5, %xmm10
vpandd (%r10,%r12,1),      %xmm5, %xmm11
vpandd 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpandd 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpandd 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpandd (%r10),             %xmm1, %xmm20
vpandd (%r10,%r12,1),      %xmm2, %xmm31
vpandd 0x10(%r10,%r12,1),  %xmm3, %xmm30
vpandd 0x11(%r10,%r12,2),  %xmm4, %xmm25
vpandd 0x3567(%r10,%r12,4),%xmm5, %xmm29

vpandd (%r10),             %xmm15, %xmm3
vpandd (%r10,%r12,1),      %xmm15, %xmm3
vpandd 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpandd 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpandd 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpandd (%r10),             %xmm14, %xmm10
vpandd (%r10,%r12,1),      %xmm14, %xmm10
vpandd 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpandd 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpandd 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpandd (%r10),             %xmm11, %xmm20
vpandd (%r10,%r12,1),      %xmm12, %xmm31
vpandd 0x10(%r10,%r12,1),  %xmm13, %xmm30
vpandd 0x11(%r10,%r12,2),  %xmm14, %xmm25
vpandd 0x3567(%r10,%r12,4),%xmm15, %xmm29

vpandd (%r10),             %xmm25, %xmm3
vpandd (%r10,%r12,1),      %xmm25, %xmm3
vpandd 0x10(%r10,%r12,1),  %xmm24, %xmm3
vpandd 0x11(%r10,%r12,2),  %xmm24, %xmm3
vpandd 0x3567(%r10,%r12,4),%xmm23, %xmm3

vpandd (%r10),             %xmm24, %xmm10
vpandd (%r10,%r12,1),      %xmm24, %xmm10
vpandd 0x10(%r10,%r12,1),  %xmm25, %xmm10
vpandd 0x11(%r10,%r12,2),  %xmm21, %xmm10
vpandd 0x3567(%r10,%r12,4),%xmm21, %xmm10

vpandd (%r10),             %xmm21, %xmm20
vpandd (%r10,%r12,1),      %xmm22, %xmm31
vpandd 0x10(%r10,%r12,1),  %xmm23, %xmm30
vpandd 0x11(%r10,%r12,2),  %xmm24, %xmm25
vpandd 0x3567(%r10,%r12,4),%xmm25, %xmm29

vpandd %ymm0,%ymm3,%ymm1
vpandd %ymm1,%ymm2,%ymm11
vpandd %ymm2,%ymm1,%ymm22
vpandd %ymm3,%ymm12,%ymm1
vpandd %ymm4,%ymm13,%ymm15
vpandd %ymm5,%ymm14,%ymm23
vpandd %ymm6,%ymm24,%ymm2
vpandd %ymm7,%ymm25,%ymm10
vpandd %ymm0,%ymm26,%ymm27

vpandd %ymm11,%ymm0,%ymm3
vpandd %ymm12,%ymm0,%ymm11
vpandd %ymm13,%ymm0,%ymm28
vpandd %ymm14,%ymm10,%ymm4
vpandd %ymm15,%ymm12,%ymm11
vpandd %ymm11,%ymm13,%ymm29
vpandd %ymm12,%ymm30,%ymm5
vpandd %ymm13,%ymm31,%ymm11
vpandd %ymm14,%ymm22,%ymm24

vpandd %ymm20,%ymm0,%ymm6
vpandd %ymm21,%ymm0,%ymm11
vpandd %ymm22,%ymm0,%ymm30
vpandd %ymm23,%ymm12,%ymm7
vpandd %ymm24,%ymm13,%ymm10
vpandd %ymm25,%ymm14,%ymm31
vpandd %ymm26,%ymm22,%ymm1
vpandd %ymm27,%ymm21,%ymm14
vpandd %ymm28,%ymm20,%ymm29

vpandd (%r10),             %ymm5, %ymm1
vpandd (%r10,%r12,1),      %ymm5, %ymm2
vpandd 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpandd 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpandd 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpandd (%r10),             %ymm5, %ymm10
vpandd (%r10,%r12,1),      %ymm5, %ymm11
vpandd 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpandd 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpandd 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpandd (%r10),             %ymm1, %ymm20
vpandd (%r10,%r12,1),      %ymm2, %ymm31
vpandd 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpandd 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpandd 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpandd (%r10),             %ymm15, %ymm3
vpandd (%r10,%r12,1),      %ymm15, %ymm3
vpandd 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpandd 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpandd 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpandd (%r10),             %ymm14, %ymm10
vpandd (%r10,%r12,1),      %ymm14, %ymm10
vpandd 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpandd 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpandd 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpandd (%r10),             %ymm11, %ymm20
vpandd (%r10,%r12,1),      %ymm12, %ymm31
vpandd 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpandd 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpandd 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpandd (%r10),             %ymm25, %ymm3
vpandd (%r10,%r12,1),      %ymm25, %ymm3
vpandd 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpandd 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpandd 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpandd (%r10),             %ymm24, %ymm10
vpandd (%r10,%r12,1),      %ymm24, %ymm10
vpandd 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpandd 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpandd 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpandd (%r10),             %ymm21, %ymm20
vpandd (%r10,%r12,1),      %ymm22, %ymm31
vpandd 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpandd 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpandd 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpandd %ymm0,%ymm3,%ymm1
vpandd %ymm1,%ymm2,%ymm11
vpandd %ymm2,%ymm1,%ymm22
vpandd %ymm3,%ymm12,%ymm1
vpandd %ymm4,%ymm13,%ymm15
vpandd %ymm5,%ymm14,%ymm23
vpandd %ymm6,%ymm24,%ymm2
vpandd %ymm7,%ymm25,%ymm10
vpandd %ymm0,%ymm26,%ymm27

vpandd %ymm11,%ymm0,%ymm3
vpandd %ymm12,%ymm0,%ymm11
vpandd %ymm13,%ymm0,%ymm28
vpandd %ymm14,%ymm10,%ymm4
vpandd %ymm15,%ymm12,%ymm11
vpandd %ymm11,%ymm13,%ymm29
vpandd %ymm12,%ymm30,%ymm5
vpandd %ymm13,%ymm31,%ymm11
vpandd %ymm14,%ymm22,%ymm24

vpandd %ymm20,%ymm0,%ymm6
vpandd %ymm21,%ymm0,%ymm11
vpandd %ymm22,%ymm0,%ymm30
vpandd %ymm23,%ymm12,%ymm7
vpandd %ymm24,%ymm13,%ymm10
vpandd %ymm25,%ymm14,%ymm31
vpandd %ymm26,%ymm22,%ymm1
vpandd %ymm27,%ymm21,%ymm14
vpandd %ymm28,%ymm20,%ymm29

vpandd (%r10),             %ymm5, %ymm1
vpandd (%r10,%r12,1),      %ymm5, %ymm2
vpandd 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpandd 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpandd 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpandd (%r10),             %ymm5, %ymm10
vpandd (%r10,%r12,1),      %ymm5, %ymm11
vpandd 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpandd 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpandd 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpandd (%r10),             %ymm1, %ymm20
vpandd (%r10,%r12,1),      %ymm2, %ymm31
vpandd 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpandd 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpandd 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpandd (%r10),             %ymm15, %ymm3
vpandd (%r10,%r12,1),      %ymm15, %ymm3
vpandd 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpandd 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpandd 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpandd (%r10),             %ymm14, %ymm10
vpandd (%r10,%r12,1),      %ymm14, %ymm10
vpandd 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpandd 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpandd 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpandd (%r10),             %ymm11, %ymm20
vpandd (%r10,%r12,1),      %ymm12, %ymm31
vpandd 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpandd 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpandd 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpandd (%r10),             %ymm25, %ymm3
vpandd (%r10,%r12,1),      %ymm25, %ymm3
vpandd 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpandd 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpandd 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpandd (%r10),             %ymm24, %ymm10
vpandd (%r10,%r12,1),      %ymm24, %ymm10
vpandd 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpandd 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpandd 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpandd (%r10),             %ymm21, %ymm20
vpandd (%r10,%r12,1),      %ymm22, %ymm31
vpandd 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpandd 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpandd 0x3567(%r10,%r12,4),%ymm25, %ymm29


vpandq %xmm0,%xmm3,%xmm1
vpandq %xmm1,%xmm2,%xmm11
vpandq %xmm2,%xmm1,%xmm22
vpandq %xmm3,%xmm12,%xmm1
vpandq %xmm4,%xmm13,%xmm15
vpandq %xmm5,%xmm14,%xmm23
vpandq %xmm6,%xmm24,%xmm2
vpandq %xmm7,%xmm25,%xmm10
vpandq %xmm0,%xmm26,%xmm27

vpandq %xmm11,%xmm0,%xmm3
vpandq %xmm12,%xmm0,%xmm11
vpandq %xmm13,%xmm0,%xmm28
vpandq %xmm14,%xmm10,%xmm4
vpandq %xmm15,%xmm12,%xmm11
vpandq %xmm11,%xmm13,%xmm29
vpandq %xmm12,%xmm30,%xmm5
vpandq %xmm13,%xmm31,%xmm11
vpandq %xmm14,%xmm22,%xmm24

vpandq %xmm20,%xmm0,%xmm6
vpandq %xmm21,%xmm0,%xmm11
vpandq %xmm22,%xmm0,%xmm30
vpandq %xmm23,%xmm12,%xmm7
vpandq %xmm24,%xmm13,%xmm10
vpandq %xmm25,%xmm14,%xmm31
vpandq %xmm26,%xmm22,%xmm1
vpandq %xmm27,%xmm21,%xmm14
vpandq %xmm28,%xmm20,%xmm29

vpandq (%r10),             %xmm5, %xmm1
vpandq (%r10,%r12,1),      %xmm5, %xmm2
vpandq 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpandq 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpandq 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpandq (%r10),             %xmm5, %xmm10
vpandq (%r10,%r12,1),      %xmm5, %xmm11
vpandq 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpandq 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpandq 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpandq (%r10),             %xmm1, %xmm20
vpandq (%r10,%r12,1),      %xmm2, %xmm31
vpandq 0x10(%r10,%r12,1),  %xmm3, %xmm30
vpandq 0x11(%r10,%r12,2),  %xmm4, %xmm25
vpandq 0x3567(%r10,%r12,4),%xmm5, %xmm29

vpandq (%r10),             %xmm15, %xmm3
vpandq (%r10,%r12,1),      %xmm15, %xmm3
vpandq 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpandq 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpandq 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpandq (%r10),             %xmm14, %xmm10
vpandq (%r10,%r12,1),      %xmm14, %xmm10
vpandq 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpandq 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpandq 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpandq (%r10),             %xmm11, %xmm20
vpandq (%r10,%r12,1),      %xmm12, %xmm31
vpandq 0x10(%r10,%r12,1),  %xmm13, %xmm30
vpandq 0x11(%r10,%r12,2),  %xmm14, %xmm25
vpandq 0x3567(%r10,%r12,4),%xmm15, %xmm29

vpandq (%r10),             %xmm25, %xmm3
vpandq (%r10,%r12,1),      %xmm25, %xmm3
vpandq 0x10(%r10,%r12,1),  %xmm24, %xmm3
vpandq 0x11(%r10,%r12,2),  %xmm24, %xmm3
vpandq 0x3567(%r10,%r12,4),%xmm23, %xmm3

vpandq (%r10),             %xmm24, %xmm10
vpandq (%r10,%r12,1),      %xmm24, %xmm10
vpandq 0x10(%r10,%r12,1),  %xmm25, %xmm10
vpandq 0x11(%r10,%r12,2),  %xmm21, %xmm10
vpandq 0x3567(%r10,%r12,4),%xmm21, %xmm10

vpandq (%r10),             %xmm21, %xmm20
vpandq (%r10,%r12,1),      %xmm22, %xmm31
vpandq 0x10(%r10,%r12,1),  %xmm23, %xmm30
vpandq 0x11(%r10,%r12,2),  %xmm24, %xmm25
vpandq 0x3567(%r10,%r12,4),%xmm25, %xmm29

vpandq %ymm0,%ymm3,%ymm1
vpandq %ymm1,%ymm2,%ymm11
vpandq %ymm2,%ymm1,%ymm22
vpandq %ymm3,%ymm12,%ymm1
vpandq %ymm4,%ymm13,%ymm15
vpandq %ymm5,%ymm14,%ymm23
vpandq %ymm6,%ymm24,%ymm2
vpandq %ymm7,%ymm25,%ymm10
vpandq %ymm0,%ymm26,%ymm27

vpandq %ymm11,%ymm0,%ymm3
vpandq %ymm12,%ymm0,%ymm11
vpandq %ymm13,%ymm0,%ymm28
vpandq %ymm14,%ymm10,%ymm4
vpandq %ymm15,%ymm12,%ymm11
vpandq %ymm11,%ymm13,%ymm29
vpandq %ymm12,%ymm30,%ymm5
vpandq %ymm13,%ymm31,%ymm11
vpandq %ymm14,%ymm22,%ymm24

vpandq %ymm20,%ymm0,%ymm6
vpandq %ymm21,%ymm0,%ymm11
vpandq %ymm22,%ymm0,%ymm30
vpandq %ymm23,%ymm12,%ymm7
vpandq %ymm24,%ymm13,%ymm10
vpandq %ymm25,%ymm14,%ymm31
vpandq %ymm26,%ymm22,%ymm1
vpandq %ymm27,%ymm21,%ymm14
vpandq %ymm28,%ymm20,%ymm29

vpandq (%r10),             %ymm5, %ymm1
vpandq (%r10,%r12,1),      %ymm5, %ymm2
vpandq 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpandq 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpandq 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpandq (%r10),             %ymm5, %ymm10
vpandq (%r10,%r12,1),      %ymm5, %ymm11
vpandq 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpandq 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpandq 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpandq (%r10),             %ymm1, %ymm20
vpandq (%r10,%r12,1),      %ymm2, %ymm31
vpandq 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpandq 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpandq 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpandq (%r10),             %ymm15, %ymm3
vpandq (%r10,%r12,1),      %ymm15, %ymm3
vpandq 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpandq 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpandq 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpandq (%r10),             %ymm14, %ymm10
vpandq (%r10,%r12,1),      %ymm14, %ymm10
vpandq 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpandq 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpandq 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpandq (%r10),             %ymm11, %ymm20
vpandq (%r10,%r12,1),      %ymm12, %ymm31
vpandq 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpandq 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpandq 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpandq (%r10),             %ymm25, %ymm3
vpandq (%r10,%r12,1),      %ymm25, %ymm3
vpandq 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpandq 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpandq 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpandq (%r10),             %ymm24, %ymm10
vpandq (%r10,%r12,1),      %ymm24, %ymm10
vpandq 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpandq 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpandq 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpandq (%r10),             %ymm21, %ymm20
vpandq (%r10,%r12,1),      %ymm22, %ymm31
vpandq 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpandq 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpandq 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpandq %ymm0,%ymm3,%ymm1
vpandq %ymm1,%ymm2,%ymm11
vpandq %ymm2,%ymm1,%ymm22
vpandq %ymm3,%ymm12,%ymm1
vpandq %ymm4,%ymm13,%ymm15
vpandq %ymm5,%ymm14,%ymm23
vpandq %ymm6,%ymm24,%ymm2
vpandq %ymm7,%ymm25,%ymm10
vpandq %ymm0,%ymm26,%ymm27

vpandq %ymm11,%ymm0,%ymm3
vpandq %ymm12,%ymm0,%ymm11
vpandq %ymm13,%ymm0,%ymm28
vpandq %ymm14,%ymm10,%ymm4
vpandq %ymm15,%ymm12,%ymm11
vpandq %ymm11,%ymm13,%ymm29
vpandq %ymm12,%ymm30,%ymm5
vpandq %ymm13,%ymm31,%ymm11
vpandq %ymm14,%ymm22,%ymm24

vpandq %ymm20,%ymm0,%ymm6
vpandq %ymm21,%ymm0,%ymm11
vpandq %ymm22,%ymm0,%ymm30
vpandq %ymm23,%ymm12,%ymm7
vpandq %ymm24,%ymm13,%ymm10
vpandq %ymm25,%ymm14,%ymm31
vpandq %ymm26,%ymm22,%ymm1
vpandq %ymm27,%ymm21,%ymm14
vpandq %ymm28,%ymm20,%ymm29

vpandq (%r10),             %ymm5, %ymm1
vpandq (%r10,%r12,1),      %ymm5, %ymm2
vpandq 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpandq 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpandq 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpandq (%r10),             %ymm5, %ymm10
vpandq (%r10,%r12,1),      %ymm5, %ymm11
vpandq 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpandq 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpandq 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpandq (%r10),             %ymm1, %ymm20
vpandq (%r10,%r12,1),      %ymm2, %ymm31
vpandq 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpandq 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpandq 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpandq (%r10),             %ymm15, %ymm3
vpandq (%r10,%r12,1),      %ymm15, %ymm3
vpandq 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpandq 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpandq 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpandq (%r10),             %ymm14, %ymm10
vpandq (%r10,%r12,1),      %ymm14, %ymm10
vpandq 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpandq 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpandq 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpandq (%r10),             %ymm11, %ymm20
vpandq (%r10,%r12,1),      %ymm12, %ymm31
vpandq 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpandq 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpandq 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpandq (%r10),             %ymm25, %ymm3
vpandq (%r10,%r12,1),      %ymm25, %ymm3
vpandq 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpandq 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpandq 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpandq (%r10),             %ymm24, %ymm10
vpandq (%r10,%r12,1),      %ymm24, %ymm10
vpandq 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpandq 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpandq 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpandq (%r10),             %ymm21, %ymm20
vpandq (%r10,%r12,1),      %ymm22, %ymm31
vpandq 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpandq 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpandq 0x3567(%r10,%r12,4),%ymm25, %ymm29


vpandd %zmm0,%zmm3,%zmm1
vpandd %zmm1,%zmm2,%zmm11
vpandd %zmm2,%zmm1,%zmm22
vpandd %zmm3,%zmm12,%zmm1
vpandd %zmm4,%zmm13,%zmm15
vpandd %zmm5,%zmm14,%zmm23
vpandd %zmm6,%zmm24,%zmm2
vpandd %zmm7,%zmm25,%zmm10
vpandd %zmm0,%zmm26,%zmm27

vpandd %zmm11,%zmm0,%zmm3
vpandd %zmm12,%zmm0,%zmm11
vpandd %zmm13,%zmm0,%zmm28
vpandd %zmm14,%zmm10,%zmm4
vpandd %zmm15,%zmm12,%zmm11
vpandd %zmm11,%zmm13,%zmm29
vpandd %zmm12,%zmm30,%zmm5
vpandd %zmm13,%zmm31,%zmm11
vpandd %zmm14,%zmm22,%zmm24

vpandd %zmm20,%zmm0,%zmm6
vpandd %zmm21,%zmm0,%zmm11
vpandd %zmm22,%zmm0,%zmm30
vpandd %zmm23,%zmm12,%zmm7
vpandd %zmm24,%zmm13,%zmm10
vpandd %zmm25,%zmm14,%zmm31
vpandd %zmm26,%zmm22,%zmm1
vpandd %zmm27,%zmm21,%zmm14
vpandd %zmm28,%zmm20,%zmm29

vpandd (%r10),             %zmm5, %zmm1
vpandd (%r10,%r12,1),      %zmm5, %zmm2
vpandd 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpandd 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpandd 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpandd (%r10),             %zmm5, %zmm10
vpandd (%r10,%r12,1),      %zmm5, %zmm11
vpandd 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpandd 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpandd 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpandd (%r10),             %zmm1, %zmm20
vpandd (%r10,%r12,1),      %zmm2, %zmm31
vpandd 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpandd 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpandd 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpandd (%r10),             %zmm15, %zmm3
vpandd (%r10,%r12,1),      %zmm15, %zmm3
vpandd 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpandd 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpandd 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpandd (%r10),             %zmm14, %zmm10
vpandd (%r10,%r12,1),      %zmm14, %zmm10
vpandd 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpandd 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpandd 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpandd (%r10),             %zmm11, %zmm20
vpandd (%r10,%r12,1),      %zmm12, %zmm31
vpandd 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpandd 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpandd 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpandd (%r10),             %zmm25, %zmm3
vpandd (%r10,%r12,1),      %zmm25, %zmm3
vpandd 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpandd 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpandd 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpandd (%r10),             %zmm24, %zmm10
vpandd (%r10,%r12,1),      %zmm24, %zmm10
vpandd 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpandd 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpandd 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpandd (%r10),             %zmm21, %zmm20
vpandd (%r10,%r12,1),      %zmm22, %zmm31
vpandd 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpandd 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpandd 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpandd %zmm0,%zmm3,%zmm1
vpandd %zmm1,%zmm2,%zmm11
vpandd %zmm2,%zmm1,%zmm22
vpandd %zmm3,%zmm12,%zmm1
vpandd %zmm4,%zmm13,%zmm15
vpandd %zmm5,%zmm14,%zmm23
vpandd %zmm6,%zmm24,%zmm2
vpandd %zmm7,%zmm25,%zmm10
vpandd %zmm0,%zmm26,%zmm27

vpandd %zmm11,%zmm0,%zmm3
vpandd %zmm12,%zmm0,%zmm11
vpandd %zmm13,%zmm0,%zmm28
vpandd %zmm14,%zmm10,%zmm4
vpandd %zmm15,%zmm12,%zmm11
vpandd %zmm11,%zmm13,%zmm29
vpandd %zmm12,%zmm30,%zmm5
vpandd %zmm13,%zmm31,%zmm11
vpandd %zmm14,%zmm22,%zmm24

vpandd %zmm20,%zmm0,%zmm6
vpandd %zmm21,%zmm0,%zmm11
vpandd %zmm22,%zmm0,%zmm30
vpandd %zmm23,%zmm12,%zmm7
vpandd %zmm24,%zmm13,%zmm10
vpandd %zmm25,%zmm14,%zmm31
vpandd %zmm26,%zmm22,%zmm1
vpandd %zmm27,%zmm21,%zmm14
vpandd %zmm28,%zmm20,%zmm29

vpandd (%r10),             %zmm5, %zmm1
vpandd (%r10,%r12,1),      %zmm5, %zmm2
vpandd 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpandd 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpandd 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpandd (%r10),             %zmm5, %zmm10
vpandd (%r10,%r12,1),      %zmm5, %zmm11
vpandd 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpandd 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpandd 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpandd (%r10),             %zmm1, %zmm20
vpandd (%r10,%r12,1),      %zmm2, %zmm31
vpandd 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpandd 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpandd 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpandd (%r10),             %zmm15, %zmm3
vpandd (%r10,%r12,1),      %zmm15, %zmm3
vpandd 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpandd 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpandd 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpandd (%r10),             %zmm14, %zmm10
vpandd (%r10,%r12,1),      %zmm14, %zmm10
vpandd 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpandd 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpandd 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpandd (%r10),             %zmm11, %zmm20
vpandd (%r10,%r12,1),      %zmm12, %zmm31
vpandd 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpandd 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpandd 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpandd (%r10),             %zmm25, %zmm3
vpandd (%r10,%r12,1),      %zmm25, %zmm3
vpandd 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpandd 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpandd 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpandd (%r10),             %zmm24, %zmm10
vpandd (%r10,%r12,1),      %zmm24, %zmm10
vpandd 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpandd 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpandd 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpandd (%r10),             %zmm21, %zmm20
vpandd (%r10,%r12,1),      %zmm22, %zmm31
vpandd 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpandd 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpandd 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpandq %zmm0,%zmm3,%zmm1
vpandq %zmm1,%zmm2,%zmm11
vpandq %zmm2,%zmm1,%zmm22
vpandq %zmm3,%zmm12,%zmm1
vpandq %zmm4,%zmm13,%zmm15
vpandq %zmm5,%zmm14,%zmm23
vpandq %zmm6,%zmm24,%zmm2
vpandq %zmm7,%zmm25,%zmm10
vpandq %zmm0,%zmm26,%zmm27

vpandq %zmm11,%zmm0,%zmm3
vpandq %zmm12,%zmm0,%zmm11
vpandq %zmm13,%zmm0,%zmm28
vpandq %zmm14,%zmm10,%zmm4
vpandq %zmm15,%zmm12,%zmm11
vpandq %zmm11,%zmm13,%zmm29
vpandq %zmm12,%zmm30,%zmm5
vpandq %zmm13,%zmm31,%zmm11
vpandq %zmm14,%zmm22,%zmm24

vpandq %zmm20,%zmm0,%zmm6
vpandq %zmm21,%zmm0,%zmm11
vpandq %zmm22,%zmm0,%zmm30
vpandq %zmm23,%zmm12,%zmm7
vpandq %zmm24,%zmm13,%zmm10
vpandq %zmm25,%zmm14,%zmm31
vpandq %zmm26,%zmm22,%zmm1
vpandq %zmm27,%zmm21,%zmm14
vpandq %zmm28,%zmm20,%zmm29

vpandq (%r10),             %zmm5, %zmm1
vpandq (%r10,%r12,1),      %zmm5, %zmm2
vpandq 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpandq 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpandq 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpandq (%r10),             %zmm5, %zmm10
vpandq (%r10,%r12,1),      %zmm5, %zmm11
vpandq 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpandq 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpandq 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpandq (%r10),             %zmm1, %zmm20
vpandq (%r10,%r12,1),      %zmm2, %zmm31
vpandq 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpandq 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpandq 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpandq (%r10),             %zmm15, %zmm3
vpandq (%r10,%r12,1),      %zmm15, %zmm3
vpandq 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpandq 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpandq 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpandq (%r10),             %zmm14, %zmm10
vpandq (%r10,%r12,1),      %zmm14, %zmm10
vpandq 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpandq 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpandq 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpandq (%r10),             %zmm11, %zmm20
vpandq (%r10,%r12,1),      %zmm12, %zmm31
vpandq 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpandq 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpandq 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpandq (%r10),             %zmm25, %zmm3
vpandq (%r10,%r12,1),      %zmm25, %zmm3
vpandq 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpandq 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpandq 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpandq (%r10),             %zmm24, %zmm10
vpandq (%r10,%r12,1),      %zmm24, %zmm10
vpandq 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpandq 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpandq 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpandq (%r10),             %zmm21, %zmm20
vpandq (%r10,%r12,1),      %zmm22, %zmm31
vpandq 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpandq 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpandq 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpandq %zmm0,%zmm3,%zmm1
vpandq %zmm1,%zmm2,%zmm11
vpandq %zmm2,%zmm1,%zmm22
vpandq %zmm3,%zmm12,%zmm1
vpandq %zmm4,%zmm13,%zmm15
vpandq %zmm5,%zmm14,%zmm23
vpandq %zmm6,%zmm24,%zmm2
vpandq %zmm7,%zmm25,%zmm10
vpandq %zmm0,%zmm26,%zmm27

vpandq %zmm11,%zmm0,%zmm3
vpandq %zmm12,%zmm0,%zmm11
vpandq %zmm13,%zmm0,%zmm28
vpandq %zmm14,%zmm10,%zmm4
vpandq %zmm15,%zmm12,%zmm11
vpandq %zmm11,%zmm13,%zmm29
vpandq %zmm12,%zmm30,%zmm5
vpandq %zmm13,%zmm31,%zmm11
vpandq %zmm14,%zmm22,%zmm24

vpandq %zmm20,%zmm0,%zmm6
vpandq %zmm21,%zmm0,%zmm11
vpandq %zmm22,%zmm0,%zmm30
vpandq %zmm23,%zmm12,%zmm7
vpandq %zmm24,%zmm13,%zmm10
vpandq %zmm25,%zmm14,%zmm31
vpandq %zmm26,%zmm22,%zmm1
vpandq %zmm27,%zmm21,%zmm14
vpandq %zmm28,%zmm20,%zmm29

vpandq (%r10),             %zmm5, %zmm1
vpandq (%r10,%r12,1),      %zmm5, %zmm2
vpandq 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpandq 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpandq 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpandq (%r10),             %zmm5, %zmm10
vpandq (%r10,%r12,1),      %zmm5, %zmm11
vpandq 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpandq 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpandq 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpandq (%r10),             %zmm1, %zmm20
vpandq (%r10,%r12,1),      %zmm2, %zmm31
vpandq 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpandq 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpandq 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpandq (%r10),             %zmm15, %zmm3
vpandq (%r10,%r12,1),      %zmm15, %zmm3
vpandq 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpandq 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpandq 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpandq (%r10),             %zmm14, %zmm10
vpandq (%r10,%r12,1),      %zmm14, %zmm10
vpandq 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpandq 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpandq 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpandq (%r10),             %zmm11, %zmm20
vpandq (%r10,%r12,1),      %zmm12, %zmm31
vpandq 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpandq 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpandq 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpandq (%r10),             %zmm25, %zmm3
vpandq (%r10,%r12,1),      %zmm25, %zmm3
vpandq 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpandq 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpandq 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpandq (%r10),             %zmm24, %zmm10
vpandq (%r10,%r12,1),      %zmm24, %zmm10
vpandq 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpandq 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpandq 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpandq (%r10),             %zmm21, %zmm20
vpandq (%r10,%r12,1),      %zmm22, %zmm31
vpandq 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpandq 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpandq 0x3567(%r10,%r12,4),%zmm25, %zmm29
