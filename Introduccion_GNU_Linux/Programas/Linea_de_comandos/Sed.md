## Sed (Stream editor)

Ejemplo general de uso:  
``` sed "s/algo/otra cosa/g" elnombredemiarchivo > comoquieroquesellameelresultado ```
* Donde s = substitute  , g = global   
¿Qué pasa si omitimos la "g" ?  

Ejercicio:  
``` cat frutas.txt ```  
``` lima luego sandia ahora lima luego sandia ahora lima luego sandia```  
``` sandia luego lima ahora sandia luego lima ahora sandia luego lima```  
``` sed "s/lima/guanabana/g" frutas.txt > frutasconguanabanas ```  
``` sed "s/lima/guanabana/" frutas.txt > frutasconguanabana ```  

``` sed "s/lima/guanabana/2" frutas.txt > outputfile ```
``` sed "s/lima/guanabana/2g" frutas.txt > outputfile ```


#### Expresiones regulares en Sed
*  $ final de la línea.
*  ^ inicio de la línea.
*  * (asterisco) cero o más ocurrencias del carácter inmediatamente anterior.
* "[ ]" Cualquier carácter único, dentro de los corchetes será encontrado.  
 
Ejericicio, nombralo "Notas" o con el título que tu prefieras y contenga lo siguiente:   
``` Rodriguez Rodrigues Rodríguec```  
``` Jicama Xicama Gicama ```  
``` Mexico 1 Alemania 1, Mejico 5 Fiji 1 ```  
``` Ciudad de Mx ```  
``` TzintzunTzan, Michoacán, Mx```

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
```sed -e "/one/ s/number/1/" -e "/two/ s/number/2/" -e "/three/ s/number/3/" -e "/four/ s/number/4/" \ < hs > hsc ```

