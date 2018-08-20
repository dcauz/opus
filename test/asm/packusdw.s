packusdw %xmm1, %xmm2
packusdw (%r10), %xmm2

packusdw %xmm11, %xmm2
packusdw (%r10), %xmm12


vpackusdw %xmm1, %xmm2, %xmm3
vpackusdw (%r10), %xmm2, %xmm3

vpackusdw %xmm11, %xmm2, %xmm3
vpackusdw (%r10), %xmm12, %xmm3

vpackusdw %xmm21, %xmm2, %xmm3
vpackusdw (%r10), %xmm22, %xmm3

vpackusdw %xmm1, %xmm2, %xmm3{%k4}
vpackusdw (%r10), %xmm2, %xmm3{%k4}

vpackusdw %xmm11, %xmm2, %xmm3{%k4}
vpackusdw (%r10), %xmm12, %xmm3{%k4}

vpackusdw %xmm21, %xmm2, %xmm3{%k4}
vpackusdw (%r10), %xmm22, %xmm3{%k4}


vpackusdw %ymm1, %ymm2, %ymm3
vpackusdw (%r10), %ymm2, %ymm3

vpackusdw %ymm11, %ymm2, %ymm3
vpackusdw (%r10), %ymm12, %ymm3

vpackusdw %ymm21, %ymm2, %ymm3
vpackusdw (%r10), %ymm22, %ymm3

vpackusdw %ymm1, %ymm2, %ymm3{%k4}
vpackusdw (%r10), %ymm2, %ymm3{%k4}

vpackusdw %ymm11, %ymm2, %ymm3{%k4}
vpackusdw (%r10), %ymm12, %ymm3{%k4}

vpackusdw %ymm21, %ymm2, %ymm3{%k4}
vpackusdw (%r10), %ymm22, %ymm3{%k4}


vpackusdw %zmm1, %zmm2, %zmm3
vpackusdw (%r10), %zmm2, %zmm3

vpackusdw %zmm11, %zmm2, %zmm3
vpackusdw (%r10), %zmm12, %zmm3

vpackusdw %zmm21, %zmm2, %zmm3
vpackusdw (%r10), %zmm22, %zmm3

vpackusdw %zmm1, %zmm2, %zmm3{%k4}
vpackusdw (%r10), %zmm2, %zmm3{%k4}

vpackusdw %zmm11, %zmm2, %zmm3{%k4}
vpackusdw (%r10), %zmm12, %zmm3{%k4}

vpackusdw %zmm21, %zmm2, %zmm3{%k4}
vpackusdw (%r10), %zmm22, %zmm3{%k4}
