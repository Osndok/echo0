const std = @import("std");
const log = std.log;
const out = std.io.getStdOut().writer();

pub fn main() anyerror!void
{
    const allocator = std.heap.GeneralPurposeAllocator(.{}){};
    //???: defer std.debug.assert(!allocator.deinit());

    //var i = std.process.args();
    
    //while (i.hasNext())
    {
        //var n = i.next(allocator);
        
    }
    
    for (std.os.argv) |a, i|
    {
        if (i > 0)
        {
            log.info("arg: {s}", .{a});
        }
    }
}
