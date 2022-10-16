#include <stdio.h>
#include <stdlib.h>

struct CasosNacionales
{
    char Region[6];
    char RangoEdad[1];
    int Denuncias[2];
    int Mes;
};

int main(void)
{
    FILE *AbusosMujer;

    struct CasosNacionales RegCasos;

    AbusosMujer = fopen("CasosNacionalesMujer.dat", "wb");
    if (AbusosMujer == NULL)
    {
        printf("Error: No se pudo crear el fichero CasosNacionalesMujerd.dat.\n");
    }
    else
    {
        int i;
        int num;
        for (i = 0; i < 12; i++)
        {
            printf("Region del Pais (NEA;NOA;CUYO,PATAG,CENTRO)\n");
            scanf("%s", &RegCasos.Region);
            printf("%s \n", &RegCasos.Region);
            printf("Rango de Edad de la Denuncia (A,B,C,D,E)\n");
            scanf(" %c", &RegCasos.RangoEdad);
            printf(" %c \n", &RegCasos.RangoEdad);
            printf("Denuncias\n");
            scanf("%u", RegCasos.Denuncias);
            printf("%u \n", &RegCasos.Denuncias);
            RegCasos.Mes = i + 1;
            printf("%d \n", &RegCasos.Mes);
            fwrite(&RegCasos, sizeof(RegCasos), 1, AbusosMujer);
        }
        fclose(AbusosMujer);
    }
    system("pause");
    return 0;
}