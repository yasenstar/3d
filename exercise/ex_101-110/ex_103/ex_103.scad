module fourBlocks() {
    cube([10,10,8]);
    translate([10+3,0,0]) cube([10,10,8]);
    translate([0,10+3,0]) cube([10,10,8]);
    translate([10+3,10+3,0]) cube([10,10,8]);
}

cube([113,113,8]);

for (i=[0:30:90]) {
    for (j=[0:30:90]) {
        translate([i,j,8])
        fourBlocks();
    }
}