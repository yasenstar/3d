// pipe created through 2D circle
rotate_extrude(angle=50)
translate([20,0])
difference() {
    circle(10);
    offset(-2){
        circle(10);
    }
}