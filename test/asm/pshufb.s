pshufb %mm1, %mm5
pshufb %mm1, %mm7

pshufb %xmm1, %xmm5
pshufb %xmm1, %xmm7

pshufb (%r11), %xmm5
pshufb (%r11), %xmm15

vpshufb %xmm1, %xmm5, %xmm4
vpshufb %xmm1, %xmm15, %xmm4
vpshufb %xmm1, %xmm15, %xmm14
vpshufb %xmm1, %xmm15, %xmm24

vpshufb (%r11), %xmm5, %xmm4
vpshufb (%r11), %xmm15, %xmm4
vpshufb (%r11), %xmm15, %xmm14
vpshufb (%r11), %xmm15, %xmm24

vpshufb %ymm1, %ymm5, %ymm4
vpshufb %ymm1, %ymm15, %ymm4
vpshufb %ymm1, %ymm15, %ymm14
vpshufb %ymm1, %ymm15, %ymm24

vpshufb (%r11), %ymm5, %ymm4
vpshufb (%r11), %ymm15, %ymm4
vpshufb (%r11), %ymm15, %ymm14
vpshufb (%r11), %ymm15, %ymm24

vpshufb %zmm1, %zmm5, %zmm4
vpshufb %zmm1, %zmm15, %zmm4
vpshufb %zmm1, %zmm15, %zmm14
vpshufb %zmm1, %zmm15, %zmm24

vpshufb (%r11), %zmm5, %zmm4
vpshufb (%r11), %zmm15, %zmm4
vpshufb (%r11), %zmm15, %zmm14
vpshufb (%r11), %zmm15, %zmm24

vpshufb %xmm1, %xmm5, %xmm4{%k6}
vpshufb %xmm1, %xmm15, %xmm4{%k6}
vpshufb %xmm1, %xmm15, %xmm14{%k6}
vpshufb %xmm1, %xmm15, %xmm24{%k6}

vpshufb (%r11), %xmm5, %xmm4{%k6}
vpshufb (%r11), %xmm15, %xmm4{%k6}
vpshufb (%r11), %xmm15, %xmm14{%k6}
vpshufb (%r11), %xmm15, %xmm24{%k6}

vpshufb %ymm1, %ymm5, %ymm4{%k6}
vpshufb %ymm1, %ymm15, %ymm4{%k6}
vpshufb %ymm1, %ymm15, %ymm14{%k6}
vpshufb %ymm1, %ymm15, %ymm24{%k6}

vpshufb (%r11), %ymm5, %ymm4{%k6}
vpshufb (%r11), %ymm15, %ymm4{%k6}
vpshufb (%r11), %ymm15, %ymm14{%k6}
vpshufb (%r11), %ymm15, %ymm24{%k6}

vpshufb %zmm1, %zmm5, %zmm4{%k6}
vpshufb %zmm1, %zmm15, %zmm4{%k6}
vpshufb %zmm1, %zmm15, %zmm14{%k6}
vpshufb %zmm1, %zmm15, %zmm24{%k6}

vpshufb (%r11), %zmm5, %zmm4{%k6}
vpshufb (%r11), %zmm15, %zmm4{%k6}
vpshufb (%r11), %zmm15, %zmm14{%k6}
vpshufb (%r11), %zmm15, %zmm24{%k6}

