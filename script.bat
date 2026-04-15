@echo off
echo Deploying application...

rmdir /S /Q "C:\Users\OM Ghadage\Downloads\apache-tomcat-9.0.115\webapps\ROOT" 2>nul
mkdir "C:\Users\OM Ghadage\Downloads\apache-tomcat-9.0.115\webapps\ROOT"

xcopy /E /I /Y "%WORKSPACE%\*" "C:\Users\OM Ghadage\Downloads\apache-tomcat-9.0.115\webapps\ROOT\"

echo Deployment completed!
