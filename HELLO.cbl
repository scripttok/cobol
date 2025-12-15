       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-MENSAGEM PIC X(30) VALUE 'Bem-vindo ao mundo COBOL!'.
       01 WS-NOME     PIC X(20).
       
       PROCEDURE DIVISION.
           PERFORM INICIO
           STOP RUN.
       INICIO.
           DISPLAY "Digite seu nome:".
           ACCEPT WS-NOME.
           DISPLAY "Ola !, " WS-NOME "!".
           DISPLAY WS-MENSAGEM.