#include <stdio.h>

/*int main()
{
    int x, y, ope;
    printf("Enter the value of x: ");
    scanf("%d", &x);
    printf("Enter the value of y: ");
    scanf("%d", &y);
    printf("Enter the operation (1=Suma,2=Resta,3=Multiplicar,4=Dividir,5=Modulo): ");
    scanf("%d", &ope);

    int result;
    switch (ope)
    {
    case 1:
        result = x + y;
        break;
    case 2:
        result = x - y;
        break;
    case 3:
        result = x * y;
        break;
    case 4:
        result = x / y;
        break;
    case 5:
        result = x % y;
        break;
    }
    printf("Resultado de la operacion %d es: %d\n", ope, result);
    return 0;
}*/

int main()
{
    int ent, aux, sum;
    printf("Enter the value of ent: ");
    scanf("%d", &ent);
    aux = ent;
    sum = 0;
    while (aux != 0)
    {
        sum += aux % 10;
        aux /= 10;
    }
    printf("Resultado de la operacion %d es: %d\n", ent, sum);
    return 0;
}