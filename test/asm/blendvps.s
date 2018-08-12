blendvps %xmm1, %xmm2
blendvps %xmm11, %xmm2
blendvps %xmm1, %xmm12
blendvps %xmm11, %xmm12
blendvps (%r10), %xmm2
blendvps (%r10), %xmm2
blendvps (%r10), %xmm2
blendvps (%r10), %xmm12
blendvps (%r10), %xmm12
blendvps (%r10), %xmm12

vblendvps %xmm1,%xmm1, %xmm2, %xmm1
vblendvps %xmm1,%xmm11, %xmm2, %xmm1
vblendvps %xmm1,%xmm1, %xmm12, %xmm1
vblendvps %xmm1,%xmm11, %xmm12, %xmm1
vblendvps %xmm1,(%r10), %xmm2, %xmm1
vblendvps %xmm1,(%r10), %xmm2, %xmm1
vblendvps %xmm1,(%r10), %xmm2, %xmm1
vblendvps %xmm1,(%r10), %xmm12, %xmm1
vblendvps %xmm1,(%r10), %xmm12, %xmm1

vblendvps %xmm11,%xmm1, %xmm2, %xmm11
vblendvps %xmm11,%xmm11, %xmm2, %xmm11
vblendvps %xmm11,%xmm1, %xmm12, %xmm11
vblendvps %xmm11,%xmm11, %xmm12, %xmm11
vblendvps %xmm11,(%r10), %xmm2, %xmm11
vblendvps %xmm11,(%r10), %xmm2, %xmm11
vblendvps %xmm11,(%r10), %xmm2, %xmm11
vblendvps %xmm11,(%r10), %xmm12, %xmm11
vblendvps %xmm11,(%r10), %xmm12, %xmm11

vblendvps %ymm1,%ymm1, %ymm2, %ymm1
vblendvps %ymm1,%ymm11, %ymm2, %ymm1
vblendvps %ymm1,%ymm1, %ymm12, %ymm1
vblendvps %ymm1,%ymm11, %ymm12, %ymm1
vblendvps %ymm1,(%r10), %ymm2, %ymm1
vblendvps %ymm1,(%r10), %ymm2, %ymm1
vblendvps %ymm1,(%r10), %ymm2, %ymm1
vblendvps %ymm1,(%r10), %ymm12, %ymm1
vblendvps %ymm1,(%r10), %ymm12, %ymm1

vblendvps %ymm11,(%r10), %ymm2, %ymm11
vblendvps %ymm11,(%r10), %ymm2, %ymm12

vblendvps %ymm12,(%r10), %ymm2, %ymm11
vblendvps %ymm12,(%r10), %ymm12, %ymm11

vblendvps %ymm10,(%r10), %ymm14, %ymm15
vblendvps %ymm11,(%r10), %ymm14, %ymm15

vblendvps %ymm1,%ymm2, %ymm3, %ymm4
vblendvps %ymm1,%ymm2, %ymm3, %ymm14

vblendvps %ymm1,%ymm2, %ymm3, %ymm4
vblendvps %ymm1,%ymm2, %ymm11, %ymm4

vblendvps %ymm1,%ymm2, %ymm3, %ymm4
vblendvps %ymm1,%ymm9, %ymm3, %ymm4

vblendvps %ymm1,%ymm2, %ymm3, %ymm4
vblendvps %ymm11,%ymm2, %ymm3, %ymm4

