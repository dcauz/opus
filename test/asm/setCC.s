seta %al
setae %ah
setb %bl
setbe %bh
setc %cl
sete %ch
setg %sil
setge %dil
setl %r9b
setle %r9b
setna %r9b
setnae %r9b
setnb %r9b
setnbe %r9b
setnc %r9b
setne %r9b
setng %r9b
setnge %r9b
setnl %r9b
setnle %r9b
setno %r9b
setnp %r9b
setns %r10b
setnz %r11b
seto %r12b
setp %r13b
setpe %r14b
setpo %r15b
sets %spl
setz %bpl

seta (%ebx)
setae (%ecx)
setb (%esp)
setbe (%esp)
setc (%esp)
sete (%esp)
setg (%esp)
setge (%esp,%ebx,1)
setl 0x43(%esp)
setle 0x4322(%esp)
setna 0x6732(%esp)
setnae 0x6732(%r10d,%edx,4)
setnb (%r9d)
setnbe (%r9d,%r10d,8)
setnc 0x11(%esp,%r10d,8)
setne 0x1111(%r9d)
setng 0x11(%rsp)
setnge (%rsp,%rdx,2)
setnl 0x1212(%rsp,%rdx,2)
setnle 0x11(%r11,%r12,1)
setno 0x1121(%r11,%rcx,4)
setnp (%esp)
setns (%esp)
setnz (%esp)
seto (%esp)
setp (%esp)
setpe (%esp)
setpo (%esp)
sets (%esp)
setz (%esp)

setz 0x1212121
