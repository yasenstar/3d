union() {

    color("blue")
        translate([-21,13,3])
        rotate([75,0,0])
        scale(0.8)
        linear_extrude(10)
            text("Ms. Gervais", font="Impact");

    color("red")
        translate([-15,-6,4.5])
        scale(0.5)
        linear_extrude(5)
            text("Christmas", font="Impact");

    color("red")
        translate([-7,-14,4.5])
        scale(0.5)
            linear_extrude(5)
            text("2022", font="Impact");

    color("red")
        translate([-4,-22,4.5])
        scale(0.5)
            linear_extrude(5)
            text("5G", font="Impact");
        
    color("cyan") translate([0,0,2.5])
    minkowski() {
        cube([50, 30, 4.51], center = true, $fn=100);
        sphere(0.2);
    }

}