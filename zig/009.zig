// Q: There exists exactly one Pythagorean triplet for which a + b + c = 1000.
// Find the product abc.
// A: 31875000

const print = @import("std").debug.print;

pub fn main() void {
    var m: i64 = 2;
    var n: i64 = undefined;

    while (m < 21) : (m += 1) {
        n = 1;
        while (n < m) : (n += 1) {
            const a: i64 = m * n * 2;
            const b: i64 = (m * m) - (n * n);
            const c: i64 = (m * m) + (n * n);

            if ((a + b + c) == 1000) {
                print("{}\n", .{a * b * c});
                return;
            }
        }
    }
}
