       IDENTIFICATION DIVISION.
       PROGRAM-ID. BASICO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 WS-NOME PIC X(20).
       01 WS-IDADE PIC 9(2).
       01 WS-SALARIO PIC 9(2)V99.

       PROCEDURE DIVISION.
       INICIO.
       *> entrada de dados
           DISPLAY 'Digite seu nome : ' WITH NO ADVANCING.
           ACCEPT WS-NOME.

           DISPLAY 'Digite sua idade : ' WITH NO ADVANCING.
           ACCEPT WS-IDADE.

           DISPLAY 'Digite seu salário : ' WITH NO ADVANCING.
           ACCEPT WS-SALARIO.

           DISPLAY '==============================='.
           DISPLAY 'DADOS INFORMADOS :'.
           DISPLAY 'Nome :' WS-NOME.
           DISPLAY 'Idade :' WS-IDADE.
           DISPLAY 'Salário :' WS-SALARIO.

           STOP RUN.