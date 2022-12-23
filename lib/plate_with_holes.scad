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