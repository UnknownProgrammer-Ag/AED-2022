#include <stdio.h>
#include <stdlib.h>
#include <time.h>

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

    AbusosMujer = fopen("CasosNacionalesMujer.dat", "wb");
    if (AbusosMujer == NULL)
    {
        printf("Error: No se pudo crear el fichero CasosNacionalesMujer.dat.\n");
    }
    else
    {
        srand(time(0));
        int lower = 1, upper = 12;
        int i;
        for (i = 0; i < 5; i++)
        {
            printf("Region del Pais (NEA;NOA;CUYO,PATAG,CENTRO)\n");
            scanf("%s", &RegCasos.Region);
            printf("Rango de Edad de la Denuncia (A,B,C,D,E)\n");
            scanf(" %c", &RegCasos.RangoEdad);
            RegCasos.Denuncias = (((i + 1) * 584) % 110);
            if (i < 12)
            {
                RegCasos.Mes = i + 1;
            }
            else
            {
                RegCasos.Mes = (rand() % (upper - lower + 1)) + lower;
            }
            fwrite(&RegCasos, sizeof(RegCasos), 1, AbusosMujer);
        }
        fclose(AbusosMujer);
    }
    system("pause");
    return 0;
}