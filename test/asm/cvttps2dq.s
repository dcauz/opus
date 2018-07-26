cvttps2dq %xmm1, %xmm4
cvttps2dq (%r10), %xmm4
cvttps2dq (%rdx), %xmm4

vcvttps2dq %xmm1, %xmm4
vcvttps2dq %xmm1, %xmm24
vcvttps2dq %xmm21, %xmm4
vcvttps2dq %xmm21, %xmm24
vcvttps2dq (%r10), %xmm4
vcvttps2dq (%rdx), %xmm24

vcvttps2dq %ymm1, %ymm4
vcvttps2dq %ymm1, %ymm24
vcvttps2dq %ymm21, %ymm4
vcvttps2dq %ymm21, %ymm24
vcvttps2dq (%r10), %ymm4
vcvttps2dq (%rdx), %ymm24

vcvttps2dq %xmm1, %xmm4 {%k1}
vcvttps2dq %xmm1, %xmm24 {%k2}
vcvttps2dq %xmm21, %xmm4 {%k3}
vcvttps2dq %xmm21, %xmm24 {%k4}
vcvttps2dq (%r10), %xmm4 {%k5}
vcvttps2dq (%rdx), %xmm24 {%k6}

vcvttps2dq %ymm1, %ymm4 {%k7}
vcvttps2dq %ymm1, %ymm24 {%k6}
vcvttps2dq %ymm21, %ymm4 {%k5}
vcvttps2dq %ymm21, %ymm24 {%k4}
vcvttps2dq (%r10), %ymm4 {%k3}
vcvttps2dq (%rdx), %ymm24 {%k2}

vcvttps2dq %zmm1, %zmm4 {%k1}
vcvttps2dq %zmm1, %zmm24 {%k2}
vcvttps2dq %zmm21, %zmm4 {%k3}
vcvttps2dq %zmm21, %zmm24 {%k4}
vcvttps2dq (%r10), %zmm4 {%k5}
vcvttps2dq (%rdx), %zmm24 {%k6}
