// Description: simple 4 legs chair
// Author: Xiaoqi Zhao
// Date: 2022-12-05

$fn=100;

union() {
    translate([0,0,20])
    rotate([0,0,45])
    minkowski() {
        cylinder(1, 20, 20, $fn=4);
        sphere(1);
    }
    
    translate([0,16,35])
    rotate([75,0,0])
    rotate([0,0,45])
    minkowski() {
        cylinder(1, 20, 18, $fn=4);
        sphere(1);
    }

    translate([13,13,0]) cylinder(19, 1, 1);
    translate([13,-13,0]) cylinder(19, 1, 1);
    translate([-13,13,0]) cylinder(19, 1, 1);
    translate([-13,-13,0]) cylinder(19, 1, 1);
}