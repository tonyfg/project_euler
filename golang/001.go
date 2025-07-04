// Q: Add all the natural numbers below one thousand that are multiples of 3 or 5.
// A: 233168

package main

import "fmt"

func main() {
	sum := 0

	for i := 0; i < 1000; i++ {
		if i%3 == 0 || i%5 == 0 {
			sum += i
		}
	}

	fmt.Println(sum)
}
