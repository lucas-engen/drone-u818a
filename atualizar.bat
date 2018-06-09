:: Este script faz parte do projeto final de diac - Drone U818A
::
:: Função: atualizar a pasta do projeto, sem interferencia do usuário
:: utiliza um script auxiliar para realizar essa tarefa.
:: Autor: Lucas Vieira

@echo off
path ;
set pasta_git_bin=%programfiles%\Git\bin
if exist %pasta_git_bin% (
path %pasta_git_bin%;%path%
bash ./atualizar
)
echo.