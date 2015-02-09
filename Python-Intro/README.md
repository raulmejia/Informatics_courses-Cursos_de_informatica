# Python en mi máquina

## En una Mac

### Brew

Brew es un gestor de paquetes y un repositorio de software libre para la Mac. Algo así como una mac-store.
Lo necesitamos para instalar una versión de Python que traiga el gestor de bibliotecas 'pip'. Necesitamos pip 
para instalar otros paquetes útiles como virtualenv e ipython.

Hay que ir a [brew.sh](http://brew.sh), hay ahí una explicación más extensa. Hasta abajo de la página están
las instrucciones de instalación. Lo común es buscar e instalar cosas, algo así:

    $ brew search htop   # ¿existe el monitor del sistema htop? (claro que sí)
    $ brew install htop  # instala htop en mi sistema

### pip

En el caso de este taller, hay que instalar la versión de python que distribuye brew, así:

    $ brew install python
  
Cuando termine, tendremos acceso al gestor de paquetes 'pip' que es como brew pero sólo para bibliotecas de Python.
Pip también sabe hacer search y resulta muy interesante, muchas veces alguien más ya programó justo
la funcionalidad que necesitas.

    $ pip search vcf  # ¿hay bibliotecas para leer el formato vcf? (claro que sí)
    $ pip install virtualenv  # instala virtualenv
    $ pip install ipython     # instala ipython


## En una PC (con GNU+Linux)

El ecosistema de software en la "plataforma" PC es mucho más diverso. La ventaja es que es muy fácil
conseguirse un un*x libre, por ejemplo: Debian o un debianoide como bio-linux o crunchbang. Las
sugerencias a continuación pueden fácilmente interpolarse a otras distribuciones y sistemas.

Los sistemas debianoides están construidos en torno a un repositorio, preceden por un par de décadas a la noción de "appstore".

    $ apt-cache search htop   # ¿existe el monitor del sistema htop? (pues claro)
    $ sudo apt-get install htop # instala htop

### pip

Si pip no está instalado hay que buscar qué paquete lo tiene.

    $ apt-cache search pip | grep python
    $ sudo apt-get install python-pip

Con pip instalado se pueden buscar e instalar bibliotecas para python, ''look before you leap'':

    $ pip search vcf  # ¿hay bibliotecas para leer el formato vcf? (claro que sí)
    $ pip install virtualenv  # instala virtualenv
    $ pip install ipython     # instala ipython



## Virtualenv

Este programa sirve para crear compartimentos en los cuáles instalar bibliotecas de python.

Esto resulta conveniente para evitar conflictos de versiones, si se desarrollan muchos 
proyectos con diferentes dependencias. También resuelve problemas de permisos si usamos
una computadora en la que no tenemos permisos para instalar software para todo el sistema, cual
suele ser en caso en supercomputadoras.

La página [virtualenv.org](http://www.virtualenv.org/) tiene una explicación más extensa.

    $ mkdir environments      # recomiendo crear un directorio para tener ahi varios ambientes
    $ virtualenv environments/curso   # crear ambiente virtual dentro del directorio environments
    $ source environments/curso/bin/activate  # activar el ambiente 'curso'
    (curso) $ pip install ipython   # instalar ipython en ese ambiente, observad como (curso) aparece antes del prompt $


## iPython

Se trata de un shell interactivo para Python. Es mejor que el shell normal:

* autocompleta comandos y paths con el tabulador
* consulta documentación agregando el signo de interrogación
* se integra con el shell del sistema, comandos como cd y ls hacen lo esperado
 

Para más conveniencia, se puede cargar a un shell de iPython un script desde un archivo,
de modo que es posible ir programando con tu editor favorito y probando tu progreso
en el shell.

        In [1]: %loadpy ejemplo.py

[La página de iPython](http://ipython.org/) tiene una descripción más abundante y
menciona otros usos interesantes, como python a través de la web con el poderoso
[notebook](http://ipython.org/notebook.html).
