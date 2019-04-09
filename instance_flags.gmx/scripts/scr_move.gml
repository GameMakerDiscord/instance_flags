/// scr_move(dx, dy, obj, flags)
var dx = round(argument0);
var dy = round(argument1);
if (dx == 0 && dy == 0) return true;
var obj = argument2;
var flags = argument3;
if (place_meeting_flags(x + dx, y + dy, obj, flags, -1, 0)) {
    // if we cannot move there, do one pixel steps to approach the obstacle
    var dst = point_distance(0, 0, dx, dy);
    dx /= dst;
    dy /= dst;
    repeat (dst) {
        if (!place_meeting_flags(x + dx, y + dy, obj, flags, -1, 0)) {
            x += dx;
            y += dy;
        } else return false;
    }
} else {
    x += dx;
    y += dy;
}
return true;
