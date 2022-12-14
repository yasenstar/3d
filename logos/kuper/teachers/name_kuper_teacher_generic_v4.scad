use <../../../lib/christmas_tree.scad>
use <../../../lib/snowman.scad>

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

union() {
    
    // Base
    color("cyan")
    translate([0,0,-2])
    minkowski() {
        cylinder(6.51, 32, 30, $fn=100);
        sphere(0.5, $fn=50);
    }

    // Text
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
        
    // Christmas Tree

    translate([-10,8,2.5]) scale(0.8) christmasTree(5,50);

    // Snowman

    translate([14,10,4.5])
    rotate([0,0,225])
    scale(0.8)
    
    snowman(10, 7, 5, 1);
    
    // Top Star

    translate([-10.3,7,41]) {
    rotate([90,-15,180])
    scale(0.4)
    star(5, 15, 5, 2);

    rotate([90,-21,0])
    scale(0.4)
    star(5, 15, 5, 2);
    }

}