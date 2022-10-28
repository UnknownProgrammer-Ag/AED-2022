#include <stdio.h>
#include <stdlib.h>

typedef struct CasosNacionales // cambie la estructura del registro para que coincidiera con el programa que lo crea
{
  char Region[6];
  char RangoEdad;
  int Denuncias;
  int Mes;
} CasosNacionales;

/* file of struct sal_abus{ se usa struct  nomas
   char region ["NEA", "NOA" , "Cuyo","Patagonica", "Centro"]
   char edad ['A', 'B', 'C', 'D', 'E']
   int denuncia [6]
   int mes[1...12]
 }*/

int RegionMay, EdadMay, resguardopos, i, j;
long int Matriz[6][6] = {0, 0}; // Inicializar a 0 a la vez que declara
/*int TransfEdad(){
  switch reg.edad{
    case 'A' : i= 1;
    case 'B' : i= 2;
    case 'C' : i= 3;
    case 'D' : i= 4;
    case 'E' : i= 5;
  } ;
};

int TransRegion(){
   switch   {
    case 'NEA': j=1;
    case 'NOA': j=2;
    case 'Cuyo': j=3;
    case 'Patagonica': j=4;
    case 'Centro': j=5 ;
  } ;
}  ;*/

// archivo de informacion : archivo de sal_abus // esto lo hacemos en el main
// reg : sal_abus

int main()
{
  // file of struct (sal_abus){} //*esta parte estoy confundido para armar la parte de estructura archivo con forma de registro*//
  FILE *AbusosMujer;

  struct CasosNacionales RegCasos;

  AbusosMujer = fopen("CasosNacionalesMujer.dat", "rb"); // Lee el archivo
  if (AbusosMujer == NULL)
  {
    printf("Error: No se pudo crear el fichero CasosNacionalesMujer.dat.\n");
  }
  else
  {
    // void matriz(int a[6][6])
    while
      EOF(file de informacion)
      { /*aca va el archivo que armamos*/
        i = int TransEdad();
        j = int TransRegion();
        matriz[6][j] = matriz[6][j] + Reg.Denuncias;
        matriz[i][6] = matriz[i][6] + Reg.Denuncias;
        matriz[i][j] = matriz[i][j] + Reg.Denuncias;
      }
    RegionMay = 0;
    EdadMay = 0;
    for (i = 0; i < 6; i++)
    {
      if EdadMay
        < matriz[i][6]
        {
          EdadMay = matriz[i][6];
          resguardopos = i;
        }
    }
    for (j = 0; j < 6; j++)
      do
      {
        if EdadMay
          < matriz[6][j]
          {
          RegionMay:
            = matriz[6][j];
          }
      }
    printf("la mayor cantidad de denuncias en la region es:", RegionMay, "y el mayor rango de edad es:", resguardopos, " con:", EdadMay, "\n");
  }
  return 0;
}

/* esto va para la parte de registro
 sal_abus=registro
  region: (NEA,NOA,Cuyo,Patagonica,Centro)
  edad: {'A', 'B', 'C', 'D', 'E'}
  denuncia: N(6)
  mes:(1...12)
fin registro
archivo de informacion : archivo de sal_abus
reg: sal_abus */
