/Ejercicio 1
@0
    D=M           
    @R0
    M=D           

    @1
    D=M          
    @R1
    M=D           

    @2
    M=0           
    @R2
    M=0           


(LOOP)
    @R1
    D=M           
    @END
    D;JEQ         

    @R0
    D=M          
    @2
    M=D+M         

    @R1
    MD=M-1        
    @LOOP
    0;JMP         

(END)
    @END
    0;JMP

/Ejercicio 2
@0
D=M           
@R0
M=D           

@1
D=M           
@R1
M=D           

@2
D=M           
@R2
M=D           

@R0
D=M           
@R1
D=D+M         

@R2
D=D-M         

@LOOP
D;JGE         

@3
M=0           
@END
0;JMP         

(LOOP)
@3
M=D           

(END)
@END
0;JMP

// Ejercicio 3
@0
D=M           
@R0
M=D           

@1
D=M           
@R1
M=D          

@2
D=M           
@R2
M=D           

@0
D=M           
@R0
M=D           

@1
D=M           
@R1
M=D           

@3
M=0           

@4
M=0           

@LOOP
@R1
D=M           
@END_LOOP
D;JEQ         

@R0
D=M           
@3
M=M+D         
@R1
MD=M-1        
@LOOP
0;JMP         

(END_LOOP)

@3
D=M          
@R2
D=D-M        
@4
M=D          

@4
D=M           
@5
D=D-5         
@GT
D;JGT         

@5
M=0           
@END
0;JMP         

(GT)
@5
M=1           

(END)
@END
0;JMP



