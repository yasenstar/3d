// author: Xiaoqi Zhao
// date: 2022-12-07

$fn=100;

difference() {
    union() {
        translate([0,0,52.5])
        difference() {
            minkowski() {
                cylinder(102-2-5,45-5,45-5, center = true);
                sphere(5);
            }
            minkowski() {
                cylinder(102-2-5,45-5-2,45-5-2, center = true);
                sphere(3);
            }
            translate([0,0,(100-5)/2]) cylinder(10,50,50);
        }

        translate([0,0,-2]) cylinder(2,40,40);

        translate([90/2-12-2,0,22+60/2])
        rotate([0,90,0])
        linear_extrude(10+2)
        union() {
            square([60,20], center = true);
            translate([-30,0]) circle(10);
            translate([30,0]) circle(10);
        }
        
        translate([0,0,-2]) cylinder(17,17,17);
        
    }

    translate([90/2-12+2,0,22+60/2])
    rotate([0,90,0])
    linear_extrude(10+2)
    union() {
        square([60,20-4], center = true);
        translate([-30,0]) circle(10-2);
        translate([30,0]) circle(10-2);
    }
    
    translate([0,0,-2]) cylinder(15,15,15);
}