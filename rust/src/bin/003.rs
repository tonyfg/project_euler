// Q: What is the largest prime factor of the number 600851475143?
// A: 685

// must install num-integer crate to use this
use num_integer::Roots;

fn is_prime(n: i64) -> bool {
    if n % 2 == 0 { return false }

    for i in (3 .. n.sqrt()).step_by(2) {
        if n % i == 0 { return false }
    }

    true
}

fn main() {
    let num = 600851475143;
    let mut fac: i64 = 1;

    for i in (3 .. num / 2).step_by(2) {
        if is_prime(i) && num % i == 0 {
            fac *= i;
            if fac >= num { break }
        }
    }

    println!("fac => {}", fac);
}
