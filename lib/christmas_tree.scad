// Christmas Tree
// Author: Xiaoqi Zhao
// Date: 2022-12-05

height = 50;
color("brown"){
cylinder(height,2,0);
}
color("green") {
for (i=[5:0.5:height]) {
    length = height-i;
    for (j=[0i*5:25:355+i*5]) {
        translate([0,0,i])
        rotate([0,85,j]) cylinder(length/2.5,0.2,0.2);
    }
}
}