union() {

color("green")
    translate([-17.5,5,5])
    rotate([90,0,0])
    linear_extrude(10)
        text("KUPER", font="Impact");

color("red")
    translate([-12,-13,4.5])
    scale(0.4)
    linear_extrude(5)
        text("Christmas", font="Impact");

color("red")
    translate([-6,-19,4.5])
    scale(0.4)
        linear_extrude(5)
        text("2022", font="Impact");
    
color("cyan") cylinder(5.01,30,25, $fn=100);
    
}
