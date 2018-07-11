shufpd $123, %xmm2, %xmm7
shufpd $123,(%r10), %xmm0

shufpd $0, %xmm1, %xmm0
shufpd $1, %xmm2, %xmm15
shufpd $2, %xmm3, %xmm14
shufpd $3, %xmm4, %xmm13
shufpd $4, %xmm5, %xmm12
shufpd $5, %xmm6, %xmm11
shufpd $6, %xmm7, %xmm10
shufpd $7, %xmm8, %xmm9

shufpd $0, (%r9), %xmm0
shufpd $1, (%r9), %xmm15
shufpd $2, (%r9), %xmm14
shufpd $3, (%r9), %xmm13
shufpd $4, (%r9), %xmm12
shufpd $5, (%r9), %xmm11
shufpd $6, (%r9), %xmm10
shufpd $7, (%r9), %xmm9

vshufpd $119,0x10(%r10,%r12,1),  %xmm5,  %xmm3
vshufpd $118,0x10(%r10,%r12,1),  %xmm5,  %xmm3

vshufpd $119,0x10(%r10,%r12,1),  %ymm5,  %ymm3
vshufpd $118,0x10(%r10,%r12,1),  %ymm5,  %ymm3

vshufpd $119,0x10(%r10,%r12,1),  %zmm5,  %zmm3
vshufpd $118,0x10(%r10,%r12,1),  %zmm5,  %zmm3

vshufpd $0,%xmm10,%xmm12,%xmm9
vshufpd $1,%xmm10,%xmm12,%xmm9
vshufpd $2,%xmm10,%xmm12,%xmm9
vshufpd $3,%xmm10,%xmm12,%xmm9
vshufpd $4,%xmm10,%xmm12,%xmm9
vshufpd $5,%xmm10,%xmm12,%xmm9
vshufpd $6,%xmm10,%xmm12,%xmm9
vshufpd $7,%xmm10,%xmm12,%xmm9
vshufpd $8,%xmm10,%xmm12,%xmm9
vshufpd $9,%xmm10,%xmm12,%xmm9
vshufpd $10,%xmm10,%xmm12,%xmm9
vshufpd $11,%xmm10,%xmm12,%xmm9
vshufpd $12,%xmm10,%xmm11,%xmm9
vshufpd $13,%xmm10,%xmm11,%xmm9
vshufpd $14,%xmm10,%xmm11,%xmm9
vshufpd $15,%xmm10,%xmm11,%xmm9
vshufpd $16,%xmm10,%xmm11,%xmm9
vshufpd $17,%xmm10,%xmm11,%xmm9
vshufpd $18,%xmm10,%xmm11,%xmm9
vshufpd $19,%xmm10,%xmm11,%xmm9
vshufpd $20,%xmm10,%xmm11,%xmm9
vshufpd $21,%xmm10,%xmm11,%xmm9
vshufpd $22,%xmm10,%xmm11,%xmm9
vshufpd $23,%xmm10,%xmm11,%xmm9
vshufpd $24,%xmm10,%xmm11,%xmm9
vshufpd $25,%xmm10,%xmm11,%xmm9
vshufpd $26,%xmm10,%xmm11,%xmm9
vshufpd $27,%xmm10,%xmm11,%xmm9
vshufpd $28,%xmm10,%xmm11,%xmm9
vshufpd $29,%xmm10,%xmm11,%xmm9
vshufpd $30,%xmm10,%xmm11,%xmm9
vshufpd $31,%xmm10,%xmm11,%xmm9

vshufpd $0,(%r15),%xmm12,%xmm9
vshufpd $1,(%r15),%xmm12,%xmm9
vshufpd $2,(%r15),%xmm12,%xmm9
vshufpd $3,(%r15),%xmm12,%xmm9
vshufpd $4,(%r15),%xmm12,%xmm9
vshufpd $5,(%r15),%xmm12,%xmm9
vshufpd $6,(%r15),%xmm12,%xmm9
vshufpd $7,(%r15),%xmm12,%xmm9
vshufpd $8,(%r15),%xmm12,%xmm9
vshufpd $9,(%r15),%xmm12,%xmm9
vshufpd $10,(%r15),%xmm12,%xmm9
vshufpd $11,(%r15),%xmm12,%xmm9
vshufpd $12,(%r15),%xmm11,%xmm9
vshufpd $13,(%r15),%xmm11,%xmm9
vshufpd $14,(%r15),%xmm11,%xmm9
vshufpd $15,(%r15),%xmm11,%xmm9
vshufpd $16,(%r15),%xmm11,%xmm9
vshufpd $17,(%r15),%xmm11,%xmm9
vshufpd $18,(%r15),%xmm11,%xmm9
vshufpd $19,(%r15),%xmm11,%xmm9
vshufpd $20,(%r15),%xmm11,%xmm9
vshufpd $21,(%r15),%xmm11,%xmm9
vshufpd $22,(%r15),%xmm11,%xmm9
vshufpd $23,(%r15),%xmm11,%xmm9
vshufpd $24,(%r15),%xmm11,%xmm9
vshufpd $25,(%r15),%xmm11,%xmm9
vshufpd $26,(%r15),%xmm11,%xmm9
vshufpd $27,(%r15),%xmm11,%xmm9
vshufpd $28,(%r15),%xmm11,%xmm9
vshufpd $29,(%r15),%xmm11,%xmm9
vshufpd $30,(%r15),%xmm11,%xmm9
vshufpd $31,(%r15),%xmm11,%xmm9


vshufpd $0,%xmm10,%xmm12,%xmm9
vshufpd $1,%xmm10,%xmm12,%xmm9
vshufpd $2,%xmm10,%xmm12,%xmm9
vshufpd $3,%xmm10,%xmm12,%xmm9
vshufpd $4,%xmm10,%xmm12,%xmm9
vshufpd $5,%xmm10,%xmm12,%xmm9
vshufpd $6,%xmm10,%xmm12,%xmm9
vshufpd $7,%xmm10,%xmm12,%xmm9
vshufpd $8,%xmm10,%xmm12,%xmm9
vshufpd $9,%xmm10,%xmm12,%xmm9
vshufpd $10,%xmm10,%xmm12,%xmm9
vshufpd $11,%xmm10,%xmm12,%xmm9
vshufpd $12,%xmm10,%xmm11,%xmm9
vshufpd $13,%xmm10,%xmm11,%xmm9
vshufpd $14,%xmm10,%xmm11,%xmm9
vshufpd $15,%xmm10,%xmm11,%xmm9
vshufpd $16,%xmm10,%xmm11,%xmm9
vshufpd $17,%xmm10,%xmm11,%xmm9
vshufpd $18,%xmm10,%xmm11,%xmm9
vshufpd $19,%xmm10,%xmm11,%xmm9
vshufpd $20,%xmm10,%xmm11,%xmm9
vshufpd $21,%xmm10,%xmm11,%xmm9
vshufpd $22,%xmm10,%xmm11,%xmm9
vshufpd $23,%xmm10,%xmm11,%xmm9
vshufpd $24,%xmm10,%xmm11,%xmm9
vshufpd $25,%xmm10,%xmm11,%xmm9
vshufpd $26,%xmm10,%xmm11,%xmm9
vshufpd $27,%xmm10,%xmm11,%xmm9
vshufpd $28,%xmm10,%xmm11,%xmm9
vshufpd $29,%xmm10,%xmm11,%xmm9
vshufpd $30,%xmm10,%xmm11,%xmm9
vshufpd $31,%xmm10,%xmm11,%xmm9

vshufpd $0,(%r15),%xmm12,%xmm9
vshufpd $1,(%r15),%xmm12,%xmm9
vshufpd $2,(%r15),%xmm12,%xmm9
vshufpd $3,(%r15),%xmm12,%xmm9
vshufpd $4,(%r15),%xmm12,%xmm9
vshufpd $5,(%r15),%xmm12,%xmm9
vshufpd $6,(%r15),%xmm12,%xmm9
vshufpd $7,(%r15),%xmm12,%xmm9
vshufpd $8,(%r15),%xmm12,%xmm9
vshufpd $9,(%r15),%xmm12,%xmm9
vshufpd $10,(%r15),%xmm12,%xmm9
vshufpd $11,(%r15),%xmm12,%xmm9
vshufpd $12,(%r15),%xmm11,%xmm9
vshufpd $13,(%r15),%xmm11,%xmm9
vshufpd $14,(%r15),%xmm11,%xmm9
vshufpd $15,(%r15),%xmm11,%xmm9
vshufpd $16,(%r15),%xmm11,%xmm9
vshufpd $17,(%r15),%xmm11,%xmm9
vshufpd $18,(%r15),%xmm11,%xmm9
vshufpd $19,(%r15),%xmm11,%xmm9
vshufpd $20,(%r15),%xmm11,%xmm9
vshufpd $21,(%r15),%xmm11,%xmm9
vshufpd $22,(%r15),%xmm11,%xmm9
vshufpd $23,(%r15),%xmm11,%xmm9
vshufpd $24,(%r15),%xmm11,%xmm9
vshufpd $25,(%r15),%xmm11,%xmm9
vshufpd $26,(%r15),%xmm11,%xmm9
vshufpd $27,(%r15),%xmm11,%xmm9
vshufpd $28,(%r15),%xmm11,%xmm9
vshufpd $29,(%r15),%xmm11,%xmm9
vshufpd $30,(%r15),%xmm11,%xmm9
vshufpd $31,(%r15),%xmm11,%xmm9

vshufpd $0,%xmm10,%xmm12,%xmm9
vshufpd $1,%xmm10,%xmm12,%xmm9
vshufpd $2,%xmm10,%xmm12,%xmm9
vshufpd $3,%xmm10,%xmm12,%xmm9
vshufpd $4,%xmm10,%xmm12,%xmm9
vshufpd $5,%xmm10,%xmm12,%xmm9
vshufpd $6,%xmm10,%xmm12,%xmm9
vshufpd $7,%xmm10,%xmm12,%xmm9
vshufpd $8,%xmm10,%xmm12,%xmm9
vshufpd $9,%xmm10,%xmm12,%xmm9
vshufpd $10,%xmm10,%xmm12,%xmm9
vshufpd $11,%xmm10,%xmm12,%xmm9
vshufpd $12,%xmm10,%xmm11,%xmm9
vshufpd $13,%xmm10,%xmm11,%xmm9
vshufpd $14,%xmm10,%xmm11,%xmm9
vshufpd $15,%xmm10,%xmm11,%xmm9
vshufpd $16,%xmm10,%xmm11,%xmm9
vshufpd $17,%xmm10,%xmm11,%xmm9
vshufpd $18,%xmm10,%xmm11,%xmm9
vshufpd $19,%xmm10,%xmm11,%xmm9
vshufpd $20,%xmm10,%xmm11,%xmm9
vshufpd $21,%xmm10,%xmm11,%xmm9
vshufpd $22,%xmm10,%xmm11,%xmm9
vshufpd $23,%xmm10,%xmm11,%xmm9
vshufpd $24,%xmm10,%xmm11,%xmm9
vshufpd $25,%xmm10,%xmm11,%xmm9
vshufpd $26,%xmm10,%xmm11,%xmm9
vshufpd $27,%xmm10,%xmm11,%xmm9
vshufpd $28,%xmm10,%xmm11,%xmm9
vshufpd $29,%xmm10,%xmm11,%xmm9
vshufpd $30,%xmm10,%xmm11,%xmm9
vshufpd $31,%xmm10,%xmm11,%xmm9

vshufpd $0,(%r15),%xmm12,%xmm9
vshufpd $1,(%r15),%xmm12,%xmm9
vshufpd $2,(%r15),%xmm12,%xmm9
vshufpd $3,(%r15),%xmm12,%xmm9
vshufpd $4,(%r15),%xmm12,%xmm9
vshufpd $5,(%r15),%xmm12,%xmm9
vshufpd $6,(%r15),%xmm12,%xmm9
vshufpd $7,(%r15),%xmm12,%xmm9
vshufpd $8,(%r15),%xmm12,%xmm9
vshufpd $9,(%r15),%xmm12,%xmm9
vshufpd $10,(%r15),%xmm12,%xmm9
vshufpd $11,(%r15),%xmm12,%xmm9
vshufpd $12,(%r15),%xmm11,%xmm9
vshufpd $13,(%r15),%xmm11,%xmm9
vshufpd $14,(%r15),%xmm11,%xmm9
vshufpd $15,(%r15),%xmm11,%xmm9
vshufpd $16,(%r15),%xmm11,%xmm9
vshufpd $17,(%r15),%xmm11,%xmm9
vshufpd $18,(%r15),%xmm11,%xmm9
vshufpd $19,(%r15),%xmm11,%xmm9
vshufpd $20,(%r15),%xmm11,%xmm9
vshufpd $21,(%r15),%xmm11,%xmm9
vshufpd $22,(%r15),%xmm11,%xmm9
vshufpd $23,(%r15),%xmm11,%xmm9
vshufpd $24,(%r15),%xmm11,%xmm9
vshufpd $25,(%r15),%xmm11,%xmm9
vshufpd $26,(%r15),%xmm11,%xmm9
vshufpd $27,(%r15),%xmm11,%xmm9
vshufpd $28,(%r15),%xmm11,%xmm9
vshufpd $29,(%r15),%xmm11,%xmm9
vshufpd $30,(%r15),%xmm11,%xmm9
vshufpd $31,(%r15),%xmm11,%xmm9
