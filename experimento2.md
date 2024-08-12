### EXPERIMENTO 2

## OBJETIVO

Hacer que en pantalla se muestren 3 lineas en diferentes posciciones

![image](https://github.com/user-attachments/assets/34eeeb19-404b-4320-a67e-98b4ba2ed425)

primer intento, solo aparecieron dos lineas y al añadir la segunda, bajó un poco en la pantalla

## EXPLICACIÓN

Se Configuró el puntero y el contador para cada línea horizontal.

Se Configuró el puntero de la pantalla y el contador para cada línea horizontal.
Se usa un bucle para encender los píxeles horizontalmente hasta completar la línea. Se mueve el puntero y decrementa el contador en cada iteración.

Se usan direcciones de pantalla diferentes (16384, 8192, 12288) para dibujar las líneas en distintas posiciones verticales.

Después de que todas las líneas hayan sido dibujadas, el programa entra en un bucle infinito (END).
