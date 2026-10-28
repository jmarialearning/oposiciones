#include <stdio.h>
unsigned int factorial(unsigned int n){
    unsigned int resultado = 1;
    if (n == 0 || n == 1){
        return resultado;
    }
    else{
        for (int i = 1; i <= n; i++) {
            resultado *= i;
        }
    }
    return resultado;
}
int main(){
    unsigned int num;
    printf("Introduce el argumento del factorial: ");
    scanf("%d", &num);
    printf("El factorial es %d\n", factorial(num));
    return 0;
}
