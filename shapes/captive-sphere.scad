// captive sphere
// Author: Steve Caplin

$fn = 50;

difference() {
    cube(30, center=true);
    sphere(19);
}

difference() {
    sphere(16);
    translate([0,0,-30])
    cube([12,12,30], center=true);
}