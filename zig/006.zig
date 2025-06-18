// Q: Find the difference between the sum of the squares of the first one
// hundred natural numbers and the square of the sum.
// A: 25164150

const print = @import("std").debug.print;

pub fn main() void {
    var summedSquares: u32 = 0;
    var squaredSum: u32 = 0;
    var i: u16 = 1;

    while (i < 101) : (i += 1) {
        squaredSum += i;
        summedSquares += i * i;
    }

    squaredSum *= squaredSum;
    const diff: u32 = squaredSum - summedSquares;

    print("{}\n", .{diff});
}
