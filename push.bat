@echo off
cls
echo ============================================================
echo    Comando autom�tico para atualiza��o do reposit�rio Git
echo ============================================================

@echo on
git status
@echo off

if not %2!==! goto SohUmPar

if %1!==! (
   SET MSGCOMMIT1=Atualiza��o
   SET MSGCOMMIT2="Atualiza��o"
) else (
   SET MSGCOMMIT1=%~1
   SET MSGCOMMIT2=%1
)

echo.
choice /C SN /M "Confirma o add/commit -m '%MSGCOMMIT1%'/push?"

if %errorlevel%==1 goto atualiza
goto fim

:atualiza
@echo on
git add .
git commit -m %MSGCOMMIT2%
git push
git status

@echo.
goto fim

:SohUmPar
echo.
echo ============================================================================
echo ============================================================================
echo.
echo    Ops!!! Voc� passou mais de um par�metro.
echo.
echo    Experimente digitar:      push "minha mensagem"
echo.
echo ============================================================================
echo ============================================================================
echo.

:fim
