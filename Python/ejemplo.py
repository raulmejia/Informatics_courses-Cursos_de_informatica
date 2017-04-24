#!/usr/bin/python


a = 3
c = 5
b = 8
lista = ['a', "b", 3, 234.23]

diccionario = { 'llave': "valor",
                'nombre': "Rodrigo",
                'estatura': 1.72,
                'items': lista }


for llave in diccionario.keys():
    print diccionario[llave]


for e in lista:
    if e == 'a':
        print e

count = 0
while (count < 9):
   print 'The count is:', count
   count = count + 1


for n in range(1,20):
    print n

print diccionario['nombre'].upper()



# import fileinput

# for line in fileinput.input(args):
#     print line
