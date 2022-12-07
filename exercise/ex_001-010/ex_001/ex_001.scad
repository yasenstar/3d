rotate([45,0,0])
linear_extrude(5)
difference() {
    circle(40);
    
    translate([-28,0]) circle(5);
    translate([0,28]) circle(5);
    translate([0,-28]) circle(5);
    
    circle(14);
    translate([0,-14]) square([40,28]);
    
}