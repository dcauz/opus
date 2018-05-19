
movups %xmm0,%xmm3
movups %xmm1,%xmm2
movups %xmm3,%xmm12
movups %xmm4,%xmm13
movups %xmm11,%xmm0
movups %xmm12,%xmm0
movups %xmm14,%xmm10
movups %xmm15,%xmm12

movups (%r10),             %xmm5
movups (%r10,%r12,1),      %xmm2
movups 0x10(%r10,%r12,1),  %xmm3
movups 0x11(%r10,%r12,2),  %xmm4
movups 0x3567(%r10,%r12,4),%xmm0

movups (%r10),             %xmm10
movups (%r10,%r12,1),      %xmm11
movups 0x10(%r10,%r12,1),  %xmm12
movups 0x11(%r10,%r12,2),  %xmm13
movups 0x3567(%r10,%r12,4),%xmm14


vmovups %ymm0,%ymm3
vmovups %ymm1,%ymm2
vmovups %ymm3,%ymm12
vmovups %ymm4,%ymm13

vmovups %ymm11,%ymm0
vmovups %ymm12,%ymm0
vmovups %ymm14,%ymm10
vmovups %ymm15,%ymm12

vmovups (%r10),             %ymm1
vmovups (%r10,%r12,1),      %ymm5
vmovups 0x10(%r10,%r12,1),  %ymm3
vmovups 0x11(%r10,%r12,2),  %ymm4
vmovups 0x3567(%r10,%r12,4),%ymm0

vmovups (%r10),             %ymm10
vmovups (%r10,%r12,1),      %ymm11
vmovups 0x10(%r10,%r12,1),  %ymm5
vmovups 0x11(%r10,%r12,2),  %ymm13
vmovups 0x3567(%r10,%r12,4),%ymm14

vmovups (%r10),             %ymm15
vmovups (%r10,%r12,1),      %ymm15
vmovups 0x10(%r10,%r12,1),  %ymm3
vmovups 0x11(%r10,%r12,2),  %ymm14
vmovups 0x3567(%r10,%r12,4),%ymm13

vmovups (%r10),             %ymm14
vmovups (%r10,%r12,1),      %ymm14
vmovups 0x10(%r10,%r12,1),  %ymm15
vmovups 0x11(%r10,%r12,2),  %ymm11
vmovups 0x3567(%r10,%r12,4),%ymm10
