.MODEL SMALL
.STACK 100H

.DATA
    msg DB 'Hello, world!$'

.CODE
MAIN PROC
    ; initialize DS
    MOV AX, @DATA
    MOV DS, AX

    ; print the string
    MOV AH, 09H     ; DOS function: print string
    LEA DX, msg
    INT 21H

    ; exit to DOS
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
