
lgdt (%eax)
lgdt (%edx)
lgdt (%rdx)
lidt (%edx)
lidt (%rdx)

lgdt 0x32(%edx)
lgdt 0x32(%rdx)
lidt 0x32(%edx)
lidt 0x32(%rdx)

lgdt 0x3298(%edx)
lgdt 0x3298(%rdx)
lidt 0x3298(%edx)
lidt 0x3298(%rdx)

lgdt 0x38(%edx,%esi,1)
lgdt 0x37a5(%rdx,%rsi,2)
lidt 0x3298(%edx,%esi,4)
lidt 0x38(%rdx,%rsi,8)

lgdt 0x38
lgdt 0x37a5
lidt 0x3298
lidt 0x38

lgdtq (%edx)
lgdtq (%rdx)
lidtq (%edx)
lidtq (%rdx)

lgdtq 0x32(%edx)
lgdtq 0x32(%rdx)
lidtq 0x32(%edx)
lidtq 0x32(%rdx)

lgdtq 0x3298(%edx)
lgdtq 0x3298(%rdx)
lidtq 0x3298(%edx)
lidtq 0x3298(%rdx)

lgdtq 0x38(%edx,%esi,1)
lgdtq 0x37a5(%rdx,%rsi,2)
lidtq 0x3298(%edx,%esi,4)
lidtq 0x38(%rdx,%rsi,8)

lgdtq 0x38
lgdtq 0x37a5
lidtq 0x3298
lidtq 0x38

