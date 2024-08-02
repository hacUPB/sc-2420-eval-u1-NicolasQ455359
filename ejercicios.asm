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

