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
       01  sum1y2 pic 9(7).
       01  semana3 pic 9(6).
       01  sum2y3 pic 9(7).
       01  semana4 pic 9(6).
       01  sumaTotal pic 9(7).
       01  Porcentaje pic 9(3) value 100.
       01  PorceSemana1 pic 9(7).
       01  PorceSemana2 pic 9(7).
       01  PorceSemana3 pic 9(7).
       01  PorceSemana4 pic 9(7).
       01  PorcRecauSemana1 pic 9(2).
       01  PorcRecauSemana2 pic 9(2).
       01  PorcRecauSemana3 pic 9(2).
       01  PorcRecauSemana4 pic 9(2).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            DISPLAY "Ingrese los ingresos de la semana 1:".
            ACCEPT semana1.
            DISPLAY "Ingrese los ingresos de la semana 2:".
            ACCEPT semana2.
            DISPLAY "Ingrese los ingresos de la semana 3:".
            ACCEPT semana3.
            DISPLAY "Ingrese los ingresos de la semana 4:".
            ACCEPT semana4.

            add semana1 to semana2 GIVING sum1y2.
            add sum1y2 to semana3 GIVING sum2y3.
            add sum2y3 to semana4 GIVING sumaTotal.

            MULTIPLY semana1 by Porcentaje GIVING PorceSemana1.
            MULTIPLY semana2 by Porcentaje GIVING PorceSemana2.
            MULTIPLY semana3 by Porcentaje GIVING PorceSemana3.
            MULTIPLY semana4 by Porcentaje GIVING PorceSemana4.

            DIVIDE PorceSemana1 by sumaTotal GIVING PorcRecauSemana1.
            DIVIDE PorceSemana2 by sumaTotal GIVING PorcRecauSemana2.
            DIVIDE PorceSemana3 by sumaTotal GIVING PorcRecauSemana3.
            DIVIDE PorceSemana4 by sumaTotal GIVING PorcRecauSemana4.

            DISPLAY "Porcentaje de ingresos de la semana 1: "
            PorcRecauSemana1"%".
            DISPLAY "Porcentaje de ingresos de la semana 2: "
            PorcRecauSemana2"%".
            DISPLAY "Porcentaje de ingresos de la semana 3: "
            PorcRecauSemana3"%".
            DISPLAY "Porcentaje de ingresos de la semana 4: "
            PorcRecauSemana4"%".

            STOP RUN.
       END PROGRAM Ejercicio5.
