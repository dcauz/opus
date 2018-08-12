blendvpd %xmm1, %xmm2
blendvpd %xmm11, %xmm2
blendvpd %xmm1, %xmm12
blendvpd %xmm11, %xmm12
blendvpd (%r10), %xmm2
blendvpd (%r10), %xmm2
blendvpd (%r10), %xmm2
blendvpd (%r10), %xmm12
blendvpd (%r10), %xmm12
blendvpd (%r10), %xmm12

vblendvpd %xmm1,%xmm1, %xmm2, %xmm1
vblendvpd %xmm1,%xmm11, %xmm2, %xmm1
vblendvpd %xmm1,%xmm1, %xmm12, %xmm1
vblendvpd %xmm1,%xmm11, %xmm12, %xmm1
vblendvpd %xmm1,(%r10), %xmm2, %xmm1
vblendvpd %xmm1,(%r10), %xmm2, %xmm1
vblendvpd %xmm1,(%r10), %xmm2, %xmm1
vblendvpd %xmm1,(%r10), %xmm12, %xmm1
vblendvpd %xmm1,(%r10), %xmm12, %xmm1

vblendvpd %xmm11,%xmm1, %xmm2, %xmm11
vblendvpd %xmm11,%xmm11, %xmm2, %xmm11
vblendvpd %xmm11,%xmm1, %xmm12, %xmm11
vblendvpd %xmm11,%xmm11, %xmm12, %xmm11
vblendvpd %xmm11,(%r10), %xmm2, %xmm11
vblendvpd %xmm11,(%r10), %xmm2, %xmm11
vblendvpd %xmm11,(%r10), %xmm2, %xmm11
vblendvpd %xmm11,(%r10), %xmm12, %xmm11
vblendvpd %xmm11,(%r10), %xmm12, %xmm11

vblendvpd %ymm1,%ymm1, %ymm2, %ymm1
vblendvpd %ymm1,%ymm11, %ymm2, %ymm1
vblendvpd %ymm1,%ymm1, %ymm12, %ymm1
vblendvpd %ymm1,%ymm11, %ymm12, %ymm1
vblendvpd %ymm1,(%r10), %ymm2, %ymm1
vblendvpd %ymm1,(%r10), %ymm2, %ymm1
vblendvpd %ymm1,(%r10), %ymm2, %ymm1
vblendvpd %ymm1,(%r10), %ymm12, %ymm1
vblendvpd %ymm1,(%r10), %ymm12, %ymm1

vblendvpd %ymm11,(%r10), %ymm2, %ymm11
vblendvpd %ymm11,(%r10), %ymm2, %ymm12

vblendvpd %ymm12,(%r10), %ymm2, %ymm11
vblendvpd %ymm12,(%r10), %ymm12, %ymm11

vblendvpd %ymm10,(%r10), %ymm14, %ymm15
vblendvpd %ymm11,(%r10), %ymm14, %ymm15

vblendvpd %ymm1,%ymm2, %ymm3, %ymm4
vblendvpd %ymm1,%ymm2, %ymm3, %ymm14

vblendvpd %ymm1,%ymm2, %ymm3, %ymm4
vblendvpd %ymm1,%ymm2, %ymm11, %ymm4

vblendvpd %ymm1,%ymm2, %ymm3, %ymm4
vblendvpd %ymm1,%ymm9, %ymm3, %ymm4

vblendvpd %ymm1,%ymm2, %ymm3, %ymm4
vblendvpd %ymm11,%ymm2, %ymm3, %ymm4

