## Sed (Stream editor)

``` sed "s/algo/otra cosa/g" elnombredemiarchivo > comoquieroquesellameelresultado ```
* s = substitute  
* g = global   
¿Qué pasa si omitimos la "g" ?  


``` cat frutas.txt ```  
``` lima luego sandia ahora lima luego sandia mas lima por ultimo sandia```  
``` sandia luego lima ahora sandia luego lima mas sandia por ultimo lima```  
``` sed "s/lima/guanabana/g" frutas.txt > frutasconguanabanas ```  
``` sed "s/lima/guanabana/" frutas.txt > frutasconguanabana ```  

``` sed "s/lima/guanabana/2" frutas.txt > outputfile ```
``` sed "s/lima/guanabana/2g" frutas.txt > outputfile ```
