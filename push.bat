git status
@echo off

echo.
choice /C SN /M "Confirma o add/commit/push?"

if %errorlevel%==1 goto atualiza
goto fim

:atualiza
@echo on
git add .
git commit -m "Atualiza‡Æo"
git status

@echo.

:fim
