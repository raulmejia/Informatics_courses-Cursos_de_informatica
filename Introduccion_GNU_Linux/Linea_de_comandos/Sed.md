## Sed (Stream editor)

Ejemplo general de uso:  
``` sed "s/algo/otra cosa/g" elnombredemiarchivo > comoquieroquesellameelresultado ```
* Donde s = substitute  , g = global   
¿Qué pasa si omitimos la "g" ?  

Ejercicio:  crea un archivo con el siguiente contenido (puedes copiarlo y pegarlo), yo lo nombre "Datos.txt" pero tu puedes nombrarlo como gustes:  
``` Eduardo Rodriguez Aguas Termales 201, Eduardo Rodrigues 449789265, Eduardo Rodríguez 25 años, Eduardo Rodriguec H```  
``` Lalo Rodrigues  Aguas Termales 201, Lalo Rodrigues 5589636987, Lalo Rodrigues 25 años, Lalo Rodrigues Hombre```  


``` Belen Cazorla San Telmo 956, Belem Casorla 5566698457, Velen Kazorla 29 años, Velem Kasorla M```  

``` Marisol Muñoz Convención 1914 3805, MM 4496586538, Marisol Muñoz 27 años, Marisol Muñoz Mujer```  

Sustitucón general, única y por ocurrencia de palabra:  
``` sed "s/Rodrigues/Rodríguez/g" Datos.txt > NuevosDatos.txt ```  
``` sed "s/Lalo/Eduardo/" Datos.txt > NuevosDatos.txt; less NuevosDatos.txt ```  
``` sed "s/Lalo/Eduardo/2" Datos.txt > NuevosDatos.loquesea ```  
``` sed "s/Lalo/Eduardo/2g" Datos.txt > OMG ; less OMG ```


#### Expresiones regulares en Sed
*  $ final de la línea.
*  ^ inicio de la línea.
*  * (asterisco) cero o más ocurrencias del carácter inmediatamente anterior.
* "[ ]" Cualquier carácter único, dentro de los corchetes será encontrado.  
  
```sed "s/Rodr[ií]gue[szc]/Rodríguez/g" Datos.txt ```
``` sed "s/[BV]ele[nm]/Belen/g" Datos.txt ```
* La siguiente expresión requiere la presencia de _almenos_ un dígito (por ello la presencia del primer [0-9]) para ejecutar la sustitución indicada:
``` sed "s/[0-9][0-9]*/HolaSed/g" Datos.txt > NuevosDatos; less NuevosDatos```  
 ¿Qué pasa si sólo dejamos un [0-9]? Es decir:  
``` sed "s/[0-9]*/HolaSed/g" Datos.txt > NuevosDatos; less NuevosDatos```   
¿Puedes explicar que sucedió?


``` sed "s/Mujer$/Dama/" Datos.txt > NuevosDatos```  
``` echo pumas águilas pumas y águilas| sed "s/^pumas/león/" > animales.txt```   
``` echo pumas águilas pumas y águilas| sed "s/[^pumas]/ave/" >> animales.txt``` 

#### Borrar  
```cat Notas.txt ```
``` sed "/449/d" Datos.txt > Datos_cdmx.txt```  
Para eliminar líneas en blanco podemos utilizar:  
```sed "/^$/d" Datos.txt > NuevosDatos ```   

#### Control de la impresión

```sed -n "s/55/CiudadDeLaEsperanza/p" Datos.txt ```  

#### Múltiples patrones

```sed -e "s/Rodr[ií]gue[szc]/Rodríguez/g" -e "s/[BV]ele[nm]/Belen/g" -e "s/Lalo/Eduardo/g" Notas.txt > Notascorregidas ```  

#### Control de ediciones mediante patrones:

Por favor crea un archivo con el siguiente contenido:  

```one: number```   
```two: number```  
```three: number```   
```four: number```   
```one: number```   
```three: number```   
```two: number```   

```sed "/one/ s/number/1/" hs > hsc ;  cat hsc ```  
```sed -e "/one/ s/number/hello/" -e "/two/ s/number/good/" -e "/three/ s/number/bye/" -e "/four/ s/number/my/"  < hs > hsc ```  
```sed "2,3 s/number/you have been/" < hs > hsc```

#### Escripteando commandos de Sed

Usando el argumento -f podemos alimentar a el programa "sed" con una lista de comandos:  
Ejercicio: Crea un archivo "comandosdelsed" con los comandos de sed previamente utilizados para el archivo Notas.txt  correlo bajo el siguiente esquema:
```sed -f comandosdelsed < Notas.txt > queshow ```

##Bibliogafía:

1. [Introduction to Command Line, Free Software Foundation](https://flossmanuals.net/command-line/)
