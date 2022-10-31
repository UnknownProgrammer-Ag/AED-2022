#include <stdio.h>
#include <stdlib.h>

int m, n, resultado;

int ACKER(int m, int n)
{
    return (m == 0 && n >= 0) ? n + 1 : (m > 0 && n == 0) ? ACKER(m - 1, 1)
                                                          : ACKER(m - 1, ACKER(m, n - 1));
}

int main(void)
{
    printf("Ingrese 'm'\n");
    scanf("%d", &m);
    printf("Ingrese 'n'\n");
    scanf("%d", &n);
    resultado = ACKER(m, n);
    printf("El resultado es: %d\n", resultado);
    system("pause");
    return 0;
}