use <../lib/rounded_corner.scad>


// Value Streams
color("Orange")
roundedcube([20, 2, 20], true, 0.5);

scale(0.3)
translate([-25,0,2])
rotate([90,0,0])
color("Green")
linear_extrude(5)
union() {
    text("  Value");
    translate([0,-12]) text("Streams");
}