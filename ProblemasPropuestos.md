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

Explicación del programa:

El programa comienza cargando el valor de RAM[0] en el registro D y luego lo almacena en RAM[1].
En el loop, el programa verifica si el valor de RAM[0] es 0. Si es así, salta a la etiqueta END.
Si el valor no es 0, almacena el valor actual de RAM[0] en la dirección apuntada por RAM[1], luego incrementa la dirección en RAM[1] para la próxima iteración.
Decrementa el valor en RAM[0] y vuelve al inicio del loop.
Cuando el valor en RAM[0] es 0, el programa salta a END, donde entra en un bucle infinito para detener la ejecución.