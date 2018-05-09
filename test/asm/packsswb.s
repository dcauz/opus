packsswb %mm0, %mm1
packsswb %mm2, %mm7
packsswb %mm7, %mm5

packsswb (%r10), %mm0
packsswb (%r10,%rdx,4), %mm0
packsswb 0x10(%r10,%rdx,4), %mm0

packsswb (%r10), %mm4
packsswb (%r10,%rdx,4), %mm5
packsswb 0x10(%r10,%rdx,4), %mm6

packssdw %mm1, %mm2
packssdw %mm5, %mm3
packssdw %mm5, %mm4

packssdw (%r10), %mm4
packssdw (%r10,%rdx,1), %mm5
packssdw 0x10(%r10,%rdx,2), %mm6
packssdw 0x11(%r10,%rdx,4), %mm6
packssdw 0x3567(%rcx,%rdx,4), %mm6


vpacksswb %xmm0,%xmm3,%xmm1
vpacksswb %xmm1,%xmm2,%xmm11
vpacksswb %xmm2,%xmm1,%xmm22
vpacksswb %xmm3,%xmm12,%xmm1
vpacksswb %xmm4,%xmm13,%xmm15
vpacksswb %xmm5,%xmm14,%xmm23
vpacksswb %xmm6,%xmm24,%xmm2
vpacksswb %xmm7,%xmm25,%xmm10
vpacksswb %xmm0,%xmm26,%xmm27

vpacksswb %xmm11,%xmm0,%xmm3
vpacksswb %xmm12,%xmm0,%xmm11
vpacksswb %xmm13,%xmm0,%xmm28
vpacksswb %xmm14,%xmm10,%xmm4
vpacksswb %xmm15,%xmm12,%xmm11
vpacksswb %xmm11,%xmm13,%xmm29
vpacksswb %xmm12,%xmm30,%xmm5
vpacksswb %xmm13,%xmm31,%xmm11
vpacksswb %xmm14,%xmm22,%xmm24

vpacksswb %xmm20,%xmm0,%xmm6
vpacksswb %xmm21,%xmm0,%xmm11
vpacksswb %xmm22,%xmm0,%xmm30
vpacksswb %xmm23,%xmm12,%xmm7
vpacksswb %xmm24,%xmm13,%xmm10
vpacksswb %xmm25,%xmm14,%xmm31
vpacksswb %xmm26,%xmm22,%xmm1
vpacksswb %xmm27,%xmm21,%xmm14
vpacksswb %xmm28,%xmm20,%xmm29

vpacksswb (%r10),             %xmm5, %xmm1
vpacksswb (%r10,%r12,1),      %xmm5, %xmm2
vpacksswb 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpacksswb 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpacksswb 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpacksswb (%r10),             %xmm5, %xmm10
vpacksswb (%r10,%r12,1),      %xmm5, %xmm11
vpacksswb 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpacksswb 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpacksswb 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpacksswb (%r10),             %xmm1, %xmm20
vpacksswb (%r10,%r12,1),      %xmm2, %xmm31
vpacksswb 0x10(%r10,%r12,1),  %xmm3, %xmm30
vpacksswb 0x11(%r10,%r12,2),  %xmm4, %xmm25
vpacksswb 0x3567(%r10,%r12,4),%xmm5, %xmm29

vpacksswb (%r10),             %xmm15, %xmm3
vpacksswb (%r10,%r12,1),      %xmm15, %xmm3
vpacksswb 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpacksswb 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpacksswb 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpacksswb (%r10),             %xmm14, %xmm10
vpacksswb (%r10,%r12,1),      %xmm14, %xmm10
vpacksswb 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpacksswb 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpacksswb 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpacksswb (%r10),             %xmm11, %xmm20
vpacksswb (%r10,%r12,1),      %xmm12, %xmm31
vpacksswb 0x10(%r10,%r12,1),  %xmm13, %xmm30
vpacksswb 0x11(%r10,%r12,2),  %xmm14, %xmm25
vpacksswb 0x3567(%r10,%r12,4),%xmm15, %xmm29

vpacksswb (%r10),             %xmm25, %xmm3
vpacksswb (%r10,%r12,1),      %xmm25, %xmm3
vpacksswb 0x10(%r10,%r12,1),  %xmm24, %xmm3
vpacksswb 0x11(%r10,%r12,2),  %xmm24, %xmm3
vpacksswb 0x3567(%r10,%r12,4),%xmm23, %xmm3

vpacksswb (%r10),             %xmm24, %xmm10
vpacksswb (%r10,%r12,1),      %xmm24, %xmm10
vpacksswb 0x10(%r10,%r12,1),  %xmm25, %xmm10
vpacksswb 0x11(%r10,%r12,2),  %xmm21, %xmm10
vpacksswb 0x3567(%r10,%r12,4),%xmm21, %xmm10

vpacksswb (%r10),             %xmm21, %xmm20
vpacksswb (%r10,%r12,1),      %xmm22, %xmm31
vpacksswb 0x10(%r10,%r12,1),  %xmm23, %xmm30
vpacksswb 0x11(%r10,%r12,2),  %xmm24, %xmm25
vpacksswb 0x3567(%r10,%r12,4),%xmm25, %xmm29

vpackssdw %xmm0,%xmm3,%xmm1
vpackssdw %xmm1,%xmm2,%xmm11
vpackssdw %xmm2,%xmm1,%xmm22
vpackssdw %xmm3,%xmm12,%xmm1
vpackssdw %xmm4,%xmm13,%xmm15
vpackssdw %xmm5,%xmm14,%xmm23
vpackssdw %xmm6,%xmm24,%xmm2
vpackssdw %xmm7,%xmm25,%xmm10
vpackssdw %xmm0,%xmm26,%xmm27

vpackssdw %xmm11,%xmm0,%xmm3
vpackssdw %xmm12,%xmm0,%xmm11
vpackssdw %xmm13,%xmm0,%xmm28
vpackssdw %xmm14,%xmm10,%xmm4
vpackssdw %xmm15,%xmm12,%xmm11
vpackssdw %xmm11,%xmm13,%xmm29
vpackssdw %xmm12,%xmm30,%xmm5
vpackssdw %xmm13,%xmm31,%xmm11
vpackssdw %xmm14,%xmm22,%xmm24

vpackssdw %xmm20,%xmm0,%xmm6
vpackssdw %xmm21,%xmm0,%xmm11
vpackssdw %xmm22,%xmm0,%xmm30
vpackssdw %xmm23,%xmm12,%xmm7
vpackssdw %xmm24,%xmm13,%xmm10
vpackssdw %xmm25,%xmm14,%xmm31
vpackssdw %xmm26,%xmm22,%xmm1
vpackssdw %xmm27,%xmm21,%xmm14
vpackssdw %xmm28,%xmm20,%xmm29

vpackssdw (%r10),             %xmm5, %xmm1
vpackssdw (%r10,%r12,1),      %xmm5, %xmm2
vpackssdw 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpackssdw 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpackssdw 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpackssdw (%r10),             %xmm5, %xmm10
vpackssdw (%r10,%r12,1),      %xmm5, %xmm11
vpackssdw 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpackssdw 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpackssdw 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpackssdw (%r10),             %xmm1, %xmm20
vpackssdw (%r10,%r12,1),      %xmm2, %xmm31
vpackssdw 0x10(%r10,%r12,1),  %xmm3, %xmm30
vpackssdw 0x11(%r10,%r12,2),  %xmm4, %xmm25
vpackssdw 0x3567(%r10,%r12,4),%xmm5, %xmm29

vpackssdw (%r10),             %xmm15, %xmm3
vpackssdw (%r10,%r12,1),      %xmm15, %xmm3
vpackssdw 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpackssdw 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpackssdw 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpackssdw (%r10),             %xmm14, %xmm10
vpackssdw (%r10,%r12,1),      %xmm14, %xmm10
vpackssdw 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpackssdw 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpackssdw 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpackssdw (%r10),             %xmm11, %xmm20
vpackssdw (%r10,%r12,1),      %xmm12, %xmm31
vpackssdw 0x10(%r10,%r12,1),  %xmm13, %xmm30
vpackssdw 0x11(%r10,%r12,2),  %xmm14, %xmm25
vpackssdw 0x3567(%r10,%r12,4),%xmm15, %xmm29

vpackssdw (%r10),             %xmm25, %xmm3
vpackssdw (%r10,%r12,1),      %xmm25, %xmm3
vpackssdw 0x10(%r10,%r12,1),  %xmm24, %xmm3
vpackssdw 0x11(%r10,%r12,2),  %xmm24, %xmm3
vpackssdw 0x3567(%r10,%r12,4),%xmm23, %xmm3

vpackssdw (%r10),             %xmm24, %xmm10
vpackssdw (%r10,%r12,1),      %xmm24, %xmm10
vpackssdw 0x10(%r10,%r12,1),  %xmm25, %xmm10
vpackssdw 0x11(%r10,%r12,2),  %xmm21, %xmm10
vpackssdw 0x3567(%r10,%r12,4),%xmm21, %xmm10

vpackssdw (%r10),             %xmm21, %xmm20
vpackssdw (%r10,%r12,1),      %xmm22, %xmm31
vpackssdw 0x10(%r10,%r12,1),  %xmm23, %xmm30
vpackssdw 0x11(%r10,%r12,2),  %xmm24, %xmm25
vpackssdw 0x3567(%r10,%r12,4),%xmm25, %xmm29


vpacksswb %ymm0,%ymm3,%ymm1
vpacksswb %ymm1,%ymm2,%ymm11
vpacksswb %ymm2,%ymm1,%ymm22
vpacksswb %ymm3,%ymm12,%ymm1
vpacksswb %ymm4,%ymm13,%ymm15
vpacksswb %ymm5,%ymm14,%ymm23
vpacksswb %ymm6,%ymm24,%ymm2
vpacksswb %ymm7,%ymm25,%ymm10
vpacksswb %ymm0,%ymm26,%ymm27

vpacksswb %ymm11,%ymm0,%ymm3
vpacksswb %ymm12,%ymm0,%ymm11
vpacksswb %ymm13,%ymm0,%ymm28
vpacksswb %ymm14,%ymm10,%ymm4
vpacksswb %ymm15,%ymm12,%ymm11
vpacksswb %ymm11,%ymm13,%ymm29
vpacksswb %ymm12,%ymm30,%ymm5
vpacksswb %ymm13,%ymm31,%ymm11
vpacksswb %ymm14,%ymm22,%ymm24

vpacksswb %ymm20,%ymm0,%ymm6
vpacksswb %ymm21,%ymm0,%ymm11
vpacksswb %ymm22,%ymm0,%ymm30
vpacksswb %ymm23,%ymm12,%ymm7
vpacksswb %ymm24,%ymm13,%ymm10
vpacksswb %ymm25,%ymm14,%ymm31
vpacksswb %ymm26,%ymm22,%ymm1
vpacksswb %ymm27,%ymm21,%ymm14
vpacksswb %ymm28,%ymm20,%ymm29

vpacksswb (%r10),             %ymm5, %ymm1
vpacksswb (%r10,%r12,1),      %ymm5, %ymm2
vpacksswb 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpacksswb 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpacksswb 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpacksswb (%r10),             %ymm5, %ymm10
vpacksswb (%r10,%r12,1),      %ymm5, %ymm11
vpacksswb 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpacksswb 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpacksswb 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpacksswb (%r10),             %ymm1, %ymm20
vpacksswb (%r10,%r12,1),      %ymm2, %ymm31
vpacksswb 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpacksswb 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpacksswb 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpacksswb (%r10),             %ymm15, %ymm3
vpacksswb (%r10,%r12,1),      %ymm15, %ymm3
vpacksswb 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpacksswb 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpacksswb 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpacksswb (%r10),             %ymm14, %ymm10
vpacksswb (%r10,%r12,1),      %ymm14, %ymm10
vpacksswb 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpacksswb 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpacksswb 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpacksswb (%r10),             %ymm11, %ymm20
vpacksswb (%r10,%r12,1),      %ymm12, %ymm31
vpacksswb 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpacksswb 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpacksswb 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpacksswb (%r10),             %ymm25, %ymm3
vpacksswb (%r10,%r12,1),      %ymm25, %ymm3
vpacksswb 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpacksswb 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpacksswb 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpacksswb (%r10),             %ymm24, %ymm10
vpacksswb (%r10,%r12,1),      %ymm24, %ymm10
vpacksswb 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpacksswb 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpacksswb 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpacksswb (%r10),             %ymm21, %ymm20
vpacksswb (%r10,%r12,1),      %ymm22, %ymm31
vpacksswb 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpacksswb 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpacksswb 0x3567(%r10,%r12,4),%ymm25, %ymm29

vpackssdw %ymm0,%ymm3,%ymm1
vpackssdw %ymm1,%ymm2,%ymm11
vpackssdw %ymm2,%ymm1,%ymm22
vpackssdw %ymm3,%ymm12,%ymm1
vpackssdw %ymm4,%ymm13,%ymm15
vpackssdw %ymm5,%ymm14,%ymm23
vpackssdw %ymm6,%ymm24,%ymm2
vpackssdw %ymm7,%ymm25,%ymm10
vpackssdw %ymm0,%ymm26,%ymm27

vpackssdw %ymm11,%ymm0,%ymm3
vpackssdw %ymm12,%ymm0,%ymm11
vpackssdw %ymm13,%ymm0,%ymm28
vpackssdw %ymm14,%ymm10,%ymm4
vpackssdw %ymm15,%ymm12,%ymm11
vpackssdw %ymm11,%ymm13,%ymm29
vpackssdw %ymm12,%ymm30,%ymm5
vpackssdw %ymm13,%ymm31,%ymm11
vpackssdw %ymm14,%ymm22,%ymm24

vpackssdw %ymm20,%ymm0,%ymm6
vpackssdw %ymm21,%ymm0,%ymm11
vpackssdw %ymm22,%ymm0,%ymm30
vpackssdw %ymm23,%ymm12,%ymm7
vpackssdw %ymm24,%ymm13,%ymm10
vpackssdw %ymm25,%ymm14,%ymm31
vpackssdw %ymm26,%ymm22,%ymm1
vpackssdw %ymm27,%ymm21,%ymm14
vpackssdw %ymm28,%ymm20,%ymm29

vpackssdw (%r10),             %ymm5, %ymm1
vpackssdw (%r10,%r12,1),      %ymm5, %ymm2
vpackssdw 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpackssdw 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpackssdw 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpackssdw (%r10),             %ymm5, %ymm10
vpackssdw (%r10,%r12,1),      %ymm5, %ymm11
vpackssdw 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpackssdw 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpackssdw 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpackssdw (%r10),             %ymm1, %ymm20
vpackssdw (%r10,%r12,1),      %ymm2, %ymm31
vpackssdw 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpackssdw 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpackssdw 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpackssdw (%r10),             %ymm15, %ymm3
vpackssdw (%r10,%r12,1),      %ymm15, %ymm3
vpackssdw 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpackssdw 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpackssdw 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpackssdw (%r10),             %ymm14, %ymm10
vpackssdw (%r10,%r12,1),      %ymm14, %ymm10
vpackssdw 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpackssdw 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpackssdw 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpackssdw (%r10),             %ymm11, %ymm20
vpackssdw (%r10,%r12,1),      %ymm12, %ymm31
vpackssdw 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpackssdw 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpackssdw 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpackssdw (%r10),             %ymm25, %ymm3
vpackssdw (%r10,%r12,1),      %ymm25, %ymm3
vpackssdw 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpackssdw 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpackssdw 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpackssdw (%r10),             %ymm24, %ymm10
vpackssdw (%r10,%r12,1),      %ymm24, %ymm10
vpackssdw 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpackssdw 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpackssdw 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpackssdw (%r10),             %ymm21, %ymm20
vpackssdw (%r10,%r12,1),      %ymm22, %ymm31
vpackssdw 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpackssdw 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpackssdw 0x3567(%r10,%r12,4),%ymm25, %ymm29



vpacksswb %ymm0,%ymm3,%ymm1
vpacksswb %ymm1,%ymm2,%ymm11
vpacksswb %ymm2,%ymm1,%ymm22
vpacksswb %ymm3,%ymm12,%ymm1
vpacksswb %ymm4,%ymm13,%ymm15
vpacksswb %ymm5,%ymm14,%ymm23
vpacksswb %ymm6,%ymm24,%ymm2
vpacksswb %ymm7,%ymm25,%ymm10
vpacksswb %ymm0,%ymm26,%ymm27

vpacksswb %ymm11,%ymm0,%ymm3
vpacksswb %ymm12,%ymm0,%ymm11
vpacksswb %ymm13,%ymm0,%ymm28
vpacksswb %ymm14,%ymm10,%ymm4
vpacksswb %ymm15,%ymm12,%ymm11
vpacksswb %ymm11,%ymm13,%ymm29
vpacksswb %ymm12,%ymm30,%ymm5
vpacksswb %ymm13,%ymm31,%ymm11
vpacksswb %ymm14,%ymm22,%ymm24

vpacksswb %ymm20,%ymm0,%ymm6
vpacksswb %ymm21,%ymm0,%ymm11
vpacksswb %ymm22,%ymm0,%ymm30
vpacksswb %ymm23,%ymm12,%ymm7
vpacksswb %ymm24,%ymm13,%ymm10
vpacksswb %ymm25,%ymm14,%ymm31
vpacksswb %ymm26,%ymm22,%ymm1
vpacksswb %ymm27,%ymm21,%ymm14
vpacksswb %ymm28,%ymm20,%ymm29

vpacksswb (%r10),             %ymm5, %ymm1
vpacksswb (%r10,%r12,1),      %ymm5, %ymm2
vpacksswb 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpacksswb 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpacksswb 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpacksswb (%r10),             %ymm5, %ymm10
vpacksswb (%r10,%r12,1),      %ymm5, %ymm11
vpacksswb 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpacksswb 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpacksswb 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpacksswb (%r10),             %ymm1, %ymm20
vpacksswb (%r10,%r12,1),      %ymm2, %ymm31
vpacksswb 0x10(%r10,%r12,1),  %ymm3, %ymm30
vpacksswb 0x11(%r10,%r12,2),  %ymm4, %ymm25
vpacksswb 0x3567(%r10,%r12,4),%ymm5, %ymm29

vpacksswb (%r10),             %ymm15, %ymm3
vpacksswb (%r10,%r12,1),      %ymm15, %ymm3
vpacksswb 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpacksswb 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpacksswb 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpacksswb (%r10),             %ymm14, %ymm10
vpacksswb (%r10,%r12,1),      %ymm14, %ymm10
vpacksswb 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpacksswb 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpacksswb 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpacksswb (%r10),             %ymm11, %ymm20
vpacksswb (%r10,%r12,1),      %ymm12, %ymm31
vpacksswb 0x10(%r10,%r12,1),  %ymm13, %ymm30
vpacksswb 0x11(%r10,%r12,2),  %ymm14, %ymm25
vpacksswb 0x3567(%r10,%r12,4),%ymm15, %ymm29

vpacksswb (%r10),             %ymm25, %ymm3
vpacksswb (%r10,%r12,1),      %ymm25, %ymm3
vpacksswb 0x10(%r10,%r12,1),  %ymm24, %ymm3
vpacksswb 0x11(%r10,%r12,2),  %ymm24, %ymm3
vpacksswb 0x3567(%r10,%r12,4),%ymm23, %ymm3

vpacksswb (%r10),             %ymm24, %ymm10
vpacksswb (%r10,%r12,1),      %ymm24, %ymm10
vpacksswb 0x10(%r10,%r12,1),  %ymm25, %ymm10
vpacksswb 0x11(%r10,%r12,2),  %ymm21, %ymm10
vpacksswb 0x3567(%r10,%r12,4),%ymm21, %ymm10

vpacksswb (%r10),             %ymm21, %ymm20
vpacksswb (%r10,%r12,1),      %ymm22, %ymm31
vpacksswb 0x10(%r10,%r12,1),  %ymm23, %ymm30
vpacksswb 0x11(%r10,%r12,2),  %ymm24, %ymm25
vpacksswb 0x3567(%r10,%r12,4),%ymm25, %ymm29


vpackssdw %zmm0,%zmm3,%zmm1
vpackssdw %zmm1,%zmm2,%zmm11
vpackssdw %zmm2,%zmm1,%zmm22
vpackssdw %zmm3,%zmm12,%zmm1
vpackssdw %zmm4,%zmm13,%zmm15
vpackssdw %zmm5,%zmm14,%zmm23
vpackssdw %zmm6,%zmm24,%zmm2
vpackssdw %zmm7,%zmm25,%zmm10
vpackssdw %zmm0,%zmm26,%zmm27

vpackssdw %zmm11,%zmm0,%zmm3
vpackssdw %zmm12,%zmm0,%zmm11
vpackssdw %zmm13,%zmm0,%zmm28
vpackssdw %zmm14,%zmm10,%zmm4
vpackssdw %zmm15,%zmm12,%zmm11
vpackssdw %zmm11,%zmm13,%zmm29
vpackssdw %zmm12,%zmm30,%zmm5
vpackssdw %zmm13,%zmm31,%zmm11
vpackssdw %zmm14,%zmm22,%zmm24

vpackssdw %zmm20,%zmm0,%zmm6
vpackssdw %zmm21,%zmm0,%zmm11
vpackssdw %zmm22,%zmm0,%zmm30
vpackssdw %zmm23,%zmm12,%zmm7
vpackssdw %zmm24,%zmm13,%zmm10
vpackssdw %zmm25,%zmm14,%zmm31
vpackssdw %zmm26,%zmm22,%zmm1
vpackssdw %zmm27,%zmm21,%zmm14
vpackssdw %zmm28,%zmm20,%zmm29

vpackssdw (%r10),             %zmm5, %zmm1
vpackssdw (%r10,%r12,1),      %zmm5, %zmm2
vpackssdw 0x10(%r10,%r12,1),  %zmm5, %zmm3
vpackssdw 0x11(%r10,%r12,2),  %zmm5, %zmm4
vpackssdw 0x3567(%r10,%r12,4),%zmm5, %zmm0

vpackssdw (%r10),             %zmm5, %zmm10
vpackssdw (%r10,%r12,1),      %zmm5, %zmm11
vpackssdw 0x10(%r10,%r12,1),  %zmm5, %zmm12
vpackssdw 0x11(%r10,%r12,2),  %zmm5, %zmm13
vpackssdw 0x3567(%r10,%r12,4),%zmm5, %zmm14

vpackssdw (%r10),             %zmm1, %zmm20
vpackssdw (%r10,%r12,1),      %zmm2, %zmm31
vpackssdw 0x10(%r10,%r12,1),  %zmm3, %zmm30
vpackssdw 0x11(%r10,%r12,2),  %zmm4, %zmm25
vpackssdw 0x3567(%r10,%r12,4),%zmm5, %zmm29

vpackssdw (%r10),             %zmm15, %zmm3
vpackssdw (%r10,%r12,1),      %zmm15, %zmm3
vpackssdw 0x10(%r10,%r12,1),  %zmm14, %zmm3
vpackssdw 0x11(%r10,%r12,2),  %zmm14, %zmm3
vpackssdw 0x3567(%r10,%r12,4),%zmm13, %zmm3

vpackssdw (%r10),             %zmm14, %zmm10
vpackssdw (%r10,%r12,1),      %zmm14, %zmm10
vpackssdw 0x10(%r10,%r12,1),  %zmm15, %zmm10
vpackssdw 0x11(%r10,%r12,2),  %zmm11, %zmm10
vpackssdw 0x3567(%r10,%r12,4),%zmm11, %zmm10

vpackssdw (%r10),             %zmm11, %zmm20
vpackssdw (%r10,%r12,1),      %zmm12, %zmm31
vpackssdw 0x10(%r10,%r12,1),  %zmm13, %zmm30
vpackssdw 0x11(%r10,%r12,2),  %zmm14, %zmm25
vpackssdw 0x3567(%r10,%r12,4),%zmm15, %zmm29

vpackssdw (%r10),             %zmm25, %zmm3
vpackssdw (%r10,%r12,1),      %zmm25, %zmm3
vpackssdw 0x10(%r10,%r12,1),  %zmm24, %zmm3
vpackssdw 0x11(%r10,%r12,2),  %zmm24, %zmm3
vpackssdw 0x3567(%r10,%r12,4),%zmm23, %zmm3

vpackssdw (%r10),             %zmm24, %zmm10
vpackssdw (%r10,%r12,1),      %zmm24, %zmm10
vpackssdw 0x10(%r10,%r12,1),  %zmm25, %zmm10
vpackssdw 0x11(%r10,%r12,2),  %zmm21, %zmm10
vpackssdw 0x3567(%r10,%r12,4),%zmm21, %zmm10

vpackssdw (%r10),             %zmm21, %zmm20
vpackssdw (%r10,%r12,1),      %zmm22, %zmm31
vpackssdw 0x10(%r10,%r12,1),  %zmm23, %zmm30
vpackssdw 0x11(%r10,%r12,2),  %zmm24, %zmm25
vpackssdw 0x3567(%r10,%r12,4),%zmm25, %zmm29

