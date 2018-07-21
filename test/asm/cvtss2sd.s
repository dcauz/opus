cvtss2sd %xmm1, %xmm2
cvtss2sd (%r10), %xmm2

vcvtss2sd (%r10), %xmm2, %xmm0
vcvtss2sd (%r10), %xmm2, %xmm20
vcvtss2sd (%r10), %xmm21, %xmm20
vcvtss2sd (%r10), %xmm21, %xmm2

vcvtss2sd %xmm11, %xmm2, %xmm0
vcvtss2sd %xmm11, %xmm2, %xmm20
vcvtss2sd %xmm11, %xmm21, %xmm20
vcvtss2sd %xmm11, %xmm21, %xmm2

vcvtss2sd %xmm21, %xmm2, %xmm0
vcvtss2sd %xmm22, %xmm2, %xmm20
vcvtss2sd %xmm19, %xmm21, %xmm20
vcvtss2sd %xmm22, %xmm21, %xmm2

vcvtss2sd (%r10), %xmm2, %xmm0 {%k1}
vcvtss2sd (%r10), %xmm2, %xmm20 {%k2}
vcvtss2sd (%r10), %xmm21, %xmm20 {%k3}
vcvtss2sd (%r10), %xmm21, %xmm2 {%k4}

vcvtss2sd %xmm11, %xmm2, %xmm0 {%k5}
vcvtss2sd %xmm11, %xmm2, %xmm20 {%k6}
vcvtss2sd %xmm11, %xmm21, %xmm20 {%k7}
vcvtss2sd %xmm11, %xmm21, %xmm2 {%k6}

vcvtss2sd %xmm21, %xmm2, %xmm0 {%k5}
vcvtss2sd %xmm22, %xmm2, %xmm20 {%k4}
vcvtss2sd %xmm19, %xmm21, %xmm20 {%k3}
vcvtss2sd %xmm22, %xmm21, %xmm2 {%k3}
