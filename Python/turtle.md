apt-cache search ipython
sudo apt-get install ipython
sudo apt-get install python-pmw
ipython
import turtle

turtle."tab"
turtle.forwad?

for i in range(n):
  turtle.forward(100)
  turtle.right(360.0/n)
  
def poligono(n):
  for i in range(n):
    turtle.forward(100)
    turtle.right(360.0/n)
    
    
def saludar(cosas):
  print "hello",cosas
  
def multiplica(a,b):
  print(a*b)
  
def factorial(j):
  l=1
  for i in range(j):
    l=l*(i+1)
  return(l)
    

def dibujafactorial(v):
  n=factorial(v)
  poligono(n)
 
 def polipoli(n):
  for i in range(n):
    turtle.right(360.0/n)
    poligono(n)

def polielegante(nlados,longitud,coordenadax,coordenaday):
  turtle.home()
  turtle.forward(coordenadax)
  turtle.left(90)
  turtle.forward(coordenaday)
  turtle.clear()
  for i in range(nlados):
    turtle.color(random.random(),random.random(),random.random())
    turtle.forward(longitud)
    turtle.right(360.0/nlados)
    
    
def poligono(x,y,lados,tam):
  turtle.up()
  turtle.goto(x,y)
  turtle.down()
  for n in range(lados):
    turtle.forward(tam)
    turtle.left(360/lados)

  
