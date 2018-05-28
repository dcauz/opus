cmpss $123, %xmm2, %xmm7
cmpss $123,(%r10), %xmm0

vcmpss $119,0x10(%r10,%r12,1),  %xmm5,  %xmm3
vcmpss $118,0x10(%r10,%r12,1),  %xmm5,  %xmm3

cmpss $0, %xmm1, %xmm0
cmpss $1, %xmm2, %xmm15
cmpss $2, %xmm3, %xmm14
cmpss $3, %xmm4, %xmm13
cmpss $4, %xmm5, %xmm12
cmpss $5, %xmm6, %xmm11
cmpss $6, %xmm7, %xmm10
cmpss $7, %xmm8, %xmm9

cmpss $0, (%r9), %xmm0
cmpss $1, (%r9), %xmm15
cmpss $2, (%r9), %xmm14
cmpss $3, (%r9), %xmm13
cmpss $4, (%r9), %xmm12
cmpss $5, (%r9), %xmm11
cmpss $6, (%r9), %xmm10
cmpss $7, (%r9), %xmm9

vcmpss $0,%xmm10,%xmm12,%xmm9
vcmpss $1,%xmm10,%xmm12,%xmm9
vcmpss $2,%xmm10,%xmm12,%xmm9
vcmpss $3,%xmm10,%xmm12,%xmm9
vcmpss $4,%xmm10,%xmm12,%xmm9
vcmpss $5,%xmm10,%xmm12,%xmm9
vcmpss $6,%xmm10,%xmm12,%xmm9
vcmpss $7,%xmm10,%xmm12,%xmm9
vcmpss $8,%xmm10,%xmm12,%xmm9
vcmpss $9,%xmm10,%xmm12,%xmm9
vcmpss $10,%xmm10,%xmm12,%xmm9
vcmpss $11,%xmm10,%xmm12,%xmm9
vcmpss $12,%xmm10,%xmm11,%xmm9
vcmpss $13,%xmm10,%xmm11,%xmm9
vcmpss $14,%xmm10,%xmm11,%xmm9
vcmpss $15,%xmm10,%xmm11,%xmm9
vcmpss $16,%xmm10,%xmm11,%xmm9
vcmpss $17,%xmm10,%xmm11,%xmm9
vcmpss $18,%xmm10,%xmm11,%xmm9
vcmpss $19,%xmm10,%xmm11,%xmm9
vcmpss $20,%xmm10,%xmm11,%xmm9
vcmpss $21,%xmm10,%xmm11,%xmm9
vcmpss $22,%xmm10,%xmm11,%xmm9
vcmpss $23,%xmm10,%xmm11,%xmm9
vcmpss $24,%xmm10,%xmm11,%xmm9
vcmpss $25,%xmm10,%xmm11,%xmm9
vcmpss $26,%xmm10,%xmm11,%xmm9
vcmpss $27,%xmm10,%xmm11,%xmm9
vcmpss $28,%xmm10,%xmm11,%xmm9
vcmpss $29,%xmm10,%xmm11,%xmm9
vcmpss $30,%xmm10,%xmm11,%xmm9
vcmpss $31,%xmm10,%xmm11,%xmm9

vcmpss $0,(%r15),%xmm12,%xmm9
vcmpss $1,(%r15),%xmm12,%xmm9
vcmpss $2,(%r15),%xmm12,%xmm9
vcmpss $3,(%r15),%xmm12,%xmm9
vcmpss $4,(%r15),%xmm12,%xmm9
vcmpss $5,(%r15),%xmm12,%xmm9
vcmpss $6,(%r15),%xmm12,%xmm9
vcmpss $7,(%r15),%xmm12,%xmm9
vcmpss $8,(%r15),%xmm12,%xmm9
vcmpss $9,(%r15),%xmm12,%xmm9
vcmpss $10,(%r15),%xmm12,%xmm9
vcmpss $11,(%r15),%xmm12,%xmm9
vcmpss $12,(%r15),%xmm11,%xmm9
vcmpss $13,(%r15),%xmm11,%xmm9
vcmpss $14,(%r15),%xmm11,%xmm9
vcmpss $15,(%r15),%xmm11,%xmm9
vcmpss $16,(%r15),%xmm11,%xmm9
vcmpss $17,(%r15),%xmm11,%xmm9
vcmpss $18,(%r15),%xmm11,%xmm9
vcmpss $19,(%r15),%xmm11,%xmm9
vcmpss $20,(%r15),%xmm11,%xmm9
vcmpss $21,(%r15),%xmm11,%xmm9
vcmpss $22,(%r15),%xmm11,%xmm9
vcmpss $23,(%r15),%xmm11,%xmm9
vcmpss $24,(%r15),%xmm11,%xmm9
vcmpss $25,(%r15),%xmm11,%xmm9
vcmpss $26,(%r15),%xmm11,%xmm9
vcmpss $27,(%r15),%xmm11,%xmm9
vcmpss $28,(%r15),%xmm11,%xmm9
vcmpss $29,(%r15),%xmm11,%xmm9
vcmpss $30,(%r15),%xmm11,%xmm9
vcmpss $31,(%r15),%xmm11,%xmm9
