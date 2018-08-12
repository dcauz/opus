blendpd $2,%xmm1,%xmm3
blendpd $200,%xmm1,%xmm3
blendpd $2,(%r10),%xmm3
blendpd $200,(%r10),%xmm3

vblendpd $2,%xmm1,%xmm3,%xmm10
vblendpd $200,%xmm1,%xmm3,%xmm10
vblendpd $2,(%r10),%xmm3,%xmm10
vblendpd $200,(%r10),%xmm3,%xmm10
vblendpd $200,%xmm15,%xmm3,%xmm10
vblendpd $200,(%r10),%xmm3,%xmm10

vblendpd $2,%ymm1,%ymm3,%ymm10
vblendpd $200,%ymm1,%ymm3,%ymm10
vblendpd $2,(%r10),%ymm3,%ymm10
vblendpd $200,(%r10),%ymm3,%ymm10
vblendpd $200,%ymm15,%ymm3,%ymm10
vblendpd $200,(%r10),%ymm3,%ymm10

