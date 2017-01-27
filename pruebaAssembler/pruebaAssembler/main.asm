;Date: 19/01/2017
;By : Alejandro Martinez , Ricardo Cefalo.

TITLE Cache memory project
.386
.model flat , stdcall
.stack 4096

Include \Irvine\Irvine32.inc
Includelib \Irvine\Irvine32.lib
Include \Irvine\Macros.inc
Includelib \Irvine\Kernel32.lib
includelib \Irvine\User32.lib


.data
	;Defino el menu de mi programa
    menuProgram BYTE "SElECCIONE UNA OPCION", 0dh, 0ah , 0dh , 0ah,
    "1. Modulo 1: Ubicacion de bloques",  0dh, 0ah ,
    "2. Modulo 2: Simulador de reemplazo de bloques",  0dh, 0ah ,
	"3. SALIR" , 0dh, 0ah , 0
	entry_Data DB ? , 0
	ExitProcess PROTO , dwExitCode: DWORD
 .code 
 
	;***************** MAIN **********************
	;		    Procedimiento principal          *
	;***************** MAIN **********************

    main PROC 
		CALL printMenu
		CALL InDataUser ;es donde el usuario ingresa su opcion. 
		invoke ExitProcess , 0   
    main ENDP

	;**********************PRINTMENU***************************************************
	;*         PRECONDICION: no recibe nada.                                          *
	;*         POSTCONDICION: muestra el menu de usuario.                             *
	;**********************PRINTMENU***************************************************
	printMenu PROC 
		mov EDX , OFFSET menuProgram
        CALL WriteString ; imprime lo que se encuentre en el registro EDX
		Exit
	printMenu ENDP

	;**********************INDATAUSER**************************************************
	;*         PRECONDICION: no recibe nada.                                          *
	;*         POSTCONDICION: recibe los datos de entrada de usuario                  *
	;**********************INDATAUSER**************************************************
	InDataUser PROC 
		
	InDataUser ENDP
END main