difference() {
    union() {
        cylinder(20,20,20);
        cylinder(50,10,10);
    }
    cylinder(50,4.5,4.5);
    cylinder(10, 10/cos(30), 10/cos(30), $fn=6);
}