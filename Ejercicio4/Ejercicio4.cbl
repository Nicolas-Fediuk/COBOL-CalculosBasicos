      ******************************************************************
      * Un comercio vende tres marcas de alfajores distintas A, B y C.
      *Hacer un programa para ingresar por teclado la cantidad de alfajores vendidos de cada una de
      *las tres marcas y luego se informe el porcentaje de ventas para cada una de ellas.
      *Ejemplo. Si se ingresa 100, 25 y 75 como cantidades vendidas entonces el programa calculará
      *e informará A: 50%, B: 12,50% y C: 37,50%.
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Ejercicio4.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  ALFAJOR1 pic 9(4).
       01  ALFAJOR2 pic 9(4).
       01  ALFAJOR3 pic 9(4).
       01  TOTAL-VENDIDOS pic 9(6).
       01  TOTAL-POR-ALFAJOR1 pic 9(2)V9(2).
       01  TOTAL-POR-ALFAJOR2 pic 9(2)V9(2).
       01  TOTAL-POR-ALFAJOR3 pic 9(2)V9(2).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            DISPLAY "Ingrese la cantidad vendida del alfajor1".
            ACCEPT ALFAJOR1.
            DISPLAY "Ingrese la cantidad vendida del alfajor2".
            ACCEPT ALFAJOR2.
            DISPLAY "Ingrese la cantidad vendida del alfajor2".
            ACCEPT ALFAJOR3.

            COMPUTE TOTAL-VENDIDOS = ALFAJOR1 + ALFAJOR2 + ALFAJOR3.

            COMPUTE TOTAL-POR-ALFAJOR1 = (ALFAJOR1 * 100) /
            TOTAL-VENDIDOS.

            COMPUTE TOTAL-POR-ALFAJOR2 = (ALFAJOR2 * 100) /
            TOTAL-VENDIDOS.

            COMPUTE TOTAL-POR-ALFAJOR3 = (ALFAJOR3 * 100) /
            TOTAL-VENDIDOS.


            DISPLAY "Porcentaje de ventas del alfajor1: "
            TOTAL-POR-ALFAJOR1"%".
            DISPLAY "Porcentaje de ventas del alfajor1: "
            TOTAL-POR-ALFAJOR2"%".
            DISPLAY "Porcentaje de ventas del alfajor1: "
            TOTAL-POR-ALFAJOR3"%".

            STOP RUN.
       END PROGRAM Ejercicio4.
