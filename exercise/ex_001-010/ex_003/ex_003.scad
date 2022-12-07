$fn = 100;

// horizontal plate
linear_extrude(20) square([60,100]);

// vertical part
rotate([0,90,0])
linear_extrude(20) 
    translate([-45,0]) {
        difference() {
            union() {
                square([45,100]);
                translate([0,50]) circle(25);
            }
            translate([0,50]) circle(20);
        }
    }