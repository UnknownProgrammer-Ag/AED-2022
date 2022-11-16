#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct CasosNacionales
{
  char Region[6];
  char RangoEdad;
  int Denuncias;
  int Mes;
} CasosNacionales;

int RegionMay, EdadMay, ResgEdad, ResgReg, i, j;
long int Matriz[6][6] = {0, 0};

void TransEdad(char R)
{
  switch (R)
  {
  case 'A':
    i = 0;
    break;
  case 'B':
    i = 1;
    break;
  case 'C':
    i = 2;
    break;
  case 'D':
    i = 3;
    break;
  case 'E':
    i = 4;
    break;
  };
};

char *ObtRegion(int y)
{
  switch (y)
  {
  case 0:
    return ("NEA");
  case 1:
    return ("NOA");
  case 2:
    return ("CUYO");
  case 3:
    return ("CENTRO");
  case 4:
    return ("PATAG");
  }
}
char *ObtRange(int x)
{
  switch (x)
  {
  case 0:
    return ("de entre 1 a 14");
  case 1:
    return ("de entre 15 a 24");
  case 2:
    return ("de entre 25 a 34");
  case 3:
    return ("de entre 35 a 50");
  case 4:
    return ("desde mayores de 50");
  }
}

void TransRegion(char *RG)
{
  if (strcmp(RG, "NEA") == 0)
  {
    j = 0;
  }
  else
  {
    if (strcmp(RG, "NOA") == 0)
    {
      j = 1;
    }
    else
    {
      if (strcmp(RG, "CUYO") == 0)
      {
        j = 2;
      }
      else
      {
        if (strcmp(RG, "CENTRO") == 0)
        {
          j = 3;
        }
        else
        {
          if (strcmp(RG, "PATAG") == 0)
          {
            j = 4;
          }
        }
      }
    }
  }
}

int main()
{

  FILE *AbusosMujer;

  struct CasosNacionales RegCasos;

  AbusosMujer = fopen("CasosNacionalesMujer.dat", "rb");
  if (AbusosMujer == NULL)
  {
    printf("Error: No se pudo leer el fichero CasosNacionalesMujer.dat.\n");
  }
  else
  {

    while (!feof(AbusosMujer)) // CARGA
    {
      fread(&RegCasos, sizeof(RegCasos), 1, AbusosMujer);

      TransEdad(RegCasos.RangoEdad);
      TransRegion(RegCasos.Region);
      Matriz[5][j] = Matriz[5][j] + RegCasos.Denuncias;
      Matriz[i][5] = Matriz[i][5] + RegCasos.Denuncias;
      Matriz[i][j] = Matriz[i][j] + RegCasos.Denuncias;
    }
    fclose(AbusosMujer); // Cerramos porque ya no  lo usaremos

    RegionMay = 0;
    EdadMay = 0;

    for (i = 0; i < 4; i++) // BUSQUEDA DE MAYOR CASOS POR EDAD
    {
      if (EdadMay < Matriz[i][6])
      {
        EdadMay = Matriz[i][6];
        ResgEdad = i;
      }
      for (j = 0; j < 4; j++)
      {
        if (RegionMay < Matriz[6][j])
        {
          RegionMay = Matriz[6][j];
          ResgReg = j;
        }
      }
      char *Region = ObtRegion(ResgReg);
      char *Range = ObtRange(ResgEdad);

      printf("La region con la mayor cantidad de denuncias es: %s ", Region, " con un total de %d ", RegionMay, " denuncias");
      printf("El rango de edad con la mayor cantidad de denuncias es: %s ", Range, " con un total de %d ", EdadMay, " denuncias");
    }
    return 0;
  }
