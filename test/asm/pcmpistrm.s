pcmpistrm $1, %xmm1, %xmm2
pcmpistrm $11, %xmm1, %xmm12
pcmpistrm $111, %xmm1, %xmm12

pcmpistrm $1, (%r10), %xmm2
pcmpistrm $11, (%r10), %xmm12
pcmpistrm $111, (%r10), %xmm12

vpcmpistrm $1, %xmm1, %xmm2
vpcmpistrm $11, %xmm1, %xmm12
vpcmpistrm $111, %xmm1, %xmm12

vpcmpistrm $1, (%r10), %xmm2
vpcmpistrm $11, (%r10), %xmm12
vpcmpistrm $111, (%r10), %xmm12

