#include <stdio.h>
#include <stdlib.h>

typedef enum
{
    NEA,
    NOA,
    PATAG,
    CENTRO,
    CUYO
} Zona;

typedef enum
{
    A,
    B,
    C,
    D,
    E
} Edad;

struct CasosNacionales
{
    Zona Region;
    Edad RangoEdad;
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
            switch (RegCasos.Region)
            {
            case 0:
                printf("NEA\n");
                return 1;
            case 1:
                printf("NOA\n");
                return 2;
            case 4:
                printf("CUYO\n");
                return 3;
            case 2:
                printf("PATAG\n");
                return 4;
            case 3:
                printf("CENTRO\n");
                return 5;
            default:
                printf("ERROR NO TIENE REGION\n");
                break;
            }
            switch (RegCasos.RangoEdad)
            {
            case 0:
                printf("1 a 14\n");
                return 1;
            case 1:
                printf("15 a 24\n");
                return 2;
            case 2:
                printf("25 a 34\n");
                return 3;
            case 3:
                printf("35 a 50\n");
                return 4;
            case 4:
                printf(" Mayor de 50\n");
                return 5;
            default:
                printf("No se registro rango de edad\n");
                break;
            }
            printf("Denuncias: %d \n", RegCasos.Denuncias);
            printf("Mes: %d \n", RegCasos.Mes);
            printf("-----------------------------------\n");
        }
        fclose(AbusosMujer);
    }
    system("pause");
    return (0);
}