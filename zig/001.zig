// Q: Add all the natural numbers below one thousand that are multiples of 3 or 5.
// A: 233168

const print = @import("std").debug.print;

pub fn main() void {
    var i: u16 = 0;
    var sum: u32 = 0;

    while (i < 1000) : (i += 1) {
        if (i % 3 == 0 or i % 5 == 0)
            sum += i;
    }

    print("{d}\n", .{sum});
}
