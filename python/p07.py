#Q: What is the 10001st prime number?
#A: 104743

from math import log

def p(n):
    #encontrar o range minimo que tenho que pesquisar
    #para encontrar o numero primo com o indice x
    #implementacao de um dos corolarios do teorema dos numeros primos
    return n*(log(n) + log(log(n))-1 + 1.8*log(log(n))/log(n))

lista = list(xrange(3, p(10001)+1, 2))
for i in lista:
    for j in lista:
        if j!=i and j%i == 0:
            lista.remove(j)
print lista[9999] #como a lista n tem o numero 2 e e' indexada a 0, primo #10001 esta na posicao 9999 ;)
