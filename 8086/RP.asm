.MODEL SMALL
.STACK
.DATA
MSG1 DB 10,13,"ENTER THE STRING $"
MSG2 DB 10,13,"ENTERED STRING IS $"
STR1 DB 20 DUP('$')
.CODE
START:
MOV AX,@DATA
MOV DS,AX
LEA DX,MSG1
MOV AH,09H
INT 21H
MOV AH,3FH
MOV DX,OFFSET STR1
INT 21H
LEA DX,MSG2
MOV AH,09H
INT 21H
LEA DX,STR1
MOV AH,09H
INT 21H
END
