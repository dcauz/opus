add rb imm32                     |       44 00 0b00 reg:3:0 0b100 0x25 imm:32:1
add rw imm32                     |    66 44 01 0b00 reg:3:0 0b100 0x25 imm:32:1
add rd imm32                     |       44 01 0b00 reg:3:0 0b100 0x25 imm:32:1
add rq imm32                     |       4c 01 0b00 reg:3:0 0b100 0x25 imm:32:1
add xb imm32                     |          00 0b00 reg:3:0 0b100 0x25 imm:32:1
add xb64 imm32                   |       40 00 0b00 reg:3:0 0b100 0x25 imm:32:1
add xw imm32                     |    66    01 0b00 reg:3:0 0b100 0x25 imm:32:1
add xd imm32                     |          01 0b00 reg:3:0 0b100 0x25 imm:32:1
add xq imm32                     |       48 01 0b00 reg:3:0 0b100 0x25 imm:32:1

add rb rb                        |       45 00 0b11 reg:3:0 reg:3:1
add rb xb64                      |       44 00 0b11 reg:3:0 reg:3:1
add rw rw                        |    66 45 01 0b11 reg:3:0 reg:3:1
add rw xw                        |    66 44 01 0b11 reg:3:0 reg:3:1
add rd rd                        |       45 01 0b11 reg:3:0 reg:3:1
add rd xd                        |       44 01 0b11 reg:3:0 reg:3:1
add rq rq                        |       4d 01 0b11 reg:3:0 reg:3:1
add rq xq                        |       4c 01 0b11 reg:3:0 reg:3:1
add xb xb                        |          00 0b11 reg:3:0 reg:3:1
add xb64 rb                      |       41 00 0b11 reg:3:0 reg:3:1
add xb64 xb64                    |       40 00 0b11 reg:3:0 reg:3:1
add xw rw                        |    66 41 01 0b11 reg:3:0 reg:3:1
add xw xw                        |    66    01 0b11 reg:3:0 reg:3:1
add xd rd                        |       41 01 0b11 reg:3:0 reg:3:1
add xd xd                        |          01 0b11 reg:3:0 reg:3:1
add xq rq                        |       49 01 0b11 reg:3:0 reg:3:1
add xq xq                        |       48 01 0b11 reg:3:0 reg:3:1

add rb addr.xd                   | 67    44 00 0b00 reg:3:0 reg:3:1
add rb addr.disp8.xd             | 67    44 00 0b01 reg:3:0 reg:3:2 imm:8:1
add rb addr.disp32.xd            | 67    44 00 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.xd rb                   | 67    44 02 0b00 reg:3:1 reg:3:0
add addr.disp8.xd rb             | 67    44 02 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xd rb            | 67    44 02 0b10 reg:3:2 reg:3:1 imm:32:0
add rb addr.xq                   |       44 00 0b00 reg:3:0 reg:3:1
add rb addr.disp8.xq             |       44 00 0b01 reg:3:0 reg:3:2 imm:8:1
add rb addr.disp32.xq            |       44 00 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.xq rb                   |       44 02 0b00 reg:3:1 reg:3:0
add addr.disp8.xq rb             |       44 02 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xq rb            |       44 02 0b10 reg:3:2 reg:3:1 imm:32:0
add rb addr.rd                   | 67    45 00 0b00 reg:3:0 reg:3:1
add rb addr.disp8.rd             | 67    45 00 0b01 reg:3:0 reg:3:2 imm:8:1
add rb addr.disp32.rd            | 67    45 00 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.rd rb                   | 67    45 02 0b00 reg:3:1 reg:3:0
add addr.disp8.rd rb             | 67    45 02 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rd rb            | 67    45 02 0b10 reg:3:2 reg:3:1 imm:32:0
add rb addr.rq                   |       45 00 0b00 reg:3:0 reg:3:1
add rb addr.disp8.rq             |       45 00 0b01 reg:3:0 reg:3:2 imm:8:1
add rb addr.disp32.rq            |       45 00 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.rq rb                   |       45 02 0b00 reg:3:1 reg:3:0
add addr.disp8.rq rb             |       45 02 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rq rb            |       45 02 0b10 reg:3:2 reg:3:1 imm:32:0

add rw addr.xd                   | 67 66 44 01 0b00 reg:3:0 reg:3:1
add rw addr.disp8.xd             | 67 66 44 01 0b01 reg:3:0 reg:3:2 imm:8:1
add rw addr.disp32.xd            | 67 66 44 01 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.xd rw                   | 67 66 44 03 0b00 reg:3:1 reg:3:0
add addr.disp8.xd rw             | 67 66 44 03 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xd rw            | 67 66 44 03 0b10 reg:3:2 reg:3:1 imm:32:0
add rw addr.xq                   |    66 44 01 0b00 reg:3:0 reg:3:1
add rw addr.disp8.xq             |    66 44 01 0b01 reg:3:0 reg:3:2 imm:8:1
add rw addr.disp32.xq            |    66 44 01 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.xq rw                   |    66 44 03 0b00 reg:3:1 reg:3:0
add addr.disp8.xq rw             |    66 44 03 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xq rw            |    66 44 03 0b10 reg:3:2 reg:3:1 imm:32:0
add rw addr.rd                   | 67 66 45 01 0b00 reg:3:0 reg:3:1
add rw addr.disp8.rd             | 67 66 45 01 0b01 reg:3:0 reg:3:2 imm:8:1
add rw addr.disp32.rd            | 67 66 45 01 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.rd rw                   | 67 66 45 03 0b00 reg:3:1 reg:3:0
add addr.disp8.rd rw             | 67 66 45 03 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rd rw            | 67 66 45 03 0b10 reg:3:2 reg:3:1 imm:32:0
add rw addr.rq                   |    66 45 01 0b00 reg:3:0 reg:3:1
add rw addr.disp8.rq             |    66 45 01 0b01 reg:3:0 reg:3:2 imm:8:1
add rw addr.disp32.rq            |    66 45 01 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.rq rw                   |    66 45 03 0b00 reg:3:1 reg:3:0
add addr.disp8.rq rw             |    66 45 03 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rq rw            |    66 45 03 0b10 reg:3:2 reg:3:1 imm:32:0

add rd addr.xd                   | 67    44 01 0b00 reg:3:0 reg:3:1
add rd addr.disp8.xd             | 67    44 01 0b01 reg:3:0 reg:3:2 imm:8:1
add rd addr.disp32.xd            | 67    44 01 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.xd rd                   | 67    44 03 0b00 reg:3:1 reg:3:0
add addr.disp8.xd rd             | 67    44 03 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xd rd            | 67    44 03 0b10 reg:3:2 reg:3:1 imm:32:0
add rd addr.xq                   |       44 01 0b00 reg:3:0 reg:3:1
add rd addr.disp8.xq             |       44 01 0b01 reg:3:0 reg:3:2 imm:8:1
add rd addr.disp32.xq            |       44 01 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.xq rd                   |       44 03 0b00 reg:3:1 reg:3:0
add addr.disp8.xq rd             |       44 03 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xq rd            |       44 03 0b10 reg:3:2 reg:3:1 imm:32:0
add rd addr.rd                   | 67    45 01 0b00 reg:3:0 reg:3:1
add rd addr.disp8.rd             | 67    45 01 0b01 reg:3:0 reg:3:2 imm:8:1
add rd addr.disp32.rd            | 67    45 01 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.rd rd                   | 67    45 03 0b00 reg:3:1 reg:3:0
add addr.disp8.rd rd             | 67    45 03 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rd rd            | 67    45 03 0b10 reg:3:2 reg:3:1 imm:32:0
add rd addr.rq                   |       45 01 0b00 reg:3:0 reg:3:1
add rd addr.disp8.rq             |       45 01 0b01 reg:3:0 reg:3:2 imm:8:1
add rd addr.disp32.rq            |       45 01 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.rq rd                   |       45 03 0b00 reg:3:1 reg:3:0
add addr.disp8.rq rd             |       45 03 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rq rd            |       45 03 0b10 reg:3:2 reg:3:1 imm:32:0

add rq addr.xd                   | 67    4c 01 0b00 reg:3:0 reg:3:1
add rq addr.disp8.xd             | 67    4c 01 0b01 reg:3:0 reg:3:2 imm:8:1
add rq addr.disp32.xd            | 67    4c 01 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.xd rq                   | 67    4c 03 0b00 reg:3:1 reg:3:0        
add addr.disp8.xd rq             | 67    4c 03 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xd rq            | 67    4c 03 0b10 reg:3:2 reg:3:1 imm:32:0
add rq addr.xq                   |       4c 01 0b00 reg:3:0 reg:3:1
add rq addr.disp8.xq             |       4c 01 0b01 reg:3:0 reg:3:2 imm:8:1
add rq addr.disp32.xq            |       4c 01 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.xq rq                   |       4c 03 0b00 reg:3:1 reg:3:0
add addr.disp8.xq rq             |       4c 03 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xq rq            |       4c 03 0b10 reg:3:2 reg:3:1 imm:32:0
add rq addr.rd                   | 67    4d 01 0b00 reg:3:0 reg:3:1
add rq addr.disp8.rd             | 67    4d 01 0b01 reg:3:0 reg:3:2 imm:8:1
add rq addr.disp32.rd            | 67    4d 01 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.rd rq                   | 67    4d 03 0b00 reg:3:1 reg:3:0
add addr.disp8.rd rq             | 67    4d 03 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rd rq            | 67    4d 03 0b10 reg:3:2 reg:3:1 imm:32:0
add rq addr.rq                   |       4d 01 0b00 reg:3:0 reg:3:1
add rq addr.disp8.rq             |       4d 01 0b01 reg:3:0 reg:3:2 imm:8:1
add rq addr.disp32.rq            |       4d 01 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.rq rq                   |       4d 03 0b00 reg:3:1 reg:3:0
add addr.disp8.rq rq             |       4d 03 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rq rq            |       4d 03 0b10 reg:3:2 reg:3:1 imm:32:0

add xb addr.xd                   | 67       00 0b00 reg:3:0 reg:3:1
add xb addr.disp8.xd             | 67       00 0b01 reg:3:0 reg:3:2 imm:8:1
add xb addr.disp32.xd            | 67       00 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.xd xb                   | 67       02 0b00 reg:3:1 reg:3:0
add addr.disp8.xd xb             | 67       02 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xd xb            | 67       02 0b10 reg:3:2 reg:3:1 imm:32:0
add xb addr.xq                   |          00 0b00 reg:3:0 reg:3:1
add xb addr.disp8.xq             |          00 0b01 reg:3:0 reg:3:2 imm:8:1
add xb addr.disp32.xq            |          00 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.xq xb                   |          02 0b00 reg:3:1 reg:3:0
add addr.disp8.xq xb             |          02 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xq xb            |          02 0b10 reg:3:2 reg:3:1 imm:32:0

add xb64 addr.rd                 | 67    41 00 0b00 reg:3:0 reg:3:1
add xb64 addr.disp8.rd           | 67    41 00 0b01 reg:3:0 reg:3:2 imm:8:1
add xb64 addr.disp32.rd          | 67    41 00 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.rd xb64                 | 67    41 02 0b00 reg:3:1 reg:3:0
add addr.disp8.rd xb64           | 67    41 02 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rd xb64          | 67    41 02 0b10 reg:3:2 reg:3:1 imm:32:0
add xb64 addr.xd                 | 67    40 00 0b00 reg:3:0 reg:3:1
add xb64 addr.disp8.xd           | 67    40 00 0b01 reg:3:0 reg:3:2 imm:8:1
add xb64 addr.disp32.xd          | 67    40 00 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.xd xb64                 | 67    40 02 0b00 reg:3:1 reg:3:0
add addr.disp8.xd xb64           | 67    40 02 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xd xb64          | 67    40 02 0b10 reg:3:2 reg:3:1 imm:32:0
add xb64 addr.rq                 |       41 00 0b00 reg:3:0 reg:3:1
add xb64 addr.disp8.rq           |       41 00 0b01 reg:3:0 reg:3:2 imm:8:1
add xb64 addr.disp32.rq          |       41 00 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.rq xb64                 |       41 02 0b00 reg:3:1 reg:3:0
add addr.disp8.rq xb64           |       41 02 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rq xb64          |       41 02 0b10 reg:3:2 reg:3:1 imm:32:0
add xb64 addr.xq                 |       40 00 0b00 reg:3:0 reg:3:1
add xb64 addr.disp8.xq           |       40 00 0b01 reg:3:0 reg:3:2 imm:8:1
add xb64 addr.disp32.xq          |       40 00 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.xq xb64                 |       40 02 0b00 reg:3:1 reg:3:0
add addr.disp8.xq xb64           |       40 02 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xq xb64          |       40 02 0b10 reg:3:2 reg:3:1 imm:32:0

add xw addr.xd                   | 67 66    01 0b00 reg:3:0 reg:3:1
add xw addr.disp8.xd             | 67 66    01 0b01 reg:3:0 reg:3:2 imm:8:1
add xw addr.disp32.xd            | 67 66    01 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.xd xw                   | 67 66    03 0b00 reg:3:1 reg:3:0
add addr.disp8.xd xw             | 67 66    03 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xd xw            | 67 66    03 0b10 reg:3:2 reg:3:1 imm:32:0
add xw addr.rq                   |    66 41 01 0b00 reg:3:0 reg:3:1
add xw addr.disp8.rq             |    66 41 01 0b01 reg:3:0 reg:3:2 imm:8:1
add xw addr.disp32.rq            |    66 41 01 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.rq xw                   |    66 41 03 0b00 reg:3:1 reg:3:0
add addr.disp8.rq xw             |    66 41 03 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rq xw            |    66 41 03 0b10 reg:3:2 reg:3:1 imm:32:0
add xw addr.rd                   | 67 66 41 01 0b00 reg:3:0 reg:3:1
add xw addr.disp8.rd             | 67 66 41 01 0b01 reg:3:0 reg:3:2 imm:8:1
add xw addr.disp32.rd            | 67 66 41 01 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.rd xw                   | 67 66 41 03 0b00 reg:3:1 reg:3:0
add addr.disp8.rd xw             | 67 66 41 03 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rd xw            | 67 66 41 03 0b10 reg:3:2 reg:3:1 imm:32:0
add xw addr.xq                   |    66    01 0b00 reg:3:0 reg:3:1
add xw addr.disp8.xq             |    66    01 0b01 reg:3:0 reg:3:2 imm:8:1
add xw addr.disp32.xq            |    66    01 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.xq xw                   |    66    03 0b00 reg:3:1 reg:3:0
add addr.disp8.xq xw             |    66    03 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xq xw            |    66    03 0b10 reg:3:2 reg:3:1 imm:32:0

add xd addr.xd                   | 67       01 0b00 reg:3:0 reg:3:1
add xd addr.disp8.xd             | 67       01 0b01 reg:3:0 reg:3:2 imm:8:1
add xd addr.disp32.xd            | 67       01 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.xd xd                   | 67       03 0b00 reg:3:1 reg:3:0
add addr.disp8.xd xd             | 67       03 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xd xd            | 67       03 0b10 reg:3:2 reg:3:1 imm:32:0
add xd addr.xq                   |          01 0b00 reg:3:0 reg:3:1
add xd addr.disp8.xq             |          01 0b01 reg:3:0 reg:3:2 imm:8:1
add xd addr.disp32.xq            |          01 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.xq xd                   |          03 0b00 reg:3:1 reg:3:0
add addr.disp8.xq xd             |          03 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xq xd            |          03 0b10 reg:3:2 reg:3:1 imm:32:0
add xd addr.rd                   | 67    41 01 0b00 reg:3:0 reg:3:1
add xd addr.disp8.rd             | 67    41 01 0b01 reg:3:0 reg:3:2 imm:8:1
add xd addr.disp32.rd            | 67    41 01 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.rd xd                   | 67    41 03 0b00 reg:3:1 reg:3:0
add addr.disp8.rd xd             | 67    41 03 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rd xd            | 67    41 03 0b10 reg:3:2 reg:3:1 imm:32:0
add xd addr.rq                   |       41 01 0b00 reg:3:0 reg:3:1
add xd addr.disp8.rq             |       41 01 0b01 reg:3:0 reg:3:2 imm:8:1
add xd addr.disp32.rq            |       41 01 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.rq xd                   |       41 03 0b00 reg:3:1 reg:3:0
add addr.disp8.rq xd             |       41 03 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rq xd            |       41 03 0b10 reg:3:2 reg:3:1 imm:32:0

add xq addr.xd                   | 67    48 01 0b00 reg:3:0 reg:3:1
add xq addr.disp8.xd             | 67    48 01 0b01 reg:3:0 reg:3:2 imm:8:1
add xq addr.disp32.xd            | 67    48 01 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.xd xq                   | 67    48 03 0b00 reg:3:1 reg:3:0
add addr.disp8.xd xq             | 67    48 03 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xd xq            | 67    48 03 0b10 reg:3:2 reg:3:1 imm:32:0
add xq addr.xq                   |       48 01 0b00 reg:3:0 reg:3:1
add xq addr.disp8.xq             |       48 01 0b01 reg:3:0 reg:3:2 imm:8:1
add xq addr.disp32.xq            |       48 01 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.xq xq                   |       48 03 0b00 reg:3:1 reg:3:0
add addr.disp8.xq xq             |       48 03 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xq xq            |       48 03 0b10 reg:3:2 reg:3:1 imm:32:0
add xq addr.rd                   | 67    49 01 0b00 reg:3:0 reg:3:1
add xq addr.disp8.rd             | 67    49 01 0b01 reg:3:0 reg:3:2 imm:8:1
add xq addr.disp32.rd            | 67    49 01 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.rd xq                   | 67    49 03 0b00 reg:3:1 reg:3:0
add addr.disp8.rd xq             | 67    49 03 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rd xq            | 67    49 03 0b10 reg:3:2 reg:3:1 imm:32:0
add xq addr.rq                   |       49 01 0b00 reg:3:0 reg:3:1
add xq addr.disp8.rq             |       49 01 0b01 reg:3:0 reg:3:2 imm:8:1
add xq addr.disp32.rq            |       49 01 0b10 reg:3:0 reg:3:2 imm:32:1
add addr.rq xq                   |       49 03 0b00 reg:3:1 reg:3:0
add addr.disp8.rq xq             |       49 03 0b01 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rq xq            |       49 03 0b10 reg:3:2 reg:3:1 imm:32:0

add rb addr.xq.xq.scale          |       44 00 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rb addr.disp8.xq.xq.scale    |       44 00 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rb addr.disp32.xq.xq.scale   |       44 00 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xq.xq.scale rb          |       44 02 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xq.xq.scale rb    |       44 02 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xq.xq.scale rb   |       44 02 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rb addr.xq.rq.scale          |       46 00 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rb addr.disp8.xq.rq.scale    |       46 00 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rb addr.disp32.xq.rq.scale   |       46 00 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xq.rq.scale rb          |       46 02 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xq.rq.scale rb    |       46 02 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xq.rq.scale rb   |       46 02 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rb addr.xd.xd.scale          | 67    44 00 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rb addr.disp8.xd.xd.scale    | 67    44 00 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rb addr.disp32.xd.xd.scale   | 67    44 00 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xd.xd.scale rb          | 67    44 02 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xd.xd.scale rb    | 67    44 02 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xd.xd.scale rb   | 67    44 02 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rb addr.xd.rd.scale          | 67    46 00 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rb addr.disp8.xd.rd.scale    | 67    46 00 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rb addr.disp32.xd.rd.scale   | 67    46 00 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xd.rd.scale rb          | 67    46 02 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xd.rd.scale rb    | 67    46 02 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xd.rd.scale rb   | 67    46 02 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rb addr.rq.xq.scale          |       45 00 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rb addr.disp8.rq.xq.scale    |       45 00 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rb addr.disp32.rq.xq.scale   |       45 00 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rq.xq.scale rb          |       45 02 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.rq.xq.scale rb    |       45 02 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rq.xq.scale rb   |       45 02 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rb addr.rq.rq.scale          |       47 00 0b00 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2
add rb addr.disp8.rq.rq.scale    |       47 00 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rb addr.disp32.rq.rq.scale   |       47 00 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rq.rq.scale rb          |       47 02 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.rq.rq.scale rb    |       47 02 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rq.rq.scale rb   |       47 02 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rb addr.rd.xd.scale          | 67    45 00 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rb addr.disp8.rd.xd.scale    | 67    45 00 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rb addr.disp32.rd.xd.scale   | 67    45 00 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rd.xd.scale rb          | 67    45 02 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.rd.xd.scale rb    | 67    45 02 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rd.xd.scale rb   | 67    45 02 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rb addr.rd.rd.scale          | 67    47 00 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rb addr.disp8.rd.rd.scale    | 67    47 00 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rb addr.disp32.rd.rd.scale   | 67    47 00 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rd.rd.scale rb          | 67    47 02 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.rd.rd.scale rb    | 67    47 02 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rd.rd.scale rb   | 67    47 02 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0


add rd addr.xq.xq.scale          |       44 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rd addr.disp8.xq.xq.scale    |       44 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rd addr.disp32.xq.xq.scale   |       44 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xq.xq.scale rd          |       44 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xq.xq.scale rd    |       44 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xq.xq.scale rd   |       44 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rd addr.xq.rq.scale          |       46 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rd addr.disp8.xq.rq.scale    |       46 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rd addr.disp32.xq.rq.scale   |       46 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xq.rq.scale rd          |       46 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xq.rq.scale rd    |       46 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xq.rq.scale rd   |       46 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rd addr.xd.xd.scale          | 67    44 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rd addr.disp8.xd.xd.scale    | 67    44 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rd addr.disp32.xd.xd.scale   | 67    44 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xd.xd.scale rd          | 67    44 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xd.xd.scale rd    | 67    44 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xd.xd.scale rd   | 67    44 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rd addr.xd.rd.scale          | 67    46 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rd addr.disp8.xd.rd.scale    | 67    46 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rd addr.disp32.xd.rd.scale   | 67    46 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xd.rd.scale rd          | 67    46 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xd.rd.scale rd    | 67    46 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xd.rd.scale rd   | 67    46 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rd addr.rq.xq.scale          |       45 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rd addr.disp8.rq.xq.scale    |       45 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rd addr.disp32.rq.xq.scale   |       45 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rq.xq.scale rd          |       45 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.rq.xq.scale rd    |       45 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rq.xq.scale rd   |       45 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rd addr.rq.rq.scale          |       47 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rd addr.disp8.rq.rq.scale    |       47 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rd addr.disp32.rq.rq.scale   |       47 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rq.rq.scale rd          |       47 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.rq.rq.scale rd    |       47 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rq.rq.scale rd   |       47 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rd addr.rd.xd.scale          | 67    45 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rd addr.disp8.rd.xd.scale    | 67    45 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rd addr.disp32.rd.xd.scale   | 67    45 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rd.xd.scale rd          | 67    45 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.rd.xd.scale rd    | 67    45 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rd.xd.scale rd   | 67    45 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rd addr.rd.rd.scale          | 67    47 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rd addr.disp8.rd.rd.scale    | 67    47 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rd addr.disp32.rd.rd.scale   | 67    47 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rd.rd.scale rd          | 67    47 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.rd.rd.scale rd    | 67    47 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rd.rd.scale rd   | 67    47 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rw addr.xq.xq.scale          |    66 44 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rw addr.disp8.xq.xq.scale    |    66 44 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rw addr.disp32.xq.xq.scale   |    66 44 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xq.xq.scale rw          |    66 44 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xq.xq.scale rw    |    66 44 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xq.xq.scale rw   |    66 44 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rw addr.xq.rq.scale          |    66 46 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rw addr.disp8.xq.rq.scale    |    66 46 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rw addr.disp32.xq.rq.scale   |    66 46 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xq.rq.scale rw          |    66 46 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xq.rq.scale rw    |    66 46 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xq.rq.scale rw   |    66 46 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rw addr.xd.xd.scale          | 67 66 44 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rw addr.disp8.xd.xd.scale    | 67 66 44 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rw addr.disp32.xd.xd.scale   | 67 66 44 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xd.xd.scale rw          | 67 66 44 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xd.xd.scale rw    | 67 66 44 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xd.xd.scale rw   | 67 66 44 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rw addr.xd.rd.scale          | 67 66 46 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rw addr.disp8.xd.rd.scale    | 67 66 46 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rw addr.disp32.xd.rd.scale   | 67 66 46 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xd.rd.scale rw          | 67 66 46 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xd.rd.scale rw    | 67 66 46 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xd.rd.scale rw   | 67 66 46 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rw addr.rq.xq.scale          |    66 45 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rw addr.disp8.rq.xq.scale    |    66 45 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rw addr.disp32.rq.xq.scale   |    66 45 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rq.xq.scale rw          |    66 45 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.rq.xq.scale rw    |    66 45 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rq.xq.scale rw   |    66 45 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rw addr.rq.rq.scale          |    66 47 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rw addr.disp8.rq.rq.scale    |    66 47 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rw addr.disp32.rq.rq.scale   |    66 47 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rq.rq.scale rw          |    66 47 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.rq.rq.scale rw    |    66 47 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rq.rq.scale rw   |    66 47 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rw addr.rd.xd.scale          | 67 66 45 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rw addr.disp8.rd.xd.scale    | 67 66 45 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rw addr.disp32.rd.xd.scale   | 67 66 45 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rd.xd.scale rw          | 67 66 45 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.rd.xd.scale rw    | 67 66 45 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rd.xd.scale rw   | 67 66 45 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rw addr.rd.rd.scale          | 67 66 47 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rw addr.disp8.rd.rd.scale    | 67 66 47 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rw addr.disp32.rd.rd.scale   | 67 66 47 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rd.rd.scale rw          | 67 66 47 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.rd.rd.scale rw    | 67 66 47 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rd.rd.scale rw   | 67 66 47 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rq addr.xq.rq.scale          |       4e 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rq addr.disp8.xq.rq.scale    |       4e 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rq addr.disp32.xq.rq.scale   |       4e 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xq.rq.scale rq          |       4e 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xq.rq.scale rq    |       4e 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xq.rq.scale rq   |       4e 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rq addr.xq.xq.scale          |       4c 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rq addr.disp8.xq.xq.scale    |       4c 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rq addr.disp32.xq.xq.scale   |       4c 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xq.xq.scale rq          |       4c 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xq.xq.scale rq    |       4c 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xq.xq.scale rq   |       4c 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rq addr.xd.xd.scale          | 67    4c 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rq addr.disp8.xd.xd.scale    | 67    4c 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rq addr.disp32.xd.xd.scale   | 67    4c 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xd.xd.scale rq          | 67    4c 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xd.xd.scale rq    | 67    4c 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xd.xd.scale rq   | 67    4c 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rq addr.xd.rd.scale          | 67    4e 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rq addr.disp8.xd.rd.scale    | 67    4e 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rq addr.disp32.xd.rd.scale   | 67    4e 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xd.rd.scale rq          | 67    4e 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xd.rd.scale rq    | 67    4e 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xd.rd.scale rq   | 67    4e 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rq addr.rq.xq.scale          |       4d 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rq addr.disp8.rq.xq.scale    |       4d 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rq addr.disp32.rq.xq.scale   |       4d 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rq.xq.scale rq          |       4d 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.rq.xq.scale rq    |       4d 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rq.xq.scale rq   |       4d 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rq addr.rq.rq.scale          |       4f 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rq addr.disp8.rq.rq.scale    |       4f 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rq addr.disp32.rq.rq.scale   |       4f 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rq.rq.scale rq          |       4f 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0 imm:8:1
add addr.disp8.rq.rq.scale rq    |       4f 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rq.rq.scale rq   |       4f 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rq addr.rd.rd.scale          | 67    4f 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rq addr.disp8.rd.rd.scale    | 67    4f 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rq addr.disp32.rd.rd.scale   | 67    4f 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rd.rd.scale rq          | 67    4f 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0 imm:8:1
add addr.disp8.rd.rd.scale rq    | 67    4f 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rd.rd.scale rq   | 67    4f 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add rq addr.rd.xd.scale          | 67    4d 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add rq addr.disp8.rd.xd.scale    | 67    4d 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add rq addr.disp32.rd.xd.scale   | 67    4d 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rd.xd.scale rq          | 67    4d 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0 imm:8:1
add addr.disp8.rd.xd.scale rq    | 67    4d 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rd.xd.scale rq   | 67    4d 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xb addr.xd.xd.scale          | 67       00 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xb addr.disp8.xd.xd.scale    | 67       00 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xb addr.disp32.xd.xd.scale   | 67       00 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xd.xd.scale xb          | 67       02 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xd.xd.scale xb    | 67       02 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xd.xd.scale xb   | 67       02 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xb addr.xq.xq.scale          |          00 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xb addr.disp8.xq.xq.scale    |          00 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xb addr.disp32.xq.xq.scale   |          00 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xq.xq.scale xb          |          02 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xq.xq.scale xb    |          02 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xq.xq.scale xb   |          02 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xb64 addr.xd.xd.scale        | 67    40 00 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xb64 addr.disp8.xd.xd.scale  | 67    40 00 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xb64 addr.disp32.xd.xd.scale | 67    40 00 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xd.xd.scale xb64        | 67    40 02 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xd.xd.scale xb64  | 67    40 02 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xd.xd.scale xb64 | 67    40 02 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xb64 addr.xd.rd.scale        | 67    42 00 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xb64 addr.disp8.xd.rd.scale  | 67    42 00 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xb64 addr.disp32.xd.rd.scale | 67    42 00 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xd.rd.scale xb64        | 67    42 02 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xd.rd.scale xb64  | 67    42 02 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xd.rd.scale xb64 | 67    42 02 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xb64 addr.rd.xd.scale        | 67    41 00 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xb64 addr.disp8.rd.xd.scale  | 67    41 00 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xb64 addr.disp32.rd.xd.scale | 67    41 00 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rd.xd.scale xb64        | 67    41 02 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.rd.xd.scale xb64  | 67    41 02 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rd.xd.scale xb64 | 67    41 02 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xb64 addr.rd.rd.scale        | 67    43 00 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xb64 addr.disp8.rd.rd.scale  | 67    43 00 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xb64 addr.disp32.rd.rd.scale | 67    43 00 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rd.rd.scale xb64        | 67    43 02 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.rd.rd.scale xb64  | 67    43 02 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rd.rd.scale xb64 | 67    43 02 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xb64 addr.xq.xq.scale        |       40 00 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xb64 addr.disp8.xq.xq.scale  |       40 00 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xb64 addr.disp32.xq.xq.scale |       40 00 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xq.xq.scale xb64        |       40 02 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xq.xq.scale xb64  |       40 02 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xq.xq.scale xb64 |       40 02 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xb64 addr.xq.rq.scale        |       42 00 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xb64 addr.disp8.xq.rq.scale  |       42 00 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xb64 addr.disp32.xq.rq.scale |       42 00 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xq.rq.scale xb64        |       42 02 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xq.rq.scale xb64  |       42 02 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xq.rq.scale xb64 |       42 02 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xb64 addr.rq.xq.scale        |       41 00 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xb64 addr.disp8.rq.xq.scale  |       41 00 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xb64 addr.disp32.rq.xq.scale |       41 00 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rq.xq.scale xb64        |       41 02 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.rq.xq.scale xb64  |       41 02 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rq.xq.scale xb64 |       41 02 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xb64 addr.rq.rq.scale        |       43 00 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xb64 addr.disp8.rq.rq.scale  |       43 00 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xb64 addr.disp32.rq.rq.scale |       43 00 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rq.rq.scale xb64        |       43 02 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.rq.rq.scale xb64  |       43 02 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rq.rq.scale xb64 |       43 02 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xd addr.xd.xd.scale          | 67       01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xd addr.disp8.xd.xd.scale    | 67       01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xd addr.disp32.xd.xd.scale   | 67       01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xd.xd.scale xd          | 67       03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xd.xd.scale xd    | 67       03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xd.xd.scale xd   | 67       03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xd addr.xd.rd.scale          | 67    42 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xd addr.disp8.xd.rd.scale    | 67    42 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xd addr.disp32.xd.rd.scale   | 67    42 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xd.rd.scale xd          | 67    42 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xd.rd.scale xd    | 67    42 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xd.rd.scale xd   | 67    42 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xd addr.rd.xd.scale          | 67    41 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xd addr.disp8.rd.xd.scale    | 67    41 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xd addr.disp32.rd.xd.scale   | 67    41 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rd.xd.scale xd          | 67    41 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.rd.xd.scale xd    | 67    41 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rd.xd.scale xd   | 67    41 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xd addr.rd.rd.scale          | 67    43 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xd addr.disp8.rd.rd.scale    | 67    43 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xd addr.disp32.rd.rd.scale   | 67    43 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rd.rd.scale xd          | 67    43 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.rd.rd.scale xd    | 67    43 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rd.rd.scale xd   | 67    43 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xd addr.xq.xq.scale          |          01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xd addr.disp8.xq.xq.scale    |          01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xd addr.disp32.xq.xq.scale   |          01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xq.xq.scale xd          |          03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xq.xq.scale xd    |          03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xq.xq.scale xd   |          03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xd addr.xq.rq.scale          |       42 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xd addr.disp8.xq.rq.scale    |       42 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xd addr.disp32.xq.rq.scale   |       42 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xq.rq.scale xd          |       42 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xq.rq.scale xd    |       42 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xq.rq.scale xd   |       42 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xd addr.rq.xq.scale          |       41 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xd addr.disp8.rq.xq.scale    |       41 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xd addr.disp32.rq.xq.scale   |       41 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rq.xq.scale xd          |       41 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.rq.xq.scale xd    |       41 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rq.xq.scale xd   |       41 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xd addr.rq.rq.scale          |       43 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xd addr.disp8.rq.rq.scale    |       43 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xd addr.disp32.rq.rq.scale   |       43 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rq.rq.scale xd          |       43 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.rq.rq.scale xd    |       43 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rq.rq.scale xd   |       43 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xq addr.xd.xd.scale          | 67    48 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xq addr.disp8.xd.xd.scale    | 67    48 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xq addr.disp32.xd.xd.scale   | 67    48 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xd.xd.scale xq          | 67    48 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xd.xd.scale xq    | 67    48 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xd.xd.scale xq   | 67    48 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xq addr.xd.rd.scale          | 67    4a 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xq addr.disp8.xd.rd.scale    | 67    4a 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xq addr.disp32.xd.rd.scale   | 67    4a 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xd.rd.scale xq          | 67    4a 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xd.rd.scale xq    | 67    4a 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xd.rd.scale xq   | 67    4a 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xq addr.rd.xd.scale          | 67    49 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xq addr.disp8.rd.xd.scale    | 67    49 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xq addr.disp32.rd.xd.scale   | 67    49 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rd.xd.scale xq          | 67    49 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.rd.xd.scale xq    | 67    49 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rd.xd.scale xq   | 67    49 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xq addr.rd.rd.scale          | 67    4b 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xq addr.disp8.rd.rd.scale    | 67    4b 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xq addr.disp32.rd.rd.scale   | 67    4b 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rd.rd.scale xq          | 67    4b 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.rd.rd.scale xq    | 67    4b 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rd.rd.scale xq   | 67    4b 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xq addr.xq.xq.scale          |       48 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xq addr.disp8.xq.xq.scale    |       48 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xq addr.disp32.xq.xq.scale   |       48 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xq.xq.scale xq          |       48 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xq.xq.scale xq    |       48 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xq.xq.scale xq   |       48 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xq addr.xq.rq.scale          |       4a 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xq addr.disp8.xq.rq.scale    |       4a 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xq addr.disp32.xq.rq.scale   |       4a 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xq.rq.scale xq          |       4a 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xq.rq.scale xq    |       4a 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xq.rq.scale xq   |       4a 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xq addr.rq.xq.scale          |       49 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xq addr.disp8.rq.xq.scale    |       49 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xq addr.disp32.rq.xq.scale   |       49 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rq.xq.scale xq          |       49 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.rq.xq.scale xq    |       49 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rq.xq.scale xq   |       49 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xq addr.rq.rq.scale          |       4b 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xq addr.disp8.rq.rq.scale    |       4b 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xq addr.disp32.rq.rq.scale   |       4b 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rq.rq.scale xq          |       4b 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.rq.rq.scale xq    |       4b 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rq.rq.scale xq   |       4b 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xw addr.xd.xd.scale          | 67 66    01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xw addr.disp8.xd.xd.scale    | 67 66    01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xw addr.disp32.xd.xd.scale   | 67 66    01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xd.xd.scale xw          | 67 66    03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xd.xd.scale xw    | 67 66    03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xd.xd.scale xw   | 67 66    03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xw addr.xd.rd.scale          | 67 66 42 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xw addr.disp8.xd.rd.scale    | 67 66 42 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xw addr.disp32.xd.rd.scale   | 67 66 42 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xd.rd.scale xw          | 67 66 42 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xd.rd.scale xw    | 67 66 42 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xd.rd.scale xw   | 67 66 42 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xw addr.rd.rd.scale          | 67 66 43 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xw addr.disp8.rd.rd.scale    | 67 66 43 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xw addr.disp32.rd.rd.scale   | 67 66 43 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rd.rd.scale xw          | 67 66 43 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.rd.rd.scale xw    | 67 66 43 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rd.rd.scale xw   | 67 66 43 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xw addr.rd.xd.scale          | 67 66 41 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xw addr.disp8.rd.xd.scale    | 67 66 41 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xw addr.disp32.rd.xd.scale   | 67 66 41 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rd.xd.scale xw          | 67 66 41 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.rd.xd.scale xw    | 67 66 41 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rd.xd.scale xw   | 67 66 41 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xw addr.xq.xq.scale          |    66    01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xw addr.disp8.xq.xq.scale    |    66    01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xw addr.disp32.xq.xq.scale   |    66    01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xq.xq.scale xw          |    66    03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xq.xq.scale xw    |    66    03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xq.xq.scale xw   |    66    03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xw addr.xq.rq.scale          |    66 42 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xw addr.disp8.xq.rq.scale    |    66 42 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xw addr.disp32.xq.rq.scale   |    66 42 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.xq.rq.scale xw          |    66 42 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.xq.rq.scale xw    |    66 42 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.xq.rq.scale xw   |    66 42 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xw addr.rq.xq.scale          |    66 41 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xw addr.disp8.rq.xq.scale    |    66 41 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xw addr.disp32.rq.xq.scale   |    66 41 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rq.xq.scale xw          |    66 41 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.rq.xq.scale xw    |    66 41 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rq.xq.scale xw   |    66 41 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0

add xw addr.rq.rq.scale          |    66 43 01 0b00 reg:3:0 0b100 scale:2:3 reg:3:2 reg:3:1
add xw addr.disp8.rq.rq.scale    |    66 43 01 0b01 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:8:1
add xw addr.disp32.rq.rq.scale   |    66 43 01 0b10 reg:3:0 0b100 scale:2:4 reg:3:3 reg:3:2 imm:32:1
add addr.rq.rq.scale xw          |    66 43 03 0b00 reg:3:3 0b100 scale:2:2 reg:3:1 reg:3:0
add addr.disp8.rq.rq.scale xw    |    66 43 03 0b01 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:8:0
add addr.disp32.rq.rq.scale xw   |    66 43 03 0b10 reg:3:4 0b100 scale:2:3 reg:3:2 reg:3:1 imm:32:0
