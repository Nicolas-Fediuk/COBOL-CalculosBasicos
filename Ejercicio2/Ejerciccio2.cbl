      ******************************************************************
      *Una concesionaria de autos paga a los vendedores un sueldo fijo de $ 15.000 más $ 2.000
      *de premio por cada auto vendido. Hacer un programa que permita ingresar por teclado la
      *cantidad de autos vendidos por un vendedor y luego informar por pantalla el sueldo total a
      *pagar.
      *Ejemplo. Si la cantidad de autos vendidos fuera 4 entonces el sueldo total a pagar es de
      *$ 23.000
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Ejercicio2.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  SUELDO-FIJO pic 9(5) value 15000.
       01  PREMIO pic 9(5) value 2000.
       01  AUTOS pic 9(3).
       01  RESULTADO pic 9(7).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           display "Ingrese la cantidad de autos vendidos:".
           ACCEPT AUTOS.

           COMPUTE RESULTADO = SUELDO-FIJO + (AUTOS*PREMIO)

           DISPLAY "Total a pagar: "RESULTADO.
           STOP RUN.

       END PROGRAM Ejercicio2.
