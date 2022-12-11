// use tiny thin cube for hull() to join / merge two shapes

$fn=50;

difference() {

union() {
    difference() {

        hull() {
            cylinder(10,10,10);
            #translate([10,0,5]) cube([0.001,10,10], center = true);
        }
        
        cylinder(10,9,9);
    }

    translate([15,0,5]) cube([10,10,10], center = true);
}

translate([15,0,0]) cylinder(10,4,4);
}