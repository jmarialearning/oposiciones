#include <stdio.h>
int main(){
    int unsigned a, b;
    puts("Introduce un número entero:");
    scanf("%u", &a);
    puts("Introduce otro número:");
    scanf("%u", &b);
    int resultado = a + b;
    printf("El resultado es %u\n", resultado);
}
