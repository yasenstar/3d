union() {
    hull() {
        translate([0, -25]) circle(35/2);
        translate([0, 25]) circle(35/2);
        translate([0,-10]) square([87-45, 20]);
    }
    translate([87-45,-5]) square([45, 10]);
}