; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H
.DATA

STR DB "PLEASE ENTER THE CHARACTER: $"
STR2 DB "THE ENTERED CHARACTER IS: $"

.CODE

    MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX
    
    LEA DX, STR
    MOV AH, 9
    INT 21H
    
    
    MOV AH, 1
    INT 21H
    MOV BL, AL
    
    MOV AH, 2
    MOV DL, 10
    INT 21H
    MOV DL, 13
    INT 21H
    
    LEA DX, STR2
    MOV AH, 9
    INT 21H
    
    
    MOV AH, 2
    MOV DL, BL
    SUB DL, 20H
    INT 21H
    
    MAIN ENDP
    
    
 END MAIN
    
    

ret

