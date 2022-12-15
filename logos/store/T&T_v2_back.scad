// T&T key chain with logo
// Author: Xiaoqi Zhao
// Date: 2022-12-15

module textBack() {
    translate([-7,-6])
    scale(0.5) {
        translate([3,12]) text("I", font = "Bodoni MT");
        translate([8,12]) text("🧡", font = "Segoe UI Emoji");
        text("T&T", font = "Bodoni MT");
    }
}

module textFront() {
    translate([-8,-5])
    scale(0.4) {
        translate([5,13]) text("T&T", font = "Bodoni MT", size = 12);
        text("大统蕐", font = "SimSun");
    }
}

$fn=100;

scale(1.5) {

    difference() {

        linear_extrude(2)
            difference() {
                circle(10);
                translate([0,8]) circle(1);
            }

        translate([0,0,1.6])
        linear_extrude(0.4)
            textFront();
        }
        
//    translate([25,0,0])
//    difference() {
//
//        linear_extrude(1)
//            difference() {
//                circle(10);
//                translate([0,8]) circle(1);
//            }
//
//        translate([0,0,0.7])
//            linear_extrude(0.3)
//            textBack();
//        }  
        
    }