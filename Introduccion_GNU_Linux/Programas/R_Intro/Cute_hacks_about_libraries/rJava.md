#To install the tricky library "rJava"

A method is to export ```LD_LIBRARY_PATH``` with the value of Java library path obtained from the command ```R CMD javareconf -e``` and run install.packages("rJava")  

I use the following lines in the command line in notron: 
```export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64```  
```export LD_LIBRARY_PATH=$JAVA_HOME/jre/lib/amd64:$JAVA_HOME/jre/lib/amd64/server```  


Referencias: 
1. Justamente en esa [referencia](http://stackoverflow.com/questions/12872699/error-unable-to-load-installed-packages-just-now) dice como hacerlo de otra manera pero necesitas sudo  
2. Aca un compa dice que le funcionó pero con una [terminacion ligeramente distinta](http://stackoverflow.com/questions/23469061/why-does-rjava-not-work-on-ubuntu-14-04-using-openjdk-7)
