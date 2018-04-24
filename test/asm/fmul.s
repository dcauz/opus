
fmulp %st(0)
fmulp %st(1)
fmulp %st(2)
fmulp %st(3)
fmulp %st(4)
fmulp %st(5)
fmulp %st(6)
fmulp %st(7)

fmul %st(0), %st(0)
fmul %st(1), %st(0)
fmul %st(2), %st(0)
fmul %st(3), %st(0)
fmul %st(4), %st(0)
fmul %st(5), %st(0)
fmul %st(6), %st(0)
fmul %st(7), %st(0)

fmul %st(0), %st(0)
fmul %st(0), %st(1)
fmul %st(0), %st(2)
fmul %st(0), %st(3)
fmul %st(0), %st(4)
fmul %st(0), %st(5)
fmul %st(0), %st(6)
fmul %st(0), %st(7)

fmul 0x7f7f7f7f

fmul (%edx)
fmul (%rdx)
fmul (%r9d)
fmul (%r13)
fmul (%r10)
fmul (%rbx)
fmul (%rbx,%rdx,4)

fimul 0x1112
fimul 0x11111111
fimul (%edx)
fimul (%rdx)
fimul (%r8d)
fimul (%r14)


// TODO: DC /1 FMUL m64fp Valid Valid Add m64fp to ST(0) and store result in ST(0).
// fmul 0x7f7f7f7f
