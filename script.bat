@echo off
echo Deploying application...

REM Delete old ROOT folder
rmdir /S /Q C:\apache-tomcat\webapps\ROOT 2>nul

REM Create new ROOT folder
mkdir C:\apache-tomcat\webapps\ROOT

REM Copy files from Jenkins workspace
xcopy /E /I /Y "%WORKSPACE%\*" C:\apache-tomcat\webapps\ROOT\

echo Deployment completed!
