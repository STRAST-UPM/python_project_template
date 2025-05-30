# Template Python Project 

Template for a Python app project. This template is meant to be used for an
application/service/program coded in python that is going to be deployed on a
container using Docker. The structure under `code/src/` could be too much
complex in some cases or not adapted to your use case, feel free to change it.

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
- `code/` is the main folder of this software project. Inside this folder is
going to stay all the code and is divided in different packages depending on the
purpose of that part of code.
  - `src/` base folder of the code. 
    - `classes/` main folder of your code. Where all the classes responsible for
the logic of the project are.
      - `base/` this folder contains classes that are going to be inherited by
others, mainly by the modules. For example if you are going to create multiples
providers, views o controllers of some kind you create a base one to have the
common logic all providers, views or controllers.
      - `components/` place for classes that are going to be used as components
in the project. An example of this could a special type of button on your mobile
app or frontend. Something that is reusable by the modules primarily. 
      - `extencions/` this package will contain the classes that update the
default one of the project if it is needed. For example if you need to add some
functionality to the default strings or similar.
      - `helpers/` clases that are not only one function but make an auxiliar
task that saves you time or complexity.
      - `modules/` is the main package used for the "real" logic of your project
, the ones that you create to implement the use cases of your project.
    - `data/` the place for the classes which are going to
treat with external providers of data (providers). For example the one which 
treats API requests. Also, the data structures which represents objects of your
project (models).
      - `models/` the place for data structures of the project. Remember that is
better to work with your own data structures and use them in the project than
leave all the data in primitives.
      - `providers/` home of the classes used to interact with the world 
outside. Whenever you need to integrate with other system use this classes. If
you do in this way you can work with your data structures inside your project
and not been too much sensible to changes on the other systems. Furthermore, if
an external service change its interface you have only one point of your project
to change.   
    - `resources/` for all type of static files that support the code. Could be
static images or statics texts. If you need to use a config file feel free to
create a `config/` folder.
    - `utilities/` this package is used for the auxiliar functions, general to
whatever class or to create some useful scripts.
  - `tests/` is the place where all the tests for our code are going to be
placed. It has the same structure as the `src/` folder.

## Deployment on containers

As it was told this project was though to be used with containers for easy
deployment. The base containers deployed are the project developed and a
PostgreSQL database with a web administration console accesible in this
[URL](http://localhost:8080) when deployed. The database and administration
console have permanent storage via Docker volumes.

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
