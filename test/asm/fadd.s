
faddp %st(0)
faddp %st(1)
faddp %st(2)
faddp %st(3)
faddp %st(4)
faddp %st(5)
faddp %st(6)
faddp %st(7)

fadd %st(0), %st(0)
fadd %st(1), %st(0)
fadd %st(2), %st(0)
fadd %st(3), %st(0)
fadd %st(4), %st(0)
fadd %st(5), %st(0)
fadd %st(6), %st(0)
fadd %st(7), %st(0)

fadd %st(0), %st(0)
fadd %st(0), %st(1)
fadd %st(0), %st(2)
fadd %st(0), %st(3)
fadd %st(0), %st(4)
fadd %st(0), %st(5)
fadd %st(0), %st(6)
fadd %st(0), %st(7)

fadd 0x7f7f7f7f

fadd (%edx)
fadd (%rdx)
fadd (%r9d)
fadd (%r13)
fadd (%r10)
fadd (%rbx)
fadd (%rbx,%rdx,4)

fiadd 0x11121
fiadd 0x11111111
fiadd (%edx)
fiadd (%rdx)
fiadd (%r8d)
fiadd (%r14)


// TODO: DC /0 FADD m64fp Valid Valid Add m64fp to ST(0) and store result in ST(0).
// fadd double 0x7f7f7f7f
