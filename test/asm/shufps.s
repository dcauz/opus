shufps $123, %xmm2, %xmm7
shufps $123,(%r10), %xmm0

shufps $0, %xmm1, %xmm0
shufps $1, %xmm2, %xmm15
shufps $2, %xmm3, %xmm14
shufps $3, %xmm4, %xmm13
shufps $4, %xmm5, %xmm12
shufps $5, %xmm6, %xmm11
shufps $6, %xmm7, %xmm10
shufps $7, %xmm8, %xmm9

shufps $0, (%r9), %xmm0
shufps $1, (%r9), %xmm15
shufps $2, (%r9), %xmm14
shufps $3, (%r9), %xmm13
shufps $4, (%r9), %xmm12
shufps $5, (%r9), %xmm11
shufps $6, (%r9), %xmm10
shufps $7, (%r9), %xmm9

vshufps $119,0x10(%r10,%r12,1),  %xmm5,  %xmm3
vshufps $118,0x10(%r10,%r12,1),  %xmm5,  %xmm3

vshufps $119,0x10(%r10,%r12,1),  %ymm5,  %ymm3
vshufps $118,0x10(%r10,%r12,1),  %ymm5,  %ymm3

vshufps $119,0x10(%r10,%r12,1),  %zmm5,  %zmm3
vshufps $118,0x10(%r10,%r12,1),  %zmm5,  %zmm3

vshufps $0,%xmm10,%xmm12,%xmm9
vshufps $1,%xmm10,%xmm12,%xmm9
vshufps $2,%xmm10,%xmm12,%xmm9
vshufps $3,%xmm10,%xmm12,%xmm9
vshufps $4,%xmm10,%xmm12,%xmm9
vshufps $5,%xmm10,%xmm12,%xmm9
vshufps $6,%xmm10,%xmm12,%xmm9
vshufps $7,%xmm10,%xmm12,%xmm9
vshufps $8,%xmm10,%xmm12,%xmm9
vshufps $9,%xmm10,%xmm12,%xmm9
vshufps $10,%xmm10,%xmm12,%xmm9
vshufps $11,%xmm10,%xmm12,%xmm9
vshufps $12,%xmm10,%xmm11,%xmm9
vshufps $13,%xmm10,%xmm11,%xmm9
vshufps $14,%xmm10,%xmm11,%xmm9
vshufps $15,%xmm10,%xmm11,%xmm9
vshufps $16,%xmm10,%xmm11,%xmm9
vshufps $17,%xmm10,%xmm11,%xmm9
vshufps $18,%xmm10,%xmm11,%xmm9
vshufps $19,%xmm10,%xmm11,%xmm9
vshufps $20,%xmm10,%xmm11,%xmm9
vshufps $21,%xmm10,%xmm11,%xmm9
vshufps $22,%xmm10,%xmm11,%xmm9
vshufps $23,%xmm10,%xmm11,%xmm9
vshufps $24,%xmm10,%xmm11,%xmm9
vshufps $25,%xmm10,%xmm11,%xmm9
vshufps $26,%xmm10,%xmm11,%xmm9
vshufps $27,%xmm10,%xmm11,%xmm9
vshufps $28,%xmm10,%xmm11,%xmm9
vshufps $29,%xmm10,%xmm11,%xmm9
vshufps $30,%xmm10,%xmm11,%xmm9
vshufps $31,%xmm10,%xmm11,%xmm9

vshufps $0,(%r15),%xmm12,%xmm9
vshufps $1,(%r15),%xmm12,%xmm9
vshufps $2,(%r15),%xmm12,%xmm9
vshufps $3,(%r15),%xmm12,%xmm9
vshufps $4,(%r15),%xmm12,%xmm9
vshufps $5,(%r15),%xmm12,%xmm9
vshufps $6,(%r15),%xmm12,%xmm9
vshufps $7,(%r15),%xmm12,%xmm9
vshufps $8,(%r15),%xmm12,%xmm9
vshufps $9,(%r15),%xmm12,%xmm9
vshufps $10,(%r15),%xmm12,%xmm9
vshufps $11,(%r15),%xmm12,%xmm9
vshufps $12,(%r15),%xmm11,%xmm9
vshufps $13,(%r15),%xmm11,%xmm9
vshufps $14,(%r15),%xmm11,%xmm9
vshufps $15,(%r15),%xmm11,%xmm9
vshufps $16,(%r15),%xmm11,%xmm9
vshufps $17,(%r15),%xmm11,%xmm9
vshufps $18,(%r15),%xmm11,%xmm9
vshufps $19,(%r15),%xmm11,%xmm9
vshufps $20,(%r15),%xmm11,%xmm9
vshufps $21,(%r15),%xmm11,%xmm9
vshufps $22,(%r15),%xmm11,%xmm9
vshufps $23,(%r15),%xmm11,%xmm9
vshufps $24,(%r15),%xmm11,%xmm9
vshufps $25,(%r15),%xmm11,%xmm9
vshufps $26,(%r15),%xmm11,%xmm9
vshufps $27,(%r15),%xmm11,%xmm9
vshufps $28,(%r15),%xmm11,%xmm9
vshufps $29,(%r15),%xmm11,%xmm9
vshufps $30,(%r15),%xmm11,%xmm9
vshufps $31,(%r15),%xmm11,%xmm9


vshufps $0,%xmm10,%xmm12,%xmm9
vshufps $1,%xmm10,%xmm12,%xmm9
vshufps $2,%xmm10,%xmm12,%xmm9
vshufps $3,%xmm10,%xmm12,%xmm9
vshufps $4,%xmm10,%xmm12,%xmm9
vshufps $5,%xmm10,%xmm12,%xmm9
vshufps $6,%xmm10,%xmm12,%xmm9
vshufps $7,%xmm10,%xmm12,%xmm9
vshufps $8,%xmm10,%xmm12,%xmm9
vshufps $9,%xmm10,%xmm12,%xmm9
vshufps $10,%xmm10,%xmm12,%xmm9
vshufps $11,%xmm10,%xmm12,%xmm9
vshufps $12,%xmm10,%xmm11,%xmm9
vshufps $13,%xmm10,%xmm11,%xmm9
vshufps $14,%xmm10,%xmm11,%xmm9
vshufps $15,%xmm10,%xmm11,%xmm9
vshufps $16,%xmm10,%xmm11,%xmm9
vshufps $17,%xmm10,%xmm11,%xmm9
vshufps $18,%xmm10,%xmm11,%xmm9
vshufps $19,%xmm10,%xmm11,%xmm9
vshufps $20,%xmm10,%xmm11,%xmm9
vshufps $21,%xmm10,%xmm11,%xmm9
vshufps $22,%xmm10,%xmm11,%xmm9
vshufps $23,%xmm10,%xmm11,%xmm9
vshufps $24,%xmm10,%xmm11,%xmm9
vshufps $25,%xmm10,%xmm11,%xmm9
vshufps $26,%xmm10,%xmm11,%xmm9
vshufps $27,%xmm10,%xmm11,%xmm9
vshufps $28,%xmm10,%xmm11,%xmm9
vshufps $29,%xmm10,%xmm11,%xmm9
vshufps $30,%xmm10,%xmm11,%xmm9
vshufps $31,%xmm10,%xmm11,%xmm9

vshufps $0,(%r15),%xmm12,%xmm9
vshufps $1,(%r15),%xmm12,%xmm9
vshufps $2,(%r15),%xmm12,%xmm9
vshufps $3,(%r15),%xmm12,%xmm9
vshufps $4,(%r15),%xmm12,%xmm9
vshufps $5,(%r15),%xmm12,%xmm9
vshufps $6,(%r15),%xmm12,%xmm9
vshufps $7,(%r15),%xmm12,%xmm9
vshufps $8,(%r15),%xmm12,%xmm9
vshufps $9,(%r15),%xmm12,%xmm9
vshufps $10,(%r15),%xmm12,%xmm9
vshufps $11,(%r15),%xmm12,%xmm9
vshufps $12,(%r15),%xmm11,%xmm9
vshufps $13,(%r15),%xmm11,%xmm9
vshufps $14,(%r15),%xmm11,%xmm9
vshufps $15,(%r15),%xmm11,%xmm9
vshufps $16,(%r15),%xmm11,%xmm9
vshufps $17,(%r15),%xmm11,%xmm9
vshufps $18,(%r15),%xmm11,%xmm9
vshufps $19,(%r15),%xmm11,%xmm9
vshufps $20,(%r15),%xmm11,%xmm9
vshufps $21,(%r15),%xmm11,%xmm9
vshufps $22,(%r15),%xmm11,%xmm9
vshufps $23,(%r15),%xmm11,%xmm9
vshufps $24,(%r15),%xmm11,%xmm9
vshufps $25,(%r15),%xmm11,%xmm9
vshufps $26,(%r15),%xmm11,%xmm9
vshufps $27,(%r15),%xmm11,%xmm9
vshufps $28,(%r15),%xmm11,%xmm9
vshufps $29,(%r15),%xmm11,%xmm9
vshufps $30,(%r15),%xmm11,%xmm9
vshufps $31,(%r15),%xmm11,%xmm9

vshufps $0,%xmm10,%xmm12,%xmm9
vshufps $1,%xmm10,%xmm12,%xmm9
vshufps $2,%xmm10,%xmm12,%xmm9
vshufps $3,%xmm10,%xmm12,%xmm9
vshufps $4,%xmm10,%xmm12,%xmm9
vshufps $5,%xmm10,%xmm12,%xmm9
vshufps $6,%xmm10,%xmm12,%xmm9
vshufps $7,%xmm10,%xmm12,%xmm9
vshufps $8,%xmm10,%xmm12,%xmm9
vshufps $9,%xmm10,%xmm12,%xmm9
vshufps $10,%xmm10,%xmm12,%xmm9
vshufps $11,%xmm10,%xmm12,%xmm9
vshufps $12,%xmm10,%xmm11,%xmm9
vshufps $13,%xmm10,%xmm11,%xmm9
vshufps $14,%xmm10,%xmm11,%xmm9
vshufps $15,%xmm10,%xmm11,%xmm9
vshufps $16,%xmm10,%xmm11,%xmm9
vshufps $17,%xmm10,%xmm11,%xmm9
vshufps $18,%xmm10,%xmm11,%xmm9
vshufps $19,%xmm10,%xmm11,%xmm9
vshufps $20,%xmm10,%xmm11,%xmm9
vshufps $21,%xmm10,%xmm11,%xmm9
vshufps $22,%xmm10,%xmm11,%xmm9
vshufps $23,%xmm10,%xmm11,%xmm9
vshufps $24,%xmm10,%xmm11,%xmm9
vshufps $25,%xmm10,%xmm11,%xmm9
vshufps $26,%xmm10,%xmm11,%xmm9
vshufps $27,%xmm10,%xmm11,%xmm9
vshufps $28,%xmm10,%xmm11,%xmm9
vshufps $29,%xmm10,%xmm11,%xmm9
vshufps $30,%xmm10,%xmm11,%xmm9
vshufps $31,%xmm10,%xmm11,%xmm9

vshufps $0,(%r15),%xmm12,%xmm9
vshufps $1,(%r15),%xmm12,%xmm9
vshufps $2,(%r15),%xmm12,%xmm9
vshufps $3,(%r15),%xmm12,%xmm9
vshufps $4,(%r15),%xmm12,%xmm9
vshufps $5,(%r15),%xmm12,%xmm9
vshufps $6,(%r15),%xmm12,%xmm9
vshufps $7,(%r15),%xmm12,%xmm9
vshufps $8,(%r15),%xmm12,%xmm9
vshufps $9,(%r15),%xmm12,%xmm9
vshufps $10,(%r15),%xmm12,%xmm9
vshufps $11,(%r15),%xmm12,%xmm9
vshufps $12,(%r15),%xmm11,%xmm9
vshufps $13,(%r15),%xmm11,%xmm9
vshufps $14,(%r15),%xmm11,%xmm9
vshufps $15,(%r15),%xmm11,%xmm9
vshufps $16,(%r15),%xmm11,%xmm9
vshufps $17,(%r15),%xmm11,%xmm9
vshufps $18,(%r15),%xmm11,%xmm9
vshufps $19,(%r15),%xmm11,%xmm9
vshufps $20,(%r15),%xmm11,%xmm9
vshufps $21,(%r15),%xmm11,%xmm9
vshufps $22,(%r15),%xmm11,%xmm9
vshufps $23,(%r15),%xmm11,%xmm9
vshufps $24,(%r15),%xmm11,%xmm9
vshufps $25,(%r15),%xmm11,%xmm9
vshufps $26,(%r15),%xmm11,%xmm9
vshufps $27,(%r15),%xmm11,%xmm9
vshufps $28,(%r15),%xmm11,%xmm9
vshufps $29,(%r15),%xmm11,%xmm9
vshufps $30,(%r15),%xmm11,%xmm9
vshufps $31,(%r15),%xmm11,%xmm9
