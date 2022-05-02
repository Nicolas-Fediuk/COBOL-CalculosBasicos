      ******************************************************************
      * Hacer un programa para ingresar por teclado la cantidad de asientos disponibles en un
      *avión y la cantidad de pasajes ocupados y luego calcular e informar el porcentaje de ocupación
      *y el porcentaje de no ocupación del mismo.
      *Ejemplo si el avión tiene 200 asientos disponibles y se vendieron 80 pasajes, el porcentaje de
      *ocupación que se informará será de un 40% y el porcentaje de no ocupación será de un 60%
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Ejercicio3.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  AsientosDisponibles pic 9(3).
       01  AsientosOcupados pic 9(3).
       01  total_asien_dis pic 9(3).
       01  Porcentaje pic 9(3) VALUE 100.
       01  CalculoPorcenDis pic 9(5).
       01  CalculoPorcenOcu pic 9(5).
       01  PorcentajeOcupacion pic 9(2).
       01  PorcentajeDisponible pic 9(2).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Ingrese la cantidad de asientos disponible total".
           ACCEPT AsientosDisponibles.
           Display "Ingrese la cantidad de asientos vendidos".
           ACCEPT AsientosOcupados.
           SUBTRACT AsientosDisponibles from AsientosOcupados GIVING
           total_asien_dis.
           MULTIPLY Porcentaje by total_asien_dis GIVING
           CalculoPorcenDis.
           MULTIPLY Porcentaje by AsientosOcupados GIVING
           CalculoPorcenOcu.
           DIVIDE CalculoPorcenOcu by AsientosDisponibles GIVING
           PorcentajeOcupacion.
           DIVIDE CalculoPorcenDis by AsientosDisponibles GIVING
           PorcentajeDisponible.
           DISPLAY "Porcentaje disponible: "PorcentajeDisponible"%".
           DISPLAY "Porcentaje ocupado: "PorcentajeOcupacion"%".
           STOP RUN.
       END PROGRAM Ejercicio3.
