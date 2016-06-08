### Redirección

* **Sobreescribir una salida**

``` ls *.txt > lista_de_mis_.txt ```  

``` echo no más por no dejar > lista_de_mis_.txt  ```

* **Anexar:**  
``` echo no más por no dejar >> lista_de_mis_.txt ```

* **Pipe:**

``` wc texto1.txt```     
``` ls * | wc```


### "File descriptor" de un programa

* stdin = 0
* stdout = 1
* stderr = 2

Ejemplo:  
``` ls YaSeQueEsteArchivoNoExiste ````     

``` ls YaSeQueEsteArchivoNoExiste > Quepaso````    

``` ls YaSeQueEsteArchivoNoExiste 2> Quepaso````   

---


