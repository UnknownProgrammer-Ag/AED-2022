#include <stdio.h>
#include <stdlib.h>

struct CasosNacionales
{
    char Region[3];
    char RangoEdad;
    unsigned int Denuncias;
    int Mes[2];
};

int main(void)
{
    FILE *AbusosMujer;

    struct CasosNacionales RegCasos;

    AbusosMujer = fopen("CasosNacionalesMujer.dat", "rb");

    if (AbusosMujer == NULL)
    {
        printf("Error: No sea a podido leer el archivo CasosNacionalesMujer.dat\n");
    }
    else
    {
        while (!feof(AbusosMujer))
        {
            fread(&RegCasos, sizeof(RegCasos), 1, AbusosMujer);

            /* La imprimimos. */
            printf("REGION: %s \n", RegCasos.Region);
            switch (RegCasos.RangoEdad)
            {
            case 'A':
                printf("1 a 14\n");
                return 1;
            case 'B':
                printf("15 a 24\n");
                return 2;
            case 'C':
                printf("25 a 34\n");
                return 3;
            case 'D':
                printf("35 a 50\n");
                return 4;
            case 'E':
                printf(" Mayor de 50\n");
                return 5;
            default:
                printf("No se registro rango de edad\n");
                break;
            }
            printf("Denuncias: %u \n", RegCasos.Denuncias);
            printf("Mes: %d \n", RegCasos.Mes);
            printf("-----------------------------------\n");
        }
        fclose(AbusosMujer);
    }
    system("pause");
    return (0);
}