// fix of the broken part of phone holder
// auther: Xiaoqi Zhao
// date: 2022/12/24

$fn = 100;

difference() {

    difference() {
        cylinder(4,6,6);
        translate([0,0,2.49])
            cylinder(1.52,4,4);
    }
    
    translate([0,-5,0])
        cube([20,10,10],center=true);
    
    translate([-5,0,0])
    rotate([0,0,155])
        cube([20,10,10],center=true);
    
    cube([10,1,10]);
    
    #translate([-4,0,0])
        cube([2,10,10]);
}