// exercise-17
// author: Xiaoqi Zhao
// date: 2022-12-07

$fn=100;

color("green")
linear_extrude(15){
    circle(2.5);
    translate([0,-2.5]) square([22.5,5]);
    translate([22.5,25-2.5]) {
        difference(){
            difference() {
                    circle(25);
                    circle(20);
            }
            #translate([-25,-25]) square([25,50]);
        }
    }
    translate([22.5,(25-2.5)*3]) {
        difference(){
            difference() {
                    circle(25);
                    circle(20);
            }
            #translate([0,-25]) square([25,50]);
        }
    }
    translate([22.,90-2.5]) square([22.5,5]);
}