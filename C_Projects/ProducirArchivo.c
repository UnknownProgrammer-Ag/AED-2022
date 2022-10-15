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
        for (i = 0; i < 12; i++)
        {
            printf("Region del Pais (NEA;NOA;CUYO,PATAG,CENTRO)\n");
            scanf("%s", &RegCasos.Region);
            printf("Rango de Edad de la Denuncia (A,B,C,D,E)\n");
            scanf(" %c", &RegCasos.RangoEdad);
            printf("Denuncias\n");
            scanf("%d", &RegCasos.Denuncias);
            printf("Mes \n");
            scanf("%d", &RegCasos.Mes);
            fwrite(&RegCasos, sizeof(RegCasos), 1, AbusosMujer);
        }
        fclose(AbusosMujer);
    }
    system("pause");
    return 0;
}