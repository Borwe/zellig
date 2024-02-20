// Code generated by protoc-gen-zig
///! package api.resize
const std = @import("std");
const Allocator = std.mem.Allocator;
const ArrayList = std.ArrayList;

const protobuf = @import("protobuf");
const ManagedString = protobuf.ManagedString;
const fd = protobuf.fd;

pub const ResizeAction = enum(i32) {
    Increase = 0,
    Decrease = 1,
    _,
};

pub const ResizeDirection = enum(i32) {
    Left = 0,
    Right = 1,
    Up = 2,
    Down = 3,
    _,
};

pub const Resize = struct {
    resize_action: ResizeAction = @enumFromInt(0),
    direction: ?ResizeDirection = null,

    pub const _desc_table = .{
        .resize_action = fd(1, .{ .Varint = .Simple }),
        .direction = fd(2, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const MoveDirection = struct {
    direction: ResizeDirection = @enumFromInt(0),

    pub const _desc_table = .{
        .direction = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};