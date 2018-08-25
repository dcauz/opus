vcvtph2ps %xmm2, %ymm1
vcvtph2ps %xmm12, %ymm11
vcvtph2ps %xmm21, %ymm21

vcvtph2ps (%r10), %ymm1
vcvtph2ps (%r10), %ymm11
vcvtph2ps (%r10), %ymm21

vcvtph2ps %xmm2, %xmm1
vcvtph2ps %xmm12, %xmm11
vcvtph2ps %xmm21, %xmm21

vcvtph2ps (%r10), %xmm1
vcvtph2ps (%r10), %xmm11
vcvtph2ps (%r10), %xmm21

vcvtph2ps %ymm2, %zmm1
vcvtph2ps %ymm12, %zmm11
vcvtph2ps %ymm21, %zmm21

vcvtph2ps (%r10), %zmm1
vcvtph2ps (%r10), %zmm11
vcvtph2ps (%r10), %zmm21

vcvtph2ps %xmm2, %ymm1{%k5}
vcvtph2ps %xmm12, %ymm11{%k5}
vcvtph2ps %xmm21, %ymm21{%k5}

vcvtph2ps (%r10), %ymm1{%k5}
vcvtph2ps (%r10), %ymm11{%k5}
vcvtph2ps (%r10), %ymm21{%k5}

vcvtph2ps %xmm2, %xmm1{%k5}
vcvtph2ps %xmm12, %xmm11{%k5}
vcvtph2ps %xmm21, %xmm21{%k5}

vcvtph2ps (%r10), %xmm1{%k5}
vcvtph2ps (%r10), %xmm11{%k5}
vcvtph2ps (%r10), %xmm21{%k5}

vcvtph2ps %ymm2, %zmm1{%k5}
vcvtph2ps %ymm12, %zmm11{%k5}
vcvtph2ps %ymm21, %zmm21{%k5}

vcvtph2ps (%r10), %zmm1{%k5}
vcvtph2ps (%r10), %zmm11{%k5}
vcvtph2ps (%r10), %zmm21{%k5}

