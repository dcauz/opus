verr %bx
verw %dx

verr (%edx)
verw (%edx)
verr 0x52(%edx)
verw 0x52(%edx)

verr (%rdx)
verw (%rdx)
verr 0x52(%rdx)
verw 0x52(%rdx)

verr (%edx,%edi,1)
verw (%edx,%esi,8)
verr 0x52(%edx,%esi,8)
verw 0x52(%edx,%esi,8)

verr (%rdx,%rsi,8)
verw (%rdx, %r10,4)
verr 0x52(%rdx, %r10,4)
verw 0x5212(%rdx, %r10,4)
