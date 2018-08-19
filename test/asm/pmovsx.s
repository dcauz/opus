pmovsxbw %xmm2, %xmm1
pmovsxbw (%r11), %xmm1
pmovsxbd %xmm2, %xmm1
pmovsxbd (%r12), %xmm1
pmovsxbq %xmm2, %xmm1
pmovsxbq (%r10), %xmm1
pmovsxwd %xmm2, %xmm1
pmovsxwd (%r11), %xmm1
pmovsxwq %xmm2, %xmm1
pmovsxwq (%r12), %xmm1
pmovsxdq %xmm2, %xmm1
pmovsxdq (%r11), %xmm1

vpmovsxbw %xmm2, %xmm1
vpmovsxbw (%r11), %xmm1
vpmovsxbd %xmm2, %xmm1
vpmovsxbd (%r12), %xmm1
vpmovsxbq %xmm2, %xmm1
vpmovsxbq (%r10), %xmm1
vpmovsxwd %xmm2, %xmm1
vpmovsxwd (%r11), %xmm1
vpmovsxwq %xmm2, %xmm1
vpmovsxwq (%r12), %xmm1
vpmovsxdq %xmm2, %xmm1
vpmovsxdq (%r11), %xmm1

vpmovsxbw %xmm2, %ymm1
vpmovsxbw (%r13), %ymm1
vpmovsxbd %xmm2, %ymm1
vpmovsxbd (%r11), %ymm1
vpmovsxbq %xmm2, %ymm1
vpmovsxbq (%r12), %ymm1
vpmovsxwd %xmm2, %ymm1
vpmovsxwd (%r13), %ymm1
vpmovsxwq %xmm2, %ymm1
vpmovsxwq (%r11), %ymm1
vpmovsxdq %xmm2, %ymm1
vpmovsxdq (%r13), %ymm1

vpmovsxbw (%r13), %zmm1
vpmovsxbd %xmm2, %zmm1
vpmovsxbd (%r11), %zmm1
vpmovsxbq %xmm2, %zmm1
vpmovsxbq (%r12), %zmm1
vpmovsxwd (%r13), %zmm1
vpmovsxwq %xmm2, %zmm1
vpmovsxwq (%r11), %zmm1
vpmovsxdq (%r13), %zmm1

vpmovsxbw %ymm2, %zmm1
vpmovsxbw (%r13), %zmm1
vpmovsxbd (%r11), %zmm1
vpmovsxbq (%r12), %zmm1
vpmovsxwd %ymm2, %zmm1
vpmovsxwd (%r13), %zmm1
vpmovsxwq (%r11), %zmm1
vpmovsxdq %ymm2, %zmm1
vpmovsxdq (%r13), %zmm1

vpmovsxbw %xmm2, %xmm1{%k1}
vpmovsxbw (%r11), %xmm1{%k1}
vpmovsxbw %xmm2, %ymm1{%k1}
vpmovsxbw (%r13), %ymm1{%k1}
vpmovsxbw %ymm2, %zmm1{%k1}
vpmovsxbw (%r14), %zmm1{%k1}

vpmovsxbd %xmm2, %xmm1{%k1}
vpmovsxbd (%r12), %xmm1{%k1}
vpmovsxbd %xmm2, %ymm1{%k1}
vpmovsxbd (%r11), %ymm1{%k1}
vpmovsxbd %xmm2, %zmm1{%k1}
vpmovsxbd (%r13), %zmm1{%k1}

vpmovsxbq %xmm2, %xmm1{%k1}
vpmovsxbq (%r10), %xmm1{%k1}
vpmovsxbq %xmm2, %ymm1{%k1}
vpmovsxbq (%r12), %ymm1{%k1}
vpmovsxbq %xmm2, %zmm1{%k1}
vpmovsxbq (%r11), %zmm1{%k1}

vpmovsxwd %xmm2, %xmm1{%k1}
vpmovsxwd (%r11), %xmm1{%k1}
vpmovsxwd %xmm2, %ymm1{%k1}
vpmovsxwd (%r13), %ymm1{%k1}
vpmovsxwd %ymm2, %zmm1{%k1}
vpmovsxwd (%r14), %zmm1{%k1}

vpmovsxwq %xmm2, %xmm1{%k1}
vpmovsxwq (%r12), %xmm1{%k1}
vpmovsxwq %xmm2, %ymm1{%k1}
vpmovsxwq (%r11), %ymm1{%k1}
vpmovsxwq %xmm2, %zmm1{%k1}
vpmovsxwq (%r13), %zmm1{%k1}

vpmovsxdq %xmm2, %xmm1{%k1}
vpmovsxdq (%r11), %xmm1{%k1}
vpmovsxdq %xmm2, %ymm1{%k1}
vpmovsxdq (%r13), %ymm1{%k1}
vpmovsxdq %ymm2, %zmm1{%k1}
vpmovsxdq (%r14), %zmm1{%k1}
