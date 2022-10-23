       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALIFICACION.
       DATA DIVISION.
       WORKING-SOTORAGE SECTION.
       01 WSC-CONSTANTES.
           05 WSC-SENIORITY.
                10 WSC-SENIOR       PIC X(06) VALUE 'SENIOR'.
                10 WSC-SEMISR       PIC X(06) VALUE 'SEMISR'.
                10 WSC-JUNIOR       PIC X(06) VALUE 'JUNIOR'.

       01 WSC-VARIABLES.
           05 WS-POSTULANTES.
                10 WSV-POSTU1.
                    15 WSV-NOMBRE1        PIC X(5)  VALUE 'PEDRO'.
                    15 WSV-EXPERIENCIA1   PIC 9(02) VALUE 01.
                10 WSV-POSTU2.
                    15 WSV-NOMBRE2        PIC X(05) VALUE 'SOFIA'.
                    15 WSV-EXPERIENCIA2   PIC 9(02) VALUE 07.
                10 WSV-POSTU3.
                    15 WSV-NOMBRE3        PIC X(05) VALUE 'LALA'.
                    15 WSV-EXPERIENCIA3   PIC 9(2)  VALUE 04.

            05 WSV-POSTU-AUX.
                10 WSV-NOMBRE-AUX         PIC X(5).
                10 WSV-EXPERIENCIA-AUX    PIC 9(02).
                    88 WSS-EXP-JUNIOR       VALUE 0 1 2.
                    88 WSS-EXP-SENISR       VALUE 3 4 5.

       PROCEDURE DIVISION.

       00-CONTROL.
       PERFORM 10-INICIO.
       PERFORM 20-PROCESO.
       STOP RUN.
       00-CONTROL-END.
       EXIT.

       10-INICIO.
        DISPLAY 'CALIFICACION ALUMNADO'.
        INITIALIZE WSV-POSTU-AUX.
       10-INICIO-END.
       EXIT.

       20-PROCESO.

           MOVE WSV-POSTU1 TO WSV-POSTU-AUX.

           EVALUATE TRUE
           WHEN WSS-EXP-JUNIOR
               DISPLAY WSV-NOMBRE-AUX 'EL POSTULANTE ES: ' WSC-JUNIOR
               DISPLAY 'SU SUELDO ES DE $120000,-'
           WHEN WSS-EXP-SEMISR-AUX
              DISPLAY WSV-NOMBRE-AUX 'EL POSTULANTE ES: ' WSC-SEMISR
              DISPLAY 'SU SUELDO ES DE $180000,-'
           WHEN OTHER
              DISPLAY WSV-NOMBRE-AUX 'EL POSTULANTE ES: ' WSC-SENIOR
              DISPLAY 'SU SUELDO ES DE $220000,-'
           END-EVALUATE.

           DISPLAY '--------------------------------------------------'.
           INITIALIZE WSV-POSTU-AUX.
       20-PROCESO-END.
       EXIT.
