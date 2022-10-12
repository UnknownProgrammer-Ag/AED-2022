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

int main()
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
        for (i = 0; i < 30; i++)
        {
        }
    }
}