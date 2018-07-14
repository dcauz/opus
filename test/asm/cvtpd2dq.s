cvtpd2dq %xmm1, %xmm3
cvtpd2dq (%r10), %xmm3

vcvtpd2dq %xmm1, %xmm3

vcvtpd2dq %xmm1, %xmm30
vcvtpd2dq %xmm19, %xmm30
vcvtpd2dq %xmm19, %xmm3

vcvtpd2dq %ymm1, %xmm3

vcvtpd2dq %ymm1, %xmm30
vcvtpd2dq %ymm19, %xmm30
vcvtpd2dq %ymm19, %xmm3

vcvtpd2dq (%r10), %ymm3
vcvtpd2dq (%r10), %ymm30

vcvtpd2dq %zmm1, %ymm3

vcvtpd2dq %zmm1, %ymm30
vcvtpd2dq %zmm19, %ymm30
vcvtpd2dq %zmm19, %ymm3

vcvtpd2dq %xmm1, %xmm3 {%k2}

vcvtpd2dq %xmm1, %xmm30 {%k2}
vcvtpd2dq %xmm19, %xmm30 {%k2}
vcvtpd2dq %xmm19, %xmm3 {%k2}

vcvtpd2dq %ymm1, %xmm3 {%k2}

vcvtpd2dq %ymm1, %xmm30 {%k2}
vcvtpd2dq %ymm19, %xmm30 {%k2}
vcvtpd2dq %ymm19, %xmm3 {%k2}

vcvtpd2dq (%r10), %ymm3 {%k2}
vcvtpd2dq (%r10), %ymm30 {%k2}

vcvtpd2dq %zmm1, %ymm3 {%k2}

vcvtpd2dq %zmm1, %ymm30 {%k2}
vcvtpd2dq %zmm19, %ymm30 {%k2}
vcvtpd2dq %zmm19, %ymm3 {%k2}

