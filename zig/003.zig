// Q: What is the largest prime factor of the number 600851475143?
// A: 6857

const print = @import("std").debug.print;

fn isPrime(n: u64) bool {
    if (n % 2 == 0) return false;

    var i:u64 = 3;
    while (i * i < n) {
        if (n % i == 0) return false;
        i += 2;
    }

    return true;
}

pub fn main() void {
    var n:u64 = 600851475143;
    var fac:u64 = 1;

    var i:u64 = 3;
    while (i < n / 2) : (i += 2) {
        if (n % i == 0 and isPrime(i)) fac *= i;
        if (fac == n) break;
    }

    print("{}\n", .{i});
}
