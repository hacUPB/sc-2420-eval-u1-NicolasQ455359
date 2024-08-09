### EXPERIMENTO 1

El primer experimento se trata de hacer una cruz que este en la mitad de la pantalla y que divida la pantalla en 4 partes iguales

![image](https://github.com/user-attachments/assets/5b956bdb-f8dc-4158-b2ae-246c4714ebfb)

Se observa que la linea vertical esta correcta, mientras que la linea horizontal tiene un grosor muy bajo

## EXPLICACION: 

Línea vertical (columna 256):

-La línea vertical se dibuja en la columna 256 recorriendo todas las filas.
-El bucle incrementa la dirección de la pantalla por 32 para avanzar una fila cada vez.

Línea horizontal (fila 128):

-Se utiliza un contador para avanzar el puntero hasta la fila 128, incrementando la dirección de la pantalla en múltiplos de 32.
-Luego se dibuja la línea horizontal encendiendo todos los píxeles en esa fila.

