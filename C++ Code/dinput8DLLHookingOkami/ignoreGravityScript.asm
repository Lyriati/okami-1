.code
ALIGN 16

ignoreGravityScript PROC

        test[modulebase + 0xB6B0A6], 2
        jnz skip
        subss xmm1, xmm0
        skip :
        addss xmm1, [rsi + 0xE4C]
        jmp[jmpBackAddress]

ignoreGravityScript ENDP

END