// Q: Find the largest palindrome made from the product of two 3-digit numbers.
// A: 906609

const std = @import("std");
const print = std.debug.print;
const allocPrint = std.fmt.allocPrint;
const page_allocator = std.heap.page_allocator;

fn isPalindrome(n: u32) bool {
    const s = allocPrint(page_allocator, "{}", .{n}) catch "";

    for (s[0..s.len / 2]) |char, i| {
        if (char != s[s.len - i - 1]) return false;
    }

    return true;
}

pub fn main() void {
    var i: u32 = 100;
    var j: u32 = undefined;
    var max: u32 = 0;

    while (i < 1000) : (i += 1) {
        j = 100;
        while (j < 1000) : (j += 1) {
            const n = i * j;
            if (n > max and isPalindrome(n)) max = n;
        }
    }

    print("{}\n", .{max});
}
