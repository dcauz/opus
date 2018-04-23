
fdivrp %st(0)
fdivrp %st(1)
fdivrp %st(2)
fdivrp %st(3)
fdivrp %st(4)
fdivrp %st(5)
fdivrp %st(6)
fdivrp %st(7)

fdivr %st(0), %st(0)
fdivr %st(1), %st(0)
fdivr %st(2), %st(0)
fdivr %st(3), %st(0)
fdivr %st(4), %st(0)
fdivr %st(5), %st(0)
fdivr %st(6), %st(0)
fdivr %st(7), %st(0)

fdivr %st(0), %st(0)
fdivr %st(0), %st(1)
fdivr %st(0), %st(2)
fdivr %st(0), %st(3)
fdivr %st(0), %st(4)
fdivr %st(0), %st(5)
fdivr %st(0), %st(6)
fdivr %st(0), %st(7)

fdivr 0x7f7f7f7f

fdivr (%edx)
fdivr (%rdx)
fdivr (%r9d)
fdivr (%r13)
fdivr (%r10)
fdivr (%rbx)
fdivr (%rbx,%rdx,4)

fidivr 0x1112
fidivr 0x11111111
fidivr (%edx)
fidivr (%rdx)
fidivr (%r8d)
fidivr (%r14)


// TODO: DC /7 FDIVR m64fp Valid Valid Add m64fp to ST(0) and store result in ST(0).
// fdivr 0x7f7f7f7f
