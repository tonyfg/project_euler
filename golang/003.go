// Q: What is the largest prime factor of the number 600851475143?
// A: 6857

package main

import "fmt"

func main() {
	n := 600851475143
	for i := 2; i < n; i++ {
		if n%i == 0 {
			n = n / i
			i = 1
		}
	}
	fmt.Println(n)
}
