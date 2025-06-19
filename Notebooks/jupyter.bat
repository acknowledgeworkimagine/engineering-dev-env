@echo off
docker run -it --rm --name eng-jupyter ^
 -p 8888:8888 ^
 -v %cd%:/home/jovyan/work ^
 -w /home/jovyan/work ^
 eng-dev-env
