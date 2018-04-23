
fdivp %st(0)
fdivp %st(1)
fdivp %st(2)
fdivp %st(3)
fdivp %st(4)
fdivp %st(5)
fdivp %st(6)
fdivp %st(7)

fdiv %st(0), %st(0)
fdiv %st(1), %st(0)
fdiv %st(2), %st(0)
fdiv %st(3), %st(0)
fdiv %st(4), %st(0)
fdiv %st(5), %st(0)
fdiv %st(6), %st(0)
fdiv %st(7), %st(0)

fdiv %st(0), %st(0)
fdiv %st(0), %st(1)
fdiv %st(0), %st(2)
fdiv %st(0), %st(3)
fdiv %st(0), %st(4)
fdiv %st(0), %st(5)
fdiv %st(0), %st(6)
fdiv %st(0), %st(7)

fdiv 0x7f7f7f7f

fdiv (%edx)
fdiv (%rdx)
fdiv (%r9d)
fdiv (%r13)
fdiv (%r10)
fdiv (%rbx)
fdiv (%rbx,%rdx,4)

fidiv 0x1112
fidiv 0x11111111
fidiv (%edx)
fidiv (%rdx)
fidiv (%r8d)
fidiv (%r14)


// TODO: DC /6 FDIV m64fp Valid Valid Add m64fp to ST(0) and store result in ST(0).
// fdiv 0x7f7f7f7f
