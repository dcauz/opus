cvtsd2ss %xmm1, %xmm2
cvtsd2ss (%r10), %xmm2

vcvtsd2ss (%r10), %xmm2, %xmm0
vcvtsd2ss (%r10), %xmm2, %xmm20
vcvtsd2ss (%r10), %xmm21, %xmm20
vcvtsd2ss (%r10), %xmm21, %xmm2

vcvtsd2ss %xmm11, %xmm2, %xmm0
vcvtsd2ss %xmm11, %xmm2, %xmm20
vcvtsd2ss %xmm11, %xmm21, %xmm20
vcvtsd2ss %xmm11, %xmm21, %xmm2

vcvtsd2ss %xmm21, %xmm2, %xmm0
vcvtsd2ss %xmm22, %xmm2, %xmm20
vcvtsd2ss %xmm19, %xmm21, %xmm20
vcvtsd2ss %xmm22, %xmm21, %xmm2

vcvtsd2ss (%r10), %xmm2, %xmm0 {%k1}
vcvtsd2ss (%r10), %xmm2, %xmm20 {%k2}
vcvtsd2ss (%r10), %xmm21, %xmm20 {%k3}
vcvtsd2ss (%r10), %xmm21, %xmm2 {%k4}

vcvtsd2ss %xmm11, %xmm2, %xmm0 {%k5}
vcvtsd2ss %xmm11, %xmm2, %xmm20 {%k6}
vcvtsd2ss %xmm11, %xmm21, %xmm20 {%k7}
vcvtsd2ss %xmm11, %xmm21, %xmm2 {%k6}

vcvtsd2ss %xmm21, %xmm2, %xmm0 {%k5}
vcvtsd2ss %xmm22, %xmm2, %xmm20 {%k4}
vcvtsd2ss %xmm19, %xmm21, %xmm20 {%k3}
vcvtsd2ss %xmm22, %xmm21, %xmm2 {%k3}
