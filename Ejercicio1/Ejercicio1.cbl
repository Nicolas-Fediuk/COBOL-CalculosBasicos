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
       01  HorasTrabajadas pic 9(3).
       01  ValorHoras pic 9(3).
       01  Sueldo pic 9(6).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Ingrese la cantidad de horas trabajadas: ".
            ACCEPT HorasTrabajadas.
            DISPLAY "Ingrese el valor de la hora laboral".
            ACCEPT ValorHoras.
            MULTIPLY HorasTrabajadas by ValorHoras GIVING sueldo.
            DISPLAY "El sueldo a pagar es de: "Sueldo.

            STOP RUN.
       END PROGRAM Ejercicio1.
