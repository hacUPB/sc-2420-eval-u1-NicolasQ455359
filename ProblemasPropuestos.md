# EJERCICIO 1

## INTENTO DE HACER SUMA DE LOS NUMEROS PARES HASTA N
```asm
@0
D=M         
@N
M=D         
@1
M=0         
@2
M=0         


(LOOP)
@N
D=M
@i
D=D-M  
@END
D;JLT  


@i
D=M
@IS_ODD
D=D-1  
@CHECK_PARITY
D;JGE


@i
D=M
@1
M=M+D 
@i
M=M+1    
@LOOP
0;JMP

(CHECK_PAR)
@i
D=M
@1
D=D-1    
@IS_PAR
D;JLT  

@i
D=M
@1
M=M+D  
@i
M=M+1  
@LOOP
0;JMP

(IS_PAR)
@END
0;JMP 

(END)
@END
0;JMP
```

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

## Explicación del programa:

El programa comienza cargando el valor de RAM[0] en el registro D y luego lo almacena en RAM[1].

En el loop, el programa verifica si el valor de RAM[0] es 0. Si es así, salta a la etiqueta END.

Si el valor no es 0, almacena el valor actual de RAM[0] en la dirección apuntada por RAM[1], luego incrementa la dirección en RAM[1] para la próxima iteración.

Decrementa el valor en RAM[0] y vuelve al inicio del loop.

Cuando el valor en RAM[0] es 0, el programa salta a END, donde entra en un bucle infinito para detener la ejecución.

## Como lo resolví: 

Cargué el valor de RAM[0] (N) en el registro D y lo almacené en RAM[1].

Bucle de Cuenta Regresiva:

Almacené el valor de RAM[0] en la dirección actual apuntada por RAM[1].

Se incrementa la dirección en RAM[1] para la siguiente posición.

Se Decrementa el valor en RAM[0] y repetí el proceso hasta que RAM[0] llegara a 0.

Usé una etiqueta END para saltar a un bucle infinito cuando RAM[0] alcanzara 0, terminando así el programa.
