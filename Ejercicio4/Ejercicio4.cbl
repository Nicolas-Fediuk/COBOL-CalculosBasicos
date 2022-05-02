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
       01  alfajor1 pic 9(4).
       01  alfajor2 pic 9(4).
       01  TotalVendidos1 pic 9(6).
       01  alfajor3 pic 9(4).
       01  TotalVendidos2 pic 9(6).
       01  Porcentaje pic 9(3) value 100.
       01  Calculo1Alfa1 pic 9(6).
       01  Calculo1Alfa2 pic 9(6).
       01  Calculo1Alfa3 pic 9(6).
       01  TotalPorcenAlfa1 pic 9(2).
       01  TotalPorcenAlfa2 pic 9(2).
       01  TotalPorcenAlfa3 pic 9(2).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Ingrese la cantidad vendida del alfajor1".
            ACCEPT alfajor1.
            DISPLAY "Ingrese la cantidad vendida del alfajor2".
            ACCEPT alfajor2.
            DISPLAY "Ingrese la cantidad vendida del alfajor2".
            ACCEPT alfajor3.

            add alfajor1 to alfajor2 GIVING TotalVendidos1.
            add TotalVendidos1 to alfajor3 GIVING TotalVendidos2.

            MULTIPly alfajor1 by Porcentaje GIVING Calculo1Alfa1.
            MULTIPly alfajor2 by Porcentaje GIVING Calculo1Alfa2.
            MULTIPly alfajor3 by Porcentaje GIVING Calculo1Alfa3.

            DIVIDE Calculo1Alfa1 by TotalVendidos2 GIVING
            TotalPorcenAlfa1.
            DIVIDE Calculo1Alfa2 by TotalVendidos2 GIVING
            TotalPorcenAlfa2.
            DIVIDE Calculo1Alfa3 by TotalVendidos2 GIVING
            TotalPorcenAlfa3.

            DISPLAY "Porcentaje de ventas del alafajor1: "
            TotalPorcenAlfa1.
            DISPLAY "Porcentaje de ventas del alafajor1: "
            TotalPorcenAlfa2.
            DISPLAY "Porcentaje de ventas del alafajor1: "
            TotalPorcenAlfa3.

            STOP RUN.
       END PROGRAM Ejercicio4.
