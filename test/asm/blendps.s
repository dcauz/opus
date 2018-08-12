blendps $2,%xmm1,%xmm3
blendps $200,%xmm1,%xmm3
blendps $2,(%r10),%xmm3
blendps $200,(%r10),%xmm3

vblendps $2,%xmm1,%xmm3,%xmm10
vblendps $200,%xmm1,%xmm3,%xmm10
vblendps $2,(%r10),%xmm3,%xmm10
vblendps $200,(%r10),%xmm3,%xmm10
vblendps $200,%xmm15,%xmm3,%xmm10
vblendps $200,(%r10),%xmm3,%xmm10

vblendps $2,%ymm1,%ymm3,%ymm10
vblendps $200,%ymm1,%ymm3,%ymm10
vblendps $2,(%r10),%ymm3,%ymm10
vblendps $200,(%r10),%ymm3,%ymm10
vblendps $200,%ymm15,%ymm3,%ymm10
vblendps $200,(%r10),%ymm3,%ymm10

