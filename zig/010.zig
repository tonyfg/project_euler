// Q: Find the sum of all the primes below two million.
// A: 142913828922

const print = @import("std").debug.print;

fn isPrime(n: u64) bool {
    var i: u64 = 2;
    while (i < n) : (i += 1) {
        if (n % i == 0) return false;
    }
    return true;
}

pub fn main() void {
    var i: u64 = 3;
    var sum: u64 = 2;

    while (i < 2_000_000) : (i += 2) {
        if (isPrime(i)) {
            sum += i;
        }
    }

    print("{}\n", .{sum});
}
