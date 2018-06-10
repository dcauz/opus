pextrb $1, %xmm1, %r10d
pextrb $3, %xmm10, %r10
pextrb $5, %xmm15, (%r10)
pextrb $7, %xmm12, 10(%r10,%rdx,4)

pextrd $1, %xmm1, %r10d
pextrd $5, %xmm15, (%r10)
pextrd $7, %xmm12, 10(%r10,%rdx,4)

pextrw $1, %xmm1, %r10d
pextrw $3, %xmm10, %r10
pextrw $5, %xmm15, (%r10)
pextrw $7, %xmm12, 10(%r10,%rdx,4)

pextrq $3, %xmm10, %r10
pextrq $5, %xmm15, (%r10)
pextrq $7, %xmm12, 10(%r10,%rdx,4)

vpextrb $1, %xmm1, %r10d
vpextrb $1, %xmm31, %r10d
vpextrb $3, %xmm10, %r10
vpextrb $3, %xmm10, %r10
vpextrb $5, %xmm15, (%r10)
vpextrb $7, %xmm22, 10(%r10,%rdx,4)

vpextrd $1, %xmm1, %r10d
vpextrd $1, %xmm21, %r10d
vpextrd $5, %xmm15, (%r10)
vpextrd $7, %xmm22, 10(%r10,%rdx,4)

vpextrw $1, %xmm1, %r10d
vpextrw $1, %xmm21, %r10d
vpextrw $3, %xmm10, %r10
vpextrw $3, %xmm20, %r10
vpextrw $5, %xmm15, (%r10)
vpextrw $7, %xmm22, 10(%r10,%rdx,4)

vpextrq $3, %xmm10, %r10
vpextrq $3, %xmm10, %r10
vpextrq $5, %xmm15, (%r10)
vpextrq $7, %xmm22, 10(%r10,%rdx,4)

