cmppd $99, (%rdx), %xmm4
cmppd $99, %xmm2, %xmm4
vcmppd $99, %xmm10, %xmm1, %xmm2
vcmppd $99, (%r10), %xmm1, %xmm2
vcmppd $99, (%r10), %ymm1, %ymm2
vcmppd $99, %ymm10, %ymm1, %ymm2

vcmppd $99, %xmm1, %xmm2, %k0
vcmppd $99, %xmm1, %xmm2, %k1 
vcmppd $99, %xmm1, %xmm2, %k2 
vcmppd $99, %xmm1, %xmm2, %k3 
vcmppd $99, %xmm1, %xmm2, %k4 
vcmppd $99, %xmm1, %xmm2, %k5 
vcmppd $99, %xmm1, %xmm2, %k6 
vcmppd $99, %xmm1, %xmm2, %k7 

vcmppd $99, %xmm0, %xmm2, %k0
vcmppd $99, %xmm2, %xmm2, %k1 
vcmppd $99, %xmm3, %xmm2, %k2 
vcmppd $99, %xmm4, %xmm2, %k3 
vcmppd $99, %xmm5, %xmm2, %k4 
vcmppd $99, %xmm6, %xmm2, %k5 
vcmppd $99, %xmm7, %xmm2, %k6 

vcmppd $99, (%r10), %xmm2, %k0
vcmppd $99, (%r10), %xmm2, %k1
vcmppd $99, (%r10), %xmm2, %k2
vcmppd $99, (%r10), %xmm2, %k4

vcmppd $99, %xmm1, %xmm2, %k0 {%k3}
vcmppd $99, %xmm1, %xmm2, %k0 {%k5}
vcmppd $99, %xmm1, %xmm2, %k0 {%k7}
vcmppd $99, %xmm1, %xmm2, %k1 {%k2}
vcmppd $99, %xmm1, %xmm2, %k2 {%k2}
vcmppd $99, %xmm1, %xmm2, %k3 {%k2}
vcmppd $99, %xmm1, %xmm2, %k4 {%k1}
vcmppd $99, %xmm1, %xmm2, %k6 {%k7}

vcmppd $99, (%r10), %xmm2, %k2 {%k5}
vcmppd $99, (%r10), %xmm2, %k1 {%k6}

vcmppd $99, %ymm1, %ymm2, %k0 
vcmppd $99, (%r10), %ymm2, %k7

vcmppd $99, %ymm1, %ymm2, %k2 {%k5}
vcmppd $99, (%r10), %ymm2, %k3 {%k6}

vcmppd $99, %zmm1, %zmm2, %k3 
vcmppd $99, (%r10), %zmm2, %k4

vcmppd $99, %zmm1, %zmm2, %k0 {%k5}
vcmppd $99, (%r10), %zmm2, %k2 {%k6}
