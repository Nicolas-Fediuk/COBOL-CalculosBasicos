      ******************************************************************
      * Hacer un programa para que un comercio ingrese por teclado la recaudación en pesos para
      *cada una de las cuatros semanas del mes. El programa debe listar la recaudación promedio por
      *semana y el porcentaje de recaudación por semana.
      *Ejemplo. Si se ingresa $ 1600, $ 1200, $ 4800 y $ 400 se listara como recaudación promedio
      *$ 2000 y como porcentajes por semana: 20%, 15%, 60% y 5%.
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Ejercicio5.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  semana1 pic 9(6).
       01  semana2 pic 9(6).
       01  semana3 pic 9(6).
       01  semana4 pic 9(6).
       01  sumSem1ySem2 pic 9(7).
       01  sumSem2ySem3 pic 9(7).
       01  TotalRecaudado pic 9(7).
       01  TotalPromedio pic 9(6).
       01  PorcentajeSem1 pic 9(7).
       01  PorcentajeSem2 pic 9(7).
       01  PorcentajeSem3 pic 9(7).
       01  PorcentajeSem4 pic 9(7).
       01  TotalPorcentajeSem1 pic 9(2).
       01  TotalPorcentajeSem2 pic 9(2).
       01  TotalPorcentajeSem3 pic 9(2).
       01  TotalPorcentajeSem4 pic 9(2).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Ingrese lo recaudado de la semana 1".
           ACCEPT semana1.
           DISPLAY "Ingrese lo recaudado de la semana 2".
           ACCEPT semana2.
           DISPLAY "Ingrese lo recaudado de la semana 3".
           ACCEPT semana3.
           DISPLAY "Ingrese lo recaudado de la semana 4".
           ACCEPT semana4.

           add semana1 to semana2 GIVING sumSem1ySem2.
           add sumSem1ySem2 to semana3 GIVING sumSem2ySem3.
           add sumSem2ySem3 to semana4 GIVING TotalRecaudado.

           DIVIDE TotalRecaudado by 4 GIVING TotalPromedio.

           MULTIPLY semana1 by 100 GIVING PorcentajeSem1.
           MULTIPLY semana2 by 100 GIVING PorcentajeSem2.
           MULTIPLY semana3 by 100 GIVING PorcentajeSem3.
           MULTIPLY semana4 by 100 GIVING PorcentajeSem4.

           DIVIDE PorcentajeSem1 by TotalRecaudado GIVING
           TotalPorcentajeSem1.
           DIVIDE PorcentajeSem2 by TotalRecaudado GIVING
           TotalPorcentajeSem2.
           DIVIDE PorcentajeSem3 by TotalRecaudado GIVING
           TotalPorcentajeSem3.
           DIVIDE PorcentajeSem4 by TotalRecaudado GIVING
           TotalPorcentajeSem4.

           DISPLAY "Promedio recaudado al mes: "TotalPromedio.
           DISPLAY "Porcentaje recaudado de la semana 1: "
           TotalPorcentajeSem1"%".
           DISPLAY "Porcentaje recaudado de la semana 2: "
           TotalPorcentajeSem2"%".
           DISPLAY "Porcentaje recaudado de la semana 3: "
           TotalPorcentajeSem3"%".
           DISPLAY "Porcentaje recaudado de la semana 4: "
           TotalPorcentajeSem4"%".

            STOP RUN.
       END PROGRAM Ejercicio5.
