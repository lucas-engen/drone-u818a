:: Este script faz parte do projeto final de diac - Drone U818A
::
:: Função: automatizar a tarefa de unir todos os arquivos CATPart e CATDrawing em uma unica pasta
:: para poder criar o assembly.
:: 
:: Autor: Lucas Vieira

@echo off
cls
set nome_pasta_assembly="Assembly"
if not exist %nome_pasta_assembly% (
	echo A pasta contendo o assembly ainda não foi criada.
	mkdir %nome_pasta_assembly%
)
copy /y samara\*.CATPart %nome_pasta_assembly%\>nul
copy /y lucas\*.CATPart %nome_pasta_assembly%\>nul
copy /y jose\*.CATPart %nome_pasta_assembly%\>nul
copy /y pedro\*.CATPart %nome_pasta_assembly%\>nul
copy /y samara\*.CATDrawing %nome_pasta_assembly%\>nul
copy /y lucas\*.CATDrawing %nome_pasta_assembly%\>nul
copy /y jose\*.CATDrawing %nome_pasta_assembly%\>nul
copy /y pedro\*.CATDrawing %nome_pasta_assembly%\>nul

echo.
if %ERRORLEVEL% equ 0 (
echo Tarefas finalizadas com sucesso.
color a
) else (
echo Tarefas finalizadas com erro.
color c
)
echo.
pause
cls && color
