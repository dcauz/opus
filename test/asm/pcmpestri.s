pcmpestri $1, %xmm1, %xmm2
pcmpestri $11, %xmm1, %xmm12
pcmpestri $111, %xmm1, %xmm12

pcmpestri $1, (%r10), %xmm2
pcmpestri $11, (%r10), %xmm12
pcmpestri $111, (%r10), %xmm12

vpcmpestri $1, %xmm1, %xmm2
vpcmpestri $11, %xmm1, %xmm12
vpcmpestri $111, %xmm1, %xmm12

vpcmpestri $1, (%r10), %xmm2
vpcmpestri $11, (%r10), %xmm12
vpcmpestri $111, (%r10), %xmm12

