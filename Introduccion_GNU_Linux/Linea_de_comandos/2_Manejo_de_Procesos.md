### Redirección

* **Sobreescribir una salida**  
``` ls *.txt > lista_de_mis_.txt ```   
``` echo no más por no dejar > lista_de_mis_.txt  ```
    * Ejercucio guardar la estructura de directorios de la clase anterior en un archivo (pista find)

* **Anexar:**  
``` echo no más por no dejar >> lista_de_mis_.txt ```

* **Pipe:**  
``` wc texto1.txt```     
``` ls * | wc```


### "File descriptor" de un programa

* stdin = 0
* stdout = 1
* stderr = 2

A.Ejemplo:  
``` ls YaSeQueEsteArchivoNoExiste ````     

``` ls YaSeQueEsteArchivoNoExiste > Quepaso````    

``` ls YaSeQueEsteArchivoNoExiste 2> Quepaso````   

---

### Procesos

* Para interrumpir un proceso presionar "Ctrl" + "c"
* Ver procesos con ``` ps ``` , ``` top ``` o ```htop ```  este ùltimo lo podemos instalar con ``` sudo apt-get install htop ```
*  kill PID
*  

### Processes and jobs (background)


* Para poner un proceso en el "background" y seguir con el control de la terminal podemos hacer:    
``` firefox & ```
* Para ver los "jobs" en el background:
``` job ```
* Y para traerlos de regreso podemos escribir:
``` fg PID ``` o ``` fg %1 ```


