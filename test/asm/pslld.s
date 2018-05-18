pslld %mm0, %mm1
pslld %mm2, %mm7
pslld %mm7, %mm5

pslld (%r10), %mm0
pslld (%r10,%rdx,4), %mm0
pslld 0x10(%r10,%rdx,4), %mm0

pslld (%r10), %mm4
pslld (%r10,%rdx,4), %mm5
pslld 0x10(%r10,%rdx,4), %mm6

vpslld %xmm0,%xmm3,%xmm1
vpslld %xmm1,%xmm2,%xmm11
vpslld %xmm3,%xmm12,%xmm1
vpslld %xmm4,%xmm13,%xmm15

vpslld %xmm11,%xmm0,%xmm3
vpslld %xmm12,%xmm0,%xmm11
vpslld %xmm14,%xmm10,%xmm4
vpslld %xmm15,%xmm12,%xmm11

vpslld (%r10),             %xmm5, %xmm1
vpslld (%r10,%r12,1),      %xmm5, %xmm2
vpslld 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpslld 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpslld 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpslld (%r10),             %xmm5, %xmm10
vpslld (%r10,%r12,1),      %xmm5, %xmm11
vpslld 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpslld 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpslld 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpslld (%r10),             %xmm15, %xmm3
vpslld (%r10,%r12,1),      %xmm15, %xmm3
vpslld 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpslld 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpslld 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpslld (%r10),             %xmm14, %xmm10
vpslld (%r10,%r12,1),      %xmm14, %xmm10
vpslld 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpslld 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpslld 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpslld (%r10),             %ymm5, %ymm1
vpslld (%r10,%r12,1),      %ymm5, %ymm2
vpslld 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpslld 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpslld 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpslld (%r10),             %ymm5, %ymm10
vpslld (%r10,%r12,1),      %ymm5, %ymm11
vpslld 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpslld 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpslld 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpslld (%r10),             %ymm15, %ymm3
vpslld (%r10,%r12,1),      %ymm15, %ymm3
vpslld 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpslld 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpslld 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpslld (%r10),             %ymm14, %ymm10
vpslld (%r10,%r12,1),      %ymm14, %ymm10
vpslld 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpslld 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpslld 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpslld (%r10),             %ymm5, %ymm1
vpslld (%r10,%r12,1),      %ymm5, %ymm2
vpslld 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpslld 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpslld 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpslld (%r10),             %ymm5, %ymm10
vpslld (%r10,%r12,1),      %ymm5, %ymm11
vpslld 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpslld 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpslld 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpslld (%r10),             %ymm15, %ymm3
vpslld (%r10,%r12,1),      %ymm15, %ymm3
vpslld 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpslld 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpslld 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpslld (%r10),             %ymm14, %ymm10
vpslld (%r10,%r12,1),      %ymm14, %ymm10
vpslld 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpslld 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpslld 0x3567(%r10,%r12,4),%ymm11, %ymm10


vpslld %xmm0,%xmm3,%xmm1
vpslld %xmm1,%xmm2,%xmm11
vpslld %xmm2,%xmm1,%xmm22
vpslld %xmm3,%xmm12,%xmm1
vpslld %xmm4,%xmm13,%xmm15
vpslld %xmm5,%xmm14,%xmm23
vpslld %xmm6,%xmm24,%xmm2
vpslld %xmm7,%xmm25,%xmm10
vpslld %xmm0,%xmm26,%xmm27

vpslld %xmm11,%xmm0,%xmm3
vpslld %xmm12,%xmm0,%xmm11
vpslld %xmm13,%xmm0,%xmm28
vpslld %xmm14,%xmm10,%xmm4
vpslld %xmm15,%xmm12,%xmm11
vpslld %xmm11,%xmm13,%xmm29
vpslld %xmm12,%xmm30,%xmm5
vpslld %xmm13,%xmm31,%xmm11
vpslld %xmm14,%xmm22,%xmm24

vpslld %xmm20,%xmm0,%xmm6
vpslld %xmm21,%xmm0,%xmm11
vpslld %xmm22,%xmm0,%xmm30
vpslld %xmm23,%xmm12,%xmm7
vpslld %xmm24,%xmm13,%xmm10
vpslld %xmm25,%xmm14,%xmm31
vpslld %xmm26,%xmm22,%xmm1
vpslld %xmm27,%xmm21,%xmm14
vpslld %xmm28,%xmm20,%xmm29

vpslld (%r10),             %xmm5, %xmm1
vpslld (%r10,%r12,1),      %xmm5, %xmm2
vpslld 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpslld 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpslld 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpslld (%r10),             %xmm5, %xmm10
vpslld (%r10,%r12,1),      %xmm5, %xmm11
vpslld 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpslld 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpslld 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpslld (%r10),             %xmm1, %xmm20
vpslld (%r10,%r12,1),      %xmm2, %xmm31
vpslld 0x10(%r10,%r12,1),  %xmm3, %xmm30
vpslld 0x11(%r10,%r12,2),  %xmm4, %xmm25
vpslld 0x3567(%r10,%r12,4),%xmm5, %xmm29

vpslld (%r10),             %xmm15, %xmm3
vpslld (%r10,%r12,1),      %xmm15, %xmm3
vpslld 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpslld 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpslld 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpslld (%r10),             %xmm14, %xmm10
vpslld (%r10,%r12,1),      %xmm14, %xmm10
vpslld 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpslld 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpslld 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpslld (%r10),             %xmm11, %xmm20
vpslld (%r10,%r12,1),      %xmm12, %xmm31
vpslld 0x10(%r10,%r12,1),  %xmm13, %xmm30
vpslld 0x11(%r10,%r12,2),  %xmm14, %xmm25
vpslld 0x3567(%r10,%r12,4),%xmm15, %xmm29

vpslld (%r10),             %xmm25, %xmm3
vpslld (%r10,%r12,1),      %xmm25, %xmm3
vpslld 0x10(%r10,%r12,1),  %xmm24, %xmm3
vpslld 0x11(%r10,%r12,2),  %xmm24, %xmm3
vpslld 0x3567(%r10,%r12,4),%xmm23, %xmm3

vpslld (%r10),             %xmm24, %xmm10
vpslld (%r10,%r12,1),      %xmm24, %xmm10
vpslld 0x10(%r10,%r12,1),  %xmm25, %xmm10
vpslld 0x11(%r10,%r12,2),  %xmm21, %xmm10
vpslld 0x3567(%r10,%r12,4),%xmm21, %xmm10

vpslld (%r10),             %xmm21, %xmm20
vpslld (%r10,%r12,1),      %xmm22, %xmm31
vpslld 0x10(%r10,%r12,1),  %xmm23, %xmm30
vpslld 0x11(%r10,%r12,2),  %xmm24, %xmm25
vpslld 0x3567(%r10,%r12,4),%xmm25, %xmm29

vpslld (%r10),             %ymm5, %ymm1
vpslld (%r10,%r12,1),      %ymm5, %ymm2
vpslld 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpslld 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpslld 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpslld (%r10),             %ymm5, %ymm10
vpslld (%r10,%r12,1),      %ymm5, %ymm11
vpslld 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpslld 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpslld 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpslld (%r10),             %ymm1, %ymm20
vpslld (%r10,%r12,1),      %ymm2, %ymm31
vpslld 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpslld 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpslld 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpslld (%r10),             %ymm15, %ymm3
vpslld (%r10,%r12,1),      %ymm15, %ymm3
vpslld 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpslld 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpslld 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpslld (%r10),             %ymm14, %ymm10
vpslld (%r10,%r12,1),      %ymm14, %ymm10
vpslld 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpslld 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpslld 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpslld (%r10),             %ymm11, %ymm20
vpslld (%r10,%r12,1),      %ymm12, %ymm31
vpslld 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpslld 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpslld 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpslld (%r10),             %ymm25, %ymm3
vpslld (%r10,%r12,1),      %ymm25, %ymm3
vpslld 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpslld 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpslld 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpslld (%r10),             %ymm24, %ymm10
vpslld (%r10,%r12,1),      %ymm24, %ymm10
vpslld 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpslld 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpslld 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpslld (%r10),             %ymm21, %ymm20
vpslld (%r10,%r12,1),      %ymm22, %ymm31
vpslld 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpslld 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpslld 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpslld (%r10),             %ymm5, %ymm1
vpslld (%r10,%r12,1),      %ymm5, %ymm2
vpslld 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpslld 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpslld 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpslld (%r10),             %ymm5, %ymm10
vpslld (%r10,%r12,1),      %ymm5, %ymm11
vpslld 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpslld 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpslld 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpslld (%r10),             %ymm1, %ymm20
vpslld (%r10,%r12,1),      %ymm2, %ymm31
vpslld 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpslld 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpslld 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpslld (%r10),             %ymm15, %ymm3
vpslld (%r10,%r12,1),      %ymm15, %ymm3
vpslld 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpslld 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpslld 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpslld (%r10),             %ymm14, %ymm10
vpslld (%r10,%r12,1),      %ymm14, %ymm10
vpslld 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpslld 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpslld 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpslld (%r10),             %ymm11, %ymm20
vpslld (%r10,%r12,1),      %ymm12, %ymm31
vpslld 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpslld 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpslld 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpslld (%r10),             %ymm25, %ymm3
vpslld (%r10,%r12,1),      %ymm25, %ymm3
vpslld 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpslld 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpslld 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpslld (%r10),             %ymm24, %ymm10
vpslld (%r10,%r12,1),      %ymm24, %ymm10
vpslld 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpslld 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpslld 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpslld (%r10),             %ymm21, %ymm20
vpslld (%r10,%r12,1),      %ymm22, %ymm31
vpslld 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpslld 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpslld 0x3567(%r10,%r12,4),%ymm25, %ymm29


vpsllq %xmm0,%xmm3,%xmm1
vpsllq %xmm1,%xmm2,%xmm11
vpsllq %xmm2,%xmm1,%xmm22
vpsllq %xmm3,%xmm12,%xmm1
vpsllq %xmm4,%xmm13,%xmm15
vpsllq %xmm5,%xmm14,%xmm23
vpsllq %xmm6,%xmm24,%xmm2
vpsllq %xmm7,%xmm25,%xmm10
vpsllq %xmm0,%xmm26,%xmm27

vpsllq %xmm11,%xmm0,%xmm3
vpsllq %xmm12,%xmm0,%xmm11
vpsllq %xmm13,%xmm0,%xmm28
vpsllq %xmm14,%xmm10,%xmm4
vpsllq %xmm15,%xmm12,%xmm11
vpsllq %xmm11,%xmm13,%xmm29
vpsllq %xmm12,%xmm30,%xmm5
vpsllq %xmm13,%xmm31,%xmm11
vpsllq %xmm14,%xmm22,%xmm24

vpsllq %xmm20,%xmm0,%xmm6
vpsllq %xmm21,%xmm0,%xmm11
vpsllq %xmm22,%xmm0,%xmm30
vpsllq %xmm23,%xmm12,%xmm7
vpsllq %xmm24,%xmm13,%xmm10
vpsllq %xmm25,%xmm14,%xmm31
vpsllq %xmm26,%xmm22,%xmm1
vpsllq %xmm27,%xmm21,%xmm14
vpsllq %xmm28,%xmm20,%xmm29

vpsllq (%r10),             %xmm5, %xmm1
vpsllq (%r10,%r12,1),      %xmm5, %xmm2
vpsllq 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpsllq 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpsllq 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpsllq (%r10),             %xmm5, %xmm10
vpsllq (%r10,%r12,1),      %xmm5, %xmm11
vpsllq 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpsllq 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpsllq 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpsllq (%r10),             %xmm1, %xmm20
vpsllq (%r10,%r12,1),      %xmm2, %xmm31
vpsllq 0x10(%r10,%r12,1),  %xmm3, %xmm30
vpsllq 0x11(%r10,%r12,2),  %xmm4, %xmm25
vpsllq 0x3567(%r10,%r12,4),%xmm5, %xmm29

vpsllq (%r10),             %xmm15, %xmm3
vpsllq (%r10,%r12,1),      %xmm15, %xmm3
vpsllq 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpsllq 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpsllq 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpsllq (%r10),             %xmm14, %xmm10
vpsllq (%r10,%r12,1),      %xmm14, %xmm10
vpsllq 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpsllq 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpsllq 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpsllq (%r10),             %xmm11, %xmm20
vpsllq (%r10,%r12,1),      %xmm12, %xmm31
vpsllq 0x10(%r10,%r12,1),  %xmm13, %xmm30
vpsllq 0x11(%r10,%r12,2),  %xmm14, %xmm25
vpsllq 0x3567(%r10,%r12,4),%xmm15, %xmm29

vpsllq (%r10),             %xmm25, %xmm3
vpsllq (%r10,%r12,1),      %xmm25, %xmm3
vpsllq 0x10(%r10,%r12,1),  %xmm24, %xmm3
vpsllq 0x11(%r10,%r12,2),  %xmm24, %xmm3
vpsllq 0x3567(%r10,%r12,4),%xmm23, %xmm3

vpsllq (%r10),             %xmm24, %xmm10
vpsllq (%r10,%r12,1),      %xmm24, %xmm10
vpsllq 0x10(%r10,%r12,1),  %xmm25, %xmm10
vpsllq 0x11(%r10,%r12,2),  %xmm21, %xmm10
vpsllq 0x3567(%r10,%r12,4),%xmm21, %xmm10

vpsllq (%r10),             %xmm21, %xmm20
vpsllq (%r10,%r12,1),      %xmm22, %xmm31
vpsllq 0x10(%r10,%r12,1),  %xmm23, %xmm30
vpsllq 0x11(%r10,%r12,2),  %xmm24, %xmm25
vpsllq 0x3567(%r10,%r12,4),%xmm25, %xmm29

vpsllq (%r10),             %ymm5, %ymm1
vpsllq (%r10,%r12,1),      %ymm5, %ymm2
vpsllq 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpsllq 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpsllq 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpsllq (%r10),             %ymm5, %ymm10
vpsllq (%r10,%r12,1),      %ymm5, %ymm11
vpsllq 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpsllq 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpsllq 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpsllq (%r10),             %ymm1, %ymm20
vpsllq (%r10,%r12,1),      %ymm2, %ymm31
vpsllq 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpsllq 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpsllq 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpsllq (%r10),             %ymm15, %ymm3
vpsllq (%r10,%r12,1),      %ymm15, %ymm3
vpsllq 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpsllq 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpsllq 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpsllq (%r10),             %ymm14, %ymm10
vpsllq (%r10,%r12,1),      %ymm14, %ymm10
vpsllq 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpsllq 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpsllq 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpsllq (%r10),             %ymm11, %ymm20
vpsllq (%r10,%r12,1),      %ymm12, %ymm31
vpsllq 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpsllq 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpsllq 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpsllq (%r10),             %ymm25, %ymm3
vpsllq (%r10,%r12,1),      %ymm25, %ymm3
vpsllq 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpsllq 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpsllq 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpsllq (%r10),             %ymm24, %ymm10
vpsllq (%r10,%r12,1),      %ymm24, %ymm10
vpsllq 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpsllq 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpsllq 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpsllq (%r10),             %ymm21, %ymm20
vpsllq (%r10,%r12,1),      %ymm22, %ymm31
vpsllq 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpsllq 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpsllq 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpsllq (%r10),             %ymm5, %ymm1
vpsllq (%r10,%r12,1),      %ymm5, %ymm2
vpsllq 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpsllq 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpsllq 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpsllq (%r10),             %ymm5, %ymm10
vpsllq (%r10,%r12,1),      %ymm5, %ymm11
vpsllq 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpsllq 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpsllq 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpsllq (%r10),             %ymm1, %ymm20
vpsllq (%r10,%r12,1),      %ymm2, %ymm31
vpsllq 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpsllq 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpsllq 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpsllq (%r10),             %ymm15, %ymm3
vpsllq (%r10,%r12,1),      %ymm15, %ymm3
vpsllq 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpsllq 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpsllq 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpsllq (%r10),             %ymm14, %ymm10
vpsllq (%r10,%r12,1),      %ymm14, %ymm10
vpsllq 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpsllq 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpsllq 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpsllq (%r10),             %ymm11, %ymm20
vpsllq (%r10,%r12,1),      %ymm12, %ymm31
vpsllq 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpsllq 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpsllq 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpsllq (%r10),             %ymm25, %ymm3
vpsllq (%r10,%r12,1),      %ymm25, %ymm3
vpsllq 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpsllq 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpsllq 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpsllq (%r10),             %ymm24, %ymm10
vpsllq (%r10,%r12,1),      %ymm24, %ymm10
vpsllq 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpsllq 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpsllq 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpsllq (%r10),             %ymm21, %ymm20
vpsllq (%r10,%r12,1),      %ymm22, %ymm31
vpsllq 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpsllq 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpsllq 0x3567(%r10,%r12,4),%ymm25, %ymm29


psllw %mm0, %mm1
psllw %mm2, %mm7
psllw %mm7, %mm5

psllw (%r10), %mm0
psllw (%r10,%rdx,4), %mm0
psllw 0x10(%r10,%rdx,4), %mm0

psllw (%r10), %mm4
psllw (%r10,%rdx,4), %mm5
psllw 0x10(%r10,%rdx,4), %mm6

vpsllw %xmm0,%xmm3,%xmm1
vpsllw %xmm1,%xmm2,%xmm11
vpsllw %xmm3,%xmm12,%xmm1
vpsllw %xmm4,%xmm13,%xmm15

vpsllw %xmm11,%xmm0,%xmm3
vpsllw %xmm12,%xmm0,%xmm11
vpsllw %xmm14,%xmm10,%xmm4
vpsllw %xmm15,%xmm12,%xmm11

vpsllw (%r10),             %xmm5, %xmm1
vpsllw (%r10,%r12,1),      %xmm5, %xmm2
vpsllw 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpsllw 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpsllw 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpsllw (%r10),             %xmm5, %xmm10
vpsllw (%r10,%r12,1),      %xmm5, %xmm11
vpsllw 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpsllw 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpsllw 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpsllw (%r10),             %xmm15, %xmm3
vpsllw (%r10,%r12,1),      %xmm15, %xmm3
vpsllw 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpsllw 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpsllw 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpsllw (%r10),             %xmm14, %xmm10
vpsllw (%r10,%r12,1),      %xmm14, %xmm10
vpsllw 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpsllw 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpsllw 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpsllw (%r10),             %ymm5, %ymm1
vpsllw (%r10,%r12,1),      %ymm5, %ymm2
vpsllw 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpsllw 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpsllw 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpsllw (%r10),             %ymm5, %ymm10
vpsllw (%r10,%r12,1),      %ymm5, %ymm11
vpsllw 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpsllw 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpsllw 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpsllw (%r10),             %ymm15, %ymm3
vpsllw (%r10,%r12,1),      %ymm15, %ymm3
vpsllw 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpsllw 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpsllw 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpsllw (%r10),             %ymm14, %ymm10
vpsllw (%r10,%r12,1),      %ymm14, %ymm10
vpsllw 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpsllw 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpsllw 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpsllw (%r10),             %ymm5, %ymm1
vpsllw (%r10,%r12,1),      %ymm5, %ymm2
vpsllw 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpsllw 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpsllw 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpsllw (%r10),             %ymm5, %ymm10
vpsllw (%r10,%r12,1),      %ymm5, %ymm11
vpsllw 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpsllw 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpsllw 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpsllw (%r10),             %ymm15, %ymm3
vpsllw (%r10,%r12,1),      %ymm15, %ymm3
vpsllw 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpsllw 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpsllw 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpsllw (%r10),             %ymm14, %ymm10
vpsllw (%r10,%r12,1),      %ymm14, %ymm10
vpsllw 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpsllw 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpsllw 0x3567(%r10,%r12,4),%ymm11, %ymm10


vpsllw %xmm0,%xmm3,%xmm1
vpsllw %xmm1,%xmm2,%xmm11
vpsllw %xmm2,%xmm1,%xmm22
vpsllw %xmm3,%xmm12,%xmm1
vpsllw %xmm4,%xmm13,%xmm15
vpsllw %xmm5,%xmm14,%xmm23
vpsllw %xmm6,%xmm24,%xmm2
vpsllw %xmm7,%xmm25,%xmm10
vpsllw %xmm0,%xmm26,%xmm27

vpsllw %xmm11,%xmm0,%xmm3
vpsllw %xmm12,%xmm0,%xmm11
vpsllw %xmm13,%xmm0,%xmm28
vpsllw %xmm14,%xmm10,%xmm4
vpsllw %xmm15,%xmm12,%xmm11
vpsllw %xmm11,%xmm13,%xmm29
vpsllw %xmm12,%xmm30,%xmm5
vpsllw %xmm13,%xmm31,%xmm11
vpsllw %xmm14,%xmm22,%xmm24

vpsllw %xmm20,%xmm0,%xmm6
vpsllw %xmm21,%xmm0,%xmm11
vpsllw %xmm22,%xmm0,%xmm30
vpsllw %xmm23,%xmm12,%xmm7
vpsllw %xmm24,%xmm13,%xmm10
vpsllw %xmm25,%xmm14,%xmm31
vpsllw %xmm26,%xmm22,%xmm1
vpsllw %xmm27,%xmm21,%xmm14
vpsllw %xmm28,%xmm20,%xmm29

vpsllw (%r10),             %xmm5, %xmm1
vpsllw (%r10,%r12,1),      %xmm5, %xmm2
vpsllw 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpsllw 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpsllw 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpsllw (%r10),             %xmm5, %xmm10
vpsllw (%r10,%r12,1),      %xmm5, %xmm11
vpsllw 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpsllw 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpsllw 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpsllw (%r10),             %xmm1, %xmm20
vpsllw (%r10,%r12,1),      %xmm2, %xmm31
vpsllw 0x10(%r10,%r12,1),  %xmm3, %xmm30
vpsllw 0x11(%r10,%r12,2),  %xmm4, %xmm25
vpsllw 0x3567(%r10,%r12,4),%xmm5, %xmm29

vpsllw (%r10),             %xmm15, %xmm3
vpsllw (%r10,%r12,1),      %xmm15, %xmm3
vpsllw 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpsllw 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpsllw 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpsllw (%r10),             %xmm14, %xmm10
vpsllw (%r10,%r12,1),      %xmm14, %xmm10
vpsllw 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpsllw 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpsllw 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpsllw (%r10),             %xmm11, %xmm20
vpsllw (%r10,%r12,1),      %xmm12, %xmm31
vpsllw 0x10(%r10,%r12,1),  %xmm13, %xmm30
vpsllw 0x11(%r10,%r12,2),  %xmm14, %xmm25
vpsllw 0x3567(%r10,%r12,4),%xmm15, %xmm29

vpsllw (%r10),             %xmm25, %xmm3
vpsllw (%r10,%r12,1),      %xmm25, %xmm3
vpsllw 0x10(%r10,%r12,1),  %xmm24, %xmm3
vpsllw 0x11(%r10,%r12,2),  %xmm24, %xmm3
vpsllw 0x3567(%r10,%r12,4),%xmm23, %xmm3

vpsllw (%r10),             %xmm24, %xmm10
vpsllw (%r10,%r12,1),      %xmm24, %xmm10
vpsllw 0x10(%r10,%r12,1),  %xmm25, %xmm10
vpsllw 0x11(%r10,%r12,2),  %xmm21, %xmm10
vpsllw 0x3567(%r10,%r12,4),%xmm21, %xmm10

vpsllw (%r10),             %xmm21, %xmm20
vpsllw (%r10,%r12,1),      %xmm22, %xmm31
vpsllw 0x10(%r10,%r12,1),  %xmm23, %xmm30
vpsllw 0x11(%r10,%r12,2),  %xmm24, %xmm25
vpsllw 0x3567(%r10,%r12,4),%xmm25, %xmm29

vpsllw (%r10),             %ymm5, %ymm1
vpsllw (%r10,%r12,1),      %ymm5, %ymm2
vpsllw 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpsllw 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpsllw 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpsllw (%r10),             %ymm5, %ymm10
vpsllw (%r10,%r12,1),      %ymm5, %ymm11
vpsllw 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpsllw 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpsllw 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpsllw (%r10),             %ymm1, %ymm20
vpsllw (%r10,%r12,1),      %ymm2, %ymm31
vpsllw 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpsllw 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpsllw 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpsllw (%r10),             %ymm15, %ymm3
vpsllw (%r10,%r12,1),      %ymm15, %ymm3
vpsllw 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpsllw 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpsllw 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpsllw (%r10),             %ymm14, %ymm10
vpsllw (%r10,%r12,1),      %ymm14, %ymm10
vpsllw 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpsllw 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpsllw 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpsllw (%r10),             %ymm11, %ymm20
vpsllw (%r10,%r12,1),      %ymm12, %ymm31
vpsllw 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpsllw 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpsllw 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpsllw (%r10),             %ymm25, %ymm3
vpsllw (%r10,%r12,1),      %ymm25, %ymm3
vpsllw 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpsllw 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpsllw 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpsllw (%r10),             %ymm24, %ymm10
vpsllw (%r10,%r12,1),      %ymm24, %ymm10
vpsllw 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpsllw 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpsllw 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpsllw (%r10),             %ymm21, %ymm20
vpsllw (%r10,%r12,1),      %ymm22, %ymm31
vpsllw 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpsllw 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpsllw 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpsllw (%r10),             %ymm5, %ymm1
vpsllw (%r10,%r12,1),      %ymm5, %ymm2
vpsllw 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpsllw 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpsllw 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpsllw (%r10),             %ymm5, %ymm10
vpsllw (%r10,%r12,1),      %ymm5, %ymm11
vpsllw 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpsllw 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpsllw 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpsllw (%r10),             %ymm1, %ymm20
vpsllw (%r10,%r12,1),      %ymm2, %ymm31
vpsllw 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpsllw 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpsllw 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpsllw (%r10),             %ymm15, %ymm3
vpsllw (%r10,%r12,1),      %ymm15, %ymm3
vpsllw 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpsllw 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpsllw 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpsllw (%r10),             %ymm14, %ymm10
vpsllw (%r10,%r12,1),      %ymm14, %ymm10
vpsllw 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpsllw 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpsllw 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpsllw (%r10),             %ymm11, %ymm20
vpsllw (%r10,%r12,1),      %ymm12, %ymm31
vpsllw 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpsllw 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpsllw 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpsllw (%r10),             %ymm25, %ymm3
vpsllw (%r10,%r12,1),      %ymm25, %ymm3
vpsllw 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpsllw 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpsllw 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpsllw (%r10),             %ymm24, %ymm10
vpsllw (%r10,%r12,1),      %ymm24, %ymm10
vpsllw 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpsllw 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpsllw 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpsllw (%r10),             %ymm21, %ymm20
vpsllw (%r10,%r12,1),      %ymm22, %ymm31
vpsllw 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpsllw 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpsllw 0x3567(%r10,%r12,4),%ymm25, %ymm29


vpslld (%r10),             %zmm5, %zmm1
vpslld (%r10,%r12,1),      %zmm5, %zmm2
vpslld 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpslld 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpslld 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpslld (%r10),             %zmm5, %zmm10
vpslld (%r10,%r12,1),      %zmm5, %zmm11
vpslld 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpslld 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpslld 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpslld (%r10),             %zmm15, %zmm3
vpslld (%r10,%r12,1),      %zmm15, %zmm3
vpslld 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpslld 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpslld 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpslld (%r10),             %zmm14, %zmm10
vpslld (%r10,%r12,1),      %zmm14, %zmm10
vpslld 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpslld 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpslld 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpslld (%r10),             %zmm5, %zmm1
vpslld (%r10,%r12,1),      %zmm5, %zmm2
vpslld 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpslld 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpslld 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpslld (%r10),             %zmm5, %zmm10
vpslld (%r10,%r12,1),      %zmm5, %zmm11
vpslld 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpslld 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpslld 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpslld (%r10),             %zmm15, %zmm3
vpslld (%r10,%r12,1),      %zmm15, %zmm3
vpslld 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpslld 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpslld 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpslld (%r10),             %zmm14, %zmm10
vpslld (%r10,%r12,1),      %zmm14, %zmm10
vpslld 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpslld 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpslld 0x3567(%r10,%r12,4),%zmm11, %zmm10


vpslld (%r10),             %zmm5, %zmm1
vpslld (%r10,%r12,1),      %zmm5, %zmm2
vpslld 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpslld 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpslld 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpslld (%r10),             %zmm5, %zmm10
vpslld (%r10,%r12,1),      %zmm5, %zmm11
vpslld 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpslld 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpslld 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpslld (%r10),             %zmm1, %zmm20
vpslld (%r10,%r12,1),      %zmm2, %zmm31
vpslld 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpslld 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpslld 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpslld (%r10),             %zmm15, %zmm3
vpslld (%r10,%r12,1),      %zmm15, %zmm3
vpslld 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpslld 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpslld 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpslld (%r10),             %zmm14, %zmm10
vpslld (%r10,%r12,1),      %zmm14, %zmm10
vpslld 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpslld 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpslld 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpslld (%r10),             %zmm11, %zmm20
vpslld (%r10,%r12,1),      %zmm12, %zmm31
vpslld 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpslld 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpslld 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpslld (%r10),             %zmm25, %zmm3
vpslld (%r10,%r12,1),      %zmm25, %zmm3
vpslld 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpslld 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpslld 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpslld (%r10),             %zmm24, %zmm10
vpslld (%r10,%r12,1),      %zmm24, %zmm10
vpslld 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpslld 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpslld 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpslld (%r10),             %zmm21, %zmm20
vpslld (%r10,%r12,1),      %zmm22, %zmm31
vpslld 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpslld 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpslld 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpslld (%r10),             %zmm5, %zmm1
vpslld (%r10,%r12,1),      %zmm5, %zmm2
vpslld 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpslld 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpslld 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpslld (%r10),             %zmm5, %zmm10
vpslld (%r10,%r12,1),      %zmm5, %zmm11
vpslld 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpslld 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpslld 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpslld (%r10),             %zmm1, %zmm20
vpslld (%r10,%r12,1),      %zmm2, %zmm31
vpslld 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpslld 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpslld 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpslld (%r10),             %zmm15, %zmm3
vpslld (%r10,%r12,1),      %zmm15, %zmm3
vpslld 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpslld 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpslld 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpslld (%r10),             %zmm14, %zmm10
vpslld (%r10,%r12,1),      %zmm14, %zmm10
vpslld 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpslld 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpslld 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpslld (%r10),             %zmm11, %zmm20
vpslld (%r10,%r12,1),      %zmm12, %zmm31
vpslld 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpslld 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpslld 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpslld (%r10),             %zmm25, %zmm3
vpslld (%r10,%r12,1),      %zmm25, %zmm3
vpslld 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpslld 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpslld 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpslld (%r10),             %zmm24, %zmm10
vpslld (%r10,%r12,1),      %zmm24, %zmm10
vpslld 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpslld 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpslld 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpslld (%r10),             %zmm21, %zmm20
vpslld (%r10,%r12,1),      %zmm22, %zmm31
vpslld 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpslld 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpslld 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpsllq (%r10),             %zmm5, %zmm1
vpsllq (%r10,%r12,1),      %zmm5, %zmm2
vpsllq 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpsllq 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpsllq 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpsllq (%r10),             %zmm5, %zmm10
vpsllq (%r10,%r12,1),      %zmm5, %zmm11
vpsllq 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpsllq 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpsllq 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpsllq (%r10),             %zmm1, %zmm20
vpsllq (%r10,%r12,1),      %zmm2, %zmm31
vpsllq 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpsllq 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpsllq 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpsllq (%r10),             %zmm15, %zmm3
vpsllq (%r10,%r12,1),      %zmm15, %zmm3
vpsllq 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpsllq 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpsllq 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpsllq (%r10),             %zmm14, %zmm10
vpsllq (%r10,%r12,1),      %zmm14, %zmm10
vpsllq 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpsllq 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpsllq 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpsllq (%r10),             %zmm11, %zmm20
vpsllq (%r10,%r12,1),      %zmm12, %zmm31
vpsllq 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpsllq 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpsllq 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpsllq (%r10),             %zmm25, %zmm3
vpsllq (%r10,%r12,1),      %zmm25, %zmm3
vpsllq 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpsllq 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpsllq 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpsllq (%r10),             %zmm24, %zmm10
vpsllq (%r10,%r12,1),      %zmm24, %zmm10
vpsllq 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpsllq 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpsllq 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpsllq (%r10),             %zmm21, %zmm20
vpsllq (%r10,%r12,1),      %zmm22, %zmm31
vpsllq 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpsllq 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpsllq 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpsllq (%r10),             %zmm5, %zmm1
vpsllq (%r10,%r12,1),      %zmm5, %zmm2
vpsllq 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpsllq 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpsllq 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpsllq (%r10),             %zmm5, %zmm10
vpsllq (%r10,%r12,1),      %zmm5, %zmm11
vpsllq 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpsllq 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpsllq 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpsllq (%r10),             %zmm1, %zmm20
vpsllq (%r10,%r12,1),      %zmm2, %zmm31
vpsllq 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpsllq 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpsllq 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpsllq (%r10),             %zmm15, %zmm3
vpsllq (%r10,%r12,1),      %zmm15, %zmm3
vpsllq 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpsllq 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpsllq 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpsllq (%r10),             %zmm14, %zmm10
vpsllq (%r10,%r12,1),      %zmm14, %zmm10
vpsllq 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpsllq 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpsllq 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpsllq (%r10),             %zmm11, %zmm20
vpsllq (%r10,%r12,1),      %zmm12, %zmm31
vpsllq 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpsllq 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpsllq 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpsllq (%r10),             %zmm25, %zmm3
vpsllq (%r10,%r12,1),      %zmm25, %zmm3
vpsllq 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpsllq 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpsllq 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpsllq (%r10),             %zmm24, %zmm10
vpsllq (%r10,%r12,1),      %zmm24, %zmm10
vpsllq 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpsllq 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpsllq 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpsllq (%r10),             %zmm21, %zmm20
vpsllq (%r10,%r12,1),      %zmm22, %zmm31
vpsllq 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpsllq 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpsllq 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpsllw (%r10),             %zmm5, %zmm1
vpsllw (%r10,%r12,1),      %zmm5, %zmm2
vpsllw 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpsllw 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpsllw 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpsllw (%r10),             %zmm5, %zmm10
vpsllw (%r10,%r12,1),      %zmm5, %zmm11
vpsllw 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpsllw 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpsllw 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpsllw (%r10),             %zmm15, %zmm3
vpsllw (%r10,%r12,1),      %zmm15, %zmm3
vpsllw 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpsllw 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpsllw 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpsllw (%r10),             %zmm14, %zmm10
vpsllw (%r10,%r12,1),      %zmm14, %zmm10
vpsllw 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpsllw 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpsllw 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpsllw (%r10),             %zmm5, %zmm1
vpsllw (%r10,%r12,1),      %zmm5, %zmm2
vpsllw 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpsllw 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpsllw 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpsllw (%r10),             %zmm5, %zmm10
vpsllw (%r10,%r12,1),      %zmm5, %zmm11
vpsllw 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpsllw 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpsllw 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpsllw (%r10),             %zmm15, %zmm3
vpsllw (%r10,%r12,1),      %zmm15, %zmm3
vpsllw 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpsllw 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpsllw 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpsllw (%r10),             %zmm14, %zmm10
vpsllw (%r10,%r12,1),      %zmm14, %zmm10
vpsllw 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpsllw 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpsllw 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpsllw (%r10),             %zmm5, %zmm1
vpsllw (%r10,%r12,1),      %zmm5, %zmm2
vpsllw 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpsllw 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpsllw 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpsllw (%r10),             %zmm5, %zmm10
vpsllw (%r10,%r12,1),      %zmm5, %zmm11
vpsllw 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpsllw 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpsllw 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpsllw (%r10),             %zmm1, %zmm20
vpsllw (%r10,%r12,1),      %zmm2, %zmm31
vpsllw 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpsllw 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpsllw 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpsllw (%r10),             %zmm15, %zmm3
vpsllw (%r10,%r12,1),      %zmm15, %zmm3
vpsllw 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpsllw 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpsllw 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpsllw (%r10),             %zmm14, %zmm10
vpsllw (%r10,%r12,1),      %zmm14, %zmm10
vpsllw 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpsllw 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpsllw 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpsllw (%r10),             %zmm11, %zmm20
vpsllw (%r10,%r12,1),      %zmm12, %zmm31
vpsllw 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpsllw 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpsllw 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpsllw (%r10),             %zmm25, %zmm3
vpsllw (%r10,%r12,1),      %zmm25, %zmm3
vpsllw 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpsllw 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpsllw 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpsllw (%r10),             %zmm24, %zmm10
vpsllw (%r10,%r12,1),      %zmm24, %zmm10
vpsllw 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpsllw 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpsllw 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpsllw (%r10),             %zmm21, %zmm20
vpsllw (%r10,%r12,1),      %zmm22, %zmm31
vpsllw 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpsllw 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpsllw 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpsllw (%r10),             %zmm5, %zmm1
vpsllw (%r10,%r12,1),      %zmm5, %zmm2
vpsllw 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpsllw 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpsllw 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpsllw (%r10),             %zmm5, %zmm10
vpsllw (%r10,%r12,1),      %zmm5, %zmm11
vpsllw 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpsllw 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpsllw 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpsllw (%r10),             %zmm1, %zmm20
vpsllw (%r10,%r12,1),      %zmm2, %zmm31
vpsllw 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpsllw 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpsllw 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpsllw (%r10),             %zmm15, %zmm3
vpsllw (%r10,%r12,1),      %zmm15, %zmm3
vpsllw 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpsllw 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpsllw 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpsllw (%r10),             %zmm14, %zmm10
vpsllw (%r10,%r12,1),      %zmm14, %zmm10
vpsllw 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpsllw 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpsllw 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpsllw (%r10),             %zmm11, %zmm20
vpsllw (%r10,%r12,1),      %zmm12, %zmm31
vpsllw 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpsllw 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpsllw 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpsllw (%r10),             %zmm25, %zmm3
vpsllw (%r10,%r12,1),      %zmm25, %zmm3
vpsllw 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpsllw 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpsllw 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpsllw (%r10),             %zmm24, %zmm10
vpsllw (%r10,%r12,1),      %zmm24, %zmm10
vpsllw 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpsllw 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpsllw 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpsllw (%r10),             %zmm21, %zmm20
vpsllw (%r10,%r12,1),      %zmm22, %zmm31
vpsllw 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpsllw 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpsllw 0x3567(%r10,%r12,4),%zmm25, %zmm29

