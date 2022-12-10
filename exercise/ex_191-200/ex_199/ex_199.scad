// author: Xiaoqi Zhao
// date: 2022-12-07

module sidePan() {
    difference() {
        cylinder(10,50,50);
        
        for (i=[0:60:300]) {
            rotate([0,0,i]) translate([75/2,0,0]) cylinder(10,6,6);
        }
    }
}

difference() {

    union() {
        cylinder(120,50/2,50/2);
        translate([0,0,60]) rotate([0,90,0]) cylinder(80,50/2,50/2);
        translate([80-5-10,0,60]) rotate([0,90,0]) sidePan();
        translate([0,0,120-5-10]) cylinder(10,65/2,65/2);
        translate([0,0,5]) cylinder(10,65/2,65/2);
    }
    
    union () {
        cylinder(120,30/2,30/2);
        translate([0,0,60]) rotate([0,90,0]) cylinder(80,30/2,30/2);
    }
}