pshufd $0,%xmm10,%xmm12
pshufd $0,%xmm1,%xmm2
pshufd $1,(%r10),%xmm12
pshufd $2,%xmm14,%xmm12
pshufd $3,(%r10),%xmm12
pshufd $0,%xmm10,%xmm12
pshufd $2,%xmm1,%xmm2
pshufd $4,%xmm1,%xmm2
pshufd $6,%xmm1,%xmm2
pshufd $8,%xmm1,%xmm2
pshufd $10,%xmm1,%xmm2
pshufd $12,%xmm1,%xmm2
pshufd $14,%xmm1,%xmm2
pshufd $18,%xmm1,%xmm2
pshufd $36,%xmm1,%xmm2
pshufd $72,%xmm1,%xmm2
pshufd $127,%xmm1,%xmm2
pshufd $137,%xmm1,%xmm2
pshufd $237,%xmm1,%xmm2

vpshufd $0,%xmm10,%xmm12
vpshufd $0,%xmm1,%xmm2
vpshufd $1,(%r10),%xmm12
vpshufd $2,%xmm14,%xmm12
vpshufd $3,(%r10),%xmm12
vpshufd $0,%xmm10,%xmm12
vpshufd $2,%xmm1,%xmm2
vpshufd $4,%xmm1,%xmm2
vpshufd $6,%xmm1,%xmm2
vpshufd $8,%xmm1,%xmm2
vpshufd $10,%xmm1,%xmm2
vpshufd $12,%xmm1,%xmm2
vpshufd $14,%xmm1,%xmm2
vpshufd $18,%xmm1,%xmm2
vpshufd $36,%xmm1,%xmm2
vpshufd $72,%xmm1,%xmm2
vpshufd $127,%xmm1,%xmm2
vpshufd $137,%xmm1,%xmm2
vpshufd $237,%xmm1,%xmm2

vpshufd $0,%ymm1,%ymm2
vpshufd $1,(%r10),%ymm12
vpshufd $2,%ymm14,%ymm12
vpshufd $3,(%r10),%ymm12
vpshufd $0,%ymm10,%ymm12
vpshufd $2,%ymm1,%ymm2
vpshufd $4,%ymm1,%ymm2
vpshufd $6,%ymm1,%ymm2
vpshufd $8,%ymm1,%ymm2
vpshufd $10,%ymm1,%ymm2
vpshufd $12,%ymm1,%ymm2
vpshufd $14,%ymm1,%ymm2
vpshufd $18,%ymm1,%ymm2
vpshufd $36,%ymm1,%ymm2
vpshufd $72,%ymm1,%ymm2
vpshufd $127,%ymm1,%ymm2
vpshufd $137,%ymm1,%ymm2
vpshufd $237,%ymm1,%ymm2

vpshufd $0,%zmm1,%zmm2
vpshufd $1,(%r10),%zmm12
vpshufd $2,%zmm14,%zmm12
vpshufd $3,(%r10),%zmm12
vpshufd $0,%zmm10,%zmm12
vpshufd $2,%zmm1,%zmm2
vpshufd $4,%zmm1,%zmm2
vpshufd $6,%zmm1,%zmm2
vpshufd $8,%zmm1,%zmm2
vpshufd $10,%zmm1,%zmm2
vpshufd $12,%zmm1,%zmm2
vpshufd $14,%zmm1,%zmm2
vpshufd $18,%zmm1,%zmm2
vpshufd $36,%zmm1,%zmm2
vpshufd $72,%zmm1,%zmm2
vpshufd $127,%zmm1,%zmm2
vpshufd $137,%zmm1,%zmm2
vpshufd $237,%zmm1,%zmm2

vpshufd $0,%xmm10,%xmm12 {%k3}
vpshufd $0,%xmm1,%xmm2 {%k3}
vpshufd $1,(%r10),%xmm12 {%k3}
vpshufd $2,%xmm14,%xmm12 {%k3}
vpshufd $3,(%r10),%xmm12 {%k3}
vpshufd $0,%xmm10,%xmm12 {%k3}
vpshufd $2,%xmm1,%xmm2 {%k3}
vpshufd $4,%xmm1,%xmm2 {%k3}
vpshufd $6,%xmm1,%xmm2 {%k3}
vpshufd $8,%xmm1,%xmm2 {%k3}
vpshufd $10,%xmm1,%xmm2 {%k3}
vpshufd $12,%xmm1,%xmm2 {%k3}
vpshufd $14,%xmm1,%xmm2 {%k3}
vpshufd $18,%xmm1,%xmm2 {%k3}
vpshufd $36,%xmm1,%xmm2 {%k3}
vpshufd $72,%xmm1,%xmm2 {%k3}
vpshufd $127,%xmm1,%xmm2 {%k3}
vpshufd $137,%xmm1,%xmm2 {%k3}
vpshufd $237,%xmm1,%xmm2 {%k3}

vpshufd $0,%ymm1,%ymm2 {%k3}
vpshufd $1,(%r10),%ymm12 {%k3}
vpshufd $2,%ymm14,%ymm12 {%k3}
vpshufd $3,(%r10),%ymm12 {%k3}
vpshufd $0,%ymm10,%ymm12 {%k3}
vpshufd $2,%ymm1,%ymm2 {%k3}
vpshufd $4,%ymm1,%ymm2 {%k3}
vpshufd $6,%ymm1,%ymm2 {%k3}
vpshufd $8,%ymm1,%ymm2 {%k3}
vpshufd $10,%ymm1,%ymm2 {%k3}
vpshufd $12,%ymm1,%ymm2 {%k3}
vpshufd $14,%ymm1,%ymm2 {%k3}
vpshufd $18,%ymm1,%ymm2 {%k3}
vpshufd $36,%ymm1,%ymm2 {%k3}
vpshufd $72,%ymm1,%ymm2 {%k3}
vpshufd $127,%ymm1,%ymm2 {%k3}
vpshufd $137,%ymm1,%ymm2 {%k3}
vpshufd $237,%ymm1,%ymm2 {%k3}

vpshufd $0,%zmm1,%zmm2 {%k3}
vpshufd $1,(%r10),%zmm12 {%k3}
vpshufd $2,%zmm14,%zmm12 {%k3}
vpshufd $3,(%r10),%zmm12 {%k3}
vpshufd $0,%zmm10,%zmm12 {%k3}
vpshufd $2,%zmm1,%zmm2 {%k3}
vpshufd $4,%zmm1,%zmm2 {%k3}
vpshufd $6,%zmm1,%zmm2 {%k3}
vpshufd $8,%zmm1,%zmm2 {%k3}
vpshufd $10,%zmm1,%zmm2 {%k3}
vpshufd $12,%zmm1,%zmm2 {%k3}
vpshufd $14,%zmm1,%zmm2 {%k3}
vpshufd $18,%zmm1,%zmm2 {%k3}
vpshufd $36,%zmm1,%zmm2 {%k3}
vpshufd $72,%zmm1,%zmm2 {%k3}
vpshufd $127,%zmm1,%zmm2 {%k3}
vpshufd $137,%zmm1,%zmm2 {%k3}
vpshufd $237,%zmm1,%zmm2 {%k3}
