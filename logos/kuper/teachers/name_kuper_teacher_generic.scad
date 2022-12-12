use <../../../lib/christmas_tree.scad>

union() {

    color("red")
        translate([-23,-10,4.5])
        scale(0.5)
        linear_extrude(5)
            text("Merry Christmas", font="Impact");

    color("red")
        translate([-16,-18,4.5])
        scale(0.5)
            linear_extrude(5)
            text("Kuper 2022", font="Impact");

    color("red")
        translate([-13,-25,4.5])
        scale(0.4)
            linear_extrude(5)
            text("From: Eason", font="Impact");
        
    color("cyan")
    translate([0,0,-2])
    minkowski() {
        cylinder(6.51, 30, 30, $fn=100);
        sphere(0.5, $fn=50);
    }

}

translate([-10,8,2.5]) scale(0.8) christmasTree(3,50);

// Snowman

translate([14,10,4.5])
rotate([0,0,225])
scale(0.8)
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

module star(numberOfPoints, pointLength, width, height) {
    difference() {
        union() {
            for (i=[1:numberOfPoints]) {
                rotate([0, 0, 360/numberOfPoints*i])
                rotate([0,90,0])
                //scale([1,1,1])
                cylinder(h=pointLength, r1=width*1.5, r2=0, $fn=3);
            }
        }
        translate([0,0,width/2])
        cube(center=true, [pointLength*2+5, pointLength*2+5, width]);
    }
}

translate([-10.5,8,48]) {
rotate([90,-15,180])
scale(0.4)
star(5, 15, 5, 2);


rotate([90,-21,0])
scale(0.4)
star(5, 15, 5, 2);
}