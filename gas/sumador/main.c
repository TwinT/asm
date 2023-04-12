#include<stdio.h>
#include "funcs.h"

int main(){
    int a[] = {1,2,3,4,5,6,7,8,9,10};
    int b[] = {4,6,7,8,9,-1,7,-1,5,-10};
    sumar_c(a,b,10);

    for (int i=0; i < 10; ++i){
        printf("a[%d] = %d\n", i, a[i]);
    }
}