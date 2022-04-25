@echo off
title Consola de ayuda 
color a
echo iniciado . . . 
pause
goto :Menu
  
:Menu
 color a
 cls
 set opcion=
  
 echo                                   Consola de comando para ayuda de System Tools beta 1.1
 echo.
 echo para obtener ayuda de los 
 echo comandos escriba "?"
 echo.
  
 set /p opcion=S\ 
  
 if (%opcion%) == (1) goto Re1
 if (%opcion%) == (?) goto Re2
 if (%opcion%) == (exit) goto Salir
 if (%opcion%) == (123) goto Re123
 if (%opcion%) == (2) goto ST
 if (%opcion%) == (3) goto UH
 if (%opcion%) == (Start) goto Manual
  
 echo.
 echo ERROR, Tipo SINTAXIS_ERROR, ID de error 123.
 echo X ERROR comando irreconocible X
 echo Solucion seleccione unos de los comandos 
 echo indicados.
 pause
 goto Menu
  
:Re1
 cls
 start Licencia.vbs
 pause
 goto Menu
  
:Re2
 cls
 echo                                              Ayuda de comandos
 echo.
 echo aqui podra ver los comandos existentes 
 echo y sus funciones.
 echo. 
 echo ? - abre el menu de ayuda para comandos.
 echo 1 - abre la licencia.
 echo 2 - abre System Tools.
 echo 3 - abre el Host de usuarios.
 echo 123 - proporciona informacion sobre el
 echo error indicado por la ID. 
 echo exit - cierra el programa.
 echo Start - inicia el modo manual de System Tools
 pause
 goto Menu
   
:Salir
 Exit

:Re123
cls
echo El error "SINTAXIS_ERROR" es producido
echo caundo se ingresa un comando inexixtente,
echo esto hace que la consola no pueda
echo procesar la sintaxis por lo que manda un
echo error critico.
pause
goto Menu

:ST
start System_Tools.exe
goto Menu

:UH
start UsersHost.exe
goto Menu







:Manual 
color a
cls
set opciion=

color a
echo usted a escogido usar System Tools de 
echo manera manual, usted podra ejecutar 
echo todo pero sin la necesidad de una
echo interfaz grafica. 
echo si desea regresar al modo normal de la
echo consola escriba "R".
echo para obtener ayuda de los comandos 
echo escriba "?"
echo.
set /p opciion=S\ 

if (%opciion%) == (?) goto help
if (%opciion%) == (1) goto Li
if (%opciion%) == (R) goto Restart
if (%opciion%) == (exit) goto ex
if (%opciion%) == (2) goto S.T.
if (%opciion%) == (3) goto U.H.
if (%opciion%) == (4) goto S.T.1
if (%opciion%) == (5) goto S.T.2
if (%opciion%) == (6) goto M.M
if (%opciion%) == (123) goto E123


 echo.
 echo ERROR, Tipo SINTAXIS_ERROR, ID de error 123.
 echo X ERROR comando irreconocible X
 echo Solucion seleccione unos de los comandos 
 echo indicados.
 pause
 goto Manual

:help
 cls
 echo                                              Ayuda de comandos
 echo.
 echo aqui podra ver los comandos existentes 
 echo y sus funciones.
 echo. 
 echo ? - abre el menu de ayuda para comandos.
 echo 1 - abre las licencias.
 echo 2 - inicia en la consola System Tools.
 echo 3 - inicia en la consola el Host de usuarios.
 echo 4 - inicia en la consola System Tools como el usuario 1
 echo 5 - inicia en la consola System Tools como el usuario 2
 echo 6 - inicia en la consola el Main Menu
 echo 123 - proporciona informacion sobre el
 echo error indicado por la ID. 
 echo exit - cierra el programa.
 pause
 cls
 goto Manual

:Li 
set licencia=
echo que vercion de la licencia quiere abrir?
echo 1 2 3 4?
echo.
set /p licencia=S\ 

if (%licencia%) == (1) goto lic1
if (%licencia%) == (2) goto lic2
if (%licencia%) == (3) goto lic3
if (%licencia%) == (4) goto lic4
 
 echo.
 echo ERROR, Tipo SINTAXIS_ERROR, ID de error 123.
 echo X ERROR comando irreconocible X
 echo Solucion seleccione unos de los comandos 
 echo indicados.
 pause
 goto Manual

:lic1
start Licencia.vbs
echo esta licencia esta escrita en VBS 
pause
goto Manual

:lic2
start Licencia2.txt 
echo esta es la licencia normal
pause 
goto Manual

:lic3
start Licencia3.txt
echo esta es la licencia usada para el instalador 
pause 
goto Manual

:lic4
start Licencia4.chm
echo esta licencia esta en formato de ayuda de HTML
pause 
goto Manual

:Restart
goto Menu

:ex
exit

:S.T.
cls
color a
echo                                               System Tools beta 1.1
set st=
echo 1 - inicia
echo.
echo 2 - consola
echo.
echo 3 - exit
echo.
set /p st=S\ 
 
 if (%st%) == (1) goto U.H.
 if (%st%) == (2) start HelpHost.exe
 if (%st%) == (3) exit

:U.H.
cls 
color a
echo                                              Host de usuarios
set HU=
echo 1 - usuario 1
echo.
echo 2 - usuario 2
echo.
echo 3 - exit
echo.
set /p UH=S\ 
 
 if (%HU%) == (1) goto S.T.1
 if (%HU%) == (2) goto S.T.2
 if (%HU%) == (3) exit 

:S.T.1
cls 
color a
echo                                              System Tools Usuario 1
set U1=
echo 1 - inicia
echo.
echo 2 - cambia de usuario
echo.
echo 3 - exit 
echo.
set /p U1=S\ 

 if (%U1%) == (1) goto M.M 
 if (%U1%) == (2) goto U.H.
 if (%U1%) == (3) exit 
 
:S.T.2
cls 
color a
echo                                              System Tools Usuario 2
set U2=
echo 1 - inicia
echo.
echo 2 - cambia de usuario
echo.
echo 3 - exit 
echo.
set /p U2=S\ 

 if (%U2%) == (1) goto M.M 
 if (%U2%) == (2) goto U.H.
 if (%U2%) == (3) exit l

:M.M
cls
color a
echo                                              Main Menu
set MM=
echo 1 - MDI editor
echo.
echo 2 - ayuda
echo.
echo 3 - exit 
echo.
set /p MM=S\ 
 
 if (%MM%) == (1) goto MDI
 if (%MM%) == (2) start HelpHost.exe
 if (%MM%) == (3) exit 

:MDI
start MDI_editor
goto M.M

:E123
cls
echo El error "SINTAXIS_ERROR" es producido
echo caundo se ingresa un comando inexixtente,
echo esto hace que la consola no pueda
echo procesar la sintaxis por lo que manda un
echo error critico.
pause
goto Manual



