       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULADORA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 WS-NUMERO1 PIC 9(5)V99.
       01 WS-NUMERO2 PIC 9(5)V99.
       01 WS-OPERACAO PIC X.
       01 WS-RESULTADO PIC ZZZZZZZZ.99.
       01 WS-CONTINUAR PIC X.



       PROCEDURE DIVISION.
       INICIO.
           PERFORM MENU-PRINCIPAL.
           STOP RUN.

       MENU-PRINCIPAL.
           DISPLAY'Digite o primeiro numero : ' WITH NO ADVANCING.
           ACCEPT WS-NUMERO1
           DISPLAY'Digite a operac?o +, -, *, /: ' WITH NO ADVANCING.
           ACCEPT WS-OPERACAO.
           DISPLAY'Digite o segundo numero : ' WITH NO ADVANCING.
           ACCEPT WS-NUMERO2.

           PERFORM CALCULAR.

           DISPLAY '==================================='.
           DISPLAY 'O Resultado da equa�?o...' WS-RESULTADO.
           DISPLAY 'Deseja continuar ?(S/N)' WITH NO ADVANCING.
           ACCEPT WS-CONTINUAR.

           IF WS-CONTINUAR = 'S' OR WS-CONTINUAR = 's'
               PERFORM MENU-PRINCIPAL
           END-IF.

       CALCULAR.

           IF WS-OPERACAO = '+'
               ADD WS-NUMERO1 TO WS-NUMERO2 GIVING WS-RESULTADO
           ELSE IF WS-OPERACAO = '-'
               SUBTRACT WS-NUMERO2 FROM WS-NUMERO1 GIVING WS-RESULTADO
           ELSE IF WS-OPERACAO = '*'
               MULTIPLY WS-NUMERO1 BY WS-NUMERO2 GIVING WS-RESULTADO
           ELSE IF WS-OPERACAO = '/'
               IF WS-NUMERO2 = 0
                   DISPLAY 'ERROR O NUMERO NÃO É VALIDO'
                   MOVE 0 TO WS-RESULTADO
               ELSE
                   DIVIDE WS-NUMERO1 BY WS-NUMERO2 GIVING WS-RESULTADO
               END-IF
           ELSE
               DISPLAY 'ERRO OPERAÇÃO INVALIDA'
               MOVE 0 TO WS-RESULTADO
           END-IF.