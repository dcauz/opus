cvttpd2dq %xmm1, %xmm3
cvttpd2dq (%r10), %xmm3

vcvttpd2dq %xmm1, %xmm3

vcvttpd2dq %xmm1, %xmm30
vcvttpd2dq %xmm19, %xmm30
vcvttpd2dq %xmm19, %xmm3

vcvttpd2dq %ymm1, %xmm3

vcvttpd2dq %ymm1, %xmm30
vcvttpd2dq %ymm19, %xmm30
vcvttpd2dq %ymm19, %xmm3

vcvttpd2dq (%r10), %ymm3
vcvttpd2dq (%r10), %ymm30

vcvttpd2dq %zmm1, %ymm3

vcvttpd2dq %zmm1, %ymm30
vcvttpd2dq %zmm19, %ymm30
vcvttpd2dq %zmm19, %ymm3

vcvttpd2dq %xmm1, %xmm3 {%k2}

vcvttpd2dq %xmm1, %xmm30 {%k2}
vcvttpd2dq %xmm19, %xmm30 {%k2}
vcvttpd2dq %xmm19, %xmm3 {%k2}

vcvttpd2dq %ymm1, %xmm3 {%k2}

vcvttpd2dq %ymm1, %xmm30 {%k2}
vcvttpd2dq %ymm19, %xmm30 {%k2}
vcvttpd2dq %ymm19, %xmm3 {%k2}

vcvttpd2dq (%r10), %ymm3 {%k2}
vcvttpd2dq (%r10), %ymm30 {%k2}

vcvttpd2dq %zmm1, %ymm3 {%k2}

vcvttpd2dq %zmm1, %ymm30 {%k2}
vcvttpd2dq %zmm19, %ymm30 {%k2}
vcvttpd2dq %zmm19, %ymm3 {%k2}

