pcmpistri $1, %xmm1, %xmm2
pcmpistri $11, %xmm1, %xmm12
pcmpistri $111, %xmm1, %xmm12

pcmpistri $1, (%r10), %xmm2
pcmpistri $11, (%r10), %xmm12
pcmpistri $111, (%r10), %xmm12

vpcmpistri $1, %xmm1, %xmm2
vpcmpistri $11, %xmm1, %xmm12
vpcmpistri $111, %xmm1, %xmm12

vpcmpistri $1, (%r10), %xmm2
vpcmpistri $11, (%r10), %xmm12
vpcmpistri $111, (%r10), %xmm12

