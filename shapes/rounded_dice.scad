// rounded_dice
// Author: takumiando
// URL: https://github.com/takumiando/openscad_training/blob/main/rounded_dice/rounded_dice.scad

$fn=360;

module rounded_dice(size) {
    difference() {
        intersection() {
            cube([size,size,size]);
            translate([size/2, size/2, size/2])
                sphere(size/2 * 1.45);
        }

        /* 1 */
        translate([size/2, size/2, size-0.5])
            cylinder(1,1.5,1.5);

        /* 2 */
        rotate([90,0,0]) {
            translate([size/3, size/3, -0.5])
                cylinder(100,1.5,1.5);
            translate([size/3*2, size/3*2, -0.5])
                cylinder(100,1.5,1.5);
        }
    }
}

rounded_dice(20);