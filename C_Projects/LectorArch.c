#include <stdio.h>
#include <stdlib.h>

typedef struct CasosNacionales
{
    char Region[6];
    char RangoEdad;
    int Denuncias;
    int Mes;
} CasosNacionales;

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
        // while (fscanf(AbusosMujer, "%d", &RegCasos) != EOF)
        int i;
        for (i = 0; i < 5; i++)
        {
            fseek(AbusosMujer, i * sizeof(RegCasos), SEEK_SET);
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
            printf("Denuncias: %d \n", RegCasos.Denuncias);
            printf("Mes: %d \n", RegCasos.Mes);
            printf("-----------------------------------\n");
        }
        fclose(AbusosMujer);
    }
    system("pause");
    return (0);
}