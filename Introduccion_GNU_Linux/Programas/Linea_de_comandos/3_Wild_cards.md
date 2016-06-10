
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



