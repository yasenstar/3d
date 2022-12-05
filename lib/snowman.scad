// Snowman

union(){

$fn=100;
    
color("white") {
    translate([0,0,5]) sphere(10);
    translate([0,0,18]) sphere(7);
    translate([0,0,27]) sphere(5);
}

color("orange")
    translate([4,0,27])rotate([0,90,0]) cylinder(7,1,0);

color("black") {
    translate([4,2,29]) sphere(.7);
    translate([4,-2,29]) sphere(.7);
}

color("yellow") {
    translate([0,0,31]) cylinder(5,5,3);
    translate([0,0,30]) cylinder(2,9,4);
}

translate([0,5,18])
rotate([-40,0,0])
color("brown")
union() {
    cylinder(15,0.7,.7);
    translate([0,0,10]) rotate([-30,0,0]) cylinder(4,0.5,0.5);
    translate([0,0,10]) rotate([35,0,0]) cylinder(6,0.6,0.6);
}

translate([0,-5,18])
rotate([40,0,0])
color("brown")
union() {
    cylinder(15,0.7,.7);
    translate([0,0,10]) rotate([-30,0,0]) cylinder(4,0.5,0.5);
    translate([0,0,10]) rotate([35,0,0]) cylinder(6,0.6,0.6);
}

}