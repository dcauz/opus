pmovzxbw %xmm2, %xmm1
pmovzxbw (%r11), %xmm1
pmovzxbd %xmm2, %xmm1
pmovzxbd (%r12), %xmm1
pmovzxbq %xmm2, %xmm1
pmovzxbq (%r10), %xmm1
pmovzxwd %xmm2, %xmm1
pmovzxwd (%r11), %xmm1
pmovzxwq %xmm2, %xmm1
pmovzxwq (%r12), %xmm1
pmovzxdq %xmm2, %xmm1
pmovzxdq (%r11), %xmm1

vpmovzxbw %xmm2, %xmm1
vpmovzxbw (%r11), %xmm1
vpmovzxbd %xmm2, %xmm1
vpmovzxbd (%r12), %xmm1
vpmovzxbq %xmm2, %xmm1
vpmovzxbq (%r10), %xmm1
vpmovzxwd %xmm2, %xmm1
vpmovzxwd (%r11), %xmm1
vpmovzxwq %xmm2, %xmm1
vpmovzxwq (%r12), %xmm1
vpmovzxdq %xmm2, %xmm1
vpmovzxdq (%r11), %xmm1

vpmovzxbw %xmm2, %ymm1
vpmovzxbw (%r13), %ymm1
vpmovzxbd %xmm2, %ymm1
vpmovzxbd (%r11), %ymm1
vpmovzxbq %xmm2, %ymm1
vpmovzxbq (%r12), %ymm1
vpmovzxwd %xmm2, %ymm1
vpmovzxwd (%r13), %ymm1
vpmovzxwq %xmm2, %ymm1
vpmovzxwq (%r11), %ymm1
vpmovzxdq %xmm2, %ymm1
vpmovzxdq (%r13), %ymm1

vpmovzxbw (%r13), %zmm1
vpmovzxbd %xmm2, %zmm1
vpmovzxbd (%r11), %zmm1
vpmovzxbq %xmm2, %zmm1
vpmovzxbq (%r12), %zmm1
vpmovzxwd (%r13), %zmm1
vpmovzxwq %xmm2, %zmm1
vpmovzxwq (%r11), %zmm1
vpmovzxdq (%r13), %zmm1

vpmovzxbw %ymm2, %zmm1
vpmovzxbw (%r13), %zmm1
vpmovzxbd (%r11), %zmm1
vpmovzxbq (%r12), %zmm1
vpmovzxwd %ymm2, %zmm1
vpmovzxwd (%r13), %zmm1
vpmovzxwq (%r11), %zmm1
vpmovzxdq %ymm2, %zmm1
vpmovzxdq (%r13), %zmm1

vpmovzxbw %xmm2, %xmm1{%k1}
vpmovzxbw (%r11), %xmm1{%k1}
vpmovzxbw %xmm2, %ymm1{%k1}
vpmovzxbw (%r13), %ymm1{%k1}
vpmovzxbw %ymm2, %zmm1{%k1}
vpmovzxbw (%r14), %zmm1{%k1}

vpmovzxbd %xmm2, %xmm1{%k1}
vpmovzxbd (%r12), %xmm1{%k1}
vpmovzxbd %xmm2, %ymm1{%k1}
vpmovzxbd (%r11), %ymm1{%k1}
vpmovzxbd %xmm2, %zmm1{%k1}
vpmovzxbd (%r13), %zmm1{%k1}

vpmovzxbq %xmm2, %xmm1{%k1}
vpmovzxbq (%r10), %xmm1{%k1}
vpmovzxbq %xmm2, %ymm1{%k1}
vpmovzxbq (%r12), %ymm1{%k1}
vpmovzxbq %xmm2, %zmm1{%k1}
vpmovzxbq (%r11), %zmm1{%k1}

vpmovzxwd %xmm2, %xmm1{%k1}
vpmovzxwd (%r11), %xmm1{%k1}
vpmovzxwd %xmm2, %ymm1{%k1}
vpmovzxwd (%r13), %ymm1{%k1}
vpmovzxwd %ymm2, %zmm1{%k1}
vpmovzxwd (%r14), %zmm1{%k1}

vpmovzxwq %xmm2, %xmm1{%k1}
vpmovzxwq (%r12), %xmm1{%k1}
vpmovzxwq %xmm2, %ymm1{%k1}
vpmovzxwq (%r11), %ymm1{%k1}
vpmovzxwq %xmm2, %zmm1{%k1}
vpmovzxwq (%r13), %zmm1{%k1}

vpmovzxdq %xmm2, %xmm1{%k1}
vpmovzxdq (%r11), %xmm1{%k1}
vpmovzxdq %xmm2, %ymm1{%k1}
vpmovzxdq (%r13), %ymm1{%k1}
vpmovzxdq %ymm2, %zmm1{%k1}
vpmovzxdq (%r14), %zmm1{%k1}
