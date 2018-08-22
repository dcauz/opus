pcmpestrm $1, %xmm1, %xmm2
pcmpestrm $11, %xmm1, %xmm12
pcmpestrm $111, %xmm1, %xmm12

pcmpestrm $1, (%r10), %xmm2
pcmpestrm $11, (%r10), %xmm12
pcmpestrm $111, (%r10), %xmm12

vpcmpestrm $1, %xmm1, %xmm2
vpcmpestrm $11, %xmm1, %xmm12
vpcmpestrm $111, %xmm1, %xmm12

vpcmpestrm $1, (%r10), %xmm2
vpcmpestrm $11, (%r10), %xmm12
vpcmpestrm $111, (%r10), %xmm12

