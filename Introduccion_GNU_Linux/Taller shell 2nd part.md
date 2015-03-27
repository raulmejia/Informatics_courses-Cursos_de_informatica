'''
df -h
du X.csv
top
htop
kill


###

Edición de texto

nano HelloWorld

vim?

find 

locate?

grep

su 

sudo

Control de flujo 

pipe | 
cat  X.csv | less
cat  X.csv | head -50 | tail -10

>Ejercicio
>¿Cuántas veces haz escrito el comando cd? (en esta sesión) 



>

>>

echo "X" > X.file
echo "X" >> X.file

mail user < mesage


Ctrl+C

sed '///' X.csv   '. . .' '|||'

awk

awk -F',' '{print$2;}' X.csv
cat X.csv | awk -F',' '{print$1",$USER";}'

grep -i MPI X.csv
grep -i MPI X.csv | awk -F',' '{print$1",$USER";}'

less X.csv | head -20 | grep '[0-9]*' 

less X.csv | head -20 | grep '[8-9]*'
-c

ssh

copiar archivos del servidor a mi máquina

scp rmejia@192.168.105.78:/mnt/f/rmejia/TallerIntroLinux/Burkitt/X.csv .

Ejercicio

---------------
ls *GSE*/*CEL*   | wc 
		> X.cvs
	      sed -i ''

find . -iname '*CEL.gz'
'''
-------------------
(No por comandos si no por tareas)
(Que te vaya dirigiendo la necesidad y el preguntar)

ls 

primero buscas ls /GSE  ; ls  /GSE/hj  ; luego te cambias con cd

lo mismo con less, para mirar no ocupas cambiarte

Short cuts (Inicio para el comienzo del comando) fin para el final
