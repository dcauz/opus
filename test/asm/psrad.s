psrad %mm0, %mm1
psrad %mm2, %mm7
psrad %mm7, %mm5

psrad (%r10), %mm0
psrad (%r10,%rdx,4), %mm0
psrad 0x10(%r10,%rdx,4), %mm0

psrad (%r10), %mm4
psrad (%r10,%rdx,4), %mm5
psrad 0x10(%r10,%rdx,4), %mm6

vpsrad %xmm0,%xmm3,%xmm1
vpsrad %xmm1,%xmm2,%xmm11
vpsrad %xmm3,%xmm12,%xmm1
vpsrad %xmm4,%xmm13,%xmm15

vpsrad %xmm11,%xmm0,%xmm3
vpsrad %xmm12,%xmm0,%xmm11
vpsrad %xmm14,%xmm10,%xmm4
vpsrad %xmm15,%xmm12,%xmm11

vpsrad (%r10),             %xmm5, %xmm1
vpsrad (%r10,%r12,1),      %xmm5, %xmm2
vpsrad 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpsrad 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpsrad 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpsrad (%r10),             %xmm5, %xmm10
vpsrad (%r10,%r12,1),      %xmm5, %xmm11
vpsrad 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpsrad 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpsrad 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpsrad (%r10),             %xmm15, %xmm3
vpsrad (%r10,%r12,1),      %xmm15, %xmm3
vpsrad 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpsrad 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpsrad 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpsrad (%r10),             %xmm14, %xmm10
vpsrad (%r10,%r12,1),      %xmm14, %xmm10
vpsrad 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpsrad 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpsrad 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpsrad (%r10),             %ymm5, %ymm1
vpsrad (%r10,%r12,1),      %ymm5, %ymm2
vpsrad 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpsrad 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpsrad 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpsrad (%r10),             %ymm5, %ymm10
vpsrad (%r10,%r12,1),      %ymm5, %ymm11
vpsrad 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpsrad 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpsrad 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpsrad (%r10),             %ymm15, %ymm3
vpsrad (%r10,%r12,1),      %ymm15, %ymm3
vpsrad 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpsrad 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpsrad 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpsrad (%r10),             %ymm14, %ymm10
vpsrad (%r10,%r12,1),      %ymm14, %ymm10
vpsrad 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpsrad 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpsrad 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpsrad (%r10),             %ymm5, %ymm1
vpsrad (%r10,%r12,1),      %ymm5, %ymm2
vpsrad 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpsrad 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpsrad 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpsrad (%r10),             %ymm5, %ymm10
vpsrad (%r10,%r12,1),      %ymm5, %ymm11
vpsrad 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpsrad 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpsrad 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpsrad (%r10),             %ymm15, %ymm3
vpsrad (%r10,%r12,1),      %ymm15, %ymm3
vpsrad 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpsrad 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpsrad 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpsrad (%r10),             %ymm14, %ymm10
vpsrad (%r10,%r12,1),      %ymm14, %ymm10
vpsrad 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpsrad 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpsrad 0x3567(%r10,%r12,4),%ymm11, %ymm10


vpsrad %xmm0,%xmm3,%xmm1
vpsrad %xmm1,%xmm2,%xmm11
vpsrad %xmm2,%xmm1,%xmm22
vpsrad %xmm3,%xmm12,%xmm1
vpsrad %xmm4,%xmm13,%xmm15
vpsrad %xmm5,%xmm14,%xmm23
vpsrad %xmm6,%xmm24,%xmm2
vpsrad %xmm7,%xmm25,%xmm10
vpsrad %xmm0,%xmm26,%xmm27

vpsrad %xmm11,%xmm0,%xmm3
vpsrad %xmm12,%xmm0,%xmm11
vpsrad %xmm13,%xmm0,%xmm28
vpsrad %xmm14,%xmm10,%xmm4
vpsrad %xmm15,%xmm12,%xmm11
vpsrad %xmm11,%xmm13,%xmm29
vpsrad %xmm12,%xmm30,%xmm5
vpsrad %xmm13,%xmm31,%xmm11
vpsrad %xmm14,%xmm22,%xmm24

vpsrad %xmm20,%xmm0,%xmm6
vpsrad %xmm21,%xmm0,%xmm11
vpsrad %xmm22,%xmm0,%xmm30
vpsrad %xmm23,%xmm12,%xmm7
vpsrad %xmm24,%xmm13,%xmm10
vpsrad %xmm25,%xmm14,%xmm31
vpsrad %xmm26,%xmm22,%xmm1
vpsrad %xmm27,%xmm21,%xmm14
vpsrad %xmm28,%xmm20,%xmm29

vpsrad (%r10),             %xmm5, %xmm1
vpsrad (%r10,%r12,1),      %xmm5, %xmm2
vpsrad 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpsrad 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpsrad 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpsrad (%r10),             %xmm5, %xmm10
vpsrad (%r10,%r12,1),      %xmm5, %xmm11
vpsrad 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpsrad 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpsrad 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpsrad (%r10),             %xmm1, %xmm20
vpsrad (%r10,%r12,1),      %xmm2, %xmm31
vpsrad 0x10(%r10,%r12,1),  %xmm3, %xmm30
vpsrad 0x11(%r10,%r12,2),  %xmm4, %xmm25
vpsrad 0x3567(%r10,%r12,4),%xmm5, %xmm29

vpsrad (%r10),             %xmm15, %xmm3
vpsrad (%r10,%r12,1),      %xmm15, %xmm3
vpsrad 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpsrad 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpsrad 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpsrad (%r10),             %xmm14, %xmm10
vpsrad (%r10,%r12,1),      %xmm14, %xmm10
vpsrad 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpsrad 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpsrad 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpsrad (%r10),             %xmm11, %xmm20
vpsrad (%r10,%r12,1),      %xmm12, %xmm31
vpsrad 0x10(%r10,%r12,1),  %xmm13, %xmm30
vpsrad 0x11(%r10,%r12,2),  %xmm14, %xmm25
vpsrad 0x3567(%r10,%r12,4),%xmm15, %xmm29

vpsrad (%r10),             %xmm25, %xmm3
vpsrad (%r10,%r12,1),      %xmm25, %xmm3
vpsrad 0x10(%r10,%r12,1),  %xmm24, %xmm3
vpsrad 0x11(%r10,%r12,2),  %xmm24, %xmm3
vpsrad 0x3567(%r10,%r12,4),%xmm23, %xmm3

vpsrad (%r10),             %xmm24, %xmm10
vpsrad (%r10,%r12,1),      %xmm24, %xmm10
vpsrad 0x10(%r10,%r12,1),  %xmm25, %xmm10
vpsrad 0x11(%r10,%r12,2),  %xmm21, %xmm10
vpsrad 0x3567(%r10,%r12,4),%xmm21, %xmm10

vpsrad (%r10),             %xmm21, %xmm20
vpsrad (%r10,%r12,1),      %xmm22, %xmm31
vpsrad 0x10(%r10,%r12,1),  %xmm23, %xmm30
vpsrad 0x11(%r10,%r12,2),  %xmm24, %xmm25
vpsrad 0x3567(%r10,%r12,4),%xmm25, %xmm29

vpsrad (%r10),             %ymm5, %ymm1
vpsrad (%r10,%r12,1),      %ymm5, %ymm2
vpsrad 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpsrad 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpsrad 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpsrad (%r10),             %ymm5, %ymm10
vpsrad (%r10,%r12,1),      %ymm5, %ymm11
vpsrad 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpsrad 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpsrad 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpsrad (%r10),             %ymm1, %ymm20
vpsrad (%r10,%r12,1),      %ymm2, %ymm31
vpsrad 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpsrad 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpsrad 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpsrad (%r10),             %ymm15, %ymm3
vpsrad (%r10,%r12,1),      %ymm15, %ymm3
vpsrad 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpsrad 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpsrad 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpsrad (%r10),             %ymm14, %ymm10
vpsrad (%r10,%r12,1),      %ymm14, %ymm10
vpsrad 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpsrad 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpsrad 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpsrad (%r10),             %ymm11, %ymm20
vpsrad (%r10,%r12,1),      %ymm12, %ymm31
vpsrad 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpsrad 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpsrad 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpsrad (%r10),             %ymm25, %ymm3
vpsrad (%r10,%r12,1),      %ymm25, %ymm3
vpsrad 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpsrad 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpsrad 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpsrad (%r10),             %ymm24, %ymm10
vpsrad (%r10,%r12,1),      %ymm24, %ymm10
vpsrad 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpsrad 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpsrad 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpsrad (%r10),             %ymm21, %ymm20
vpsrad (%r10,%r12,1),      %ymm22, %ymm31
vpsrad 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpsrad 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpsrad 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpsrad (%r10),             %ymm5, %ymm1
vpsrad (%r10,%r12,1),      %ymm5, %ymm2
vpsrad 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpsrad 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpsrad 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpsrad (%r10),             %ymm5, %ymm10
vpsrad (%r10,%r12,1),      %ymm5, %ymm11
vpsrad 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpsrad 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpsrad 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpsrad (%r10),             %ymm1, %ymm20
vpsrad (%r10,%r12,1),      %ymm2, %ymm31
vpsrad 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpsrad 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpsrad 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpsrad (%r10),             %ymm15, %ymm3
vpsrad (%r10,%r12,1),      %ymm15, %ymm3
vpsrad 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpsrad 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpsrad 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpsrad (%r10),             %ymm14, %ymm10
vpsrad (%r10,%r12,1),      %ymm14, %ymm10
vpsrad 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpsrad 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpsrad 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpsrad (%r10),             %ymm11, %ymm20
vpsrad (%r10,%r12,1),      %ymm12, %ymm31
vpsrad 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpsrad 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpsrad 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpsrad (%r10),             %ymm25, %ymm3
vpsrad (%r10,%r12,1),      %ymm25, %ymm3
vpsrad 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpsrad 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpsrad 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpsrad (%r10),             %ymm24, %ymm10
vpsrad (%r10,%r12,1),      %ymm24, %ymm10
vpsrad 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpsrad 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpsrad 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpsrad (%r10),             %ymm21, %ymm20
vpsrad (%r10,%r12,1),      %ymm22, %ymm31
vpsrad 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpsrad 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpsrad 0x3567(%r10,%r12,4),%ymm25, %ymm29


vpsraq %xmm0,%xmm3,%xmm1
vpsraq %xmm1,%xmm2,%xmm11
vpsraq %xmm2,%xmm1,%xmm22
vpsraq %xmm3,%xmm12,%xmm1
vpsraq %xmm4,%xmm13,%xmm15
vpsraq %xmm5,%xmm14,%xmm23
vpsraq %xmm6,%xmm24,%xmm2
vpsraq %xmm7,%xmm25,%xmm10
vpsraq %xmm0,%xmm26,%xmm27

vpsraq %xmm11,%xmm0,%xmm3
vpsraq %xmm12,%xmm0,%xmm11
vpsraq %xmm13,%xmm0,%xmm28
vpsraq %xmm14,%xmm10,%xmm4
vpsraq %xmm15,%xmm12,%xmm11
vpsraq %xmm11,%xmm13,%xmm29
vpsraq %xmm12,%xmm30,%xmm5
vpsraq %xmm13,%xmm31,%xmm11
vpsraq %xmm14,%xmm22,%xmm24

vpsraq %xmm20,%xmm0,%xmm6
vpsraq %xmm21,%xmm0,%xmm11
vpsraq %xmm22,%xmm0,%xmm30
vpsraq %xmm23,%xmm12,%xmm7
vpsraq %xmm24,%xmm13,%xmm10
vpsraq %xmm25,%xmm14,%xmm31
vpsraq %xmm26,%xmm22,%xmm1
vpsraq %xmm27,%xmm21,%xmm14
vpsraq %xmm28,%xmm20,%xmm29

vpsraq (%r10),             %xmm5, %xmm1
vpsraq (%r10,%r12,1),      %xmm5, %xmm2
vpsraq 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpsraq 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpsraq 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpsraq (%r10),             %xmm5, %xmm10
vpsraq (%r10,%r12,1),      %xmm5, %xmm11
vpsraq 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpsraq 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpsraq 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpsraq (%r10),             %xmm1, %xmm20
vpsraq (%r10,%r12,1),      %xmm2, %xmm31
vpsraq 0x10(%r10,%r12,1),  %xmm3, %xmm30
vpsraq 0x11(%r10,%r12,2),  %xmm4, %xmm25
vpsraq 0x3567(%r10,%r12,4),%xmm5, %xmm29

vpsraq (%r10),             %xmm15, %xmm3
vpsraq (%r10,%r12,1),      %xmm15, %xmm3
vpsraq 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpsraq 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpsraq 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpsraq (%r10),             %xmm14, %xmm10
vpsraq (%r10,%r12,1),      %xmm14, %xmm10
vpsraq 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpsraq 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpsraq 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpsraq (%r10),             %xmm11, %xmm20
vpsraq (%r10,%r12,1),      %xmm12, %xmm31
vpsraq 0x10(%r10,%r12,1),  %xmm13, %xmm30
vpsraq 0x11(%r10,%r12,2),  %xmm14, %xmm25
vpsraq 0x3567(%r10,%r12,4),%xmm15, %xmm29

vpsraq (%r10),             %xmm25, %xmm3
vpsraq (%r10,%r12,1),      %xmm25, %xmm3
vpsraq 0x10(%r10,%r12,1),  %xmm24, %xmm3
vpsraq 0x11(%r10,%r12,2),  %xmm24, %xmm3
vpsraq 0x3567(%r10,%r12,4),%xmm23, %xmm3

vpsraq (%r10),             %xmm24, %xmm10
vpsraq (%r10,%r12,1),      %xmm24, %xmm10
vpsraq 0x10(%r10,%r12,1),  %xmm25, %xmm10
vpsraq 0x11(%r10,%r12,2),  %xmm21, %xmm10
vpsraq 0x3567(%r10,%r12,4),%xmm21, %xmm10

vpsraq (%r10),             %xmm21, %xmm20
vpsraq (%r10,%r12,1),      %xmm22, %xmm31
vpsraq 0x10(%r10,%r12,1),  %xmm23, %xmm30
vpsraq 0x11(%r10,%r12,2),  %xmm24, %xmm25
vpsraq 0x3567(%r10,%r12,4),%xmm25, %xmm29

vpsraq (%r10),             %ymm5, %ymm1
vpsraq (%r10,%r12,1),      %ymm5, %ymm2
vpsraq 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpsraq 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpsraq 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpsraq (%r10),             %ymm5, %ymm10
vpsraq (%r10,%r12,1),      %ymm5, %ymm11
vpsraq 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpsraq 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpsraq 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpsraq (%r10),             %ymm1, %ymm20
vpsraq (%r10,%r12,1),      %ymm2, %ymm31
vpsraq 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpsraq 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpsraq 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpsraq (%r10),             %ymm15, %ymm3
vpsraq (%r10,%r12,1),      %ymm15, %ymm3
vpsraq 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpsraq 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpsraq 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpsraq (%r10),             %ymm14, %ymm10
vpsraq (%r10,%r12,1),      %ymm14, %ymm10
vpsraq 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpsraq 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpsraq 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpsraq (%r10),             %ymm11, %ymm20
vpsraq (%r10,%r12,1),      %ymm12, %ymm31
vpsraq 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpsraq 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpsraq 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpsraq (%r10),             %ymm25, %ymm3
vpsraq (%r10,%r12,1),      %ymm25, %ymm3
vpsraq 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpsraq 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpsraq 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpsraq (%r10),             %ymm24, %ymm10
vpsraq (%r10,%r12,1),      %ymm24, %ymm10
vpsraq 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpsraq 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpsraq 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpsraq (%r10),             %ymm21, %ymm20
vpsraq (%r10,%r12,1),      %ymm22, %ymm31
vpsraq 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpsraq 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpsraq 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpsraq (%r10),             %ymm5, %ymm1
vpsraq (%r10,%r12,1),      %ymm5, %ymm2
vpsraq 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpsraq 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpsraq 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpsraq (%r10),             %ymm5, %ymm10
vpsraq (%r10,%r12,1),      %ymm5, %ymm11
vpsraq 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpsraq 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpsraq 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpsraq (%r10),             %ymm1, %ymm20
vpsraq (%r10,%r12,1),      %ymm2, %ymm31
vpsraq 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpsraq 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpsraq 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpsraq (%r10),             %ymm15, %ymm3
vpsraq (%r10,%r12,1),      %ymm15, %ymm3
vpsraq 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpsraq 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpsraq 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpsraq (%r10),             %ymm14, %ymm10
vpsraq (%r10,%r12,1),      %ymm14, %ymm10
vpsraq 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpsraq 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpsraq 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpsraq (%r10),             %ymm11, %ymm20
vpsraq (%r10,%r12,1),      %ymm12, %ymm31
vpsraq 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpsraq 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpsraq 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpsraq (%r10),             %ymm25, %ymm3
vpsraq (%r10,%r12,1),      %ymm25, %ymm3
vpsraq 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpsraq 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpsraq 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpsraq (%r10),             %ymm24, %ymm10
vpsraq (%r10,%r12,1),      %ymm24, %ymm10
vpsraq 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpsraq 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpsraq 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpsraq (%r10),             %ymm21, %ymm20
vpsraq (%r10,%r12,1),      %ymm22, %ymm31
vpsraq 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpsraq 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpsraq 0x3567(%r10,%r12,4),%ymm25, %ymm29


psraw %mm0, %mm1
psraw %mm2, %mm7
psraw %mm7, %mm5

psraw (%r10), %mm0
psraw (%r10,%rdx,4), %mm0
psraw 0x10(%r10,%rdx,4), %mm0

psraw (%r10), %mm4
psraw (%r10,%rdx,4), %mm5
psraw 0x10(%r10,%rdx,4), %mm6

vpsraw %xmm0,%xmm3,%xmm1
vpsraw %xmm1,%xmm2,%xmm11
vpsraw %xmm3,%xmm12,%xmm1
vpsraw %xmm4,%xmm13,%xmm15

vpsraw %xmm11,%xmm0,%xmm3
vpsraw %xmm12,%xmm0,%xmm11
vpsraw %xmm14,%xmm10,%xmm4
vpsraw %xmm15,%xmm12,%xmm11

vpsraw (%r10),             %xmm5, %xmm1
vpsraw (%r10,%r12,1),      %xmm5, %xmm2
vpsraw 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpsraw 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpsraw 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpsraw (%r10),             %xmm5, %xmm10
vpsraw (%r10,%r12,1),      %xmm5, %xmm11
vpsraw 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpsraw 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpsraw 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpsraw (%r10),             %xmm15, %xmm3
vpsraw (%r10,%r12,1),      %xmm15, %xmm3
vpsraw 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpsraw 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpsraw 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpsraw (%r10),             %xmm14, %xmm10
vpsraw (%r10,%r12,1),      %xmm14, %xmm10
vpsraw 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpsraw 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpsraw 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpsraw (%r10),             %ymm5, %ymm1
vpsraw (%r10,%r12,1),      %ymm5, %ymm2
vpsraw 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpsraw 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpsraw 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpsraw (%r10),             %ymm5, %ymm10
vpsraw (%r10,%r12,1),      %ymm5, %ymm11
vpsraw 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpsraw 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpsraw 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpsraw (%r10),             %ymm15, %ymm3
vpsraw (%r10,%r12,1),      %ymm15, %ymm3
vpsraw 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpsraw 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpsraw 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpsraw (%r10),             %ymm14, %ymm10
vpsraw (%r10,%r12,1),      %ymm14, %ymm10
vpsraw 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpsraw 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpsraw 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpsraw (%r10),             %ymm5, %ymm1
vpsraw (%r10,%r12,1),      %ymm5, %ymm2
vpsraw 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpsraw 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpsraw 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpsraw (%r10),             %ymm5, %ymm10
vpsraw (%r10,%r12,1),      %ymm5, %ymm11
vpsraw 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpsraw 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpsraw 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpsraw (%r10),             %ymm15, %ymm3
vpsraw (%r10,%r12,1),      %ymm15, %ymm3
vpsraw 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpsraw 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpsraw 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpsraw (%r10),             %ymm14, %ymm10
vpsraw (%r10,%r12,1),      %ymm14, %ymm10
vpsraw 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpsraw 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpsraw 0x3567(%r10,%r12,4),%ymm11, %ymm10


vpsraw %xmm0,%xmm3,%xmm1
vpsraw %xmm1,%xmm2,%xmm11
vpsraw %xmm2,%xmm1,%xmm22
vpsraw %xmm3,%xmm12,%xmm1
vpsraw %xmm4,%xmm13,%xmm15
vpsraw %xmm5,%xmm14,%xmm23
vpsraw %xmm6,%xmm24,%xmm2
vpsraw %xmm7,%xmm25,%xmm10
vpsraw %xmm0,%xmm26,%xmm27

vpsraw %xmm11,%xmm0,%xmm3
vpsraw %xmm12,%xmm0,%xmm11
vpsraw %xmm13,%xmm0,%xmm28
vpsraw %xmm14,%xmm10,%xmm4
vpsraw %xmm15,%xmm12,%xmm11
vpsraw %xmm11,%xmm13,%xmm29
vpsraw %xmm12,%xmm30,%xmm5
vpsraw %xmm13,%xmm31,%xmm11
vpsraw %xmm14,%xmm22,%xmm24

vpsraw %xmm20,%xmm0,%xmm6
vpsraw %xmm21,%xmm0,%xmm11
vpsraw %xmm22,%xmm0,%xmm30
vpsraw %xmm23,%xmm12,%xmm7
vpsraw %xmm24,%xmm13,%xmm10
vpsraw %xmm25,%xmm14,%xmm31
vpsraw %xmm26,%xmm22,%xmm1
vpsraw %xmm27,%xmm21,%xmm14
vpsraw %xmm28,%xmm20,%xmm29

vpsraw (%r10),             %xmm5, %xmm1
vpsraw (%r10,%r12,1),      %xmm5, %xmm2
vpsraw 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpsraw 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpsraw 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpsraw (%r10),             %xmm5, %xmm10
vpsraw (%r10,%r12,1),      %xmm5, %xmm11
vpsraw 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpsraw 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpsraw 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpsraw (%r10),             %xmm1, %xmm20
vpsraw (%r10,%r12,1),      %xmm2, %xmm31
vpsraw 0x10(%r10,%r12,1),  %xmm3, %xmm30
vpsraw 0x11(%r10,%r12,2),  %xmm4, %xmm25
vpsraw 0x3567(%r10,%r12,4),%xmm5, %xmm29

vpsraw (%r10),             %xmm15, %xmm3
vpsraw (%r10,%r12,1),      %xmm15, %xmm3
vpsraw 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpsraw 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpsraw 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpsraw (%r10),             %xmm14, %xmm10
vpsraw (%r10,%r12,1),      %xmm14, %xmm10
vpsraw 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpsraw 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpsraw 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpsraw (%r10),             %xmm11, %xmm20
vpsraw (%r10,%r12,1),      %xmm12, %xmm31
vpsraw 0x10(%r10,%r12,1),  %xmm13, %xmm30
vpsraw 0x11(%r10,%r12,2),  %xmm14, %xmm25
vpsraw 0x3567(%r10,%r12,4),%xmm15, %xmm29

vpsraw (%r10),             %xmm25, %xmm3
vpsraw (%r10,%r12,1),      %xmm25, %xmm3
vpsraw 0x10(%r10,%r12,1),  %xmm24, %xmm3
vpsraw 0x11(%r10,%r12,2),  %xmm24, %xmm3
vpsraw 0x3567(%r10,%r12,4),%xmm23, %xmm3

vpsraw (%r10),             %xmm24, %xmm10
vpsraw (%r10,%r12,1),      %xmm24, %xmm10
vpsraw 0x10(%r10,%r12,1),  %xmm25, %xmm10
vpsraw 0x11(%r10,%r12,2),  %xmm21, %xmm10
vpsraw 0x3567(%r10,%r12,4),%xmm21, %xmm10

vpsraw (%r10),             %xmm21, %xmm20
vpsraw (%r10,%r12,1),      %xmm22, %xmm31
vpsraw 0x10(%r10,%r12,1),  %xmm23, %xmm30
vpsraw 0x11(%r10,%r12,2),  %xmm24, %xmm25
vpsraw 0x3567(%r10,%r12,4),%xmm25, %xmm29

vpsraw (%r10),             %ymm5, %ymm1
vpsraw (%r10,%r12,1),      %ymm5, %ymm2
vpsraw 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpsraw 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpsraw 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpsraw (%r10),             %ymm5, %ymm10
vpsraw (%r10,%r12,1),      %ymm5, %ymm11
vpsraw 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpsraw 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpsraw 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpsraw (%r10),             %ymm1, %ymm20
vpsraw (%r10,%r12,1),      %ymm2, %ymm31
vpsraw 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpsraw 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpsraw 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpsraw (%r10),             %ymm15, %ymm3
vpsraw (%r10,%r12,1),      %ymm15, %ymm3
vpsraw 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpsraw 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpsraw 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpsraw (%r10),             %ymm14, %ymm10
vpsraw (%r10,%r12,1),      %ymm14, %ymm10
vpsraw 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpsraw 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpsraw 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpsraw (%r10),             %ymm11, %ymm20
vpsraw (%r10,%r12,1),      %ymm12, %ymm31
vpsraw 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpsraw 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpsraw 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpsraw (%r10),             %ymm25, %ymm3
vpsraw (%r10,%r12,1),      %ymm25, %ymm3
vpsraw 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpsraw 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpsraw 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpsraw (%r10),             %ymm24, %ymm10
vpsraw (%r10,%r12,1),      %ymm24, %ymm10
vpsraw 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpsraw 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpsraw 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpsraw (%r10),             %ymm21, %ymm20
vpsraw (%r10,%r12,1),      %ymm22, %ymm31
vpsraw 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpsraw 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpsraw 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpsraw (%r10),             %ymm5, %ymm1
vpsraw (%r10,%r12,1),      %ymm5, %ymm2
vpsraw 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpsraw 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpsraw 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpsraw (%r10),             %ymm5, %ymm10
vpsraw (%r10,%r12,1),      %ymm5, %ymm11
vpsraw 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpsraw 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpsraw 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpsraw (%r10),             %ymm1, %ymm20
vpsraw (%r10,%r12,1),      %ymm2, %ymm31
vpsraw 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpsraw 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpsraw 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpsraw (%r10),             %ymm15, %ymm3
vpsraw (%r10,%r12,1),      %ymm15, %ymm3
vpsraw 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpsraw 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpsraw 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpsraw (%r10),             %ymm14, %ymm10
vpsraw (%r10,%r12,1),      %ymm14, %ymm10
vpsraw 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpsraw 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpsraw 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpsraw (%r10),             %ymm11, %ymm20
vpsraw (%r10,%r12,1),      %ymm12, %ymm31
vpsraw 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpsraw 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpsraw 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpsraw (%r10),             %ymm25, %ymm3
vpsraw (%r10,%r12,1),      %ymm25, %ymm3
vpsraw 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpsraw 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpsraw 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpsraw (%r10),             %ymm24, %ymm10
vpsraw (%r10,%r12,1),      %ymm24, %ymm10
vpsraw 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpsraw 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpsraw 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpsraw (%r10),             %ymm21, %ymm20
vpsraw (%r10,%r12,1),      %ymm22, %ymm31
vpsraw 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpsraw 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpsraw 0x3567(%r10,%r12,4),%ymm25, %ymm29


vpsrad (%r10),             %zmm5, %zmm1
vpsrad (%r10,%r12,1),      %zmm5, %zmm2
vpsrad 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpsrad 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpsrad 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpsrad (%r10),             %zmm5, %zmm10
vpsrad (%r10,%r12,1),      %zmm5, %zmm11
vpsrad 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpsrad 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpsrad 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpsrad (%r10),             %zmm15, %zmm3
vpsrad (%r10,%r12,1),      %zmm15, %zmm3
vpsrad 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpsrad 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpsrad 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpsrad (%r10),             %zmm14, %zmm10
vpsrad (%r10,%r12,1),      %zmm14, %zmm10
vpsrad 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpsrad 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpsrad 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpsrad (%r10),             %zmm5, %zmm1
vpsrad (%r10,%r12,1),      %zmm5, %zmm2
vpsrad 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpsrad 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpsrad 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpsrad (%r10),             %zmm5, %zmm10
vpsrad (%r10,%r12,1),      %zmm5, %zmm11
vpsrad 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpsrad 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpsrad 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpsrad (%r10),             %zmm15, %zmm3
vpsrad (%r10,%r12,1),      %zmm15, %zmm3
vpsrad 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpsrad 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpsrad 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpsrad (%r10),             %zmm14, %zmm10
vpsrad (%r10,%r12,1),      %zmm14, %zmm10
vpsrad 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpsrad 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpsrad 0x3567(%r10,%r12,4),%zmm11, %zmm10


vpsrad (%r10),             %zmm5, %zmm1
vpsrad (%r10,%r12,1),      %zmm5, %zmm2
vpsrad 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpsrad 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpsrad 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpsrad (%r10),             %zmm5, %zmm10
vpsrad (%r10,%r12,1),      %zmm5, %zmm11
vpsrad 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpsrad 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpsrad 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpsrad (%r10),             %zmm1, %zmm20
vpsrad (%r10,%r12,1),      %zmm2, %zmm31
vpsrad 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpsrad 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpsrad 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpsrad (%r10),             %zmm15, %zmm3
vpsrad (%r10,%r12,1),      %zmm15, %zmm3
vpsrad 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpsrad 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpsrad 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpsrad (%r10),             %zmm14, %zmm10
vpsrad (%r10,%r12,1),      %zmm14, %zmm10
vpsrad 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpsrad 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpsrad 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpsrad (%r10),             %zmm11, %zmm20
vpsrad (%r10,%r12,1),      %zmm12, %zmm31
vpsrad 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpsrad 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpsrad 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpsrad (%r10),             %zmm25, %zmm3
vpsrad (%r10,%r12,1),      %zmm25, %zmm3
vpsrad 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpsrad 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpsrad 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpsrad (%r10),             %zmm24, %zmm10
vpsrad (%r10,%r12,1),      %zmm24, %zmm10
vpsrad 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpsrad 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpsrad 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpsrad (%r10),             %zmm21, %zmm20
vpsrad (%r10,%r12,1),      %zmm22, %zmm31
vpsrad 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpsrad 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpsrad 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpsrad (%r10),             %zmm5, %zmm1
vpsrad (%r10,%r12,1),      %zmm5, %zmm2
vpsrad 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpsrad 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpsrad 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpsrad (%r10),             %zmm5, %zmm10
vpsrad (%r10,%r12,1),      %zmm5, %zmm11
vpsrad 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpsrad 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpsrad 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpsrad (%r10),             %zmm1, %zmm20
vpsrad (%r10,%r12,1),      %zmm2, %zmm31
vpsrad 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpsrad 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpsrad 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpsrad (%r10),             %zmm15, %zmm3
vpsrad (%r10,%r12,1),      %zmm15, %zmm3
vpsrad 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpsrad 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpsrad 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpsrad (%r10),             %zmm14, %zmm10
vpsrad (%r10,%r12,1),      %zmm14, %zmm10
vpsrad 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpsrad 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpsrad 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpsrad (%r10),             %zmm11, %zmm20
vpsrad (%r10,%r12,1),      %zmm12, %zmm31
vpsrad 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpsrad 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpsrad 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpsrad (%r10),             %zmm25, %zmm3
vpsrad (%r10,%r12,1),      %zmm25, %zmm3
vpsrad 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpsrad 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpsrad 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpsrad (%r10),             %zmm24, %zmm10
vpsrad (%r10,%r12,1),      %zmm24, %zmm10
vpsrad 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpsrad 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpsrad 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpsrad (%r10),             %zmm21, %zmm20
vpsrad (%r10,%r12,1),      %zmm22, %zmm31
vpsrad 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpsrad 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpsrad 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpsraq (%r10),             %zmm5, %zmm1
vpsraq (%r10,%r12,1),      %zmm5, %zmm2
vpsraq 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpsraq 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpsraq 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpsraq (%r10),             %zmm5, %zmm10
vpsraq (%r10,%r12,1),      %zmm5, %zmm11
vpsraq 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpsraq 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpsraq 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpsraq (%r10),             %zmm1, %zmm20
vpsraq (%r10,%r12,1),      %zmm2, %zmm31
vpsraq 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpsraq 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpsraq 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpsraq (%r10),             %zmm15, %zmm3
vpsraq (%r10,%r12,1),      %zmm15, %zmm3
vpsraq 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpsraq 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpsraq 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpsraq (%r10),             %zmm14, %zmm10
vpsraq (%r10,%r12,1),      %zmm14, %zmm10
vpsraq 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpsraq 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpsraq 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpsraq (%r10),             %zmm11, %zmm20
vpsraq (%r10,%r12,1),      %zmm12, %zmm31
vpsraq 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpsraq 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpsraq 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpsraq (%r10),             %zmm25, %zmm3
vpsraq (%r10,%r12,1),      %zmm25, %zmm3
vpsraq 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpsraq 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpsraq 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpsraq (%r10),             %zmm24, %zmm10
vpsraq (%r10,%r12,1),      %zmm24, %zmm10
vpsraq 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpsraq 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpsraq 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpsraq (%r10),             %zmm21, %zmm20
vpsraq (%r10,%r12,1),      %zmm22, %zmm31
vpsraq 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpsraq 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpsraq 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpsraq (%r10),             %zmm5, %zmm1
vpsraq (%r10,%r12,1),      %zmm5, %zmm2
vpsraq 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpsraq 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpsraq 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpsraq (%r10),             %zmm5, %zmm10
vpsraq (%r10,%r12,1),      %zmm5, %zmm11
vpsraq 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpsraq 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpsraq 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpsraq (%r10),             %zmm1, %zmm20
vpsraq (%r10,%r12,1),      %zmm2, %zmm31
vpsraq 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpsraq 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpsraq 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpsraq (%r10),             %zmm15, %zmm3
vpsraq (%r10,%r12,1),      %zmm15, %zmm3
vpsraq 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpsraq 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpsraq 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpsraq (%r10),             %zmm14, %zmm10
vpsraq (%r10,%r12,1),      %zmm14, %zmm10
vpsraq 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpsraq 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpsraq 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpsraq (%r10),             %zmm11, %zmm20
vpsraq (%r10,%r12,1),      %zmm12, %zmm31
vpsraq 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpsraq 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpsraq 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpsraq (%r10),             %zmm25, %zmm3
vpsraq (%r10,%r12,1),      %zmm25, %zmm3
vpsraq 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpsraq 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpsraq 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpsraq (%r10),             %zmm24, %zmm10
vpsraq (%r10,%r12,1),      %zmm24, %zmm10
vpsraq 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpsraq 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpsraq 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpsraq (%r10),             %zmm21, %zmm20
vpsraq (%r10,%r12,1),      %zmm22, %zmm31
vpsraq 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpsraq 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpsraq 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpsraw (%r10),             %zmm5, %zmm1
vpsraw (%r10,%r12,1),      %zmm5, %zmm2
vpsraw 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpsraw 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpsraw 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpsraw (%r10),             %zmm5, %zmm10
vpsraw (%r10,%r12,1),      %zmm5, %zmm11
vpsraw 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpsraw 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpsraw 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpsraw (%r10),             %zmm15, %zmm3
vpsraw (%r10,%r12,1),      %zmm15, %zmm3
vpsraw 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpsraw 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpsraw 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpsraw (%r10),             %zmm14, %zmm10
vpsraw (%r10,%r12,1),      %zmm14, %zmm10
vpsraw 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpsraw 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpsraw 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpsraw (%r10),             %zmm5, %zmm1
vpsraw (%r10,%r12,1),      %zmm5, %zmm2
vpsraw 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpsraw 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpsraw 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpsraw (%r10),             %zmm5, %zmm10
vpsraw (%r10,%r12,1),      %zmm5, %zmm11
vpsraw 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpsraw 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpsraw 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpsraw (%r10),             %zmm15, %zmm3
vpsraw (%r10,%r12,1),      %zmm15, %zmm3
vpsraw 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpsraw 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpsraw 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpsraw (%r10),             %zmm14, %zmm10
vpsraw (%r10,%r12,1),      %zmm14, %zmm10
vpsraw 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpsraw 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpsraw 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpsraw (%r10),             %zmm5, %zmm1
vpsraw (%r10,%r12,1),      %zmm5, %zmm2
vpsraw 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpsraw 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpsraw 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpsraw (%r10),             %zmm5, %zmm10
vpsraw (%r10,%r12,1),      %zmm5, %zmm11
vpsraw 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpsraw 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpsraw 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpsraw (%r10),             %zmm1, %zmm20
vpsraw (%r10,%r12,1),      %zmm2, %zmm31
vpsraw 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpsraw 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpsraw 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpsraw (%r10),             %zmm15, %zmm3
vpsraw (%r10,%r12,1),      %zmm15, %zmm3
vpsraw 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpsraw 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpsraw 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpsraw (%r10),             %zmm14, %zmm10
vpsraw (%r10,%r12,1),      %zmm14, %zmm10
vpsraw 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpsraw 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpsraw 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpsraw (%r10),             %zmm11, %zmm20
vpsraw (%r10,%r12,1),      %zmm12, %zmm31
vpsraw 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpsraw 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpsraw 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpsraw (%r10),             %zmm25, %zmm3
vpsraw (%r10,%r12,1),      %zmm25, %zmm3
vpsraw 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpsraw 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpsraw 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpsraw (%r10),             %zmm24, %zmm10
vpsraw (%r10,%r12,1),      %zmm24, %zmm10
vpsraw 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpsraw 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpsraw 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpsraw (%r10),             %zmm21, %zmm20
vpsraw (%r10,%r12,1),      %zmm22, %zmm31
vpsraw 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpsraw 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpsraw 0x3567(%r10,%r12,4),%zmm25, %zmm29

vpsraw (%r10),             %zmm5, %zmm1
vpsraw (%r10,%r12,1),      %zmm5, %zmm2
vpsraw 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpsraw 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpsraw 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpsraw (%r10),             %zmm5, %zmm10
vpsraw (%r10,%r12,1),      %zmm5, %zmm11
vpsraw 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpsraw 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpsraw 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpsraw (%r10),             %zmm1, %zmm20
vpsraw (%r10,%r12,1),      %zmm2, %zmm31
vpsraw 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpsraw 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpsraw 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpsraw (%r10),             %zmm15, %zmm3
vpsraw (%r10,%r12,1),      %zmm15, %zmm3
vpsraw 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpsraw 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpsraw 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpsraw (%r10),             %zmm14, %zmm10
vpsraw (%r10,%r12,1),      %zmm14, %zmm10
vpsraw 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpsraw 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpsraw 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpsraw (%r10),             %zmm11, %zmm20
vpsraw (%r10,%r12,1),      %zmm12, %zmm31
vpsraw 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpsraw 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpsraw 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpsraw (%r10),             %zmm25, %zmm3
vpsraw (%r10,%r12,1),      %zmm25, %zmm3
vpsraw 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpsraw 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpsraw 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpsraw (%r10),             %zmm24, %zmm10
vpsraw (%r10,%r12,1),      %zmm24, %zmm10
vpsraw 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpsraw 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpsraw 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpsraw (%r10),             %zmm21, %zmm20
vpsraw (%r10,%r12,1),      %zmm22, %zmm31
vpsraw 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpsraw 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpsraw 0x3567(%r10,%r12,4),%zmm25, %zmm29

