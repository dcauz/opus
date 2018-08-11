dpps $1,%xmm2,%xmm4
dpps $1,(%r10),%xmm4
dpps $100,%xmm2,%xmm4
dpps $100,(%r10),%xmm4
dpps $1,%xmm12,%xmm14
dpps $1,(%r10),%xmm14

vdpps $1,%xmm2,%xmm4,%xmm3
vdpps $1,(%r10),%xmm4,%xmm3
vdpps $100,%xmm2,%xmm4,%xmm3
vdpps $100,(%r10),%xmm4,%xmm3
vdpps $1,%xmm12,%xmm14,%xmm3
vdpps $1,(%r10),%xmm14,%xmm3

vdpps $1,%ymm2,%ymm4,%ymm3
vdpps $1,(%r10),%ymm4,%ymm3
vdpps $100,%ymm2,%ymm4,%ymm3
vdpps $100,(%r10),%ymm4,%ymm3
vdpps $1,%ymm12,%ymm14,%ymm3
vdpps $1,(%r10),%ymm14,%ymm3
