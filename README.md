# Template Python Project 

Template for a Python app project. This template is meant to be used for an
application/service/program coded in python that is going to be deployed on a
container using Docker. Feel free to fork it and change it.

## Project Structure

This section describe all the different elements of the structure of this
template. Please follow the principles of Clean Code and remember that in the
long term is cheaper to code in a proper way than do spaghetti code.

### Files in project root folder

The files in the root folder of the project have very different porpoises, but
they are very straightforward.

- `requirements.txt` has all the python dependencies of the project. 
- `.gitignore` is the common file used by Git to ignore all the things that are
not needed to keep track of.
- `build_and_push.sh` is a script used to build and push the Docker image of the
project to the repository
- `Dockerfile` and `docker-compose.yml` are the files used for building which
describes how to build the project container and to deploy a developing
environment with the auxiliar containers if needed.
- `LICENSE` is the legal requirements under this software can be used or
distributed.
- `README.md`, this file.

### Folders structure

The folders in the root of the project contains the majority of the project.

- `docu/` is the project documentation folder with all the markdowns structured
as you wants. It only has a `statics` folder for the images and similar files
used in the documentation. 
- `app/`

---

Developed by the research group Sistemas de Tiempo Real y Arquitectura de
Sistemas Telemáticos (STRAST) part of Departamento de Ingeniería de Sistemas
Telemáticos (DIT) located in Escuela Técnica Superior de Ingenieros de
Telecomunicación (ETSIT) part of Universidad Politécnica de Madrid
department (UPM).

**Contact**
- gi.strast@upm.es
- [Web page](http://web.dit.upm.es/~str/)
- [GitHub](https://github.com/STRAST-UPM/)

<img alt="logo_dit" src="./docu/statics/dit_logo.gif" width="80"/>

![upm_logo](./docu/statics/upm_logo.png)
