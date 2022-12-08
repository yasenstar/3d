$fn=100;

rotate_extrude(angle = 360)
difference() {
    square([5,7.01]);
    translate([4.5,4]) circle(4);
    translate([0.5,4.01]) square([4.5,3]);
}

translate([0,0,7])
rotate_extrude(angle = 360)
difference() {
    translate([-1.5,9]) // these two offset need to be calculated
    difference() {
        circle(9.4);
        circle(8.9);
    }
    
    translate([-15,-10]) square([15,40]);
    translate([0,12.5]) square([10,20]);
}