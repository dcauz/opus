pmulhrsw %mm1, %mm5
pmulhrsw %mm1, %mm7

pmulhrsw %xmm1, %xmm5
pmulhrsw %xmm1, %xmm7

pmulhrsw (%r11), %xmm5
pmulhrsw (%r11), %xmm15

vpmulhrsw %xmm1, %xmm5, %xmm4
vpmulhrsw %xmm1, %xmm15, %xmm4
vpmulhrsw %xmm1, %xmm15, %xmm14
vpmulhrsw %xmm1, %xmm15, %xmm24

vpmulhrsw (%r11), %xmm5, %xmm4
vpmulhrsw (%r11), %xmm15, %xmm4
vpmulhrsw (%r11), %xmm15, %xmm14
vpmulhrsw (%r11), %xmm15, %xmm24

vpmulhrsw %ymm1, %ymm5, %ymm4
vpmulhrsw %ymm1, %ymm15, %ymm4
vpmulhrsw %ymm1, %ymm15, %ymm14
vpmulhrsw %ymm1, %ymm15, %ymm24

vpmulhrsw (%r11), %ymm5, %ymm4
vpmulhrsw (%r11), %ymm15, %ymm4
vpmulhrsw (%r11), %ymm15, %ymm14
vpmulhrsw (%r11), %ymm15, %ymm24

vpmulhrsw %zmm1, %zmm5, %zmm4
vpmulhrsw %zmm1, %zmm15, %zmm4
vpmulhrsw %zmm1, %zmm15, %zmm14
vpmulhrsw %zmm1, %zmm15, %zmm24

vpmulhrsw (%r11), %zmm5, %zmm4
vpmulhrsw (%r11), %zmm15, %zmm4
vpmulhrsw (%r11), %zmm15, %zmm14
vpmulhrsw (%r11), %zmm15, %zmm24

vpmulhrsw %xmm1, %xmm5, %xmm4{%k6}
vpmulhrsw %xmm1, %xmm15, %xmm4{%k6}
vpmulhrsw %xmm1, %xmm15, %xmm14{%k6}
vpmulhrsw %xmm1, %xmm15, %xmm24{%k6}

vpmulhrsw (%r11), %xmm5, %xmm4{%k6}
vpmulhrsw (%r11), %xmm15, %xmm4{%k6}
vpmulhrsw (%r11), %xmm15, %xmm14{%k6}
vpmulhrsw (%r11), %xmm15, %xmm24{%k6}

vpmulhrsw %ymm1, %ymm5, %ymm4{%k6}
vpmulhrsw %ymm1, %ymm15, %ymm4{%k6}
vpmulhrsw %ymm1, %ymm15, %ymm14{%k6}
vpmulhrsw %ymm1, %ymm15, %ymm24{%k6}

vpmulhrsw (%r11), %ymm5, %ymm4{%k6}
vpmulhrsw (%r11), %ymm15, %ymm4{%k6}
vpmulhrsw (%r11), %ymm15, %ymm14{%k6}
vpmulhrsw (%r11), %ymm15, %ymm24{%k6}

vpmulhrsw %zmm1, %zmm5, %zmm4{%k6}
vpmulhrsw %zmm1, %zmm15, %zmm4{%k6}
vpmulhrsw %zmm1, %zmm15, %zmm14{%k6}
vpmulhrsw %zmm1, %zmm15, %zmm24{%k6}

vpmulhrsw (%r11), %zmm5, %zmm4{%k6}
vpmulhrsw (%r11), %zmm15, %zmm4{%k6}
vpmulhrsw (%r11), %zmm15, %zmm14{%k6}
vpmulhrsw (%r11), %zmm15, %zmm24{%k6}

