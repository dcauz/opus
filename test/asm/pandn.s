pandn %mm0, %mm1
pandn %mm2, %mm7
pandn %mm7, %mm5

pandn (%r10), %mm0
pandn (%r10,%rdx,4), %mm0
pandn 0x10(%r10,%rdx,4), %mm0

pandn (%r10), %mm4
pandn (%r10,%rdx,4), %mm5
pandn 0x10(%r10,%rdx,4), %mm6

vpandn %xmm0,%xmm3,%xmm1
vpandn %xmm1,%xmm2,%xmm11
vpandn %xmm3,%xmm12,%xmm1
vpandn %xmm4,%xmm13,%xmm15

vpandn %xmm11,%xmm0,%xmm3
vpandn %xmm12,%xmm0,%xmm11
vpandn %xmm14,%xmm10,%xmm4
vpandn %xmm15,%xmm12,%xmm11

vpandn (%r10),             %xmm5, %xmm1
vpandn (%r10,%r12,1),      %xmm5, %xmm2
vpandn 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpandn 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpandn 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpandn (%r10),             %xmm5, %xmm10
vpandn (%r10,%r12,1),      %xmm5, %xmm11
vpandn 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpandn 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpandn 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpandn (%r10),             %xmm15, %xmm3
vpandn (%r10,%r12,1),      %xmm15, %xmm3
vpandn 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpandn 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpandn 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpandn (%r10),             %xmm14, %xmm10
vpandn (%r10,%r12,1),      %xmm14, %xmm10
vpandn 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpandn 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpandn 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpandn %ymm0,%ymm3,%ymm1
vpandn %ymm1,%ymm2,%ymm11
vpandn %ymm3,%ymm12,%ymm1
vpandn %ymm4,%ymm13,%ymm15

vpandn %ymm11,%ymm0,%ymm3
vpandn %ymm12,%ymm0,%ymm11
vpandn %ymm14,%ymm10,%ymm4
vpandn %ymm15,%ymm12,%ymm11

vpandn (%r10),             %ymm5, %ymm1
vpandn (%r10,%r12,1),      %ymm5, %ymm2
vpandn 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpandn 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpandn 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpandn (%r10),             %ymm5, %ymm10
vpandn (%r10,%r12,1),      %ymm5, %ymm11
vpandn 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpandn 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpandn 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpandn (%r10),             %ymm15, %ymm3
vpandn (%r10,%r12,1),      %ymm15, %ymm3
vpandn 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpandn 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpandn 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpandn (%r10),             %ymm14, %ymm10
vpandn (%r10,%r12,1),      %ymm14, %ymm10
vpandn 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpandn 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpandn 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpandn %ymm11,%ymm0,%ymm3
vpandn %ymm12,%ymm0,%ymm11
vpandn %ymm14,%ymm10,%ymm4
vpandn %ymm15,%ymm12,%ymm11

vpandn (%r10),             %ymm5, %ymm1
vpandn (%r10,%r12,1),      %ymm5, %ymm2
vpandn 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpandn 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpandn 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpandn (%r10),             %ymm5, %ymm10
vpandn (%r10,%r12,1),      %ymm5, %ymm11
vpandn 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpandn 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpandn 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpandn (%r10),             %ymm15, %ymm3
vpandn (%r10,%r12,1),      %ymm15, %ymm3
vpandn 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpandn 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpandn 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpandn (%r10),             %ymm14, %ymm10
vpandn (%r10,%r12,1),      %ymm14, %ymm10
vpandn 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpandn 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpandn 0x3567(%r10,%r12,4),%ymm11, %ymm10


vpandnd %xmm0,%xmm3,%xmm1
vpandnd %xmm1,%xmm2,%xmm11
vpandnd %xmm2,%xmm1,%xmm22
vpandnd %xmm3,%xmm12,%xmm1
vpandnd %xmm4,%xmm13,%xmm15
vpandnd %xmm5,%xmm14,%xmm23
vpandnd %xmm6,%xmm24,%xmm2
vpandnd %xmm7,%xmm25,%xmm10
vpandnd %xmm0,%xmm26,%xmm27

vpandnd %xmm11,%xmm0,%xmm3
vpandnd %xmm12,%xmm0,%xmm11
vpandnd %xmm13,%xmm0,%xmm28
vpandnd %xmm14,%xmm10,%xmm4
vpandnd %xmm15,%xmm12,%xmm11
vpandnd %xmm11,%xmm13,%xmm29
vpandnd %xmm12,%xmm30,%xmm5
vpandnd %xmm13,%xmm31,%xmm11
vpandnd %xmm14,%xmm22,%xmm24

vpandnd %xmm20,%xmm0,%xmm6
vpandnd %xmm21,%xmm0,%xmm11
vpandnd %xmm22,%xmm0,%xmm30
vpandnd %xmm23,%xmm12,%xmm7
vpandnd %xmm24,%xmm13,%xmm10
vpandnd %xmm25,%xmm14,%xmm31
vpandnd %xmm26,%xmm22,%xmm1
vpandnd %xmm27,%xmm21,%xmm14
vpandnd %xmm28,%xmm20,%xmm29

vpandnd (%r10),             %xmm5, %xmm1
vpandnd (%r10,%r12,1),      %xmm5, %xmm2
vpandnd 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpandnd 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpandnd 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpandnd (%r10),             %xmm5, %xmm10
vpandnd (%r10,%r12,1),      %xmm5, %xmm11
vpandnd 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpandnd 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpandnd 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpandnd (%r10),             %xmm1, %xmm20
vpandnd (%r10,%r12,1),      %xmm2, %xmm31
vpandnd 0x10(%r10,%r12,1),  %xmm3, %xmm30
vpandnd 0x11(%r10,%r12,2),  %xmm4, %xmm25
vpandnd 0x3567(%r10,%r12,4),%xmm5, %xmm29

vpandnd (%r10),             %xmm15, %xmm3
vpandnd (%r10,%r12,1),      %xmm15, %xmm3
vpandnd 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpandnd 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpandnd 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpandnd (%r10),             %xmm14, %xmm10
vpandnd (%r10,%r12,1),      %xmm14, %xmm10
vpandnd 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpandnd 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpandnd 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpandnd (%r10),             %xmm11, %xmm20
vpandnd (%r10,%r12,1),      %xmm12, %xmm31
vpandnd 0x10(%r10,%r12,1),  %xmm13, %xmm30
vpandnd 0x11(%r10,%r12,2),  %xmm14, %xmm25
vpandnd 0x3567(%r10,%r12,4),%xmm15, %xmm29

vpandnd (%r10),             %xmm25, %xmm3
vpandnd (%r10,%r12,1),      %xmm25, %xmm3
vpandnd 0x10(%r10,%r12,1),  %xmm24, %xmm3
vpandnd 0x11(%r10,%r12,2),  %xmm24, %xmm3
vpandnd 0x3567(%r10,%r12,4),%xmm23, %xmm3

vpandnd (%r10),             %xmm24, %xmm10
vpandnd (%r10,%r12,1),      %xmm24, %xmm10
vpandnd 0x10(%r10,%r12,1),  %xmm25, %xmm10
vpandnd 0x11(%r10,%r12,2),  %xmm21, %xmm10
vpandnd 0x3567(%r10,%r12,4),%xmm21, %xmm10

vpandnd (%r10),             %xmm21, %xmm20
vpandnd (%r10,%r12,1),      %xmm22, %xmm31
vpandnd 0x10(%r10,%r12,1),  %xmm23, %xmm30
vpandnd 0x11(%r10,%r12,2),  %xmm24, %xmm25
vpandnd 0x3567(%r10,%r12,4),%xmm25, %xmm29

vpandnd %ymm0,%ymm3,%ymm1
vpandnd %ymm1,%ymm2,%ymm11
vpandnd %ymm2,%ymm1,%ymm22
vpandnd %ymm3,%ymm12,%ymm1
vpandnd %ymm4,%ymm13,%ymm15
vpandnd %ymm5,%ymm14,%ymm23
vpandnd %ymm6,%ymm24,%ymm2
vpandnd %ymm7,%ymm25,%ymm10
vpandnd %ymm0,%ymm26,%ymm27

vpandnd %ymm11,%ymm0,%ymm3
vpandnd %ymm12,%ymm0,%ymm11
vpandnd %ymm13,%ymm0,%ymm28
vpandnd %ymm14,%ymm10,%ymm4
vpandnd %ymm15,%ymm12,%ymm11
vpandnd %ymm11,%ymm13,%ymm29
vpandnd %ymm12,%ymm30,%ymm5
vpandnd %ymm13,%ymm31,%ymm11
vpandnd %ymm14,%ymm22,%ymm24

vpandnd %ymm20,%ymm0,%ymm6
vpandnd %ymm21,%ymm0,%ymm11
vpandnd %ymm22,%ymm0,%ymm30
vpandnd %ymm23,%ymm12,%ymm7
vpandnd %ymm24,%ymm13,%ymm10
vpandnd %ymm25,%ymm14,%ymm31
vpandnd %ymm26,%ymm22,%ymm1
vpandnd %ymm27,%ymm21,%ymm14
vpandnd %ymm28,%ymm20,%ymm29

vpandnd (%r10),             %ymm5, %ymm1
vpandnd (%r10,%r12,1),      %ymm5, %ymm2
vpandnd 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpandnd 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpandnd 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpandnd (%r10),             %ymm5, %ymm10
vpandnd (%r10,%r12,1),      %ymm5, %ymm11
vpandnd 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpandnd 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpandnd 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpandnd (%r10),             %ymm1, %ymm20
vpandnd (%r10,%r12,1),      %ymm2, %ymm31
vpandnd 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpandnd 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpandnd 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpandnd (%r10),             %ymm15, %ymm3
vpandnd (%r10,%r12,1),      %ymm15, %ymm3
vpandnd 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpandnd 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpandnd 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpandnd (%r10),             %ymm14, %ymm10
vpandnd (%r10,%r12,1),      %ymm14, %ymm10
vpandnd 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpandnd 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpandnd 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpandnd (%r10),             %ymm11, %ymm20
vpandnd (%r10,%r12,1),      %ymm12, %ymm31
vpandnd 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpandnd 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpandnd 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpandnd (%r10),             %ymm25, %ymm3
vpandnd (%r10,%r12,1),      %ymm25, %ymm3
vpandnd 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpandnd 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpandnd 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpandnd (%r10),             %ymm24, %ymm10
vpandnd (%r10,%r12,1),      %ymm24, %ymm10
vpandnd 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpandnd 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpandnd 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpandnd (%r10),             %ymm21, %ymm20
vpandnd (%r10,%r12,1),      %ymm22, %ymm31
vpandnd 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpandnd 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpandnd 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpandnd %ymm0,%ymm3,%ymm1
vpandnd %ymm1,%ymm2,%ymm11
vpandnd %ymm2,%ymm1,%ymm22
vpandnd %ymm3,%ymm12,%ymm1
vpandnd %ymm4,%ymm13,%ymm15
vpandnd %ymm5,%ymm14,%ymm23
vpandnd %ymm6,%ymm24,%ymm2
vpandnd %ymm7,%ymm25,%ymm10
vpandnd %ymm0,%ymm26,%ymm27

vpandnd %ymm11,%ymm0,%ymm3
vpandnd %ymm12,%ymm0,%ymm11
vpandnd %ymm13,%ymm0,%ymm28
vpandnd %ymm14,%ymm10,%ymm4
vpandnd %ymm15,%ymm12,%ymm11
vpandnd %ymm11,%ymm13,%ymm29
vpandnd %ymm12,%ymm30,%ymm5
vpandnd %ymm13,%ymm31,%ymm11
vpandnd %ymm14,%ymm22,%ymm24

vpandnd %ymm20,%ymm0,%ymm6
vpandnd %ymm21,%ymm0,%ymm11
vpandnd %ymm22,%ymm0,%ymm30
vpandnd %ymm23,%ymm12,%ymm7
vpandnd %ymm24,%ymm13,%ymm10
vpandnd %ymm25,%ymm14,%ymm31
vpandnd %ymm26,%ymm22,%ymm1
vpandnd %ymm27,%ymm21,%ymm14
vpandnd %ymm28,%ymm20,%ymm29

vpandnd (%r10),             %ymm5, %ymm1
vpandnd (%r10,%r12,1),      %ymm5, %ymm2
vpandnd 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpandnd 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpandnd 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpandnd (%r10),             %ymm5, %ymm10
vpandnd (%r10,%r12,1),      %ymm5, %ymm11
vpandnd 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpandnd 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpandnd 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpandnd (%r10),             %ymm1, %ymm20
vpandnd (%r10,%r12,1),      %ymm2, %ymm31
vpandnd 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpandnd 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpandnd 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpandnd (%r10),             %ymm15, %ymm3
vpandnd (%r10,%r12,1),      %ymm15, %ymm3
vpandnd 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpandnd 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpandnd 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpandnd (%r10),             %ymm14, %ymm10
vpandnd (%r10,%r12,1),      %ymm14, %ymm10
vpandnd 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpandnd 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpandnd 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpandnd (%r10),             %ymm11, %ymm20
vpandnd (%r10,%r12,1),      %ymm12, %ymm31
vpandnd 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpandnd 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpandnd 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpandnd (%r10),             %ymm25, %ymm3
vpandnd (%r10,%r12,1),      %ymm25, %ymm3
vpandnd 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpandnd 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpandnd 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpandnd (%r10),             %ymm24, %ymm10
vpandnd (%r10,%r12,1),      %ymm24, %ymm10
vpandnd 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpandnd 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpandnd 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpandnd (%r10),             %ymm21, %ymm20
vpandnd (%r10,%r12,1),      %ymm22, %ymm31
vpandnd 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpandnd 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpandnd 0x3567(%r10,%r12,4),%ymm25, %ymm29


vpandnq %xmm0,%xmm3,%xmm1
vpandnq %xmm1,%xmm2,%xmm11
vpandnq %xmm2,%xmm1,%xmm22
vpandnq %xmm3,%xmm12,%xmm1
vpandnq %xmm4,%xmm13,%xmm15
vpandnq %xmm5,%xmm14,%xmm23
vpandnq %xmm6,%xmm24,%xmm2
vpandnq %xmm7,%xmm25,%xmm10
vpandnq %xmm0,%xmm26,%xmm27

vpandnq %xmm11,%xmm0,%xmm3
vpandnq %xmm12,%xmm0,%xmm11
vpandnq %xmm13,%xmm0,%xmm28
vpandnq %xmm14,%xmm10,%xmm4
vpandnq %xmm15,%xmm12,%xmm11
vpandnq %xmm11,%xmm13,%xmm29
vpandnq %xmm12,%xmm30,%xmm5
vpandnq %xmm13,%xmm31,%xmm11
vpandnq %xmm14,%xmm22,%xmm24

vpandnq %xmm20,%xmm0,%xmm6
vpandnq %xmm21,%xmm0,%xmm11
vpandnq %xmm22,%xmm0,%xmm30
vpandnq %xmm23,%xmm12,%xmm7
vpandnq %xmm24,%xmm13,%xmm10
vpandnq %xmm25,%xmm14,%xmm31
vpandnq %xmm26,%xmm22,%xmm1
vpandnq %xmm27,%xmm21,%xmm14
vpandnq %xmm28,%xmm20,%xmm29

vpandnq (%r10),             %xmm5, %xmm1
vpandnq (%r10,%r12,1),      %xmm5, %xmm2
vpandnq 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpandnq 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpandnq 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpandnq (%r10),             %xmm5, %xmm10
vpandnq (%r10,%r12,1),      %xmm5, %xmm11
vpandnq 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpandnq 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpandnq 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpandnq (%r10),             %xmm1, %xmm20
vpandnq (%r10,%r12,1),      %xmm2, %xmm31
vpandnq 0x10(%r10,%r12,1),  %xmm3, %xmm30
vpandnq 0x11(%r10,%r12,2),  %xmm4, %xmm25
vpandnq 0x3567(%r10,%r12,4),%xmm5, %xmm29

vpandnq (%r10),             %xmm15, %xmm3
vpandnq (%r10,%r12,1),      %xmm15, %xmm3
vpandnq 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpandnq 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpandnq 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpandnq (%r10),             %xmm14, %xmm10
vpandnq (%r10,%r12,1),      %xmm14, %xmm10
vpandnq 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpandnq 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpandnq 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpandnq (%r10),             %xmm11, %xmm20
vpandnq (%r10,%r12,1),      %xmm12, %xmm31
vpandnq 0x10(%r10,%r12,1),  %xmm13, %xmm30
vpandnq 0x11(%r10,%r12,2),  %xmm14, %xmm25
vpandnq 0x3567(%r10,%r12,4),%xmm15, %xmm29

vpandnq (%r10),             %xmm25, %xmm3
vpandnq (%r10,%r12,1),      %xmm25, %xmm3
vpandnq 0x10(%r10,%r12,1),  %xmm24, %xmm3
vpandnq 0x11(%r10,%r12,2),  %xmm24, %xmm3
vpandnq 0x3567(%r10,%r12,4),%xmm23, %xmm3

vpandnq (%r10),             %xmm24, %xmm10
vpandnq (%r10,%r12,1),      %xmm24, %xmm10
vpandnq 0x10(%r10,%r12,1),  %xmm25, %xmm10
vpandnq 0x11(%r10,%r12,2),  %xmm21, %xmm10
vpandnq 0x3567(%r10,%r12,4),%xmm21, %xmm10

vpandnq (%r10),             %xmm21, %xmm20
vpandnq (%r10,%r12,1),      %xmm22, %xmm31
vpandnq 0x10(%r10,%r12,1),  %xmm23, %xmm30
vpandnq 0x11(%r10,%r12,2),  %xmm24, %xmm25
vpandnq 0x3567(%r10,%r12,4),%xmm25, %xmm29

vpandnq %ymm0,%ymm3,%ymm1
vpandnq %ymm1,%ymm2,%ymm11
vpandnq %ymm2,%ymm1,%ymm22
vpandnq %ymm3,%ymm12,%ymm1
vpandnq %ymm4,%ymm13,%ymm15
vpandnq %ymm5,%ymm14,%ymm23
vpandnq %ymm6,%ymm24,%ymm2
vpandnq %ymm7,%ymm25,%ymm10
vpandnq %ymm0,%ymm26,%ymm27

vpandnq %ymm11,%ymm0,%ymm3
vpandnq %ymm12,%ymm0,%ymm11
vpandnq %ymm13,%ymm0,%ymm28
vpandnq %ymm14,%ymm10,%ymm4
vpandnq %ymm15,%ymm12,%ymm11
vpandnq %ymm11,%ymm13,%ymm29
vpandnq %ymm12,%ymm30,%ymm5
vpandnq %ymm13,%ymm31,%ymm11
vpandnq %ymm14,%ymm22,%ymm24

vpandnq %ymm20,%ymm0,%ymm6
vpandnq %ymm21,%ymm0,%ymm11
vpandnq %ymm22,%ymm0,%ymm30
vpandnq %ymm23,%ymm12,%ymm7
vpandnq %ymm24,%ymm13,%ymm10
vpandnq %ymm25,%ymm14,%ymm31
vpandnq %ymm26,%ymm22,%ymm1
vpandnq %ymm27,%ymm21,%ymm14
vpandnq %ymm28,%ymm20,%ymm29

vpandnq (%r10),             %ymm5, %ymm1
vpandnq (%r10,%r12,1),      %ymm5, %ymm2
vpandnq 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpandnq 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpandnq 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpandnq (%r10),             %ymm5, %ymm10
vpandnq (%r10,%r12,1),      %ymm5, %ymm11
vpandnq 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpandnq 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpandnq 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpandnq (%r10),             %ymm1, %ymm20
vpandnq (%r10,%r12,1),      %ymm2, %ymm31
vpandnq 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpandnq 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpandnq 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpandnq (%r10),             %ymm15, %ymm3
vpandnq (%r10,%r12,1),      %ymm15, %ymm3
vpandnq 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpandnq 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpandnq 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpandnq (%r10),             %ymm14, %ymm10
vpandnq (%r10,%r12,1),      %ymm14, %ymm10
vpandnq 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpandnq 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpandnq 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpandnq (%r10),             %ymm11, %ymm20
vpandnq (%r10,%r12,1),      %ymm12, %ymm31
vpandnq 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpandnq 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpandnq 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpandnq (%r10),             %ymm25, %ymm3
vpandnq (%r10,%r12,1),      %ymm25, %ymm3
vpandnq 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpandnq 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpandnq 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpandnq (%r10),             %ymm24, %ymm10
vpandnq (%r10,%r12,1),      %ymm24, %ymm10
vpandnq 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpandnq 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpandnq 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpandnq (%r10),             %ymm21, %ymm20
vpandnq (%r10,%r12,1),      %ymm22, %ymm31
vpandnq 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpandnq 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpandnq 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpandnq %ymm0,%ymm3,%ymm1
vpandnq %ymm1,%ymm2,%ymm11
vpandnq %ymm2,%ymm1,%ymm22
vpandnq %ymm3,%ymm12,%ymm1
vpandnq %ymm4,%ymm13,%ymm15
vpandnq %ymm5,%ymm14,%ymm23
vpandnq %ymm6,%ymm24,%ymm2
vpandnq %ymm7,%ymm25,%ymm10
vpandnq %ymm0,%ymm26,%ymm27

vpandnq %ymm11,%ymm0,%ymm3
vpandnq %ymm12,%ymm0,%ymm11
vpandnq %ymm13,%ymm0,%ymm28
vpandnq %ymm14,%ymm10,%ymm4
vpandnq %ymm15,%ymm12,%ymm11
vpandnq %ymm11,%ymm13,%ymm29
vpandnq %ymm12,%ymm30,%ymm5
vpandnq %ymm13,%ymm31,%ymm11
vpandnq %ymm14,%ymm22,%ymm24

vpandnq %ymm20,%ymm0,%ymm6
vpandnq %ymm21,%ymm0,%ymm11
vpandnq %ymm22,%ymm0,%ymm30
vpandnq %ymm23,%ymm12,%ymm7
vpandnq %ymm24,%ymm13,%ymm10
vpandnq %ymm25,%ymm14,%ymm31
vpandnq %ymm26,%ymm22,%ymm1
vpandnq %ymm27,%ymm21,%ymm14
vpandnq %ymm28,%ymm20,%ymm29

vpandnq (%r10),             %ymm5, %ymm1
vpandnq (%r10,%r12,1),      %ymm5, %ymm2
vpandnq 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpandnq 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpandnq 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpandnq (%r10),             %ymm5, %ymm10
vpandnq (%r10,%r12,1),      %ymm5, %ymm11
vpandnq 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpandnq 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpandnq 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpandnq (%r10),             %ymm1, %ymm20
vpandnq (%r10,%r12,1),      %ymm2, %ymm31
vpandnq 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpandnq 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpandnq 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpandnq (%r10),             %ymm15, %ymm3
vpandnq (%r10,%r12,1),      %ymm15, %ymm3
vpandnq 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpandnq 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpandnq 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpandnq (%r10),             %ymm14, %ymm10
vpandnq (%r10,%r12,1),      %ymm14, %ymm10
vpandnq 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpandnq 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpandnq 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpandnq (%r10),             %ymm11, %ymm20
vpandnq (%r10,%r12,1),      %ymm12, %ymm31
vpandnq 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpandnq 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpandnq 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpandnq (%r10),             %ymm25, %ymm3
vpandnq (%r10,%r12,1),      %ymm25, %ymm3
vpandnq 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpandnq 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpandnq 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpandnq (%r10),             %ymm24, %ymm10
vpandnq (%r10,%r12,1),      %ymm24, %ymm10
vpandnq 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpandnq 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpandnq 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpandnq (%r10),             %ymm21, %ymm20
vpandnq (%r10,%r12,1),      %ymm22, %ymm31
vpandnq 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpandnq 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpandnq 0x3567(%r10,%r12,4),%ymm25, %ymm29
