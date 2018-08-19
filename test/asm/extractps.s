extractps $1, %xmm1, %r10d
extractps $10, %xmm11, %r10d
extractps $1, %xmm1, (%r10)
extractps $10, %xmm11, (%r10)

vextractps $1, %xmm1, %r10d
vextractps $10, %xmm11, %r10d
vextractps $100, %xmm21, %r10d

vextractps $1, %xmm1, (%r10)
vextractps $10, %xmm11, (%r10)
vextractps $100, %xmm21, (%r10)
