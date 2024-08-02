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

// Explicación
En este ejercicio, se implementa una suma acumulativa mediante el uso de bucles y condicionales:

1. Inicialización:
   - Se cargan los valores desde las posiciones de memoria 0 y 1 en los registros temporales R0 y R1.
   - Se inicializan la posición 2 y R2 en 0 para almacenar el resultado acumulativo.

2. Bucle de Suma acumulativa:
   - Se utiliza la etiqueta (LOOP) para marcar el inicio del bucle.
   - Condicional: Se verifica si R1 (contador) es igual a 0; si es así, salta a la etiqueta (END).
   - Si R1 no es 0, se suma el valor de R0 al acumulador en la posición 2.
   - Se decrementa el valor en R1 y se repite el bucle.

3. Terminación del Bucle:
   - Cuando R1 llega a 0, el programa salta a la etiqueta (END), finalizando el bucle.
   - Se utiliza un bucle infinito para detener el programa.

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

// Explicación
/*
En este ejercicio, se realizan las siguientes operaciones:

1. Inicialización:
   - Los valores desde las posiciones de memoria 0, 1 y 2 se cargan en los registros temporales R0, R1 y R2 respectivamente.

2. Suma y resta:
   - Se suman los valores de R0 y R1 y se almacena el resultado en D.
   - Luego, se resta el valor de R2 del resultado previo almacenado en D.

3. Condicional:
   - Se verifica si el resultado almacenado en D es mayor o igual a 0. Si es así, salta a la etiqueta LOOP.

4. Resultado:
   - Si el resultado es negativo, se almacena 0 en la posición de memoria 3 y se salta al final.
   - Si el resultado es positivo, se almacena el valor de D en la posición de memoria 3.

