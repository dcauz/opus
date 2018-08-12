pblendvb %xmm1, %xmm2
pblendvb %xmm11, %xmm2
pblendvb %xmm1, %xmm12
pblendvb %xmm11, %xmm12
pblendvb (%r10), %xmm2
pblendvb (%r10), %xmm2
pblendvb (%r10), %xmm2
pblendvb (%r10), %xmm12
pblendvb (%r10), %xmm12
pblendvb (%r10), %xmm12

vpblendvb %xmm1,%xmm1, %xmm2, %xmm1
vpblendvb %xmm1,%xmm11, %xmm2, %xmm1
vpblendvb %xmm1,%xmm1, %xmm12, %xmm1
vpblendvb %xmm1,%xmm11, %xmm12, %xmm1
vpblendvb %xmm1,(%r10), %xmm2, %xmm1
vpblendvb %xmm1,(%r10), %xmm2, %xmm1
vpblendvb %xmm1,(%r10), %xmm2, %xmm1
vpblendvb %xmm1,(%r10), %xmm12, %xmm1
vpblendvb %xmm1,(%r10), %xmm12, %xmm1

vpblendvb %xmm11,%xmm1, %xmm2, %xmm11
vpblendvb %xmm11,%xmm11, %xmm2, %xmm11
vpblendvb %xmm11,%xmm1, %xmm12, %xmm11
vpblendvb %xmm11,%xmm11, %xmm12, %xmm11
vpblendvb %xmm11,(%r10), %xmm2, %xmm11
vpblendvb %xmm11,(%r10), %xmm2, %xmm11
vpblendvb %xmm11,(%r10), %xmm2, %xmm11
vpblendvb %xmm11,(%r10), %xmm12, %xmm11
vpblendvb %xmm11,(%r10), %xmm12, %xmm11

vpblendvb %ymm1,%ymm1, %ymm2, %ymm1
vpblendvb %ymm1,%ymm11, %ymm2, %ymm1
vpblendvb %ymm1,%ymm1, %ymm12, %ymm1
vpblendvb %ymm1,%ymm11, %ymm12, %ymm1
vpblendvb %ymm1,(%r10), %ymm2, %ymm1
vpblendvb %ymm1,(%r10), %ymm2, %ymm1
vpblendvb %ymm1,(%r10), %ymm2, %ymm1
vpblendvb %ymm1,(%r10), %ymm12, %ymm1
vpblendvb %ymm1,(%r10), %ymm12, %ymm1

vpblendvb %ymm11,(%r10), %ymm2, %ymm11
vpblendvb %ymm11,(%r10), %ymm2, %ymm12

vpblendvb %ymm12,(%r10), %ymm2, %ymm11
vpblendvb %ymm12,(%r10), %ymm12, %ymm11

vpblendvb %ymm10,(%r10), %ymm14, %ymm15
vpblendvb %ymm11,(%r10), %ymm14, %ymm15

vpblendvb %ymm1,%ymm2, %ymm3, %ymm4
vpblendvb %ymm1,%ymm2, %ymm3, %ymm14

vpblendvb %ymm1,%ymm2, %ymm3, %ymm4
vpblendvb %ymm1,%ymm2, %ymm11, %ymm4

vpblendvb %ymm1,%ymm2, %ymm3, %ymm4
vpblendvb %ymm1,%ymm9, %ymm3, %ymm4

vpblendvb %ymm1,%ymm2, %ymm3, %ymm4
vpblendvb %ymm11,%ymm2, %ymm3, %ymm4

