import collection.mutable.ArrayBuffer
import Math.log

def p(n: Int): Int = (n * (log(n) + log(log(n))-1 + 1.8*log(log(n))/log(n))) toInt

val max_val = p(10001)
val ranged = 3 to max_val by 2
val lista = new ArrayBuffer[Int]
lista.appendAll(ranged)

for (i <- lista) {
   for (j <- lista if j!=i && j%i == 0) {
      lista.remove(lista.indexOf(j))
   }
}

println(lista(9999))