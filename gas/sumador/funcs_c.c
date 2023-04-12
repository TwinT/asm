#include "funcs.h"

void sumar_c(int *a, int*b, int length){
    for (int i=0; i<length; ++i){
        a[i]+= b[i];
    }
}