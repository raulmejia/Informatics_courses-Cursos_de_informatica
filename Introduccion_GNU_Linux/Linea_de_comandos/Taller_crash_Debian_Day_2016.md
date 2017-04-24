## Introducción a la Línea de comandos de Linux

#### Breve Intro:

1. Ventajas de la línea de comandos
   * Flexibilidad.
   * Confiabilidad.
   * Velocidad (Automatización, Instrínsecamente consumen menos recursos, ).
   * Experiencia / conociemiento más profundo.
   * Control remoto a través de la red.
2. Ejemplo:
    * Cambiar el formato a "n"  imágenes.  pasos GUI vs pasos CLI
3. Incluso los programas gráficos son comandos.
    * Ejemplo: nautilus vs ls
4. Comandos conceptos y síntaxis.
    * echo algo otracosa
5. Sistema de archivos en Linux


6. Algunos comandos básicos
    * Primer abordaje
      * ¿Dónde Estoy?
      * ¿Quién soy?
      * ¿Quienes más estan?
      * cd  (paths absolutos y relativos)  
      * ls , info
      * man ls
        * Ej: ¿Cómo vemos los archivos ocultos? (hidden files), 
        * Que los muestre seguidos de manera horizontal, Es decir:  archivo1, arhivo2, arhivo3,...
      * apropos
        * Ej: ¿Cómo borrar archivos? ¿y directorios?   
    * Manipulación de archivos y directorios
      * ¿QUé acciones puedo hacer a un archivo/directorio?.
      * borrar, crear, renombrar, mover de ubicación, copiar archivos y carpetas.
        * Ejercicio: (2min) Crear una estructura arborea de directorios (Pueden ser Carrera/Semestres/materias) y podemos verificarlo con tree o find 
    * Editar textos
      * ¿Para que texto plano?
      * less, cat
      * Nano, gedit, Emacs, vi.

#### Permisos

ls -l  
type : owner : group : restoftheworld  
rwx  
chmod ug=rw,o= miarchivo  
chmod u=rw,go= miarchivo  
111 (Binary conversion)  
chmod 110 110 000  
chmod 660 miarchivo  

#### Instalación de software

1. Instalar de los repositorios: ``` sudo apt-get install r-base r-base-dev ```  
    * Edición de repositorios
    * Actualizar repositorios  ``` sudo apt-get update```
    * Actualizar tu software YA instalado ``` sudo apt-get upgrade```  
    * Buscar software dispobible ``` apt search programaquebusco```
2. Descargar e instalar un .deb
3. Installing from source:
    * Descomprime el archivo y cambiate a ese directorio.
    * Corre el archivo de configuración ```./configure```
    * Compila el software ``` make ```
    * Instala el software ``` make install ```
4. Dependencias.

#### Wild cards

* Creamos algunos archivos para practicar:   
```touch texto1.txt texto3.txt texto10.txt textoa.txt textoc.txt hola.txt mundo```  

``` mkdir mis_Documentos ```  

``` mkdir otros_Documentos ```  

``` touch mis_Documentos/calificaciones_Enero ```  

``` touch otros_Documentos/fotos_Enero ```  

* Ahora comencemos:  
``` ls *.txt ```  
``` ls *Documentos ```  
``` ls *Documentos/*Enero```  
``` ls texto??.txt```
``` ls texto[13a].txt```  
``` ls texto[1-3].txt```  
``` ls texto[a-c].txt```
``` ls texto[a-c13].txt```  
``` ls texto[^a-c13].txt ```

* Desabilitando una wild card:  

``` touch te*to ```

``` ls te\*to ```

``` ls '*?****[a-b]' ``` 

### Buscando archivos  

``` find . -name mundo -print  ```  

``` find . -name *_Enero -print  ```    

``` find directory_to_backup  -mtime +30  -size +500k  -print ```

* Usar find para correr un comando en multiples archivos

``` find . -name 'text*' -exec cp {} {}.backup \; ```  
``` find -name "*.jpg*" -exec convert {} -resize 200x100 {}.petit \; ```  
(Para usar convert necesitas instalar el imagemagick ``` sudo apt-get install imagemagick``` ).  
``` find -name "[0-9][0-9]*.jpg*" -exec convert {} -resize 200x100 {}.numbersintitle \;```   
``` find -name "*[0-9][0-9].jpg*" -exec convert {} -charcoal 2 {}.charcoal \;```  

#### Redireccionamiento de procesos


* "Pipe"    
Ejemplo: ``` ls | wc -l```

Ejercicio: Buscar en su historial cuantas veces han escrito el comando cd  
Sugerencia: ``` history```  
``` wc ```  
``` grep ```

¿Ahora ordenados? ``` sort ```  
¿Únicos?  ``` uniq ```

* >
* >>



### Metas:
1. Estructura de archivos en unix, navegación, edición de archivos/directorios.
2. man, info, apropos.
3. Edición de texto plano.
4. permisos.
5. Instalación de software que el asistente sea capaz de modificar (sus repositorios) el /etc/apt/sources.list, así como manualmente, checar disponibilidad de software en sus repositorios (apt search algo).
6. Wildcards / find.
7. [¿Cómo encontrar ayuda?](https://github.com/raulmejia/Cursos/blob/master/Introduccion_GNU_Linux/Programas/R_Intro/R_learn/Conseguir%20ayuda%20en%20R.md)






## Bibliografía:

1.- [Estas notas estan basadas fuertemente  del libro dedicado a la "command line" de la Free Software Foundation ](http://en.flossmanuals.net/command-line/beginning-syntax/)  
2.- [Diapositivas para el taller](http://lugatgt.org/wp-content/uploads/2010/09/presentation1.pdf)

***
Ejercicios casa:
0. alias para setxkbmap es
1. ls directory, ls .. , 
   (para ver los archivos de directorios sin cambiarme te lugar)
2. ls -m, ls -a, ls -l (formas de visualización)
(los puedes combinar ls -l ..)

3. grepear su history

4. (Script ninja que haga):
Crear carpeta
crear un archivo dentro de la carpeta
renombrarlo con mv
copiarlo
grepear algo
 estaria chido que grepen su history

5. (despertador) o time para sus actividades 









