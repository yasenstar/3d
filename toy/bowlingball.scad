$fn = 100;
difference() {
    sphere(40);

    #translate([0,50,15]) rotate([90,0,0]) cylinder(100, 5, 5);
    #translate([12,50,-7.5]) rotate([90,0,0]) cylinder(100, 5, 5);
    #translate([-12,50,-7.5]) rotate([90,0,0]) cylinder(100, 5, 5);
}