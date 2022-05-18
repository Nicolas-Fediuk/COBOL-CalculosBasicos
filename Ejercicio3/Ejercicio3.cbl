      ******************************************************************
      * Hacer un programa para ingresar por teclado la cantidad de asientos disponibles en un
      *avi�n y la cantidad de pasajes ocupados y luego calcular e informar el porcentaje de ocupaci�n
      *y el porcentaje de no ocupaci�n del mismo.
      *Ejemplo si el avi�n tiene 200 asientos disponibles y se vendieron 80 pasajes, el porcentaje de
      *ocupaci�n que se informar� ser� de un 40% y el porcentaje de no ocupaci�n ser� de un 60%
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Ejercicio3.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  ASIENTOS-DIS pic 9(3).
       01  ASIENTOS-OCU pic 9(3).
       01  TOTAL-ASIENTOS-DIS pic 9(3).
       01  PORCENTAJE pic 9(3) VALUE 100.
       01  PORCENTAJE-OCUPACION pic 9(2).
       01  PORCENTAJE-DISPONIBLE pic 9(2).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           DISPLAY "Ingrese la cantidad de asientos disponible total".
           ACCEPT ASIENTOS-DIS.
           Display "Ingrese la cantidad de asientos vendidos".
           ACCEPT ASIENTOS-OCU.

           SUBTRACT ASIENTOS-DIS from ASIENTOS-OCU GIVING
           TOTAL-ASIENTOS-DIS.

           COMPUTE PORCENTAJE-OCUPACION = (PORCENTAJE*ASIENTOS-OCU)/
           ASIENTOS-DIS.

           COMPUTE PORCENTAJE-DISPONIBLE = (TOTAL-ASIENTOS-DIS*
           PORCENTAJE) / ASIENTOS-DIS.

           DISPLAY "Porcentaje disponible: "PORCENTAJE-DISPONIBLE"%".
           DISPLAY "Porcentaje ocupado: "PORCENTAJE-OCUPACION"%".

           STOP RUN.
       END PROGRAM Ejercicio3.
