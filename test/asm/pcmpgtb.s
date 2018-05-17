pcmpgtb %mm0, %mm1
pcmpgtb %mm2, %mm7
pcmpgtb %mm7, %mm5

pcmpgtb (%r10), %mm0
pcmpgtb (%r10,%rdx,4), %mm0
pcmpgtb 0x10(%r10,%rdx,4), %mm0

pcmpgtb (%r10), %mm4
pcmpgtb (%r10,%rdx,4), %mm5
pcmpgtb 0x10(%r10,%rdx,4), %mm6

pcmpgtw %mm1, %mm2
pcmpgtw %mm5, %mm3
pcmpgtw %mm5, %mm4

pcmpgtw (%r10), %mm4
pcmpgtw (%r10,%rdx,1), %mm5
pcmpgtw 0x10(%r10,%rdx,2), %mm6
pcmpgtw 0x11(%r10,%rdx,4), %mm6
pcmpgtw 0x3567(%rcx,%rdx,4), %mm6

vpcmpgtb %xmm0,%xmm3,%xmm1
vpcmpgtb %xmm1,%xmm2,%xmm11
vpcmpgtb %xmm3,%xmm12,%xmm1
vpcmpgtb %xmm4,%xmm13,%xmm15
vpcmpgtb %xmm11,%xmm0,%xmm3
vpcmpgtb %xmm12,%xmm0,%xmm11
vpcmpgtb %xmm14,%xmm10,%xmm4
vpcmpgtb %xmm15,%xmm12,%xmm11

vpcmpgtb (%r10),             %xmm5, %xmm1
vpcmpgtb (%r10,%r12,1),      %xmm5, %xmm2
vpcmpgtb 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpcmpgtb 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpcmpgtb 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpcmpgtb (%r10),             %xmm5, %xmm10
vpcmpgtb (%r10,%r12,1),      %xmm5, %xmm11
vpcmpgtb 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpcmpgtb 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpcmpgtb 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpcmpgtb (%r10),             %xmm15, %xmm3
vpcmpgtb (%r10,%r12,1),      %xmm15, %xmm3
vpcmpgtb 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpcmpgtb 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpcmpgtb 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpcmpgtb (%r10),             %xmm14, %xmm10
vpcmpgtb (%r10,%r12,1),      %xmm14, %xmm10
vpcmpgtb 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpcmpgtb 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpcmpgtb 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpcmpgtw %xmm0,%xmm3,%xmm1
vpcmpgtw %xmm1,%xmm2,%xmm11
vpcmpgtw %xmm3,%xmm12,%xmm1
vpcmpgtw %xmm4,%xmm13,%xmm15
vpcmpgtw %xmm11,%xmm0,%xmm3
vpcmpgtw %xmm12,%xmm0,%xmm11
vpcmpgtw %xmm14,%xmm10,%xmm4
vpcmpgtw %xmm15,%xmm12,%xmm11

vpcmpgtw (%r10),             %xmm5, %xmm1
vpcmpgtw (%r10,%r12,1),      %xmm5, %xmm2
vpcmpgtw 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpcmpgtw 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpcmpgtw 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpcmpgtw (%r10),             %xmm5, %xmm10
vpcmpgtw (%r10,%r12,1),      %xmm5, %xmm11
vpcmpgtw 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpcmpgtw 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpcmpgtw 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpcmpgtw (%r10),             %xmm15, %xmm3
vpcmpgtw (%r10,%r12,1),      %xmm15, %xmm3
vpcmpgtw 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpcmpgtw 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpcmpgtw 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpcmpgtw (%r10),             %xmm14, %xmm10
vpcmpgtw (%r10,%r12,1),      %xmm14, %xmm10
vpcmpgtw 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpcmpgtw 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpcmpgtw 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpcmpgtb %ymm0,%ymm3,%ymm1
vpcmpgtb %ymm1,%ymm2,%ymm11
vpcmpgtb %ymm3,%ymm12,%ymm1
vpcmpgtb %ymm4,%ymm13,%ymm15
vpcmpgtb %ymm11,%ymm0,%ymm3
vpcmpgtb %ymm12,%ymm0,%ymm11
vpcmpgtb %ymm14,%ymm10,%ymm4
vpcmpgtb %ymm15,%ymm12,%ymm11

vpcmpgtb (%r10),             %ymm5, %ymm1
vpcmpgtb (%r10,%r12,1),      %ymm5, %ymm2
vpcmpgtb 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpcmpgtb 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpcmpgtb 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpcmpgtb (%r10),             %ymm5, %ymm10
vpcmpgtb (%r10,%r12,1),      %ymm5, %ymm11
vpcmpgtb 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpcmpgtb 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpcmpgtb 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpcmpgtb (%r10),             %ymm15, %ymm3
vpcmpgtb (%r10,%r12,1),      %ymm15, %ymm3
vpcmpgtb 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpcmpgtb 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpcmpgtb 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpcmpgtb (%r10),             %ymm14, %ymm10
vpcmpgtb (%r10,%r12,1),      %ymm14, %ymm10
vpcmpgtb 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpcmpgtb 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpcmpgtb 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpcmpgtw %ymm0,%ymm3,%ymm1
vpcmpgtw %ymm1,%ymm2,%ymm11
vpcmpgtw %ymm3,%ymm12,%ymm1
vpcmpgtw %ymm4,%ymm13,%ymm15

vpcmpgtw %ymm11,%ymm0,%ymm3
vpcmpgtw %ymm12,%ymm0,%ymm11
vpcmpgtw %ymm14,%ymm10,%ymm4
vpcmpgtw %ymm15,%ymm12,%ymm11

vpcmpgtw (%r10),             %ymm5, %ymm1
vpcmpgtw (%r10,%r12,1),      %ymm5, %ymm2
vpcmpgtw 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpcmpgtw 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpcmpgtw 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpcmpgtw (%r10),             %ymm5, %ymm10
vpcmpgtw (%r10,%r12,1),      %ymm5, %ymm11
vpcmpgtw 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpcmpgtw 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpcmpgtw 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpcmpgtw (%r10),             %ymm15, %ymm3
vpcmpgtw (%r10,%r12,1),      %ymm15, %ymm3
vpcmpgtw 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpcmpgtw 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpcmpgtw 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpcmpgtw (%r10),             %ymm14, %ymm10
vpcmpgtw (%r10,%r12,1),      %ymm14, %ymm10
vpcmpgtw 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpcmpgtw 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpcmpgtw 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpcmpgtb %ymm0,%ymm3,%ymm1
vpcmpgtb %ymm1,%ymm2,%ymm11
vpcmpgtb %ymm3,%ymm12,%ymm1
vpcmpgtb %ymm4,%ymm13,%ymm15
vpcmpgtb %ymm11,%ymm0,%ymm3
vpcmpgtb %ymm12,%ymm0,%ymm11
vpcmpgtb %ymm14,%ymm10,%ymm4
vpcmpgtb %ymm15,%ymm12,%ymm11

vpcmpgtb (%r10),             %ymm5, %ymm1
vpcmpgtb (%r10,%r12,1),      %ymm5, %ymm2
vpcmpgtb 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpcmpgtb 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpcmpgtb 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpcmpgtb (%r10),             %ymm5, %ymm10
vpcmpgtb (%r10,%r12,1),      %ymm5, %ymm11
vpcmpgtb 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpcmpgtb 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpcmpgtb 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpcmpgtb (%r10),             %ymm15, %ymm3
vpcmpgtb (%r10,%r12,1),      %ymm15, %ymm3
vpcmpgtb 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpcmpgtb 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpcmpgtb 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpcmpgtb (%r10),             %ymm14, %ymm10
vpcmpgtb (%r10,%r12,1),      %ymm14, %ymm10
vpcmpgtb 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpcmpgtb 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpcmpgtb 0x3567(%r10,%r12,4),%ymm11, %ymm10

pcmpgtd %mm0, %mm1
pcmpgtd %mm2, %mm7
pcmpgtd %mm7, %mm5

pcmpgtd (%r10), %mm0
pcmpgtd (%r10,%rdx,4), %mm0
pcmpgtd 0x10(%r10,%rdx,4), %mm0

pcmpgtd (%r10), %mm4
pcmpgtd (%r10,%rdx,4), %mm5
pcmpgtd 0x10(%r10,%rdx,4), %mm6

vpcmpgtd %xmm0,%xmm3,%xmm1
vpcmpgtd %xmm1,%xmm2,%xmm11

vpcmpgtd %xmm3,%xmm12,%xmm1
vpcmpgtd %xmm4,%xmm13,%xmm15

vpcmpgtd %xmm11,%xmm0,%xmm3
vpcmpgtd %xmm12,%xmm0,%xmm11

vpcmpgtd %xmm14,%xmm10,%xmm4
vpcmpgtd %xmm15,%xmm12,%xmm11

vpcmpgtd (%r10),             %xmm5, %xmm1
vpcmpgtd (%r10,%r12,1),      %xmm5, %xmm2
vpcmpgtd 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpcmpgtd 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpcmpgtd 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpcmpgtd (%r10),             %xmm5, %xmm10
vpcmpgtd (%r10,%r12,1),      %xmm5, %xmm11
vpcmpgtd 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpcmpgtd 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpcmpgtd 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpcmpgtd (%r10),             %xmm15, %xmm3
vpcmpgtd (%r10,%r12,1),      %xmm15, %xmm3
vpcmpgtd 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpcmpgtd 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpcmpgtd 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpcmpgtd (%r10),             %xmm14, %xmm10
vpcmpgtd (%r10,%r12,1),      %xmm14, %xmm10
vpcmpgtd 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpcmpgtd 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpcmpgtd 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpcmpgtq %xmm0,%xmm3,%xmm1
vpcmpgtq %xmm1,%xmm2,%xmm11

vpcmpgtq %xmm3,%xmm12,%xmm1
vpcmpgtq %xmm4,%xmm13,%xmm15

vpcmpgtq %xmm11,%xmm0,%xmm3
vpcmpgtq %xmm12,%xmm0,%xmm11
vpcmpgtq %xmm14,%xmm10,%xmm4
vpcmpgtq %xmm15,%xmm12,%xmm11

vpcmpgtq (%r10),             %xmm5, %xmm1
vpcmpgtq (%r10,%r12,1),      %xmm5, %xmm2
vpcmpgtq 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpcmpgtq 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpcmpgtq 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpcmpgtq (%r10),             %xmm5, %xmm10
vpcmpgtq (%r10,%r12,1),      %xmm5, %xmm11
vpcmpgtq 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpcmpgtq 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpcmpgtq 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpcmpgtq (%r10),             %xmm15, %xmm3
vpcmpgtq (%r10,%r12,1),      %xmm15, %xmm3
vpcmpgtq 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpcmpgtq 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpcmpgtq 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpcmpgtq (%r10),             %xmm14, %xmm10
vpcmpgtq (%r10,%r12,1),      %xmm14, %xmm10
vpcmpgtq 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpcmpgtq 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpcmpgtq 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpcmpgtd %ymm0,%ymm3,%ymm1
vpcmpgtd %ymm1,%ymm2,%ymm11
vpcmpgtd %ymm3,%ymm12,%ymm1
vpcmpgtd %ymm4,%ymm13,%ymm15

vpcmpgtd %ymm11,%ymm0,%ymm3
vpcmpgtd %ymm12,%ymm0,%ymm11
vpcmpgtd %ymm14,%ymm10,%ymm4
vpcmpgtd %ymm15,%ymm12,%ymm11

vpcmpgtd (%r10),             %ymm5, %ymm1
vpcmpgtd (%r10,%r12,1),      %ymm5, %ymm2
vpcmpgtd 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpcmpgtd 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpcmpgtd 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpcmpgtd (%r10),             %ymm5, %ymm10
vpcmpgtd (%r10,%r12,1),      %ymm5, %ymm11
vpcmpgtd 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpcmpgtd 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpcmpgtd 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpcmpgtd (%r10),             %ymm15, %ymm3
vpcmpgtd (%r10,%r12,1),      %ymm15, %ymm3
vpcmpgtd 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpcmpgtd 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpcmpgtd 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpcmpgtd (%r10),             %ymm14, %ymm10
vpcmpgtd (%r10,%r12,1),      %ymm14, %ymm10
vpcmpgtd 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpcmpgtd 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpcmpgtd 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpcmpgtq %ymm0,%ymm3,%ymm1
vpcmpgtq %ymm1,%ymm2,%ymm11
vpcmpgtq %ymm3,%ymm12,%ymm1
vpcmpgtq %ymm4,%ymm13,%ymm15

vpcmpgtq %ymm11,%ymm0,%ymm3
vpcmpgtq %ymm12,%ymm0,%ymm11
vpcmpgtq %ymm14,%ymm10,%ymm4
vpcmpgtq %ymm15,%ymm12,%ymm11

vpcmpgtq (%r10),             %ymm5, %ymm1
vpcmpgtq (%r10,%r12,1),      %ymm5, %ymm2
vpcmpgtq 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpcmpgtq 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpcmpgtq 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpcmpgtq (%r10),             %ymm5, %ymm10
vpcmpgtq (%r10,%r12,1),      %ymm5, %ymm11
vpcmpgtq 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpcmpgtq 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpcmpgtq 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpcmpgtq (%r10),             %ymm15, %ymm3
vpcmpgtq (%r10,%r12,1),      %ymm15, %ymm3
vpcmpgtq 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpcmpgtq 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpcmpgtq 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpcmpgtq (%r10),             %ymm14, %ymm10
vpcmpgtq (%r10,%r12,1),      %ymm14, %ymm10
vpcmpgtq 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpcmpgtq 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpcmpgtq 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpcmpgtd %ymm0,%ymm3,%ymm1
vpcmpgtd %ymm1,%ymm2,%ymm11
vpcmpgtd %ymm3,%ymm12,%ymm1
vpcmpgtd %ymm4,%ymm13,%ymm15

vpcmpgtd %ymm11,%ymm0,%ymm3
vpcmpgtd %ymm12,%ymm0,%ymm11
vpcmpgtd %ymm14,%ymm10,%ymm4
vpcmpgtd %ymm15,%ymm12,%ymm11

vpcmpgtd (%r10),             %ymm5, %ymm1
vpcmpgtd (%r10,%r12,1),      %ymm5, %ymm2
vpcmpgtd 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpcmpgtd 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpcmpgtd 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpcmpgtd (%r10),             %ymm5, %ymm10
vpcmpgtd (%r10,%r12,1),      %ymm5, %ymm11
vpcmpgtd 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpcmpgtd 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpcmpgtd 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpcmpgtd (%r10),             %ymm15, %ymm3
vpcmpgtd (%r10,%r12,1),      %ymm15, %ymm3
vpcmpgtd 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpcmpgtd 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpcmpgtd 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpcmpgtd (%r10),             %ymm14, %ymm10
vpcmpgtd (%r10,%r12,1),      %ymm14, %ymm10
vpcmpgtd 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpcmpgtd 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpcmpgtd 0x3567(%r10,%r12,4),%ymm11, %ymm10
