
fsubr %st(0), %st(0)
fsubr %st(1), %st(0)
fsubr %st(2), %st(0)
fsubr %st(3), %st(0)
fsubr %st(4), %st(0)
fsubr %st(5), %st(0)
fsubr %st(6), %st(0)
fsubr %st(7), %st(0)

fsubr %st(0), %st(0)
fsubr %st(0), %st(1)
fsubr %st(0), %st(2)
fsubr %st(0), %st(3)
fsubr %st(0), %st(4)
fsubr %st(0), %st(5)
fsubr %st(0), %st(6)
fsubr %st(0), %st(7)

fsubr 0x7f7f7f7f

fsubr (%edx)
fsubr (%rdx)
fsubr (%r9d)
fsubr (%r13)
fsubr (%r10)
fsubr (%rbx)
fsubr (%rbx,%rdx,4)

fisubr 0x11121
fisubr 0x11111111
fisubr (%edx)
fisubr (%rdx)
fisubr (%r8d)
fisubr (%r14)


// TODO: DC /5 FSUBR m64fp Valid Valid Add m64fp to ST(0) and store result in ST(0).
// fsubr double 0x7f7f7f7f
