      ******************************************************************
      * Hacer un programa para ingresar por teclado la cantidad de horas
      * trabajadas por un operario y el valor que se le paga por hora
      * trabajada y listar por pantalla el sueldo que le corresponda.
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Ejercicio1.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  HORAS-TRABAJADAS pic 9(3).
       01  VALOR-HOLA pic 9(3).
       01  SUELDO pic 9(6).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Ingrese la cantidad de horas trabajadas: ".
            ACCEPT HORAS-TRABAJADAS.
            DISPLAY "Ingrese el valor de la hora laboral".
            ACCEPT VALOR-HOLA.
            MULTIPLY HORAS-TRABAJADAS by VALOR-HOLA GIVING SUELDO.
            DISPLAY "El sueldo a pagar es de: "SUELDO.

            STOP RUN.
       END PROGRAM Ejercicio1.
