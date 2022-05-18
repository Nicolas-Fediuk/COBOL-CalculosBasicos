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
       01  SEMANA1 pic 9(6).
       01  SEMANA2 pic 9(6).
       01  SEMANA3 pic 9(6).
       01  SEMANA4 pic 9(6).
       01  TOTAL-RECAUDADO pic 9(7).
       01  TOTAL-PROMEDIO pic 9(6).
       01  TOTAL-POR-SEMANA1 pic 9(2)V9(2).
       01  TOTAL-POR-SEMANA2 pic 9(2)V9(2).
       01  TOTAL-POR-SEMANA3 pic 9(2)V9(2).
       01  TOTAL-POR-SEMANA4 pic 9(2)V9(2).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Ingrese lo recaudado de la semana 1".
           ACCEPT SEMANA1.
           DISPLAY "Ingrese lo recaudado de la semana 2".
           ACCEPT SEMANA2.
           DISPLAY "Ingrese lo recaudado de la semana 3".
           ACCEPT SEMANA3.
           DISPLAY "Ingrese lo recaudado de la semana 4".
           ACCEPT SEMANA4.

           COMPUTE TOTAL-RECAUDADO = SEMANA1 + SEMANA2 + SEMANA3 +
           SEMANA4.

           COMPUTE TOTAL-PROMEDIO = TOTAL-RECAUDADO / 4.

           COMPUTE TOTAL-POR-SEMANA1 = (SEMANA1 * 100) / TOTAL-RECAUDADO
           .

           COMPUTE TOTAL-POR-SEMANA2 = (SEMANA2 * 100) / TOTAL-RECAUDADO
           .

           COMPUTE TOTAL-POR-SEMANA3 = (SEMANA3 * 100) / TOTAL-RECAUDADO
           .

           COMPUTE TOTAL-POR-SEMANA4 = (SEMANA4 * 100) / TOTAL-RECAUDADO
           .

           DISPLAY "Promedio recaudado al mes: $"TOTAL-PROMEDIO.

           DISPLAY "Porcentaje recaudado de la semana 1: "
           TOTAL-POR-SEMANA1"%".

           DISPLAY "Porcentaje recaudado de la semana 2: "
           TOTAL-POR-SEMANA2"%".

           DISPLAY "Porcentaje recaudado de la semana 3: "
           TOTAL-POR-SEMANA3"%".

           DISPLAY "Porcentaje recaudado de la semana 4: "
           TOTAL-POR-SEMANA4"%".

            STOP RUN.
       END PROGRAM Ejercicio5.
