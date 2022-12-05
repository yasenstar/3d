// Snowman

module snowman(r_foot, r_body， r_head, ) {
    union(){

        $fn=100;
            
        color("white") {
            translate([0,0,d_foot/2]) sphere(r_foot);
            translate([0,0,r_foot+r_body+1]) sphere(r_body);
            translate([0,0,r_foot+r_body*2+r_head-2]) sphere(r_head);
        }

        color("orange")
            translate([r_head-1,0,r_foot+r_body*2+r_head-2])rotate([0,90,0]) cylinder(r_head+2,r_head/5,0);

        color("black") {
            translate([r_head-1,2,r_foot+r_body*2+r_head]) sphere(0.7);
            translate([r_head-1,-2,r_foot+r_body*2+r_head]) sphere(0.7);
        }

        color("yellow") {
            translate([0,0,r_foot+r_body*2+r_head+2]) cylinder(5,r_head,r_head-2);
            translate([0,0,r_foot+r_body*2+r_head+1]) cylinder(2,r_head*2-1,r_head-1);
        }

        translate([0,r_body-2,r_foot+r_body+1])
        rotate([-40,0,0])
        color("brown")
        union() {
            cylinder(r_head*3,0.7,0.7);
            translate([0,0,r_head*2]) rotate([-30,0,0]) cylinder(r_head-1,0.5,0.5);
            translate([0,0,r_head*2]) rotate([35,0,0]) cylinder(r_head+1,0.6,0.6);
        }

        translate([0,r_body-2,r_foot+r_body+1])
        rotate([40,0,0])
        color("brown")
        union() {
            cylinder(r_head*3,0.7,0.7);
            translate([0,0,r_head*2]) rotate([-30,0,0]) cylinder(r_head-1,0.5,0.5);
            translate([0,0,r_head*2]) rotate([35,0,0]) cylinder(r_head+1,0.6,0.6);
        }
    }
}

snowman(10, 7, 5);