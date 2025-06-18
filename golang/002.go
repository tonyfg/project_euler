// Q: Find the sum of all the even-valued terms in the Fibonacci sequence which
// do not exceed four million.
// A: 4613732

package main

import "fmt"

func main() {
	sum := 0
	a, b := 0, 1

	for b < 4000000 {
		if b%2 == 0 {
			sum += b
		}
		a, b = b, a+b
	}

	fmt.Println(sum)
}
