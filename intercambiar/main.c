#include <stdio.h>
#include <string.h>
#include "intercambiar.h"





int main() {
    char cadena[] = "Orga del compu";

    intercambiar(cadena);

    printf("%s\n", cadena);

    return 0;
}


int calcularLongitud_str(char cadena[]) {
    int longitud = 0;

    while (cadena[longitud] != '\0') {
        longitud++;
    }

    return longitud;
}


void intercambiar_aux(char cadena[]){
    int longitud = strlen(cadena);
    int ini = 0;
    int fin = longitud - 1;

    while (ini < fin) {
        char aux1 = cadena[ini];
        char aux2 = cadena[fin];
        cadena[ini] = aux2;
        cadena[fin] = aux1;

        ini++;
        fin--;
    }
}