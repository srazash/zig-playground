const std = @import("std");

pub fn main() !void {
    var i: i16 = 1;
    const stdout = std.io.getStdOut().writer();

    while (i <= 100) : (i += 1) {
        if (@rem(i,15) == 0) {
            try stdout.print("{d} FizzBuzz!\n", .{i});
        } else if (@rem(i,5) == 0) {
            try stdout.print("{d} Buzz!\n", .{i});
        } else if (@rem(i,3) == 0) {
            try stdout.print("{d} Fizz!\n", .{i});
        } else {
            try stdout.print("{d}\n", .{i});
        }
    }
}
