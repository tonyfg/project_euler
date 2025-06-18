// Q: Find the sum of all the even-valued terms in the Fibonacci sequence which do not exceed four million.
// A: 4613732

const print = @import("std").debug.print;

pub fn main() void {
    var n: u32 = 0;
    var f1: u32 = 1;
    var f2: u32 = 1;
    var tmp: u32 = undefined;

    while (true) {
        tmp = f2;
        f2 += f1;
        f1 = tmp;
        if (f2 >= 4000000) break;
        if (f2 % 2 == 0) n += f2;
    }

    print("{d}\n", .{n});
}
