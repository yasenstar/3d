$fn=100;

module tinyCircle(distance) {
    translate([distance,0])
    circle(5);
}

linear_extrude(10)
difference() {
    circle(120/2);
    
    circle(20/2);
    for (i=[0:30:330]) {
        rotate(i) {
            tinyCircle(20);
            tinyCircle(35);
            tinyCircle(50);
        }
    }
}

