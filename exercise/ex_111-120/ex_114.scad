use <../../lib/plate_with_holes.scad>

// plate_with_holes(r_outer, r_inner, r_middle, r_hole, numbers_hole, thickness)

plate_with_holes(60, 22.5, 45, 5, 6, 20);

translate([0,0,20])
cylinder(60,25,25);

translate([0,0,80])
plate_with_holes(60, 22.5, 45, 5, 6, 20);