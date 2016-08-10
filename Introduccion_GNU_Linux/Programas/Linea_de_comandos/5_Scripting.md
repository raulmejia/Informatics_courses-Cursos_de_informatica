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
* [] Cualquier carácter único, dentro de los corchetes será encontrado.  
 
```cat  Notas.txt```  
``` Rodriguez Rodrigues Rodríguec```  
``` Jicama Xicama Gicama ```  

``` Mexico 1 Alemania 1, Mejico 5 Fiji 1 ```  
```sed "s/Me[xj]ico/Mexico/g" Notas.txt > Notascorregidas ```
```sed "s/Rodr[ií]gue[szc]/Rodríguez/g" Notas.txt > Notascorregidas ```
* La siguiente expresión requiere la presencia de almenos un díto (por ello la presencia del primer [0-9]) para la sustitución
``` sed "s/[0-9][0-9]*//g" Notas.txt > Notascorregidas; less Notascorregidas```
 
``` echo pumas águilas pumas y águilas| sed "s/águilas$/pájaritos/"```  
``` echo pumas águilas pumas y águilas| sed "s/^pumas/león/"```

* Borrar  
```cat Notas.txt ```
``` sed "/e/d" Notas.txt > Notascorregidas.txt```  
Para eliminar líneas en blanco podemos utilizar:  
```sed "/^$/d" Notas.txt > Notascorregidas.txt ```   

* Control de impresión

```Dr.Hernández```  
```Doctor. Hertz```  
```Doctor. Lee```  
```Fernando```  

```sed -n "s/Doctor\./Dr/p" testfile ```  
