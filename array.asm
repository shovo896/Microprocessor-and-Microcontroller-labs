; Program: Sort an array in ascending order (Bubble Sort)
; Emulator: emu8086

org 100h          ; COM file starting address

.data
array db 25, 10, 45, 5, 30   ; unsorted array
arr_size db $-array          ; calculate array size automatically

.code
start:
    mov cx, arr_size         ; outer loop counter (array size)
    dec cx                   ; n-1 passes

outer_loop:
    push cx                  ; save outer counter

    mov si, 0                ; index = 0
    mov cx, arr_size
    dec cx                   ; inner loop counter (n-1)

inner_loop:
    mov al, [array + si]     ; load current element
    mov bl, [array + si + 1] ; load next element

    cmp al, bl               ; compare current with next
    jbe no_swap              ; if AL <= BL, no swap needed

    ; swap
    mov [array + si], bl
    mov [array + si + 1], al

no_swap:
    inc si                   ; move to next index
    loop inner_loop           ; repeat until end of array

    pop cx                   ; restore outer counter
    loop outer_loop           ; repeat passes

; Program end - halt
mov ah, 4ch
int 21h
