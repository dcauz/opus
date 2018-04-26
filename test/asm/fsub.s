
fsubp %st(0)
fsubp %st(1)
fsubp %st(2)
fsubp %st(3)
fsubp %st(4)
fsubp %st(5)
fsubp %st(6)
fsubp %st(7)

fsub %st(0), %st(0)
fsub %st(1), %st(0)
fsub %st(2), %st(0)
fsub %st(3), %st(0)
fsub %st(4), %st(0)
fsub %st(5), %st(0)
fsub %st(6), %st(0)
fsub %st(7), %st(0)

fsub %st(0), %st(0)
fsub %st(0), %st(1)
fsub %st(0), %st(2)
fsub %st(0), %st(3)
fsub %st(0), %st(4)
fsub %st(0), %st(5)
fsub %st(0), %st(6)
fsub %st(0), %st(7)

fsub 0x7f7f7f7f

fsub (%edx)
fsub (%rdx)
fsub (%r9d)
fsub (%r13)
fsub (%r10)
fsub (%rbx)
fsub (%rbx,%rdx,4)

fisub 0x11121
fisub 0x11111111
fisub (%edx)
fisub (%rdx)
fisub (%r8d)
fisub (%r14)


// TODO: DC /4 FSUB m64fp Valid Valid Add m64fp to ST(0) and store result in ST(0).
// fsub double 0x7f7f7f7f
