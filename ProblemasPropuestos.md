# EJERCICIO 1

## SUMA DE LOS NÚMEROS PARES HASTA M

@0
D=M          
@N
M=D          
@1
M=0          
@2
M=0          

@N
D=M
@i
D=D-M        
@END
D;JLT        

@i
D=M
@2
D=D%2
@ADD_SUMM
D;JEQ        

@i
M=M+1
@LOOP
0;JMP

@i
D=M
@1
M=D+M        
@i
M=M+1        
@LOOP
0;JMP

(END)
@END
0;JMP        
