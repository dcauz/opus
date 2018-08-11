psignb (%r10), %mm1
psignb %mm3, %mm1

psignb (%r10), %xmm1
psignb %xmm3, %xmm1

psignw (%r10), %mm1
psignw %mm3, %mm1

psignw (%r10), %xmm1
psignw %xmm3, %xmm1

psignd (%r10), %mm1
psignd %mm3, %mm1

psignd (%r10), %xmm1
psignd %xmm3, %xmm1

vpsignb (%r10), %xmm1, %xmm7
vpsignb %xmm3, %xmm15, %xmm7

vpsignd (%r10), %xmm1, %xmm7
vpsignd %xmm3, %xmm15, %xmm7

vpsignw (%r10), %xmm1, %xmm7
vpsignw %xmm3, %xmm15, %xmm7

vpsignb (%r10), %ymm1, %ymm7
vpsignb %ymm3, %ymm15, %ymm7

vpsignd (%r10), %ymm1, %ymm7
vpsignd %ymm3, %ymm15, %ymm7

vpsignw (%r10), %ymm1, %ymm7
vpsignw %ymm3, %ymm15, %ymm7
