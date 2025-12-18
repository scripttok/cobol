       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULAR.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NUMERO1   PIC 9(2)V99.
       01 WS-NUMERO2   PIC 9(2)V99.
       01 WS-OPERACAO  PIC X.
       01 WS-RESULTADO PIC ZZZZZZZZZZZZZZZ.99.
       01 WS-CONTINUAR PIC X.
       
       PROCEDURE DIVISION.
       INICIO.
           PERFORM MENU-PRINCIPAL
           STOP RUN.
       
       MENU-PRINCIPAL.
           DISPLAY '========= VAMOS CALCULAR =========='.
           DISPLAY 'Digite o primeiro numero : ' WITH NO ADVANCING.
           ACCEPT WS-NUMERO1.
           DISPLAY 'Agora digite a operacao que deseja fazer : '
           WITH NO ADVANCING.
           ACCEPT WS-OPERACAO.
           DISPLAY 'Agora digite o segundo numero : ' WITH NO ADVANCING.
           ACCEPT WS-NUMERO2.
       
           PERFORM CALCULO
       
           DISPLAY '=================================='.
           DISPLAY 'O Resultado e ' WS-RESULTADO.
       
           DISPLAY 'Deseja continuar digite (S/N)...'.
           ACCEPT WS-CONTINUAR.
       
           IF WS-CONTINUAR = 'S' OR WS-CONTINUAR = 's'
               PERFORM MENU-PRINCIPAL
           END-IF.
       
       CALCULO.
           EVALUATE WS-OPERACAO
               WHEN '+'
                    COMPUTE WS-RESULTADO = WS-NUMERO1 + WS-NUMERO2
               WHEN '-'
                    COMPUTE WS-RESULTADO = WS-NUMERO1 - WS-NUMERO2
               WHEN '*'
                    COMPUTE WS-RESULTADO = WS-NUMERO1 * WS-NUMERO2
               WHEN '/'
                    IF WS-NUMERO2 = 0
                        MOVE 0 TO WS-RESULTADO
                        DISPLAY 'DIVISAO POR ZERO NAO PERMITIDA'
                    ELSE
                        COMPUTE WS-RESULTADO = WS-NUMERO1 / WS-NUMERO2
                    END-IF
               WHEN OTHER
                    DISPLAY 'OPERACAO INVALIDA'
           END-EVALUATE.
       