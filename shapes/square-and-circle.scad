intersection () {
    translate([-50,0]) {
        square(100);
    }
    difference() {
        translate([-50,-50]) {
            square(100);
        }
        circle(50);
    }
}