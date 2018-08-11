pmaddubsw %mm1, %mm5
pmaddubsw %mm1, %mm7

pmaddubsw %xmm1, %xmm5
pmaddubsw %xmm1, %xmm7

pmaddubsw (%r11), %xmm5
pmaddubsw (%r11), %xmm15

vpmaddubsw %xmm1, %xmm5, %xmm4
vpmaddubsw %xmm1, %xmm15, %xmm4
vpmaddubsw %xmm1, %xmm15, %xmm14
vpmaddubsw %xmm1, %xmm15, %xmm24

vpmaddubsw (%r11), %xmm5, %xmm4
vpmaddubsw (%r11), %xmm15, %xmm4
vpmaddubsw (%r11), %xmm15, %xmm14
vpmaddubsw (%r11), %xmm15, %xmm24

vpmaddubsw %ymm1, %ymm5, %ymm4
vpmaddubsw %ymm1, %ymm15, %ymm4
vpmaddubsw %ymm1, %ymm15, %ymm14
vpmaddubsw %ymm1, %ymm15, %ymm24

vpmaddubsw (%r11), %ymm5, %ymm4
vpmaddubsw (%r11), %ymm15, %ymm4
vpmaddubsw (%r11), %ymm15, %ymm14
vpmaddubsw (%r11), %ymm15, %ymm24

vpmaddubsw %zmm1, %zmm5, %zmm4
vpmaddubsw %zmm1, %zmm15, %zmm4
vpmaddubsw %zmm1, %zmm15, %zmm14
vpmaddubsw %zmm1, %zmm15, %zmm24

vpmaddubsw (%r11), %zmm5, %zmm4
vpmaddubsw (%r11), %zmm15, %zmm4
vpmaddubsw (%r11), %zmm15, %zmm14
vpmaddubsw (%r11), %zmm15, %zmm24

vpmaddubsw %xmm1, %xmm5, %xmm4{%k6}
vpmaddubsw %xmm1, %xmm15, %xmm4{%k6}
vpmaddubsw %xmm1, %xmm15, %xmm14{%k6}
vpmaddubsw %xmm1, %xmm15, %xmm24{%k6}

vpmaddubsw (%r11), %xmm5, %xmm4{%k6}
vpmaddubsw (%r11), %xmm15, %xmm4{%k6}
vpmaddubsw (%r11), %xmm15, %xmm14{%k6}
vpmaddubsw (%r11), %xmm15, %xmm24{%k6}

vpmaddubsw %ymm1, %ymm5, %ymm4{%k6}
vpmaddubsw %ymm1, %ymm15, %ymm4{%k6}
vpmaddubsw %ymm1, %ymm15, %ymm14{%k6}
vpmaddubsw %ymm1, %ymm15, %ymm24{%k6}

vpmaddubsw (%r11), %ymm5, %ymm4{%k6}
vpmaddubsw (%r11), %ymm15, %ymm4{%k6}
vpmaddubsw (%r11), %ymm15, %ymm14{%k6}
vpmaddubsw (%r11), %ymm15, %ymm24{%k6}

vpmaddubsw %zmm1, %zmm5, %zmm4{%k6}
vpmaddubsw %zmm1, %zmm15, %zmm4{%k6}
vpmaddubsw %zmm1, %zmm15, %zmm14{%k6}
vpmaddubsw %zmm1, %zmm15, %zmm24{%k6}

vpmaddubsw (%r11), %zmm5, %zmm4{%k6}
vpmaddubsw (%r11), %zmm15, %zmm4{%k6}
vpmaddubsw (%r11), %zmm15, %zmm14{%k6}
vpmaddubsw (%r11), %zmm15, %zmm24{%k6}

