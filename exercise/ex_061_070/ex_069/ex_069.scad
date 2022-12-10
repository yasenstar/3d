translate([-10,0,0])
rotate([-90,-90,0])
linear_extrude(100)
difference() {
    union() {
        translate([-25,-10]) square([50,20]);
        translate([-25,0]) circle(10);
        translate([25,0]) circle(10);
    }
    offset(-5){
        union() {
            translate([-25,-10]) square([50,20]);
            translate([-25,0]) circle(10);
            translate([25,0]) circle(10);
        }
    }
    translate([-15,-10.1]) square([30,10.1]);
}

translate([0,0,-5]) {
    difference() {
        union() {
            cube([40,100,10]);
            cube([58,50,10]);
            translate([20,100,0]) cylinder(10,20,20);
            translate([58,25,0]) cylinder(10,25,25);
        }
        translate([20,100,0]) cylinder(10,10,10);
        translate([58,25,0]) cylinder(10,10,10);
    }
}