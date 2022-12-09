// ex_198
// author: Xiaoqi Zhao
// date:2022-12-08

module plate_with_holes(r_outer, r_inner, r_middle, r_hole, numbers_hole, thickness) {
    difference() {
        cylinder(thickness, r_outer, r_outer);
        cylinder(thickness, r_inner, r_inner);
        for (i=[0:360/numbers_hole:(360-360/numbers_hole)]) {
            rotate([0,0,i])
            translate([r_middle,0,0])
            cylinder(thickness, r_hole, r_hole);
        }
    }
}

difference() {
    union() {
        translate([50/2-30/tan(30),0,0])
        rotate([0,60,0])
        translate([0,0,50])
        difference() {
            cylinder(30/sin(30)+80-50,30/2,30/2);
            cylinder(30/sin(30)+80-50,20/2,20/2);
        }

        translate([50/2-30/tan(30),0,0])
        rotate([0,60,0])
        translate([0,0,30/sin(30)+80-15])
            plate_with_holes(70/2, 20/2, 54/2, 10/2, 8, 10);

        cylinder(120,50/2,50/2);

        translate([0,0,120-15])
            plate_with_holes(120/2, 40/2, 90/2, 15/2, 6, 10);
    }
    
    cylinder(120,40/2,40/2);
}