@echo off  REM Désactive l'affichage des commandes dans la console

echo Waiting for network connection...  REM Affiche un message indiquant l'attente de la connexion réseau

:LOOP  REM Début d'une boucle étiquetée LOOP

timeout /t 5 /nobreak >nul  REM Attend pendant 5 secondes sans interruption et redirige la sortie vers nul (pas d'affichage)

ping -n 1 google.com | find "TTL=" >nul  REM Pingue une fois google.com et recherche la présence de "TTL=" dans la réponse, redirigeant la sortie vers nul

if errorlevel 1 goto LOOP  REM Si le niveau d'erreur du ping est supérieur ou égal à 1 (erreur), retourne à l'étiquette LOOP pour continuer à attendre

echo Network connection detected!  REM Affiche un message indiquant que la connexion réseau a été détectée

echo Hello World  REM Affiche un message de salutation

pause  REM Attend que l'utilisateur appuie sur une touche avant de quitter
