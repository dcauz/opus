insertps $1, %xmm1, %xmm2
insertps $1, (%r10), %xmm2
insertps $1, %xmm1, %xmm12
insertps $1, (%r10), %xmm12

vinsertps $1, %xmm1, %xmm2, %xmm3
vinsertps $1, (%r10), %xmm2, %xmm3
vinsertps $1, %xmm1, %xmm12, %xmm3
vinsertps $1, (%r10), %xmm12, %xmm3
vinsertps $1, %xmm1, %xmm22, %xmm3
vinsertps $1, (%r10), %xmm22, %xmm3
