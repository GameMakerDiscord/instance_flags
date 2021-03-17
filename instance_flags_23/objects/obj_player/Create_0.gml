iflags = 0;
yspeed = 0;
jump = 0;
image_speed = 0;
// you can define your flags however you want, really
enum IFlags {
    None = 0,
    SolidDown = 8,
    SolidLeft = 4,
    SolidUp = 2,
    SolidRight = 1,
    Solid = 15, // (all of above)
}

