var f, d;
// vertical accel:
if (place_meeting_flags(x, y + 1, obj_solid, IFlags.SolidDown, -1, 0) && yspeed >= 0) {
    jump = 10;
} else yspeed += 0.25;
if (--jump > 0 && keyboard_check_pressed(vk_up)) {
    yspeed = -5;
    jump = 0;
}
// horizontal movement:
d = keyboard_check(vk_right) - keyboard_check(vk_left);
if (d != 0) {
    image_index = (d > 0) * 1;
    if (d > 0) f = IFlags.SolidRight; else f = IFlags.SolidLeft;
    scr_move(d * 3, 0, obj_solid, f);
}
// vertical movement:
if (yspeed != 0) {
    if (yspeed > 0) f = IFlags.SolidDown; else f = IFlags.SolidUp;
    if (!scr_move(0, yspeed, obj_solid, f)) yspeed = 0;
}


