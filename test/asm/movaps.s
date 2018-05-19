
movaps %xmm0,%xmm3
movaps %xmm1,%xmm2
movaps %xmm3,%xmm12
movaps %xmm4,%xmm13
movaps %xmm11,%xmm0
movaps %xmm12,%xmm0
movaps %xmm14,%xmm10
movaps %xmm15,%xmm12

movaps (%r10),             %xmm5
movaps (%r10,%r12,1),      %xmm2
movaps 0x10(%r10,%r12,1),  %xmm3
movaps 0x11(%r10,%r12,2),  %xmm4
movaps 0x3567(%r10,%r12,4),%xmm0

movaps (%r10),             %xmm10
movaps (%r10,%r12,1),      %xmm11
movaps 0x10(%r10,%r12,1),  %xmm12
movaps 0x11(%r10,%r12,2),  %xmm13
movaps 0x3567(%r10,%r12,4),%xmm14


vmovaps %ymm0,%ymm3
vmovaps %ymm1,%ymm2
vmovaps %ymm3,%ymm12
vmovaps %ymm4,%ymm13

vmovaps %ymm11,%ymm0
vmovaps %ymm12,%ymm0
vmovaps %ymm14,%ymm10
vmovaps %ymm15,%ymm12

vmovaps (%r10),             %ymm1
vmovaps (%r10,%r12,1),      %ymm5
vmovaps 0x10(%r10,%r12,1),  %ymm3
vmovaps 0x11(%r10,%r12,2),  %ymm4
vmovaps 0x3567(%r10,%r12,4),%ymm0

vmovaps (%r10),             %ymm10
vmovaps (%r10,%r12,1),      %ymm11
vmovaps 0x10(%r10,%r12,1),  %ymm5
vmovaps 0x11(%r10,%r12,2),  %ymm13
vmovaps 0x3567(%r10,%r12,4),%ymm14

vmovaps (%r10),             %ymm15
vmovaps (%r10,%r12,1),      %ymm15
vmovaps 0x10(%r10,%r12,1),  %ymm3
vmovaps 0x11(%r10,%r12,2),  %ymm14
vmovaps 0x3567(%r10,%r12,4),%ymm13

vmovaps (%r10),             %ymm14
vmovaps (%r10,%r12,1),      %ymm14
vmovaps 0x10(%r10,%r12,1),  %ymm15
vmovaps 0x11(%r10,%r12,2),  %ymm11
vmovaps 0x3567(%r10,%r12,4),%ymm10
