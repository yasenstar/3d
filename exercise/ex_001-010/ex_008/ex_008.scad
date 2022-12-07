$fn=100;

difference() {
    linear_extrude(20) {
        difference() {
            union() {
                hull() {
                    translate([0, -25]) circle(35/2);
                    translate([0, 25]) circle(35/2);
                    translate([0,-10]) square([87-45, 20]);
                }
                translate([87-45,-5]) square([45, 10]);
            }
            
            translate([87-45, 35]) circle(25);
            translate([87-45, -35]) circle(25);
            translate([-63, 0]) circle(50);
            
            translate([0, -25]) circle(20/2);
            translate([0, 25]) circle(20/2);
        }
    }
    
    #translate([87-35, -5, 5]) cube([35, 10,10]);
}