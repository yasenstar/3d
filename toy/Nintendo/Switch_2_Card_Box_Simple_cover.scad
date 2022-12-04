// Dimension of Nintindo Switch Game Card: 20mm x 30mm x 3mm
// Author: Xiaoqi Zhao
// Date: 2022-12-03

$fn=100;

//// base box
//difference() {
//    difference() {
//        minkowski() {
//            cube([20,30,22]);
//            cylinder(3);
//        }
//        
//        for (i = [0:1:1]) {
//            #translate([3+i*10, 3, 5]) cube([4,24,30]);
//        }
//    };
//
//    translate([7.5,31,25])
//    rotate([0,90,0])
//    color("cyan")
//        #cylinder(5,2,2);
//}
//
//// hinge in base
//translate([0.5,31,25])
//rotate([0,90,0])
//    cylinder(5,2,2);
//translate([0.5,34,26])
//rotate([0,90,0])
//difference() {
//    cylinder(6,2.5,2.5);
//    cylinder(6,1,1);
//}
//
//translate([13.5,31,25])
//rotate([0,90,0])
//    cylinder(5,2,2);
//translate([13.5,34,26])
//rotate([0,90,0])
//difference() {
//    cylinder(6,2.5,2.5);
//    cylinder(6,1,1);
//}

// cover box
difference() {
    translate([0,30,60])
    rotate([180,0,0])
    color("cyan")
    difference() {
        minkowski() {
            cube([20,30,9]);
            cylinder(3);
        }
        
        for (i = [0:1:1]) {
            #translate([3+i*10, 3, 5]) cube([4,24,15]);
        }
    }
    
    // trim the hinge overlapping part
    translate([0.5,31,49])
    rotate([0,90,0])
        #cylinder(5,2,2);

    translate([13.5,31,49])
    rotate([0,90,0])
        #cylinder(5,2,2);

}

// hinge in cover
translate([7.5,31,49])
rotate([0,90,0])
color("cyan")
    cylinder(5,2,2);
translate([7.5,34,49])
rotate([0,90,0])
color("cyan")
difference() {
    cylinder(5,2.5,2.5);
    cylinder(5,1,1);
}

//// logo text
//translate([2,1,22])
//rotate([90,60,0])
//color("red")
//scale(0.4)
//linear_extrude(8)
//text("Nintendo");