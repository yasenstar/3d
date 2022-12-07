$fn = 50;
linear_extrude(10) {
    difference() {
        intersection() {
            circle(90/2);
            union() {
                circle(78/2);
                for (i = [0 : 360/16 : 360/16*15]) {
                    rotate(i)
                    translate([0,-5])
                        square([50, 10]);
                }
            }
        }
        circle(50/2);
    }
}