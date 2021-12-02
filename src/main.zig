const std = @import("std");
const out = std.io.getStdOut().writer();

pub fn main() anyerror!void
{
    for (std.os.argv) |a, i|
    {
        if (i > 0)
        {
            try out.print("{s}", .{a});
            try out.writeByte(0);
        }
    }
}
