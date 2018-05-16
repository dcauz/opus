pcmpeqb %mm0, %mm1
pcmpeqb %mm2, %mm7
pcmpeqb %mm7, %mm5

pcmpeqb (%r10), %mm0
pcmpeqb (%r10,%rdx,4), %mm0
pcmpeqb 0x10(%r10,%rdx,4), %mm0

pcmpeqb (%r10), %mm4
pcmpeqb (%r10,%rdx,4), %mm5
pcmpeqb 0x10(%r10,%rdx,4), %mm6

pcmpeqw %mm1, %mm2
pcmpeqw %mm5, %mm3
pcmpeqw %mm5, %mm4

pcmpeqw (%r10), %mm4
pcmpeqw (%r10,%rdx,1), %mm5
pcmpeqw 0x10(%r10,%rdx,2), %mm6
pcmpeqw 0x11(%r10,%rdx,4), %mm6
pcmpeqw 0x3567(%rcx,%rdx,4), %mm6

vpcmpeqb %xmm0,%xmm3,%xmm1
vpcmpeqb %xmm1,%xmm2,%xmm11
vpcmpeqb %xmm3,%xmm12,%xmm1
vpcmpeqb %xmm4,%xmm13,%xmm15
vpcmpeqb %xmm11,%xmm0,%xmm3
vpcmpeqb %xmm12,%xmm0,%xmm11
vpcmpeqb %xmm14,%xmm10,%xmm4
vpcmpeqb %xmm15,%xmm12,%xmm11

vpcmpeqb (%r10),             %xmm5, %xmm1
vpcmpeqb (%r10,%r12,1),      %xmm5, %xmm2
vpcmpeqb 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpcmpeqb 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpcmpeqb 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpcmpeqb (%r10),             %xmm5, %xmm10
vpcmpeqb (%r10,%r12,1),      %xmm5, %xmm11
vpcmpeqb 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpcmpeqb 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpcmpeqb 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpcmpeqb (%r10),             %xmm15, %xmm3
vpcmpeqb (%r10,%r12,1),      %xmm15, %xmm3
vpcmpeqb 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpcmpeqb 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpcmpeqb 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpcmpeqb (%r10),             %xmm14, %xmm10
vpcmpeqb (%r10,%r12,1),      %xmm14, %xmm10
vpcmpeqb 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpcmpeqb 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpcmpeqb 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpcmpeqw %xmm0,%xmm3,%xmm1
vpcmpeqw %xmm1,%xmm2,%xmm11
vpcmpeqw %xmm3,%xmm12,%xmm1
vpcmpeqw %xmm4,%xmm13,%xmm15
vpcmpeqw %xmm11,%xmm0,%xmm3
vpcmpeqw %xmm12,%xmm0,%xmm11
vpcmpeqw %xmm14,%xmm10,%xmm4
vpcmpeqw %xmm15,%xmm12,%xmm11

vpcmpeqw (%r10),             %xmm5, %xmm1
vpcmpeqw (%r10,%r12,1),      %xmm5, %xmm2
vpcmpeqw 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpcmpeqw 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpcmpeqw 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpcmpeqw (%r10),             %xmm5, %xmm10
vpcmpeqw (%r10,%r12,1),      %xmm5, %xmm11
vpcmpeqw 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpcmpeqw 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpcmpeqw 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpcmpeqw (%r10),             %xmm15, %xmm3
vpcmpeqw (%r10,%r12,1),      %xmm15, %xmm3
vpcmpeqw 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpcmpeqw 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpcmpeqw 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpcmpeqw (%r10),             %xmm14, %xmm10
vpcmpeqw (%r10,%r12,1),      %xmm14, %xmm10
vpcmpeqw 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpcmpeqw 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpcmpeqw 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpcmpeqb %ymm0,%ymm3,%ymm1
vpcmpeqb %ymm1,%ymm2,%ymm11
vpcmpeqb %ymm3,%ymm12,%ymm1
vpcmpeqb %ymm4,%ymm13,%ymm15
vpcmpeqb %ymm11,%ymm0,%ymm3
vpcmpeqb %ymm12,%ymm0,%ymm11
vpcmpeqb %ymm14,%ymm10,%ymm4
vpcmpeqb %ymm15,%ymm12,%ymm11

vpcmpeqb (%r10),             %ymm5, %ymm1
vpcmpeqb (%r10,%r12,1),      %ymm5, %ymm2
vpcmpeqb 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpcmpeqb 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpcmpeqb 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpcmpeqb (%r10),             %ymm5, %ymm10
vpcmpeqb (%r10,%r12,1),      %ymm5, %ymm11
vpcmpeqb 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpcmpeqb 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpcmpeqb 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpcmpeqb (%r10),             %ymm15, %ymm3
vpcmpeqb (%r10,%r12,1),      %ymm15, %ymm3
vpcmpeqb 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpcmpeqb 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpcmpeqb 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpcmpeqb (%r10),             %ymm14, %ymm10
vpcmpeqb (%r10,%r12,1),      %ymm14, %ymm10
vpcmpeqb 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpcmpeqb 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpcmpeqb 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpcmpeqw %ymm0,%ymm3,%ymm1
vpcmpeqw %ymm1,%ymm2,%ymm11
vpcmpeqw %ymm3,%ymm12,%ymm1
vpcmpeqw %ymm4,%ymm13,%ymm15

vpcmpeqw %ymm11,%ymm0,%ymm3
vpcmpeqw %ymm12,%ymm0,%ymm11
vpcmpeqw %ymm14,%ymm10,%ymm4
vpcmpeqw %ymm15,%ymm12,%ymm11

vpcmpeqw (%r10),             %ymm5, %ymm1
vpcmpeqw (%r10,%r12,1),      %ymm5, %ymm2
vpcmpeqw 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpcmpeqw 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpcmpeqw 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpcmpeqw (%r10),             %ymm5, %ymm10
vpcmpeqw (%r10,%r12,1),      %ymm5, %ymm11
vpcmpeqw 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpcmpeqw 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpcmpeqw 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpcmpeqw (%r10),             %ymm15, %ymm3
vpcmpeqw (%r10,%r12,1),      %ymm15, %ymm3
vpcmpeqw 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpcmpeqw 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpcmpeqw 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpcmpeqw (%r10),             %ymm14, %ymm10
vpcmpeqw (%r10,%r12,1),      %ymm14, %ymm10
vpcmpeqw 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpcmpeqw 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpcmpeqw 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpcmpeqb %ymm0,%ymm3,%ymm1
vpcmpeqb %ymm1,%ymm2,%ymm11
vpcmpeqb %ymm3,%ymm12,%ymm1
vpcmpeqb %ymm4,%ymm13,%ymm15
vpcmpeqb %ymm11,%ymm0,%ymm3
vpcmpeqb %ymm12,%ymm0,%ymm11
vpcmpeqb %ymm14,%ymm10,%ymm4
vpcmpeqb %ymm15,%ymm12,%ymm11

vpcmpeqb (%r10),             %ymm5, %ymm1
vpcmpeqb (%r10,%r12,1),      %ymm5, %ymm2
vpcmpeqb 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpcmpeqb 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpcmpeqb 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpcmpeqb (%r10),             %ymm5, %ymm10
vpcmpeqb (%r10,%r12,1),      %ymm5, %ymm11
vpcmpeqb 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpcmpeqb 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpcmpeqb 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpcmpeqb (%r10),             %ymm15, %ymm3
vpcmpeqb (%r10,%r12,1),      %ymm15, %ymm3
vpcmpeqb 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpcmpeqb 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpcmpeqb 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpcmpeqb (%r10),             %ymm14, %ymm10
vpcmpeqb (%r10,%r12,1),      %ymm14, %ymm10
vpcmpeqb 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpcmpeqb 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpcmpeqb 0x3567(%r10,%r12,4),%ymm11, %ymm10

pcmpeqd %mm0, %mm1
pcmpeqd %mm2, %mm7
pcmpeqd %mm7, %mm5

pcmpeqd (%r10), %mm0
pcmpeqd (%r10,%rdx,4), %mm0
pcmpeqd 0x10(%r10,%rdx,4), %mm0

pcmpeqd (%r10), %mm4
pcmpeqd (%r10,%rdx,4), %mm5
pcmpeqd 0x10(%r10,%rdx,4), %mm6

vpcmpeqd %xmm0,%xmm3,%xmm1
vpcmpeqd %xmm1,%xmm2,%xmm11

vpcmpeqd %xmm3,%xmm12,%xmm1
vpcmpeqd %xmm4,%xmm13,%xmm15

vpcmpeqd %xmm11,%xmm0,%xmm3
vpcmpeqd %xmm12,%xmm0,%xmm11

vpcmpeqd %xmm14,%xmm10,%xmm4
vpcmpeqd %xmm15,%xmm12,%xmm11

vpcmpeqd (%r10),             %xmm5, %xmm1
vpcmpeqd (%r10,%r12,1),      %xmm5, %xmm2
vpcmpeqd 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpcmpeqd 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpcmpeqd 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpcmpeqd (%r10),             %xmm5, %xmm10
vpcmpeqd (%r10,%r12,1),      %xmm5, %xmm11
vpcmpeqd 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpcmpeqd 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpcmpeqd 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpcmpeqd (%r10),             %xmm15, %xmm3
vpcmpeqd (%r10,%r12,1),      %xmm15, %xmm3
vpcmpeqd 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpcmpeqd 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpcmpeqd 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpcmpeqd (%r10),             %xmm14, %xmm10
vpcmpeqd (%r10,%r12,1),      %xmm14, %xmm10
vpcmpeqd 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpcmpeqd 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpcmpeqd 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpcmpeqq %xmm0,%xmm3,%xmm1
vpcmpeqq %xmm1,%xmm2,%xmm11

vpcmpeqq %xmm3,%xmm12,%xmm1
vpcmpeqq %xmm4,%xmm13,%xmm15

vpcmpeqq %xmm11,%xmm0,%xmm3
vpcmpeqq %xmm12,%xmm0,%xmm11
vpcmpeqq %xmm14,%xmm10,%xmm4
vpcmpeqq %xmm15,%xmm12,%xmm11

vpcmpeqq (%r10),             %xmm5, %xmm1
vpcmpeqq (%r10,%r12,1),      %xmm5, %xmm2
vpcmpeqq 0x10(%r10,%r12,1),  %xmm5, %xmm3
vpcmpeqq 0x11(%r10,%r12,2),  %xmm5, %xmm4
vpcmpeqq 0x3567(%r10,%r12,4),%xmm5, %xmm0

vpcmpeqq (%r10),             %xmm5, %xmm10
vpcmpeqq (%r10,%r12,1),      %xmm5, %xmm11
vpcmpeqq 0x10(%r10,%r12,1),  %xmm5, %xmm12
vpcmpeqq 0x11(%r10,%r12,2),  %xmm5, %xmm13
vpcmpeqq 0x3567(%r10,%r12,4),%xmm5, %xmm14

vpcmpeqq (%r10),             %xmm15, %xmm3
vpcmpeqq (%r10,%r12,1),      %xmm15, %xmm3
vpcmpeqq 0x10(%r10,%r12,1),  %xmm14, %xmm3
vpcmpeqq 0x11(%r10,%r12,2),  %xmm14, %xmm3
vpcmpeqq 0x3567(%r10,%r12,4),%xmm13, %xmm3

vpcmpeqq (%r10),             %xmm14, %xmm10
vpcmpeqq (%r10,%r12,1),      %xmm14, %xmm10
vpcmpeqq 0x10(%r10,%r12,1),  %xmm15, %xmm10
vpcmpeqq 0x11(%r10,%r12,2),  %xmm11, %xmm10
vpcmpeqq 0x3567(%r10,%r12,4),%xmm11, %xmm10

vpcmpeqd %ymm0,%ymm3,%ymm1
vpcmpeqd %ymm1,%ymm2,%ymm11
vpcmpeqd %ymm3,%ymm12,%ymm1
vpcmpeqd %ymm4,%ymm13,%ymm15

vpcmpeqd %ymm11,%ymm0,%ymm3
vpcmpeqd %ymm12,%ymm0,%ymm11
vpcmpeqd %ymm14,%ymm10,%ymm4
vpcmpeqd %ymm15,%ymm12,%ymm11

vpcmpeqd (%r10),             %ymm5, %ymm1
vpcmpeqd (%r10,%r12,1),      %ymm5, %ymm2
vpcmpeqd 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpcmpeqd 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpcmpeqd 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpcmpeqd (%r10),             %ymm5, %ymm10
vpcmpeqd (%r10,%r12,1),      %ymm5, %ymm11
vpcmpeqd 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpcmpeqd 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpcmpeqd 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpcmpeqd (%r10),             %ymm15, %ymm3
vpcmpeqd (%r10,%r12,1),      %ymm15, %ymm3
vpcmpeqd 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpcmpeqd 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpcmpeqd 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpcmpeqd (%r10),             %ymm14, %ymm10
vpcmpeqd (%r10,%r12,1),      %ymm14, %ymm10
vpcmpeqd 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpcmpeqd 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpcmpeqd 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpcmpeqq %ymm0,%ymm3,%ymm1
vpcmpeqq %ymm1,%ymm2,%ymm11
vpcmpeqq %ymm3,%ymm12,%ymm1
vpcmpeqq %ymm4,%ymm13,%ymm15

vpcmpeqq %ymm11,%ymm0,%ymm3
vpcmpeqq %ymm12,%ymm0,%ymm11
vpcmpeqq %ymm14,%ymm10,%ymm4
vpcmpeqq %ymm15,%ymm12,%ymm11

vpcmpeqq (%r10),             %ymm5, %ymm1
vpcmpeqq (%r10,%r12,1),      %ymm5, %ymm2
vpcmpeqq 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpcmpeqq 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpcmpeqq 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpcmpeqq (%r10),             %ymm5, %ymm10
vpcmpeqq (%r10,%r12,1),      %ymm5, %ymm11
vpcmpeqq 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpcmpeqq 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpcmpeqq 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpcmpeqq (%r10),             %ymm15, %ymm3
vpcmpeqq (%r10,%r12,1),      %ymm15, %ymm3
vpcmpeqq 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpcmpeqq 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpcmpeqq 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpcmpeqq (%r10),             %ymm14, %ymm10
vpcmpeqq (%r10,%r12,1),      %ymm14, %ymm10
vpcmpeqq 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpcmpeqq 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpcmpeqq 0x3567(%r10,%r12,4),%ymm11, %ymm10

vpcmpeqd %ymm0,%ymm3,%ymm1
vpcmpeqd %ymm1,%ymm2,%ymm11
vpcmpeqd %ymm3,%ymm12,%ymm1
vpcmpeqd %ymm4,%ymm13,%ymm15

vpcmpeqd %ymm11,%ymm0,%ymm3
vpcmpeqd %ymm12,%ymm0,%ymm11
vpcmpeqd %ymm14,%ymm10,%ymm4
vpcmpeqd %ymm15,%ymm12,%ymm11

vpcmpeqd (%r10),             %ymm5, %ymm1
vpcmpeqd (%r10,%r12,1),      %ymm5, %ymm2
vpcmpeqd 0x10(%r10,%r12,1),  %ymm5, %ymm3
vpcmpeqd 0x11(%r10,%r12,2),  %ymm5, %ymm4
vpcmpeqd 0x3567(%r10,%r12,4),%ymm5, %ymm0

vpcmpeqd (%r10),             %ymm5, %ymm10
vpcmpeqd (%r10,%r12,1),      %ymm5, %ymm11
vpcmpeqd 0x10(%r10,%r12,1),  %ymm5, %ymm12
vpcmpeqd 0x11(%r10,%r12,2),  %ymm5, %ymm13
vpcmpeqd 0x3567(%r10,%r12,4),%ymm5, %ymm14

vpcmpeqd (%r10),             %ymm15, %ymm3
vpcmpeqd (%r10,%r12,1),      %ymm15, %ymm3
vpcmpeqd 0x10(%r10,%r12,1),  %ymm14, %ymm3
vpcmpeqd 0x11(%r10,%r12,2),  %ymm14, %ymm3
vpcmpeqd 0x3567(%r10,%r12,4),%ymm13, %ymm3

vpcmpeqd (%r10),             %ymm14, %ymm10
vpcmpeqd (%r10,%r12,1),      %ymm14, %ymm10
vpcmpeqd 0x10(%r10,%r12,1),  %ymm15, %ymm10
vpcmpeqd 0x11(%r10,%r12,2),  %ymm11, %ymm10
vpcmpeqd 0x3567(%r10,%r12,4),%ymm11, %ymm10
