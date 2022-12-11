union() {

    color("blue")
        translate([-25,6,4])
        rotate([75,0,0])
        scale(0.8)
        linear_extrude(10)
            text("Ms. Gervais", font="Impact");

    color("red")
        translate([-23,-10,4.5])
        scale(0.5)
        linear_extrude(5)
            text("Merry Christmas", font="Impact");

    color("red")
        translate([-19,-18,4.5])
        scale(0.5)
            linear_extrude(5)
            text("5G Kuper 2022", font="Impact");

    color("red")
        translate([-28,13,4])
        scale(0.5)
            linear_extrude(5)
            text("From: Eason", font="Impact");
        
    color("cyan") translate([0,0,2.5])
    minkowski() {
        cube([60, 50, 4.51], center = true, $fn=100);
        sphere(0.5, $fn=50);
    }

}

// Snowman

translate([16,15,4.5])
rotate([0,0,225])
scale(0.5)
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