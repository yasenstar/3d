$fn=200;
hole_r = 9;
difference() {
    sphere(20);
    
    translate([0,0,-30]) cylinder(60,hole_r,hole_r);
    rotate([90,0,0]) translate([0,0,-30]) 
    cylinder(60,hole_r,hole_r);
    #rotate([0,90,0]) translate([0,0,-30])  cylinder(60,hole_r,hole_r);
}