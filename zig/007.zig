// Q: What is the 10001st prime number?
// A: 104743

const print = @import("std").debug.print;

fn isPrime(n: u64) bool {
    var i: u64 = 2;
    while (i < n) : (i += 1) {
        if (n % i == 0) return false;
    }
    return true;
}

pub fn main() void {
    var foundPrimes: u16 = 0;
    var i: u64 = 2;

    while (foundPrimes < 10_001) : (i += 1) {
        if (isPrime(i)) foundPrimes += 1;
    }

    print("{}\n", .{i - 1});
}
