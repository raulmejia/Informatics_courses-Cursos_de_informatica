AWK es un lenguaje de programación diseñado para procesar texto plano (es usado especialmente para textos con estructura tabular tabular). Su nombre se debe a sus fundadores  Alfred Aho, Peter Weinberger and Brian Kernighan.  

Crea un texto con el siguiente contenido:

```1050200 Billy Mitchell 2007```  
```1049100 Steve Wiebe 2007```  
```895400 Scott Kessler 2008```  
```879200 Timothy Sczerby 2001```  
```801700 Stephen Boyer 2007```  


```awk '$1 > 1000000 { print ,  }' highscores.txt ```
*Awk opera bajo la logica: patrón{acción}


``` awk '$4 == 2007 { print "Rank", NR, "-", $3 }' highscores.txt```  
*Nota: NR= number row (variable predefinida)


``` awk 'BEGIN {print "Together, the five best Donkey Kong players have achieved:"}\
{total += } END {print total, "points"}' highscores.txt ```

1. Patrón=BEGIN , acción = Imprimir esa frase
2. Patrón = ninguno (eso ejecuta siempre la acción) , acción= añade el valor del campo uno a la variable total
3. Patrón = END , acción = imprime el valor de la variable total, y la cadeba "points"
 

* Para más información  http://www.gnu.org/software/gawk/manual/).
