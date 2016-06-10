### Un poco sobre procesamiento de texto

* Comencemos creando un archivo con el siguiente contenido:

```Carroll, Lewis:Through the Looking-Glass```

```Shakespeare, William:Hamlet```

```Bartlett, John:Familiar Quotations```

```Mill, John Stuart:On Nature```

```London, Jack:John Barleycorn```

```Bunyan, John:Pilgrim's Progress, ```

```The Defoe, Daniel:Robinson Crusoe```

```Mill, John Stuart:System of Logic, A```

```Milton, John:Paradise Lost```

```Johnson, Samuel:Lives of the Poets```

```Shakespeare, William:Julius Caesar```

```Mill, John Stuart:On Liberty```

```Bunyan, John:Saved by Grace```

* Si el archivo se llama "libros", podemos hacer lo siguiente: 

ordernar ``` sort libros```  
Cortar en columnas por un carácter dado, en este caso ":"  ``` cut -d: -f1 libros ```  
Ambas cosas ``` sort libros | cut -d: -f1 ```  
Busquemos la palabra "John" ``` cut -d: -f1 libros | sort | grep "John" ```  
Colapsar los repetidos y contar las ocurrencias: ``` cut -d: -f1 libros | sort | grep ", John" | uniq -c  ```  
Ordenar lo anterior por ocurrencias ``` cut -d: -f1 libros | sort | grep ", John" | uniq -c | sort -nr ```
