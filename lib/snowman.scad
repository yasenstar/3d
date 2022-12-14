// Snowman
// Author: Xiaoqi Zhao
// Date: 2022-12-05

module snowman(r_foot, r_body, r_head, type) {
    union(){

        $fn=100;
        
        // three snow balls    
        color("white") {
            translate([0,0,r_foot/2]) sphere(r_foot);
            translate([0,0,r_foot+r_body/2]) sphere(r_body);
            translate([0,0,r_foot+r_body+r_head]) sphere(r_head);
        }
        
        // nose
        color("orange")
            translate([r_head-1,0,r_foot+r_body+r_head-r_head/5]) rotate([0,90,0]) cylinder(r_head+2,r_head/5,0);
        
        // eyes
        color("black") {
            translate([r_head-1,r_head/5*2,r_foot+r_body+r_head+r_head/5]) sphere(0.7);
            translate([r_head-1,-(r_head/5*2),r_foot+r_body+r_head+r_head/5]) sphere(0.7);
        }
        
        // hat
        color("yellow") {
            translate([0,0,r_foot+r_body+r_head+r_head/5*4]) cylinder(r_head,r_head,r_head-2);
            translate([0,0,r_foot+r_body+r_head+r_head/5*3]) cylinder(r_head/5*2,r_head*2-1,r_head-1);
            translate([0,0,r_foot+r_body+r_head+r_head/5*2]) cylinder(r_head/5,r_head/2,r_head*2-1);
        }
        
        if (type==1) {
            // left arm
            translate([0,r_body-2,r_foot+r_body/2+1])
            rotate([-40,0,0])
            color("brown")
            union() {
                cylinder(r_head*2,0.9,0.9);
                translate([0,0,r_head*1.1]) rotate([-30,0,0]) cylinder(r_head-2,0.7,0.7);
                translate([0,0,r_head*1.3]) rotate([35,0,0]) cylinder(r_head+1,0.6,0.6);
            }
            
            // right arm
            translate([0,-(r_body-2),r_foot+r_body/2-1])
            rotate([40,0,0])
            color("brown")
            union() {
                cylinder(r_head*2,0.9,0.9);
                translate([0,0,r_head*1.1]) rotate([-30,0,0]) cylinder(r_head-2,0.6,0.6);
                translate([0,0,r_head*1.3]) rotate([35,0,0]) cylinder(r_head+1,0.7,0.7);
            }
        }
        else if (type==2) {
            // left arm
            translate([0,r_body-2,r_foot+r_body/2+1])
            rotate([-40,0,0])
            color("brown")
            union() {
                cylinder(r_head*3,0.7,0.7);
                translate([0,0,r_head*2.5]) rotate([0,0,50]) cube([r_head,r_head/3,r_head*1.2],center=true);
            }
            
            // right arm
            translate([0,-(r_body-2),r_foot+r_body/2-1])
            rotate([40,0,0])
            color("brown")
            union() {
                cylinder(r_head*3,0.7,0.7);
                translate([0,0,r_head*2]) rotate([-30,0,0]) cylinder(r_head-1,0.5,0.5);
                translate([0,0,r_head*2]) rotate([35,0,0]) cylinder(r_head+1,0.6,0.6);
            }
        }
    }
}

snowman(14, 10, 7, 1);