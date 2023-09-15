$fn=100;

difference() {
    cylinder(2,1.5,1.5);
    cylinder(2.1,0.5,0.5);
    translate([4,0,0])
        cube([8,8,8],center = true);
}