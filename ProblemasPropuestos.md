# EJERCICIO 1

## CUENTA REGRESIVA DESDE N HASTA 0 

### Pruebas

```asm
@0       
D=M       
@1        
M=D       

(LOOP)
    @0    
    D=M   
    @END  
    D;JEQ 

    @1    
    A=M   
    M=D   
    @1    
    M=M+1 

    @0    
    D=M   
    D=D-1 
    @0    
    M=D   

    @LOOP 
    0;JMP 

(END)
    @END  
    0;JMP 
        
```