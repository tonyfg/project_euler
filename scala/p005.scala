//Q: What is the smallest number that is evenly divisible by all of the numbers from 1 to 20?
//A: 232792560

object Cenas {
  def main(args: Array[String]) = {
    val multiples = 20 to 11 by -1
    println(multiples)
    var i = 20
    var divis = false
    do {
      i += 20
      divis = true
      for (j <- multiples if divis) {
        if (i%j != 0) divis = false
      }
    } while (!divis)
    println(i)
  }
}
