
sgdt (%eax)
sgdt (%edx)
sgdt (%rdx)
sidt (%edx)
sidt (%rdx)

sgdt 0x32(%edx)
sgdt 0x32(%rdx)
sidt 0x32(%edx)
sidt 0x32(%rdx)

sgdt 0x3298(%edx)
sgdt 0x3298(%rdx)
sidt 0x3298(%edx)
sidt 0x3298(%rdx)

sgdt 0x38(%edx,%esi,1)
sgdt 0x37a5(%rdx,%rsi,2)
sidt 0x3298(%edx,%esi,4)
sidt 0x38(%rdx,%rsi,8)

sgdt 0x38
sgdt 0x37a5
sidt 0x3298
sidt 0x38

sgdtq (%edx)
sgdtq (%rdx)
sidtq (%edx)
sidtq (%rdx)

sgdtq 0x32(%edx)
sgdtq 0x32(%rdx)
sidtq 0x32(%edx)
sidtq 0x32(%rdx)

sgdtq 0x3298(%edx)
sgdtq 0x3298(%rdx)
sidtq 0x3298(%edx)
sidtq 0x3298(%rdx)

sgdtq 0x38(%edx,%esi,1)
sgdtq 0x37a5(%rdx,%rsi,2)
sidtq 0x3298(%edx,%esi,4)
sidtq 0x38(%rdx,%rsi,8)

sgdtq 0x38
sgdtq 0x37a5
sidtq 0x3298
sidtq 0x38
