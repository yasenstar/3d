union() {

color("green")
    translate([-21,5,3])
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
    
color("cyan") cylinder(5.01,30,25, $fn=100);
    
}
