// ex_002

module plate_with_long_hole(width, height, thickness, big_circle, small_circle) {
    difference() {
        union() {
            cube([height - big_circle, width, thickness]);
            translate([height - big_circle, big_circle, 0]) cylinder(thickness, big_circle, big_circle);
            translate([height - big_circle, width - big_circle, 0]) cylinder(thickness, big_circle, big_circle);
            translate([height - big_circle, big_circle, 0]) cube([big_circle, width - 2 * big_circle, thickness]);
        };
        
        union() {
            translate([height - big_circle - small_circle, big_circle, 0]) cube([2 * small_circle, width - 2 * big_circle, thickness]);
            translate([height - big_circle, big_circle, 0]) cylinder(thickness, small_circle, small_circle);
            translate([height - big_circle, width - big_circle, 0]) cylinder(thickness, small_circle, small_circle);
        }
     
    }
}

union() {
    plate_with_long_hole(120, 100, 20, 30, 15);
    translate([20, 0, 0]) rotate([0, -90, 0]) plate_with_long_hole(120, 50, 20, 20, 6);
}