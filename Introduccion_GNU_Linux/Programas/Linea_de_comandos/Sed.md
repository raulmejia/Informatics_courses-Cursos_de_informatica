## Sed (Stream editor)

Ejemplo general de uso:  
``` sed "s/algo/otra cosa/g" elnombredemiarchivo > comoquieroquesellameelresultado ```
* Donde s = substitute  , g = global   
¿Qué pasa si omitimos la "g" ?  

Ejercicio:  crea un archivo con el siguiente contenido, yo lo nombre "Datos.txt" pero tu puedes nombrarlo como gustes:
``` cat Datos.txt ```  
``` Eduardo Rodriguez Aguas Termales 201, Eduardo Rodrigues 449789265, Eduardo Rodríguez 25 años, Eduardo Rodriguec H```  
``` Lalo Rodrigues  Aguas Termales 201, Lalo Rodrigues 4497892654, Lalo Rodrigues 25 años, Lalo Rodrigues Hombre```  
``` Belen Cazorla San Telmo 956, Belem Casorla 5566698457, Velen Kazorla 29 años, Velem Kasorla M```  
``` Marisol Muñoz Convención 1914 3805, MM 4496586538, Marisol Muñoz 27 años, Marisol Muñoz Mujer```  

Sustitucón general, única y por ocurrencia de palabra:  
``` sed "s/Rodr[ií]gue[szc]/Rodríguez/g" Datos.txt > NuevosDatos.txt ```  
``` sed "s/Lalo/Eduardo/" Datos.txt > NuevosDatos.tsv ```  
``` sed "s/[BV]ele[nm]/Belen/2" Datos.txt > NuevosDatos.loquesea ```
``` sed "s/[BV]ele[nm]/Belen/2g" frutas.txt > OMG ```


#### Expresiones regulares en Sed
*  $ final de la línea.
*  ^ inicio de la línea.
*  * (asterisco) cero o más ocurrencias del carácter inmediatamente anterior.
* "[ ]" Cualquier carácter único, dentro de los corchetes será encontrado.  
 
Ejericicio, nombralo "Notas" o con el título que tu prefieras y contenga lo siguiente:    
``` Eduardo Rodriguez Aguas Termales 201, Eduardo Rodriguez 449789265, Eduardo Rodriguez 25 años, Eduardo Rodriguez H```  
``` Lalo Rodrigues  Aguas Termales 201, Lalo Rodrigues 4497892654, Lalo Rodrigues 25 años, Lalo Rodrigues Hombre```  
``` Belen Cazorla San Telmo 956, Belem Casorla 5566698457, Velen Kazorla 29 años, Velem Kasorla M```  
``` Marisol Muñoz Convención 1914 3805, MM 4496586538, Marisol Muñoz 27 años, Marisol Muñoz Mujer```  


```sed "s/Me[xj]ico/Mexico/g" Notas.txt > Notascorregidas ```  
```sed "s/Rodr[ií]gue[szc]/Rodríguez/g" Notas.txt > Notascorregidas ```  
* La siguiente expresión requiere la presencia de almenos un díto (por ello la presencia del primer [0-9]) para la sustitución  
``` sed "s/[0-9][0-9]*//g" Notas.txt > Notascorregidas; less Notascorregidas```  
 
``` echo pumas águilas pumas y águilas| sed "s/águilas$/pájaritos/"```  
``` echo pumas águilas pumas y águilas| sed "s/^pumas/león/"```  

#### Borrar  
```cat Notas.txt ```
``` sed "/e/d" Notas.txt > Notascorregidas.txt```  
Para eliminar líneas en blanco podemos utilizar:  
```sed "/^$/d" Notas.txt > Notascorregidas.txt ```   

#### Control de la impresión

```sed -n "s/Mx/México/p" Notas.txt ```  

#### Múltiples patrones

```sed -e "s/Me[xj]ico/Mexico/g" -e "s/Rodr[ií]gue[szc]/Rodríguez/g" -e "s/[XG]/J/g" Notas.txt > Notascorregidas ```  

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

