cvtpd2ps %xmm1, %xmm3
cvtpd2ps (%r10), %xmm3

vcvtpd2ps %xmm1, %xmm3

vcvtpd2ps %xmm1, %xmm30
vcvtpd2ps %xmm19, %xmm30
vcvtpd2ps %xmm19, %xmm3

vcvtpd2ps %ymm1, %xmm3

vcvtpd2ps %ymm1, %xmm30
vcvtpd2ps %ymm19, %xmm30
vcvtpd2ps %ymm19, %xmm3

vcvtpd2ps (%r10), %ymm3
vcvtpd2ps (%r10), %ymm30

vcvtpd2ps %zmm1, %ymm3

vcvtpd2ps %zmm1, %ymm30
vcvtpd2ps %zmm19, %ymm30
vcvtpd2ps %zmm19, %ymm3

vcvtpd2ps %xmm1, %xmm3 {%k2}

vcvtpd2ps %xmm1, %xmm30 {%k2}
vcvtpd2ps %xmm19, %xmm30 {%k2}
vcvtpd2ps %xmm19, %xmm3 {%k2}

vcvtpd2ps %ymm1, %xmm3 {%k2}

vcvtpd2ps %ymm1, %xmm30 {%k2}
vcvtpd2ps %ymm19, %xmm30 {%k2}
vcvtpd2ps %ymm19, %xmm3 {%k2}

vcvtpd2ps (%r10), %ymm3 {%k2}
vcvtpd2ps (%r10), %ymm30 {%k2}

vcvtpd2ps %zmm1, %ymm3 {%k2}

vcvtpd2ps %zmm1, %ymm30 {%k2}
vcvtpd2ps %zmm19, %ymm30 {%k2}
vcvtpd2ps %zmm19, %ymm3 {%k2}

