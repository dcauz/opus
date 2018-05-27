cmpps $123, %xmm2, %xmm7
cmpps $123,(%r10), %xmm0

vcmpps $119,0x10(%r10,%r12,1),  %xmm5,  %xmm3
vcmpps $118,0x10(%r10,%r12,1),  %xmm5,  %xmm3

vcmpps $121,0x10(%r10,%r12,1),  %ymm5,  %ymm3
vcmpps $122,0x10(%r10,%r12,1),  %ymm5,  %ymm3

vcmpps $123,%ymm13,%ymm0,%ymm10

cmpps $0, %xmm1, %xmm0
cmpps $1, %xmm2, %xmm15
cmpps $2, %xmm3, %xmm14
cmpps $3, %xmm4, %xmm13
cmpps $4, %xmm5, %xmm12
cmpps $5, %xmm6, %xmm11
cmpps $6, %xmm7, %xmm10
cmpps $7, %xmm8, %xmm9

cmpps $0, (%r9), %xmm0
cmpps $1, (%r9), %xmm15
cmpps $2, (%r9), %xmm14
cmpps $3, (%r9), %xmm13
cmpps $4, (%r9), %xmm12
cmpps $5, (%r9), %xmm11
cmpps $6, (%r9), %xmm10
cmpps $7, (%r9), %xmm9

vcmpps $0,%xmm10,%xmm12,%xmm9
vcmpps $1,%xmm10,%xmm12,%xmm9
vcmpps $2,%xmm10,%xmm12,%xmm9
vcmpps $3,%xmm10,%xmm12,%xmm9
vcmpps $4,%xmm10,%xmm12,%xmm9
vcmpps $5,%xmm10,%xmm12,%xmm9
vcmpps $6,%xmm10,%xmm12,%xmm9
vcmpps $7,%xmm10,%xmm12,%xmm9
vcmpps $8,%xmm10,%xmm12,%xmm9
vcmpps $9,%xmm10,%xmm12,%xmm9
vcmpps $10,%xmm10,%xmm12,%xmm9
vcmpps $11,%xmm10,%xmm12,%xmm9
vcmpps $12,%xmm10,%xmm11,%xmm9
vcmpps $13,%xmm10,%xmm11,%xmm9
vcmpps $14,%xmm10,%xmm11,%xmm9
vcmpps $15,%xmm10,%xmm11,%xmm9
vcmpps $16,%xmm10,%xmm11,%xmm9
vcmpps $17,%xmm10,%xmm11,%xmm9
vcmpps $18,%xmm10,%xmm11,%xmm9
vcmpps $19,%xmm10,%xmm11,%xmm9
vcmpps $20,%xmm10,%xmm11,%xmm9
vcmpps $21,%xmm10,%xmm11,%xmm9
vcmpps $22,%xmm10,%xmm11,%xmm9
vcmpps $23,%xmm10,%xmm11,%xmm9
vcmpps $24,%xmm10,%xmm11,%xmm9
vcmpps $25,%xmm10,%xmm11,%xmm9
vcmpps $26,%xmm10,%xmm11,%xmm9
vcmpps $27,%xmm10,%xmm11,%xmm9
vcmpps $28,%xmm10,%xmm11,%xmm9
vcmpps $29,%xmm10,%xmm11,%xmm9
vcmpps $30,%xmm10,%xmm11,%xmm9
vcmpps $31,%xmm10,%xmm11,%xmm9

vcmpps $0,(%r15),%xmm12,%xmm9
vcmpps $1,(%r15),%xmm12,%xmm9
vcmpps $2,(%r15),%xmm12,%xmm9
vcmpps $3,(%r15),%xmm12,%xmm9
vcmpps $4,(%r15),%xmm12,%xmm9
vcmpps $5,(%r15),%xmm12,%xmm9
vcmpps $6,(%r15),%xmm12,%xmm9
vcmpps $7,(%r15),%xmm12,%xmm9
vcmpps $8,(%r15),%xmm12,%xmm9
vcmpps $9,(%r15),%xmm12,%xmm9
vcmpps $10,(%r15),%xmm12,%xmm9
vcmpps $11,(%r15),%xmm12,%xmm9
vcmpps $12,(%r15),%xmm11,%xmm9
vcmpps $13,(%r15),%xmm11,%xmm9
vcmpps $14,(%r15),%xmm11,%xmm9
vcmpps $15,(%r15),%xmm11,%xmm9
vcmpps $16,(%r15),%xmm11,%xmm9
vcmpps $17,(%r15),%xmm11,%xmm9
vcmpps $18,(%r15),%xmm11,%xmm9
vcmpps $19,(%r15),%xmm11,%xmm9
vcmpps $20,(%r15),%xmm11,%xmm9
vcmpps $21,(%r15),%xmm11,%xmm9
vcmpps $22,(%r15),%xmm11,%xmm9
vcmpps $23,(%r15),%xmm11,%xmm9
vcmpps $24,(%r15),%xmm11,%xmm9
vcmpps $25,(%r15),%xmm11,%xmm9
vcmpps $26,(%r15),%xmm11,%xmm9
vcmpps $27,(%r15),%xmm11,%xmm9
vcmpps $28,(%r15),%xmm11,%xmm9
vcmpps $29,(%r15),%xmm11,%xmm9
vcmpps $30,(%r15),%xmm11,%xmm9
vcmpps $31,(%r15),%xmm11,%xmm9

vcmpps $0,%ymm10,%ymm12,%ymm9
vcmpps $1,%ymm10,%ymm12,%ymm9
vcmpps $2,%ymm10,%ymm12,%ymm9
vcmpps $3,%ymm10,%ymm12,%ymm9
vcmpps $4,%ymm10,%ymm12,%ymm9
vcmpps $5,%ymm10,%ymm12,%ymm9
vcmpps $6,%ymm10,%ymm12,%ymm9
vcmpps $7,%ymm10,%ymm12,%ymm9
vcmpps $8,%ymm10,%ymm12,%ymm9
vcmpps $9,%ymm10,%ymm12,%ymm9
vcmpps $10,%ymm10,%ymm12,%ymm9
vcmpps $11,%ymm10,%ymm12,%ymm9
vcmpps $12,%ymm10,%ymm11,%ymm9
vcmpps $13,%ymm10,%ymm11,%ymm9
vcmpps $14,%ymm10,%ymm11,%ymm9
vcmpps $15,%ymm10,%ymm11,%ymm9
vcmpps $16,%ymm10,%ymm11,%ymm9
vcmpps $17,%ymm10,%ymm11,%ymm9
vcmpps $18,%ymm10,%ymm11,%ymm9
vcmpps $19,%ymm10,%ymm11,%ymm9
vcmpps $20,%ymm10,%ymm11,%ymm9
vcmpps $21,%ymm10,%ymm11,%ymm9
vcmpps $22,%ymm10,%ymm11,%ymm9
vcmpps $23,%ymm10,%ymm11,%ymm9
vcmpps $24,%ymm10,%ymm11,%ymm9
vcmpps $25,%ymm10,%ymm11,%ymm9
vcmpps $26,%ymm10,%ymm11,%ymm9
vcmpps $27,%ymm10,%ymm11,%ymm9
vcmpps $28,%ymm10,%ymm11,%ymm9
vcmpps $29,%ymm10,%ymm11,%ymm9
vcmpps $30,%ymm10,%ymm11,%ymm9
vcmpps $31,%ymm10,%ymm11,%ymm9

vcmpps $0,(%r15),%ymm12,%ymm9
vcmpps $1,(%r15),%ymm12,%ymm9
vcmpps $2,(%r15),%ymm12,%ymm9
vcmpps $3,(%r15),%ymm12,%ymm9
vcmpps $4,(%r15),%ymm12,%ymm9
vcmpps $5,(%r15),%ymm12,%ymm9
vcmpps $6,(%r15),%ymm12,%ymm9
vcmpps $7,(%r15),%ymm12,%ymm9
vcmpps $8,(%r15),%ymm12,%ymm9
vcmpps $9,(%r15),%ymm12,%ymm9
vcmpps $10,(%r15),%ymm12,%ymm9
vcmpps $11,(%r15),%ymm12,%ymm9
vcmpps $12,(%r15),%ymm11,%ymm9
vcmpps $13,(%r15),%ymm11,%ymm9
vcmpps $14,(%r15),%ymm11,%ymm9
vcmpps $15,(%r15),%ymm11,%ymm9
vcmpps $16,(%r15),%ymm11,%ymm9
vcmpps $17,(%r15),%ymm11,%ymm9
vcmpps $18,(%r15),%ymm11,%ymm9
vcmpps $19,(%r15),%ymm11,%ymm9
vcmpps $20,(%r15),%ymm11,%ymm9
vcmpps $21,(%r15),%ymm11,%ymm9
vcmpps $22,(%r15),%ymm11,%ymm9
vcmpps $23,(%r15),%ymm11,%ymm9
vcmpps $24,(%r15),%ymm11,%ymm9
vcmpps $25,(%r15),%ymm11,%ymm9
vcmpps $26,(%r15),%ymm11,%ymm9
vcmpps $27,(%r15),%ymm11,%ymm9
vcmpps $28,(%r15),%ymm11,%ymm9
vcmpps $29,(%r15),%ymm11,%ymm9
vcmpps $30,(%r15),%ymm11,%ymm9
vcmpps $31,(%r15),%ymm11,%ymm9
