$fn = 200;

intersection() {

    translate([0,40,0])
    rotate([90,0,0])
    linear_extrude(80) {
        difference() {
            circle(40);
            
            //translate([-28,0]) circle(5);
            translate([0,25]) circle(5);
            //translate([0,-28]) circle(5);
            
            //circle(14);
            //translate([0,-14]) square([40,28]);
            polygon([[0,0],[50,25],[50,-25],[0,0]]);
        }
    }
    
    sphere(40);
}