@echo off
if "%1"=="" (
  echo Please provide a Python filename, e.g. python my_script.py
  exit /b 1
)

docker run -it --rm --name eng-python-runner ^
 -v %cd%:/home/jovyan/work ^
 -w /home/jovyan/work ^
 eng-dev-env python %1
