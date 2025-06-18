// Q: What is the smallest number that is evenly divisible by all of the numbers
// from 1 to 20?
// A: 232792560

const std = @import("std");
const print = std.debug.print;

fn isDivisibleByAll(n: u32) bool {
    var i: u32 = 11;
    while (i < 21) : (i += 1) {
        if (n % i != 0) return false;
    }
    return true;
}

pub fn main() void {
    var i: u32 = 40;

    while (true) : (i += 20) {
        if (isDivisibleByAll(i)) break;
    }

    print("{}\n", .{i});
}
