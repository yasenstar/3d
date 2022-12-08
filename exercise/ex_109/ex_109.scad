module longPlate() {
    linear_extrude(5)
    difference() {
        union() {
            translate([-35,-15]) square([70,30]);
            translate([-35,0]) circle(15);
            translate([35,0]) circle(15);
        }
        
        translate([-35,0]) circle(7.5);
        translate([35,0]) circle(7.5);
    }
}

rotate(-[90,0,0]) longPlate();
translate([0,5+19,0]) rotate(-[90,0,0]) longPlate();
translate([-(5+19/2),5+19/2,0]) rotate(-[90,0,90]) longPlate();
translate([19/2,5+19/2,0]) rotate(-[90,0,90]) longPlate();