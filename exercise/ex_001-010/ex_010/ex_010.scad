color("cyan")
linear_extrude(15) {
    difference() {
        hull() {
            circle(30);
            translate([-5,40]) circle(15);  
            translate([85,40]) circle(15);
        }
        translate([75,0]) square([50,25]);
        translate([85-10, 40-30/2-50]) circle(50);
        
        translate([-5,40]) circle(15/2);
        circle(10);
        
        union() {
            translate([50,40-12/2]) square([35,12]);
            translate([50,40]) circle(6);
            translate([85,40]) circle(6);
        }
    }
}

color("green")
linear_extrude(35) {
    difference() {
        circle(20);
        circle(10);
    }
}