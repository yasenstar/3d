for (i=[0:12:48]) {
    for (j=[0:12:48]) {
        translate([i,j,0]) {
            difference() {
                cube([12,12,6]);
                translate([1,1,2]) cube([10,10,4]);
            }
            difference() {
                translate([6,6,2]) cylinder(8,5,5);
                translate([6,6,2]) cylinder(8,4,4);
            }
        }
    }
}

