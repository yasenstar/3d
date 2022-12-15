union() {

    color("blue")
        translate([-21,12,3])
        rotate([75,0,0])
        scale(1.2)
        linear_extrude(10)
            text("KUPER", font="Impact");

    color("red")
        translate([-17.5,-9,4.5])
        scale(0.6)
        linear_extrude(5)
            text("Christmas", font="Impact");

    color("red")
        translate([-8.5,-18,4.5])
        scale(0.6)
            linear_extrude(5)
            text("2022", font="Impact");
        
    color("cyan") cylinder(4.71,28,25, $fn=100);

}