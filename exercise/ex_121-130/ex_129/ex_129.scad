// ex_129
// author: Xiaoqi Zhao
// date: 2022-12-07

module ears() {
    linear_extrude(15)
    for (i=[0:120:240]) {
        rotate([0,0,i])
        translate([70,0])
        difference() {
            union() {
                translate([-25,-20]) square([25, 40]);
                circle(20);
            }
            circle(10);
        }
    }
}

$fn=100;

linear_extrude(80)
    difference() {
        circle(50);
        circle(40);
    }

ears();
    
translate([0,0,80-15]) ears();