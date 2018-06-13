pinsrb $1, %r10d, %xmm1
pinsrb $3, %r10, %xmm10
pinsrb $5, (%r10), %xmm15
pinsrb $7, 10(%r10,%rdx,4), %xmm12

pinsrd $1, %r10d, %xmm1
pinsrd $5, (%r10), %xmm15
pinsrd $7, 10(%r10,%rdx,4), %xmm12

pinsrw $1, %r10d, %xmm1
pinsrw $3, %r10, %xmm10
pinsrw $5, (%r10), %xmm15
pinsrw $7, 10(%r10,%rdx,4), %xmm12

pinsrq $3, %r10, %xmm10
pinsrq $5, (%r10), %xmm15
pinsrq $7, 10(%r10,%rdx,4), %xmm12

vpinsrb $1, %r10d, %xmm1, %xmm16
vpinsrb $1, %r10d, %xmm31, %xmm9
vpinsrb $3, %r10, %xmm10, %xmm6
vpinsrb $3, %r10, %xmm10, %xmm26
vpinsrb $5, (%r10), %xmm15, %xmm3
vpinsrb $7, 10(%r10,%rdx,4), %xmm12, %xmm28

vpinsrd $1, %r10d, %xmm1, %xmm2
vpinsrd $1, %r10d, %xmm1, %xmm22
vpinsrd $1, %r10d, %xmm21, %xmm2
vpinsrd $1, %r10d, %xmm21, %xmm22
vpinsrd $5, (%r10), %xmm15, %xmm3
vpinsrd $7, 10(%r10,%rdx,4), %xmm21, %xmm2

vpinsrw $1, %r10d, %xmm1, %xmm4
vpinsrw $1, %r10d, %xmm1, %xmm24
vpinsrw $1, %r10d, %xmm21, %xmm4
vpinsrw $3, %r10, %xmm10, %xmm30
vpinsrw $3, %r10, %xmm10, %xmm12
vpinsrw $3, %r10, %xmm20, %xmm2
vpinsrw $3, %r10, %xmm20, %xmm22
vpinsrw $5, (%r10), %xmm15, %xmm2
vpinsrw $5, (%r10), %xmm15, %xmm21
vpinsrw $7, 10(%r10,%rdx,4), %xmm2, %xmm22
vpinsrw $7, 10(%r10,%rdx,4), %xmm21, %xmm22
vpinsrw $7, 10(%r10,%rdx,4), %xmm21, %xmm8

vpinsrq $3, %r10, %xmm10, %xmm4
vpinsrq $3, %r10, %xmm10, %xmm4
vpinsrq $5, (%r10), %xmm15, %xmm4
vpinsrq $7, 10(%r10,%rdx,4), %xmm22, %xmm4

vpinsrq $3, %r10, %xmm10, %xmm24
vpinsrq $3, %r10, %xmm10, %xmm24
vpinsrq $5, (%r10), %xmm15, %xmm24
vpinsrq $7, 10(%r10,%rdx,4), %xmm22, %xmm24
