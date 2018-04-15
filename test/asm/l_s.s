lss  (%edx),%ax
lss  0x13(%edx),%bx
lss  (%ecx,%edx,4),%r9w
lss  0x4322(%ecx,%edx,4),%r9w

lss  (%edx),%eax
lss  0x13(%edx),%eax
lss  (%ecx,%edx,4),%eax
lss  0x4322(%ecx,%edx,4),%eax

lss  (%edx),%rax
lss  0x13(%edx),%rax
lss  (%ecx,%edx,4),%r13
lss  0x4322(%ecx,%edx,4),%r10

lfs  (%edx),%ax
lfs  0x13(%edx),%bx
lfs  (%ecx,%edx,4),%r9w
lfs  0x4322(%ecx,%edx,4),%r9w

lfs  (%edx),%eax
lfs  0x13(%edx),%eax
lfs  (%ecx,%edx,4),%eax
lfs  0x4322(%ecx,%edx,4),%eax

lfs  (%edx),%rax
lfs  0x13(%edx),%rax
lfs  (%ecx,%edx,4),%r13
lfs  0x4322(%ecx,%edx,4),%r10

lgs  (%edx),%ax
lgs  0x13(%edx),%bx
lgs  (%ecx,%edx,4),%r9w
lgs  0x4322(%ecx,%edx,4),%r9w

lgs  (%edx),%eax
lgs  0x13(%edx),%eax
lgs  (%ecx,%edx,4),%eax
lgs  0x4322(%ecx,%edx,4),%eax

lgs  (%rdx),%rax
lgs  0x13(%rdx),%rax
lgs  (%rcx,%rdx,4),%r13
lgs  0x4322(%rcx,%rdx,4),%r10

lss  (%rdx),%ax
lss  0x13(%rdx),%bx
lss  (%rcx,%rdx,4),%r9w
lss  0x4322(%rcx,%rdx,4),%r9w

lss  (%rdx),%eax
lss  0x13(%rdx),%eax
lss  (%rcx,%rdx,4),%eax
lss  0x4322(%rcx,%rdx,4),%eax

lss  (%rdx),%rax
lss  0x13(%rdx),%rax
lss  (%rcx,%rdx,4),%r13
lss  0x4322(%rcx,%rdx,4),%r10

lfs  (%rdx),%ax
lfs  0x13(%rdx),%bx
lfs  (%rcx,%rdx,4),%r9w
lfs  0x4322(%rcx,%rdx,4),%r9w

lfs  (%rdx),%eax
lfs  0x13(%rdx),%eax
lfs  (%rcx,%rdx,4),%eax
lfs  0x4322(%rcx,%rdx,4),%eax

lfs  (%rdx),%rax
lfs  0x13(%rdx),%rax
lfs  (%rcx,%rdx,4),%r13
lfs  0x4322(%rcx,%rdx,4),%r10

lgs  (%rdx),%ax
lgs  0x13(%rdx),%bx
lgs  (%rcx,%rdx,4),%r9w
lgs  0x4322(%rcx,%rdx,4),%r9w

lgs  (%rdx),%eax
lgs  0x13(%rdx),%eax
lgs  (%r13,%r10,4),%eax
lgs  0x4322(%rcx,%rdx,4),%eax

lgs  (%rdx),%rax
lgs  0x13(%rdx),%rax
lgs  (%rcx,%rdx,4),%r13
lgs  0x4322(%r10,%r11,4),%r10
