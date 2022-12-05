
color("blue")
    translate([-21,7,3])
    rotate([75,0,0])
    scale(1.2)
    linear_extrude(10)
        text("KUPER", font="Impact");

color("red")
    translate([-15,-15,4.5])
    scale(0.5)
    linear_extrude(5)
        text("Christmas", font="Impact");

color("red")
    translate([-7,-23,4.5])
    scale(0.5)
        linear_extrude(5)
        text("2022", font="Impact");

color("red")
    translate([13,-25,1])
    rotate([50,0,30])
    scale(0.4)
        linear_extrude(3)
        text("5G", font="Impact");
    
color("cyan") cylinder(5.01,30,25, $fn=100);

// Christmas tree

translate([6,17,4.5])
scale(0.4) {
height = 50;
color("brown") cylinder(height,2,0);
color("green"){
for (i=[5:0.5:height]) {
    length = height-i;
    for (j=[0:5:355]) {
        translate([0,0,i])
        rotate([0,85,j]) cylinder(length/2.5,0.2,0.2);
        }
}
}
}

// Snowman

translate([-8,18,4.5])
scale(0.3)
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